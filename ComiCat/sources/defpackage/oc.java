package defpackage;

import java.io.FilterOutputStream;
import java.io.OutputStream;
import java.util.logging.Level;
import java.util.logging.Logger;

/* renamed from: oc  reason: default package */
/* compiled from: LoggingOutputStream */
public final class oc extends FilterOutputStream {
    final oa a;

    public oc(OutputStream outputStream, Logger logger, Level level, int i) {
        super(outputStream);
        this.a = new oa(logger, level, i);
    }

    public final void close() {
        this.a.close();
        super.close();
    }

    public final void write(int i) {
        this.out.write(i);
        this.a.write(i);
    }

    public final void write(byte[] bArr, int i, int i2) {
        this.out.write(bArr, i, i2);
        this.a.write(bArr, i, i2);
    }
}
