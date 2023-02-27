import java.nio.ByteBuffer;

public class ChatSession implements ChatHandler {
    private final ByteBuffer stored;

    public ChatSession() {
        stored = ByteBuffer.allocate(100);
    }

    public void handleRead(ByteBuffer in) {
        stored.put(in);
    }

    public ByteBuffer handleWrite() {
        var buf = stored.duplicate().flip();
        // clear the buffer
        stored.clear();
        return buf;
    }
}
