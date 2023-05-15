#!/usr/bin/env python
import logging
from concurrent.futures import ThreadPoolExecutor
from ms import send, receiveAll, reply, exitOnError
from enum import Enum
from threading import Thread, Timer, Lock

class Command:
    def __init__(self, type, key, value, term, index, src, resp=0):
        self.type = type
        self.key = key
        self.value = value
        self.term = term
        self.index = index
        self.src = src
        self.resp = resp

    def __eq__(self, __o: object) -> bool:
        if isinstance(__o, Command):
            return self.type == __o.type and self.key == __o.key and self.value == __o.value
        return False


class State(Enum):
    FOLLOWER = 1
    CANDIDATE = 2
    LEADER = 3

logging.getLogger().setLevel(logging.DEBUG)
executor=ThreadPoolExecutor(max_workers=12)

hash_table = {}

state = None
# latest term server has seen
currentTerm = 0
# candidateId that received vote in current term
votedFor = None
# log entries; each entry contains command for state machine,
# and term when entry was received by leader
log = []


# index of highest log entry known to be committed
commitIndex = 0
#index of highest log entry applied to state machine
lastApplied = 0

lastIndex = -1
lock_index = Lock()


# para os lideres
nextIndex = {}
matchIndex = {}


election_timeout = None
election = None

leaderId = 0

def broadcast(**kwds):
    for i in node_ids:
        if i != node_id:
            send(node_id, i, **kwds)

def verify_term(term):
    global currentTerm
    return term >= currentTerm

def verify_prevLogIndex(prevLogIndex, prevLogTerm):
    global log
    if len(log) == 0:
        return True
    return prevLogIndex < len(log) and log[prevLogIndex].term == prevLogTerm

def verify_heartbeat(msg):
    global log, commitIndex
    prevLogIndex = msg.body.prevLogIndex
    prevLogTerm = msg.body.prevLogTerm
    term = msg.body.term

    if verify_term(term) and verify_prevLogIndex(prevLogIndex,prevLogTerm):
        entries = msg.body.entries

        # 3. If an existing entry conflicts with a new one (same index
        #but different terms), delete the existing entry and all that
        #follow it
        for i in range(msg.body.prevLogIndex+1, len(log)):
            if i< len(log) and log[i].term != prevLogTerm :
                log = log[:i]
                break

        # 4. Append any new entries not already in the log
        for entry in entries:
            if entry not in log:
                log.append(entry)

        # 5. If leaderCommit > commitIndex, set commitIndex =
        #min(leaderCommit, index of last new entry)
        if msg.body.leadercommit > commitIndex:
            commitIndex = min(msg.body.leadercommit, len(log)-1)
        return True
    return False

def sendHeartbeat():
   global lastIndex, index, log, currentTerm, node_id, commitIndex
   global leaderId, lock_index
   lock_index.acquire()
   if commitIndex > lastIndex:
       if commitIndex < len(log):
           broadcast(type='AppendEntriesRPC', term=currentTerm, leader_id=leaderId,
                   prevLogIndex= commitIndex - 1, prevLogTerm = log[commitIndex - 1].term ,
                   entries=log[commitIndex:], leadercommit=commitIndex)
       last_index = commitIndex
       commitIndex += 1
   else:
       prevLogIndex = lastIndex
       prevLogTerm = log[lastIndex].term
       broadcast(type='heartbeat', term=currentTerm, leader_id=node_id,
                   prevLogIndex=prevLogIndex, prevLogTerm = prevLogTerm,
                   entries=[], leadercommit=commitIndex)
   lock_index.release()


def handle(msg):
    global node_id, node_ids, lider, state
    global currentTerm, hash_table, votedFor, log
    global commitIndex, nextIndex, matchIndex
    global index, lastApplied, leaderId

    if msg.body.type == 'init':
        logging.info('node initialized')
        node_id = msg.body.node_id
        node_ids = msg.body.node_ids
        lider = node_ids[0]

        for node in node_ids:
            if node != node_id:
               nextIndex[node] = 0
               matchIndex[node] = 0

        if node_id == lider:
            state = State.LEADER
        else:
            state = State.FOLLOWER

        reply(msg, type='init_ok')


    elif msg.body.type == 'read':
        key = msg.body.key
        logging.info('node read :: key: %d', key)

        if state != State.LEADER:
            reply(msg, type="error", code=11, text="unsupported Contact Leader")
            # FIXME: remove this line
            # send(msg.src, lider, **msg.body)
        else:
            if key in hash_table:
                reply(msg, type="read_ok", value=hash_table[key])
            else:
                reply(msg, type="error", code=20, text="key not found")

    elif msg.body.type == 'write':
        key = msg.body.key
        value_key = msg.body.value
        logging.info('node writing:: key: %d value: %d' , key, value_key)

        if state != State.LEADER:
            reply(msg, type="error", code=11, text="unsupported Contact Leader")
            # FIXME: remove this line
            # send(msg.src, lider, **msg.body)
        else:
            c = Command('write', msg.body.key, msg.body.value, currentTerm, commitIndex, msg)
            log.append(c)
            sendHeartbeat() # change

    elif msg.body.type == 'update':
        if state != State.LEADER:
            key = msg.body.key
            value = msg.body.value
            logging.info('update %s', key)
            hash_table[key] = value

    elif msg.body.type == 'cas':
        key = msg.body.key
        from_key = getattr(msg.body, "from")
        value_to = msg.body.to

        if state != State.LEADER:
            reply(msg, type="error", code=11, text="unsupported Contact Leader")
            # FIXME: remove this line
            # send(msg.src, lider, **msg.body)
        else:
            if key in hash_table:
                if hash_table[key] == from_key:
                    c = Command('cas', key, value_to, currentTerm, commitIndex, msg)
                    log.append(c)
                    sendHeartbeat()
                else:
                    reply(msg, type="error", code=22, text="value doesnt match")
            else:
                reply(msg, type="error", code=20, text="key not found")

    elif msg.body.type == 'AppendEntriesRPC':
        logging.info("AppendEntriesRPC")

        if verify_heartbeat(msg):
            reply(msg, type='AppendEntriesRPC_ok', success=True, term=currentTerm)
        else:
            reply(msg, type='AppendEntriesRPC_ok', success=False, term=currentTerm)

    elif msg.body.type == 'AppendEntriesRPC_ok':
        logging.info('log replication response')

        if msg.body.success == True :
            request = log[len(log)-1]
            request.resp += 1
            #If there a majority of replicas responses, apply the command to the state machine
            if request.resp >= (len(node_ids)/2):
                hash_table[request.key] = request.value
                if request.type == "write":
                    reply(request.src, type='write_ok')
                else:
                    reply(request.src, type='cas_ok')
                c = Command('update', request.key, request.value, currentTerm, lastApplied, None)
                broadcast(type='update', key=request.key, value=request.value)
                lastApplied += 1
                request.resp = 0

    else:
        logging.warning('unknown message type %s', msg.body.type)

# Main loop
executor.map(lambda msg: exitOnError(handle, msg), receiveAll())
