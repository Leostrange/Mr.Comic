package defpackage;

import java.io.OutputStream;

/* renamed from: nn  reason: default package */
/* compiled from: ByteCountingOutputStream */
final class nn extends OutputStream {
    long a;

    nn() {
    }

    public final void write(int i) {
        this.a++;
    }

    public final void write(byte[] bArr, int i, int i2) {
        this.a += (long) i2;
    }
}
