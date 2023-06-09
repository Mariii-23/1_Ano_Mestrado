#!/usr/bin/env python
#
# TODO: Verificar

import logging
from ms import receiveAll, reply, send

logging.getLogger().setLevel(logging.DEBUG)

node_id = None
node_ids = None

vv = {}
received = []

array = []


def can_be_delivered(msg):
    global  vv , received , array
    can_be_delivered = True
    sender = msg.src
    vv_sender = msg.body.vv

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
            element = msg.body.element
            match msg.body.type:
                # case "add":
                #     if element not in array:
                #         array.append(element)
                #         broadcast(type='fwd_add', vv=vv, element=element)
                case 'fwd_add':
                    if element not in array:
                        array.append(element)
                # case "remove":
                #     if element in array:
                #         array.remove(element)
                #         broadcast(type='fwd_remove', vv=vv, element=element)
                case 'fwd_remove':
                    if element in array:
                        array.remove(element)
                # case 'read':
                #     reply(msg, type='read_ok', value=array)
            return can_be_delivered

    return not can_be_delivered


def retest_deliveries():
    global  vv , received , array
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

        case 'add':
            reply(msg, type='add_ok')
            logging.info('Add')

            # if not can_be_delivered(msg):
            #     received.append(msg)
            # else:
            vv[node_id] += 1
            element = msg.body.element
            if element not in array:
                array.append(element)

            broadcast(type='fwd_add', vv=vv, element=element)


        case 'fwd_add':
            logging.info('received add message from %s', msg.src)
            if not can_be_delivered(msg):
                received.append(msg)
            else:
                element = msg.body.element
                if element not in array:
                    array.append(element)
                new_delivery = retest_deliveries()
                while(new_delivery):
                    new_delivery = retest_deliveries()

        case 'remove':

            reply(msg, type='remove_ok')
            logging.info('Remove')

            # if not can_be_delivered(msg):
            #     received.append(msg)
            # else:
            vv[node_id] += 1
            element = msg.body.element
            if element in array:
                array.remove(element)
                broadcast(type='fwd_remove', vv=vv, element=element)


        case 'fwd_remove':
            logging.info('received remove message from %s', msg.src)
            if not can_be_delivered(msg):
                received.append(msg)
            else:
                element = msg.body.element
                if element in array:
                    array.remove(element)
                new_delivery = retest_deliveries()
                while(new_delivery):
                    new_delivery = retest_deliveries()

        case 'read':

            logging.info('Read')
            reply(msg, type='read_ok', value=array)
