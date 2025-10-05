package org.apache.http.impl.io;

import java.io.InputStream;
import org.apache.http.io.BufferInfo;
import org.apache.http.io.SessionInputBuffer;
import org.apache.http.util.Args;

public class IdentityInputStream extends InputStream {
    private boolean closed = false;
    private final SessionInputBuffer in;

    public IdentityInputStream(SessionInputBuffer sessionInputBuffer) {
        this.in = (SessionInputBuffer) Args.notNull(sessionInputBuffer, "Session input buffer");
    }

    public int available() {
        if (this.in instanceof BufferInfo) {
            return ((BufferInfo) this.in).length();
        }
        return 0;
    }

    public void close() {
        this.closed = true;
    }

    public int read() {
        if (this.closed) {
            return -1;
        }
        return this.in.read();
    }

    public int read(byte[] bArr, int i, int i2) {
        if (this.closed) {
            return -1;
        }
        return this.in.read(bArr, i, i2);
    }
}
