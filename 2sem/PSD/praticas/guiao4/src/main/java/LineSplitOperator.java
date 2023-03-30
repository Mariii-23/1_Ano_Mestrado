import io.reactivex.rxjava3.core.FlowableOperator;

import java.awt.*;
import java.nio.ByteBuffer;

public class LineSplitOperator implements FlowableOperator<ByteBuffer,ByteBuffer> {

    private BufferCallback cb;

    public  void subscribe(BufferCallback cb) {
        cb = cb;
    }


    public void onNext(ByteBuffer bb) {
        while(bb.hasRemaining()) {
            byte b = bb.get(); line.put(b);
            if (b == "\n" || !line.hasRemaining()) {
                line.flip();
                cb.onNext(line);
                line = ByteBuffer.allocate(…);
            }
        }
    }
    public void onComplete() {
        ///
        cb.onComplete(); }
    public void onError(Throwable t) { ////
        // cb.onError();}

    public Subscriber<...> apply(Subscriber<...> child) throws Throwable {
        return new Subscriber<ByteBuffer>() {
            public void onSubscribe(Subscription parent) {
                this.parent = parent;
                child.onSubscribe(new Subscription() {
                    public void request(long l) {
                        //coisas
                    }
                    }
                });
            }
            public void onNext(ByteBuffer bb) {
                if (have downstream credits)
                    child.onNext(...);

                if (can receive more data)
                    parent.request(…);
            }
        }
}