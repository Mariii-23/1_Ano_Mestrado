#!/usr/bin/env python3

import logging
from concurrent.futures import ThreadPoolExecutor
from ms import send, receiveAll, reply, exitOnError

logging.getLogger().setLevel(logging.DEBUG)
executor = ThreadPoolExecutor(max_workers=12)

hash_table = {}

queue = []


q_r = 0
q_w = 0

tratar = None
id_tratar = -1
responses = []

timestamp = 0

a_resolver = False


def retest_deliveries():
    global responses, timestamp, tratar, id_tratar
    global queue
    responses = []
    if queue:
        timestamp += 1
        tratar = queue.pop(1)
        id_tratar = timestamp
        key = tratar.msg.body.key

        if len(node_ids) > 1:
            broadcast(type='_read', key=key, msgId=timestamp)
        else:
            type_msg = tratar.body.type

            if len(node_ids) > 1:
                broadcast(type='_read', key=key, msgId=timestamp)
            else:
                if type_msg == "write":
                    hash_table[key] = (tratar.body.value, timestamp, node_id)
                    reply(tratar, type='write_ok')
                elif type_msg == "read":
                    if key in hash_table:
                        (value, _, _) = hash_table[key]
                        reply(tratar, type='read_ok', value=value)
                    else:
                        reply(tratar, type="error",
                              code=20, text="key not found")
                retest_deliveries()

    else:
        tratar = None
        id_tratar = -1


def get_best_timestamp(rest):
    best = None
    best_timestamp = -1

    for msg in rest:
        time = msg.body.timestamp_aux
        src = msg.src
        comp = True  # FIXME clientId > node_id
        if time > best_timestamp or (time == best_timestamp and comp):
            best = msg
            best_timestamp = best.body.timestamp_aux

    return best


def broadcast(**kwds):
    for i in node_ids:
        if i != node_id:
            send(node_id, i, **kwds)

# (value, timestamp, clientID)


def get_elem(key):
    if key not in hash_table:
        return (None, -1, None)
    return hash_table[key]


def handle(msg):
    # State
    global node_id, node_ids
    global q_r, q_w, responses
    global tratar, timestamp, id_tratar
    global queue, hash_table, a_resolver

    # Message handlers
    if msg.body.type == 'init':
        logging.info('node initialized')
        node_id = msg.body.node_id
        node_ids = msg.body.node_ids

        q_r = (len(node_ids) - 1) / 2
        q_w = q_r

        reply(msg, type='init_ok')

    elif msg.body.type == 'write':
        key = msg.body.key
        value = msg.body.value
        logging.info('node writing:: key:', key, "value: ", value)

        if tratar:
            queue.append(msg)
        else:
            timestamp += 1
            tratar = msg
            id_tratar = timestamp

            responses = []
            if len(node_ids) > 1:
                broadcast(type='_read', key=key, msgId=timestamp)
            else:
                hash_table[key] = (tratar.body.value, timestamp, node_id)
                reply(msg, type='write_ok')
                retest_deliveries()

    elif msg.body.type == '_read':
        msgId = msg.body.msgId
        key = msg.body.key
        (value, timestamp_aux, clientId) = get_elem(key)
        reply(msg, type='_read_ok', value=value,
              timestamp_aux=timestamp_aux, clientId=clientId, msgId=msgId)

    elif msg.body.type == '_read_ok':
        msgId = msg.body.msgId
        if msgId == id_tratar and tratar != None and a_resolver == False:
            a_resolver = True
            responses.append(msg)

            n_responses = len(responses)
            msg_type = tratar.body.type

            if msg_type == "write" and n_responses >= q_w:
                best = get_best_timestamp(responses)
                timestamp = best.body.timestamp_aux + 1
                value = tratar.body.value
                key = tratar.body.key
                hash_table[key] = (tratar.body.value, timestamp, node_id)
                if len(node_ids) > 1:
                    broadcast(type='_write', key=key, msgId=timestamp,
                              value=value, clientId=node_id)

                reply(tratar, type='write_ok')
                timestamp += 1
                retest_deliveries()

            elif msg_type == "read" and n_responses >= q_r:
                best = get_best_timestamp(responses)
                timestamp = best.body.msgId + 1
                if best.body.value == None:
                    reply(tratar, type="error", code=20, text="key not found")
                else:
                    reply(tratar, type='read_ok', value=best.body.value)
            a_resolver = False
            retest_deliveries()

    elif msg.body.type == '_write':
        value = msg.body.value
        msgId = msg.body.msgId
        clientId = msg.body.clientId
        key = msg.body.key

        (_, timestamp_atual, clientId_atual) = get_elem(key)
        if msgId > timestamp_atual or (msgId == timestamp_atual and clientId > clientId_atual):
            hash_table[key] = (value, msgId, clientId)
            reply(msg, type='_write_ok', timestamp_aux=timestamp)

    elif msg.body.type == 'read':
        key = msg.body.key
        logging.info('node read:: key:', key)

        if tratar:
            queue.append(msg)
        else:
            timestamp += 1
            tratar = msg
            id_tratar = timestamp
            responses = []
            if len(node_ids) > 1:
                broadcast(type='_read', key=key, msgId=timestamp)
            else:
                if key in hash_table:
                    (value, _, _) = get_elem(key)
                    reply(tratar, type='read_ok', value=value)
                else:
                    reply(msg, type="error", code=20, text="key not found")
                retest_deliveries()

    elif msg.body.type == 'cas':
        if len(node_ids) > 1:
            reply(msg, type="error", code=11, text="unsupported")
        else:
            key = msg.body.key
            from_key = getattr(msg.body, "from")
            to = msg.body.to
            value = (value, _, _) = get_elem(key)
            if key not in hash_table:
                reply(msg, type="error", code=20, text="key not found")
            elif value == from_key:
                hash_table[key] = (to, timestamp, node_id)
                reply(msg, type='cas_ok')
    else:
        logging.warning('unknown message type %s', msg.body.type)


# Main loop
executor.map(lambda msg: exitOnError(handle, msg), receiveAll())
