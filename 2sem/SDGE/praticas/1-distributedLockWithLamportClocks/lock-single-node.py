#!/usr/bin/env python

"""Single node (centralized) lock for Maelstrom

For 'lock' workload.  Will pass the test using
"--node-count 1", but will fail if using, .e.g.,
"--node-count 3".
"""

import logging
from ms import receiveAll, reply

acquired = None
requests = []

timestamp = 0

def notify_clients(client_id,timestamp):
    for client in node_ids:
        if client != client_id:
            send(client_id, client, type="lock", timestamp=timestamp)

for msg in receiveAll():
    match msg.body.type:
        case 'init':
            node_id = msg.body.node_id
            node_ids = msg.body.node_ids
            logging.info('node %s initialized', node_id)
            reply(msg, type='init_ok')
        case 'lock':
            if not acquired:
                notify_clients(node_id, timestamp)
                reply(msg, type='lock_ok')
                acquired = msg
            else:
                requests.append(msg)
        case 'unlock':
            reply(msg, type='unlock_ok')
            if acquired and acquired.src == msg.src:
                if requests:
                    acquired = requests.pop(0)
                    notify_clients(node_id,timestamp)
                    reply(acquired, type='lock_ok')
                else:
                    acquired = None



