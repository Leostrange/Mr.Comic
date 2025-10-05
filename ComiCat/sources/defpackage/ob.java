package defpackage;

import java.io.FilterInputStream;
import java.io.InputStream;
import java.util.logging.Level;
import java.util.logging.Logger;

/* renamed from: ob  reason: default package */
/* compiled from: LoggingInputStream */
public final class ob extends FilterInputStream {
    private final oa a;

    public ob(InputStream inputStream, Logger logger, Level level, int i) {
        super(inputStream);
        this.a = new oa(logger, level, i);
    }

    public final void close() {
        this.a.close();
        super.close();
    }

    public final int read() {
        int read = super.read();
        this.a.write(read);
        return read;
    }

    public final int read(byte[] bArr, int i, int i2) {
        int read = super.read(bArr, i, i2);
        if (read > 0) {
            this.a.write(bArr, i, read);
        }
        return read;
    }
}
