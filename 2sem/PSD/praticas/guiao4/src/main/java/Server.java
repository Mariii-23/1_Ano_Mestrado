import java.net.InetSocketAddress;
import java.nio.channels.ServerSocketChannel;
import java.nio.charset.StandardCharsets;

import static io.reactivex.rxjava3.schedulers.Schedulers.computation;

public class Server {
    public static void main(String[] args) throws Exception {
        var ss = ServerSocketChannel.open(new InetSocketAddress(12345));
        var loop = new MainLoop();
        var ss_obs = loop.accept(ss);
        ss_obs.subscribe(s -> {
            var s_flow = loop.read(conn)
                    .observeOn(computation())
                    .lift(new LineSplitOperator())
                    .map(StandardCharsets.UTF_8::decode)
                    .map(String::toUpperCase)
                    .map(a -> StandardCharsets.UTF_8.encode(a));
            loop.write(s_flow, conn);
        });
    }
}
