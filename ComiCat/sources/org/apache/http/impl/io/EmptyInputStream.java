package org.apache.http.impl.io;

import java.io.InputStream;

public final class EmptyInputStream extends InputStream {
    public static final EmptyInputStream INSTANCE = new EmptyInputStream();

    private EmptyInputStream() {
    }

    public final int available() {
        return 0;
    }

    public final void close() {
    }

    public final void mark(int i) {
    }

    public final boolean markSupported() {
        return true;
    }

    public final int read() {
        return -1;
    }

    public final int read(byte[] bArr) {
        return -1;
    }

    public final int read(byte[] bArr, int i, int i2) {
        return -1;
    }

    public final void reset() {
    }

    public final long skip(long j) {
        return 0;
    }
}
