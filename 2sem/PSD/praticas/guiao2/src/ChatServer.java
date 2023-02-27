import java.io.IOException;
import java.net.InetSocketAddress;
import java.nio.ByteBuffer;
import java.nio.channels.SelectionKey;
import java.nio.channels.Selector;
import java.nio.channels.ServerSocketChannel;
import java.nio.channels.SocketChannel;
import java.nio.channels.spi.SelectorProvider;
import java.util.ArrayList;
import java.util.List;

public class ChatServer {


    public static void main(String[] args) throws IOException {

        Selector sel = SelectorProvider.provider().openSelector();
        List<SelectionKey> clients = new ArrayList<>();

        ServerSocketChannel ss = ServerSocketChannel.open();
        ss.bind(new InetSocketAddress(12345));
        ss.configureBlocking(false);
        ss.register(sel, SelectionKey.OP_ACCEPT);
        System.out.println("Server started\n\n");

        while (true) {
            sel.select();
            var keys = sel.selectedKeys().stream().toList();
            for (SelectionKey key : keys) {

                if (key.isAcceptable()) {
                    //System.out.println("key is acceptable");

                    SocketChannel s = ss.accept();
                    s.configureBlocking(false);
                    SelectionKey nKey = s.register(sel, SelectionKey.OP_READ);
                    nKey.attach(new ChatSession());
                    clients.add(nKey);

                } else if (key.isReadable()) {
                    //System.out.println("Key is readable");

                    ByteBuffer buf = ByteBuffer.allocate(100);
                    SocketChannel s = (SocketChannel) key.channel();

                    if (s.read(buf) < 0) {
                        key.cancel();
                        s.close();
                        //Remove the client from the clients
                        clients.remove(key);
                    } else {
                        System.out.println("Recevied:: " + new String(buf.array()));
                        buf.flip();
                        var clientsExceptSource = new ArrayList<>(clients);
                        //FIXME: Commented out line to work as echo
                        //clientsExceptSource.remove(key);

                        for (var k : clientsExceptSource) {
                            ((ChatHandler) k.attachment()).handleRead(buf.duplicate());
                            k.interestOps(k.interestOps() | SelectionKey.OP_WRITE);
                        }
                    }

                } else if (key.isWritable()) {
                    //System.out.println("Key is writable");
                    var buf = ((ChatHandler) key.attachment()).handleWrite();

                    SocketChannel s = (SocketChannel) key.channel();
                    s.write(buf);

                    key.interestOps(SelectionKey.OP_READ);
                }
            }
            sel.selectedKeys().clear();
        }
    }
}
