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

    //private int next = 0;
    //public int getNext() {
    //    try {
    //        this.l.lock();
    //        return next++;
    //    } finally {
    //        this.l.unlock();
    //    }
    //}

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

    public ByteBuffer get(int i) throws InterruptedException {
        //while there's no new messages...
        while (QueueSize()<=i) {
            try {
                this.l.lock();
                //wait for the notification that there's a new message
                this.c.await();
            } finally {
                this.l.unlock();
            }
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
        System.out.println("Server started");

        while(true) {
            SocketChannel s = ss.accept();

            ReaderThread reader = new ReaderThread(chat, s);
            WriterThread writer = new WriterThread(chat, s);

            reader.start();
            writer.start();
        }
    }
}
