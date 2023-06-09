#!/usr/bin/env python3

import logging
from concurrent.futures import ThreadPoolExecutor
from ms import send, receiveAll, reply, exitOnError

TIME_BETWEEN = 1 # seconds


class State():
   nodes: dict[str, int] # representariam os 5 dedos
   node_id: str

   next_node: str
   previous_node: str

   def __init__(self, node_id: str, nodes: list[str]) -> None:
        self.node_id = node_id
        self.nodes = dict.fromkeys(nodes, 0)


   def repair() -> None:
        Thread(target=self.stabilize).start()
        Thread(target=self.rectify).start()


   def handle(self, msg) -> None:
        try:
            getattr(self, 'handle_' + msg.body.type)(msg)
        except AttributeError:
            logging.warning('unknown message type %s', msg.body.type)


   def stabilize(self) -> None:
       while True:
           sleep(TIME_BETWEEN)
           # Fazer cenas

   def rectify(self) -> None:
       while True:
           sleep(TIME_BETWEEN)
           # Fazer cenas
