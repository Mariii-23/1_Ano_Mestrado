import java.io.IOException;
import java.nio.ByteBuffer;
import java.nio.channels.SocketChannel;

public class ReaderThread extends Thread {
    public ChatServer chat;
    public SocketChannel socket;

    public ReaderThread (ChatServer c, SocketChannel s) {
        this.chat = c;
        this.socket = s;
    }

    public void run() {
        try {
            while (true) {
                ByteBuffer buffer = ByteBuffer.allocate(1024);

                //read from the connection
                if (this.socket.read(buffer) < 0)
                    break;

                //place the pointer position on the begining of the content read
                buffer.flip();

                //place the buffer read on the shared queue
                this.chat.insert(buffer);
            }
        }
        catch (Exception e){
            this.chat.insert(ByteBuffer.allocate(0));
        }
    }
}
