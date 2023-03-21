#!/usr/bin/env python

import logging
from concurrent.futures import ThreadPoolExecutor
from ms import send, receiveAll, reply, exitOnError

logging.getLogger().setLevel(logging.DEBUG)
executor=ThreadPoolExecutor(max_workers=12)

hash_table = {}


currentTerm = 0

count = 0
voted = 0

key_voted = ""
value_voted = 0

queue = []
tratar = None


def add_elem(key, elem):
    hash_table[key] = elem

def get_elem(key):
    if key not in hash_table:
        return None
    return hash_table[key]

def notify_clients(key, new_value, term):
    for client in node_ids:
        if client != node_id:
            send(node_id, client, type="write_voted", key=key, value=new_value, term=term)

def confirm_clients(key, new_value, term):
    for client in node_ids:
        if client != node_id:
            send(node_id, client, type="write_confirm", key=key, value=new_value, term=term)


def handle(msg):
    # State
    global node_id, node_ids, lider
    global currentTerm, count, voted, key_voted,  value_voted, queue, tratar

    # Message handlers
    if msg.body.type == 'init':
        logging.info('node initialized')
        node_id = msg.body.node_id
        node_ids = msg.body.node_ids
        lider = node_ids[0]

        reply(msg, type='init_ok')
    elif msg.body.type == 'node_update':
        key = msg.body.key
        value_key = msg.body.value
        logging.info('node update:: key:' , key, "value: ", value_key)
        add_elem(key, value_key)

    elif msg.body.type == 'read':
        key = msg.body.key
        value_key = get_elem(msg.body.key)
        logging.info('node read :: key: ', key, "value: ", value_key)

        if key == None:
            reply(msg, type="error", code=20, text="key not found")
        else:
            reply(msg, type='read_ok', value=value_key)

    elif msg.body.type == 'write':
        key = msg.body.key
        value_key = msg.body.value
        logging.info('node writing:: key:' , key, "value: ", value_key)

        if node_id != lider:
            # reply(msg, type="error", code=11, text="unsupported")
            send(msg.src, lider, type="write", key=key, value=value_key)
        else:

            if tratar:
                queue.append(msg)
            else:
                tratar = msg
                count = len(node_ids) - 1
                voted = 1
                currentTerm += 1

                key_voted = key
                value_voted = value_key
                notify_clients(key, value_key, currentTerm)

    elif msg.body.type == 'write_voted_ok':
        if node_id != lider:
            reply(msg, type="error", code=11, text="unsupported")
        else:
            # src = msg.src
            count -= 1
            voted += 1

            if count == 0:
                if voted >= (len(node_ids)/2):
                    reply(tratar, type='write_ok', value=value_voted)
                    confirm_clients(key_voted, value_voted, currentTerm)
                    add_elem(key_voted, value_voted)

                tratar = None
                if queue:
                    tratar = queue.pop(0)
                    handle(tratar)

    elif msg.body.type == 'write_voted':
        key = msg.body.key
        value = msg.body.value
        term_lider = msg.body.term

        if term_lider > currentTerm:
            currentTerm +=1
            reply(msg, type='write_voted_ok')
        else:
            msg.body.code = '20'
            msg.body.text = 'Não aceito'
            reply(msg, type='error')


    elif msg.body.type == 'write_confirm':
        key = msg.body.key
        value_key = msg.body.value
        logging.info('node confirm writing:: key:' , key, "value: ", value_key)
        add_elem(key, value_key)

    elif msg.body.type == 'cas':
        reply(msg, type="error", code=11, text="unsupported")

    else:
        logging.warning('unknown message type %s', msg.body.type)

# Main loop
executor.map(lambda msg: exitOnError(handle, msg), receiveAll())
