import java.io.IOException;
import java.net.InetSocketAddress;
import java.nio.ByteBuffer;
import java.nio.channels.SocketChannel;

public class ChatClient {
    public static void main(String[] args) throws IOException {
        SocketChannel s = SocketChannel.open(new InetSocketAddress("localhost", 12345));

        ByteBuffer bb = ByteBuffer.allocate(1024);

        while(s.read(bb)>0) {
            System.out.println(new String(bb.array()));
            bb.clear();
        }
    }
}
