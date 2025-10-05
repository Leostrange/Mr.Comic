package defpackage;

import java.io.InputStream;

/* renamed from: aje  reason: default package */
/* compiled from: MergedStream */
public final class aje extends InputStream {
    protected final ajc a;
    final InputStream b;
    byte[] c;
    int d;
    final int e;

    public aje(ajc ajc, InputStream inputStream, byte[] bArr, int i, int i2) {
        this.a = ajc;
        this.b = inputStream;
        this.c = bArr;
        this.d = i;
        this.e = i2;
    }

    private void a() {
        byte[] bArr = this.c;
        if (bArr != null) {
            this.c = null;
            if (this.a != null) {
                this.a.a(bArr);
            }
        }
    }

    public final int available() {
        return this.c != null ? this.e - this.d : this.b.available();
    }

    public final void close() {
        a();
        this.b.close();
    }

    public final void mark(int i) {
        if (this.c == null) {
            this.b.mark(i);
        }
    }

    public final boolean markSupported() {
        return this.c == null && this.b.markSupported();
    }

    public final int read() {
        if (this.c == null) {
            return this.b.read();
        }
        byte[] bArr = this.c;
        int i = this.d;
        this.d = i + 1;
        byte b2 = bArr[i] & 255;
        if (this.d < this.e) {
            return b2;
        }
        a();
        return b2;
    }

    public final int read(byte[] bArr) {
        return read(bArr, 0, bArr.length);
    }

    public final int read(byte[] bArr, int i, int i2) {
        if (this.c == null) {
            return this.b.read(bArr, i, i2);
        }
        int i3 = this.e - this.d;
        if (i2 > i3) {
            i2 = i3;
        }
        System.arraycopy(this.c, this.d, bArr, i, i2);
        this.d += i2;
        if (this.d < this.e) {
            return i2;
        }
        a();
        return i2;
    }

    public final void reset() {
        if (this.c == null) {
            this.b.reset();
        }
    }

    public final long skip(long j) {
        long j2;
        if (this.c != null) {
            int i = this.e - this.d;
            if (((long) i) > j) {
                this.d += (int) j;
                return j;
            }
            a();
            j2 = ((long) i) + 0;
            j -= (long) i;
        } else {
            j2 = 0;
        }
        if (j > 0) {
            j2 += this.b.skip(j);
        }
        return j2;
    }
}
