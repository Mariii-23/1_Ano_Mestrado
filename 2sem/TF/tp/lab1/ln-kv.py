#!/usr/bin/env python

import logging
from concurrent.futures import ThreadPoolExecutor
from ms import send, receiveAll, reply, exitOnError

logging.getLogger().setLevel(logging.DEBUG)
executor=ThreadPoolExecutor(max_workers=12)

hash_table = {}

def add_elem(key, elem):
    hash_table[key] = elem

def get_elem(key):
    if key not in hash_table:
        return None
    return hash_table[key]

def notify_clients(src,clients, key, value):
    for client in clients:
        if client != src:
            send(src, client, body={type:"write", key:key, value:value})


def handle(msg):
    # State
    global node_id, node_ids

    # Message handlers
    if msg.body.type == 'init':
        logging.info('node initialized')
        node_id = msg.body.node_id
        node_ids = msg.body.node_ids

        reply(msg, type='init_ok')
    elif msg.body.type == 'read':
        key = msg.body.key
        value_key = get_elem(msg.body.key)
        logging.info('node read :: key: ', key, "value: ", value_key)

        if value_key == None:
            reply(msg, type="error", code=20, text="key not found")
        else:
            reply(msg, type='read_ok', value=value_key)

    elif msg.body.type == 'write':
        key = msg.body.key
        value_key = msg.body.value
        logging.info('node writing:: key:' , key, "value: ", value_key)

        add_elem(key, value_key)
        notify_clients(node_id, node_ids, key, value_key)

        reply(msg, type='write_ok')
    elif msg.body.type == 'cas':
        key = msg.body.key
        from_key = getattr(msg.body, "from")
        to = msg.body.to

        logging.info('cas::  key:' , key, "from: ", from_key, " to: ", to)

        if key not in hash_table:
            reply(msg, type="error", code=20, text="key not found")
        elif hash_table[key] == from_key:
            add_elem(key, to)

            notify_clients(node_id, node_ids, key, value_key)
            reply(msg, type='cas_ok')
        else:
            reply(msg, type="error", code=22, text="value doesnt match")

    else:
        logging.warning('unknown message type %s', msg.body.type)

# Main loop
executor.map(lambda msg: exitOnError(handle, msg), receiveAll())
