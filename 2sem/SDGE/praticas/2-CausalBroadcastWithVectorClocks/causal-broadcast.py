#!/usr/bin/env python

import logging
from ms import receiveAll, reply, send

logging.getLogger().setLevel(logging.DEBUG)

node_id = None
node_ids = None
vv = {}
delivered = []
received = []

def can_be_delivered(msg):
    can_be_delivered = True
    sender = msg.src
    vv_sender = msg.body.vv
    message = msg.body.message

    dic = vv_sender.__dict__

    #V[j] + 1 = Vm[j]
    if dic[sender] == (vv[sender] + 1):
        #∀ i != sender · vv_sender[sender] ≤ vv[sender]
        for i in node_ids:
            if i != sender:
                if dic[i] > vv[i]:
                    return False

        if can_be_delivered:
            vv[sender] += 1
            delivered.append(message)
            return can_be_delivered

    return not can_be_delivered


def retest_deliveries():
    for m in received:
        if (can_be_delivered(m)):
            received.remove(m)
            return True
    return False

def broadcast(**kwds):
    for i in node_ids:
        if i != node_id:
            send(node_id, i, **kwds)

for msg in receiveAll():
    match msg.body.type:
        case 'init':
            node_id = msg.body.node_id
            node_ids = msg.body.node_ids
            for i in node_ids:
                vv[i] = 0
            logging.info('node %s initialized', node_id)
            reply(msg, type='init_ok')

        case 'cbcast':
            vv[node_id] += 1
            reply(msg, type='cbcast_ok', messages=delivered)
            logging.info('%s making broadcast', node_id)

            delivered = []
            broadcast(type='fwd_msg', vv=vv, message=msg.body.message)

        case 'fwd_msg':
            logging.info('received broadcast message from %s', msg.src)
            # verify if can't be delivered
            if not can_be_delivered(msg):
                received.append(msg)
            else:
                new_delivery = retest_deliveries()
                while(new_delivery):
                    new_delivery = retest_deliveries()
