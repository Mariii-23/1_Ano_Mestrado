import java.io.IOException;
import java.net.InetSocketAddress;
import java.nio.ByteBuffer;
import java.nio.channels.SelectionKey;
import java.nio.channels.Selector;
import java.nio.channels.SocketChannel;
import java.nio.channels.spi.SelectorProvider;

public class ChatClient {
    public static void main(String[] args) throws IOException {

        SocketChannel ss = SocketChannel.open(new InetSocketAddress("localhost", 12345));

        System.out.println("Cliente Started");

        ss.write(ByteBuffer.wrap("Hello I am the client\n".getBytes()));
        ByteBuffer bb = ByteBuffer.allocate(1024);

        while(ss.read(bb)>0) {
            System.out.println("Recevied " + new String(bb.array()));
            bb.clear();
        }
    }
}
