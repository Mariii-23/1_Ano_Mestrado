import io.reactivex.rxjava3.core.FlowableOperator;
import org.reactivestreams.Subscriber;

import java.nio.ByteBuffer;

import org.reactivestreams.Subscription;


public class LineSplitOperator implements FlowableOperator<ByteBuffer,ByteBuffer> {


    @Override
    public Subscriber<? super ByteBuffer> apply(Subscriber<? super ByteBuffer> subscriber) throws Throwable {
        return new Subscriber<ByteBuffer>() {
            private Subscription parent;
            private Subscriber<? super ByteBuffer> subscriber;

            public void onSubscribe(final Subscription s) {
                this.parent = s;
                subscriber.onSubscribe(new Subscription() {
                    public void request(long n) {
                        s.request(n);
                    }
                    public void cancel() {
                        s.cancel();
                    }
                });
            }
            public void onNext(ByteBuffer bb) {
                if(bb.hasRemaining()) {
                    subscriber.onNext(bb);
                }
                //if can receive more data
                if(bb.hasRemaining()) {
                    this.parent.request(1);
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
        };

    }
}