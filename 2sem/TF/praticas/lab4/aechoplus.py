#!/usr/bin/env python

# 'echo' workload in Python for Maelstrom
# with an addtional custom MyMsg message

import logging
from asyncio import run, create_task, sleep
from ams import send, receiveAll, reply

logging.getLogger().setLevel(logging.DEBUG)

async def handle(msg):
    # State
    global node_id, node_ids

    # Message handlers
    if msg.body.type == 'init':
        node_id = msg.body.node_id
        node_ids = msg.body.node_ids
        logging.info('node %s initialized', node_id)

        reply(msg, type='init_ok')
    elif msg.body.type == 'echo':
        logging.info('echoing %s', msg.body.echo)

        reply(msg, type='echo_ok', echo=msg.body.echo)

        for dest in node_ids:
            if dest != node_id:
                send(node_id, dest, type='MyMsg', mydata='some data...')
    elif msg.body.type == 'MyMsg':
        logging.info('custom message from peer %s', msg.src)
    else:
        logging.warning('unknown message type %s', msg.body.type)

# Main loop
run(receiveAll(handle))

# schedule deferred work with:
# asyncio.create_task(myAsyncTask(args)))
# schedule a timeout by calling await asyncio.sleep() in a deferred task