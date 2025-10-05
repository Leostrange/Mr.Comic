package org.apache.http.impl.io;

import java.io.IOException;
import java.io.OutputStream;
import org.apache.http.io.SessionOutputBuffer;
import org.apache.http.util.Args;

public class IdentityOutputStream extends OutputStream {
    private boolean closed = false;
    private final SessionOutputBuffer out;

    public IdentityOutputStream(SessionOutputBuffer sessionOutputBuffer) {
        this.out = (SessionOutputBuffer) Args.notNull(sessionOutputBuffer, "Session output buffer");
    }

    public void close() {
        if (!this.closed) {
            this.closed = true;
            this.out.flush();
        }
    }

    public void flush() {
        this.out.flush();
    }

    public void write(int i) {
        if (this.closed) {
            throw new IOException("Attempted write to closed stream.");
        }
        this.out.write(i);
    }

    public void write(byte[] bArr) {
        write(bArr, 0, bArr.length);
    }

    public void write(byte[] bArr, int i, int i2) {
        if (this.closed) {
            throw new IOException("Attempted write to closed stream.");
        }
        this.out.write(bArr, i, i2);
    }
}
