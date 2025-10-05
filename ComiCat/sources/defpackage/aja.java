package defpackage;

import java.io.IOException;
import java.io.InputStream;
import java.io.Reader;

/* renamed from: aja  reason: default package */
/* compiled from: BaseReader */
abstract class aja extends Reader {
    protected final ajc a;
    protected InputStream b;
    protected byte[] c;
    protected int d;
    protected int e;
    protected char[] f = null;

    protected aja(ajc ajc, InputStream inputStream, byte[] bArr, int i, int i2) {
        this.a = ajc;
        this.b = inputStream;
        this.c = bArr;
        this.d = i;
        this.e = i2;
    }

    protected static void b() {
        throw new IOException("Strange I/O stream, returned 0 bytes on read");
    }

    public final void a() {
        byte[] bArr = this.c;
        if (bArr != null) {
            this.c = null;
            this.a.a(bArr);
        }
    }

    public void close() {
        InputStream inputStream = this.b;
        if (inputStream != null) {
            this.b = null;
            a();
            inputStream.close();
        }
    }

    public int read() {
        if (this.f == null) {
            this.f = new char[1];
        }
        if (read(this.f, 0, 1) <= 0) {
            return -1;
        }
        return this.f[0];
    }
}
