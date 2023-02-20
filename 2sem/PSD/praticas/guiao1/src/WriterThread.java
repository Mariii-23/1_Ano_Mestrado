import java.io.IOException;
import java.nio.ByteBuffer;
import java.nio.channels.SocketChannel;

public class WriterThread extends Thread {
    public ChatServer chat;
    public SocketChannel socket;

    public WriterThread (ChatServer c, SocketChannel s) {
        this.chat = c;
        this.socket = s;
    }

    public void run() {
        //simulates the pointer to the position on the queue
        int next = 0;

        try {
            while (true) {
                ByteBuffer buffer = null;

                try {
                    //read from the shared queue
                    buffer = this.chat.get(next++);
                } catch (InterruptedException e) {
                    throw new RuntimeException(e);
                }

                //write the buffer to the connection
                this.socket.write(buffer.duplicate());
            }
        } catch (IOException e) {
            e.printStackTrace();
        }
    }
}
