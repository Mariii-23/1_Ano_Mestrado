import io.reactivex.rxjava3.core.Flowable;
import io.reactivex.rxjava3.core.ObservableEmitter;
import io.reactivex.rxjava3.subscribers.DefaultSubscriber;
import org.reactivestreams.Subscriber;
import org.reactivestreams.Subscription;

import java.io.IOException;
import java.nio.ByteBuffer;
import java.nio.channels.*;
import java.nio.channels.spi.SelectorProvider;
import java.util.Iterator;
import java.util.concurrent.Flow;
import java.util.concurrent.locks.ReentrantLock;

public class MainLoop {
    private Selector sel;

    private class ReadSubscription implements Flow.Subscription {
        private long credits = 0;
        private ReentrantLock lock = new ReentrantLock();
        private SelectionKey key;

        public ReadSubscription(SelectionKey key, Subscriber<? super ByteBuffer> subscriber) {
            this.key = key;
        }

        public void request(long n) {
            try {
                lock.lock();
                credits += n;
                key.interestOpsOr(SelectionKey.OP_READ);
                key.selector().wakeup();
            } finally {
                lock.unlock();
            }
        }

        @Override
        public void cancel() {
            // TODO Auto-generated method stub
            throw new UnsupportedOperationException("Unimplemented method 'cancel'");
        }
    }

    public void run() throws IOException{
        sel = SelectorProvider.provider().openSelector();

        while (true) {
            sel.select();
            for (Iterator<SelectionKey> i = sel.selectedKeys().iterator(); i.hasNext();) {
                SelectionKey key = i.next();
                // i/o
                if (key.isAcceptable()) {
                    //there is a pending accept
                    var sub = (ObservableEmitter<SocketChannel>) key.attachment();
                }
                if (key.isWritable()) {
                    //there is a pending write
                    if (key.attachment() instanceof Flowable) {
                        Flowable<ByteBuffer> flow = (Flowable<ByteBuffer>) key.attachment();
                        write(flow, (SocketChannel) key.channel());
                    }else{
                        flow.request(1);
                        key.interestOpsAnd(~SelectionKey.OP_WRITE);
                    }
                }
                if (key.isReadable()) {
                    //there is a pending read
                    MySubcription sub = (MySubcription) key.attachment();

                    sub.subscribe.onNext(bb);
                    if (sub.credits == 0)
                        key.interestOpsAnd(~SelectionKey.OP_READ);
                }
            }
        }
    }

    public Flowable<ByteBuffer> read(SocketChannel s) {
        return new Flowable<ByteBuffer>() {
            @Override
            protected void subscribeActual(Subscriber<? super ByteBuffer> subscriber) {
                try {
                    s.configureBlocking(false);
                    SelectionKey key = s.register(sel, 0);
                    ReadSubscription sub = new ReadSubscription(key, subscriber);
                    key.attach(sub);
                    subscriber.onSubscribe((Subscription) sub);
                } catch (IOException e) {
                    // TODO Auto-generated catch block
                    e.printStackTrace();
                }
            }
        };
    }


    public void write(Flowable<ByteBuffer> flow, SocketChannel s){
        flow.subscribe(new DefaultSubscriber<ByteBuffer>(){
            public void onStart() {
                try {
                    SelectionKey key = s.register(sel, SelectionKey.OP_WRITE);
                } catch (ClosedChannelException e) {
                    // TODO Auto-generated catch block
                    e.printStackTrace();
                }
                request(1);
            }
            public void onNext(ByteBuffer b) {
                try {
                    s.write(b);
                } catch (IOException e) {
                    throw new RuntimeException(e);
                }
                if (b.hasRemaining()){
                    key.interestOpsOr(SelectionKey.OP_WRITE);
                } else {
                    request(1);
                }
            }
            @Override
            public void onError(Throwable t) {
                // TODO Auto-generated method stub
                throw new UnsupportedOperationException("Unimplemented method 'onError'");
            }
            @Override
            public void onComplete() {
                // TODO Auto-generated method stub
                throw new UnsupportedOperationException("Unimplemented method 'onComplete'");
            }
        });
    }

}
