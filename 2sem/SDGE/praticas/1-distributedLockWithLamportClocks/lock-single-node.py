#!/usr/bin/env python
import logging
from ms import receiveAll, reply, send

acquired = None
requests = []
timestamp = 0
number_clients = 0

# pedir a todas as réplicas o lock
def notify_clients(client_id,timestamp):
    global number_clients
    for client in node_ids:
        if client != client_id:
            send(client_id, client, type="request_lock", timestamp=timestamp)
            number_clients += 1

# pedir a todas as réplicas o unlock
def notify_clients_unlock(client_id,timestamp):
    global number_clients
    for client in node_ids:
        if client != client_id:
            send(client_id, client, type="request_unlock", timestamp=timestamp)
            number_clients += 1

for msg in receiveAll():
    match msg.body.type:
        case 'init':
            node_id = msg.body.node_id
            node_ids = msg.body.node_ids
            logging.info('node %s initialized', node_id)
            reply(msg, type='init_ok')

        case 'lock':
            if acquired == None:
                timestamp += 1
                notify_clients(node_id, timestamp)

                acquired = msg
                if number_clients == 0:
                    reply(msg, type='lock_ok')
            else:
                requests.append(msg)

        case 'unlock':
            timestamp += 1
            if acquired and acquired.src == msg.src:
                notify_clients_unlock(node_id,timestamp)
                reply(msg, type='unlock_ok')

                if requests:
                    acquired = requests.pop(0)
                    notify_clients(node_id,timestamp)

                    if number_clients == 0:
                        reply(acquired, type='lock_ok')
                else:
                    acquired = None
                acquired = None

        case 'request_lock':
            #TODO: fix me no caso de receber um request lock
            #e eu próprio ter um lock
            if msg.body.timestamp > timestamp:
                timestamp = msg.body.timestamp

            acquired = msg
            timestamp += 1
            reply(msg, type='request_lock_ok', timestamp=timestamp)

        case 'request_lock_ok':
            number_clients -= 1

            timestamp += 1
            if number_clients == 0:
                reply(acquired, type='lock_ok')


        case 'request_unlock':
            if msg.body.timestamp > timestamp:
                timestamp = msg.body.timestamp

            acquired = None
            if requests:
                acquired = requests.pop(0)
                notify_clients(node_id,timestamp)
            timestamp += 1
            reply(msg, type='request_unlock_ok', timestamp=timestamp)

        case 'request_unlock_ok':
            timestamp += 1
