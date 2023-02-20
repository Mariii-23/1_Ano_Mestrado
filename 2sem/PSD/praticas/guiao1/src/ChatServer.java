import java.io.IOException;
import java.net.InetSocketAddress;
import java.nio.ByteBuffer;
import java.nio.channels.ServerSocketChannel;
import java.nio.channels.SocketChannel;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.locks.Condition;
import java.util.concurrent.locks.Lock;
import java.util.concurrent.locks.ReentrantLock;

public class ChatServer {
    private List<ByteBuffer> queue= new ArrayList<>();
    private Lock l = new ReentrantLock();
    private Condition c = l.newCondition();

    public void insert(ByteBuffer b) {
        try {
            this.l.lock();

            //add the buffer to the shared queue
            this.queue.add(b);

            //notify the threads that are waiting to get messages
            this.c.signalAll();
        }
        finally {
            this.l.unlock();
        }
    }

    public ByteBuffer Get(int i) throws InterruptedException {
        //while there's no new messages...
        while (QueueSize()<=i) {
            this.l.lock();
            //wait for the notification that there's a new message
            this.c.await();
        }
        return this.queue.get(i);
    }

    public int QueueSize() {
        return this.queue.size();
    }


    public static void main(String[] args) throws IOException {
        ChatServer chat = new ChatServer();

        ServerSocketChannel ss = ServerSocketChannel.open();
        ss.bind(new InetSocketAddress(12345));

        while(true) {
            SocketChannel s = ss.accept();

            ReaderThread reader = new ReaderThread(chat, s);
            WriterThread writer = new WriterThread(chat, s);

            reader.start();
            writer.start();
        }
    }
}
