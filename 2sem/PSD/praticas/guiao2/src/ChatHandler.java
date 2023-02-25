import java.io.IOException;
import java.nio.ByteBuffer;

public interface ChatHandler {
    void handleRead(ByteBuffer in) throws IOException;
    ByteBuffer handleWrite() throws IOException;
}
