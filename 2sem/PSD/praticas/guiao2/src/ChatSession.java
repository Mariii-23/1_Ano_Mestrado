import java.io.IOException;
import java.nio.ByteBuffer;

public class ChatSession implements ChatHandler {
    private final ByteBuffer stored;

    public ChatSession() {
        stored = ByteBuffer.allocate(100);
    }

    public void handleRead(ByteBuffer in) throws IOException {
        stored.put(in);
    }

    public ByteBuffer handleWrite() throws IOException {
        var buf = stored.duplicate().flip();
        // clear the buffer
        stored.clear();
        return buf;
    }
}
