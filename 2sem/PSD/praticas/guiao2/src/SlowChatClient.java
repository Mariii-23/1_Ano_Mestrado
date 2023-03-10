import java.io.IOException;
import java.net.InetSocketAddress;
import java.nio.ByteBuffer;
import java.nio.channels.SocketChannel;

public class SlowChatClient {
    public static void main(String[] args) throws IOException {
        SocketChannel s = SocketChannel.open(new InetSocketAddress("localhost", 12345));

        s.write(ByteBuffer.wrap("hello\n".getBytes()));
        try {
            Thread.sleep(5000);
        } catch (InterruptedException e) {
            System.out.println(e.getMessage());
        }
        s.write(ByteBuffer.wrap("Wait\n".getBytes()));
        ByteBuffer bb = ByteBuffer.allocate(1);
        while (s.read(bb) > 0) {
            System.out.println(new String(bb.array()));
            bb.clear();
            try {
                Thread.sleep(5000);
            } catch (InterruptedException e) {
                System.out.println(e.getMessage());
            }
        }
    }
}
