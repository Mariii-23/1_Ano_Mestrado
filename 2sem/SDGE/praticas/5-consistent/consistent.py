#!/usr/bin/env python3

import logging
from concurrent.futures import ThreadPoolExecutor
from ms import send, receiveAll, reply, exitOnError
from state import State

logging.getLogger().setLevel(logging.DEBUG)
executor=ThreadPoolExecutor(max_workers=12)


state: State
node_id: str | None


def handle(msg):
    # State
    global node_id, node_ids

    # Message handlers
    if msg.body.type == 'init':
        logging.info('node initialized')
        reply(msg, type='init_ok')

        node_id = msg.body.node_id
        node_ids = msg.body.node_ids

        state = State(node_id, node_ids)
        state.repair()

    else:
        state.handle(msg)
        # logging.warning('unknown message type %s', msg.body.type)

# Main loop
executor.map(lambda msg: exitOnError(handle, msg), receiveAll())
