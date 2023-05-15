
import logging
from types import SimpleNamespace as sn
from ams import send

class Seq:
    def __init__(self):
        self.next = 0
        self.pending = {}

    async def order(self, ts, op, handler):
        self.pending[ts] = op
        while self.next in self.pending:
            logging.debug('ordered %d', self.next)
            op = self.pending.pop(self.next)
            await handler(self.next, op)
            self.next += 1

class TOCast(Seq):
    def __init__(self, node_id, node_ids):
        super().__init__()
        self.queue = []
        self.node_id = node_id
        self.node_ids = node_ids

    def forward(self, op):
        self.queue = [op] + self.queue
        send(self.node_id, 'lin-tso', type='ts')

    def send(self, **body):
        op = sn(src=self.node_id, dest=self.node_id, body=sn(**body))
        self.forward(op)

    async def handle(self, msg, handler):
        if msg.body.type == 'ts_ok':
            op = self.queue.pop()
            for i in self.node_ids:
                send(self.node_id, i, type='ts_cast', ts=msg.body.ts, op=op)

        elif msg.body.type == 'ts_cast':
            await self.order(msg.body.ts, msg.body.op, handler)
        
        else:
            logging.warning('unknown message type %s', msg.body.type)
