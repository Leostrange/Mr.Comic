package defpackage;

import java.io.InputStream;

/* renamed from: ui  reason: default package */
/* compiled from: ReadOnlyAccessInputStream */
public final class ui extends InputStream {
    private uf a;
    private long b;
    private final long c;
    private final long d;

    public ui(uf ufVar, long j, long j2) {
        this.a = ufVar;
        this.c = j;
        this.b = j;
        this.d = j2;
        ufVar.a(this.b);
    }

    public final int read() {
        if (this.b == this.d) {
            return -1;
        }
        int read = this.a.read();
        this.b++;
        return read;
    }

    public final int read(byte[] bArr) {
        return read(bArr, 0, bArr.length);
    }

    public final int read(byte[] bArr, int i, int i2) {
        if (i2 == 0) {
            return 0;
        }
        if (this.b == this.d) {
            return -1;
        }
        int read = this.a.read(bArr, i, (int) Math.min((long) i2, this.d - this.b));
        this.b += (long) read;
        return read;
    }
}
