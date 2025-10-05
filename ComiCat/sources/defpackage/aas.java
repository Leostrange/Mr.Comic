package defpackage;

import java.io.IOException;
import java.io.InputStream;
import java.io.InterruptedIOException;

/* renamed from: aas  reason: default package */
/* compiled from: SmbFileInputStream */
public class aas extends InputStream {
    aar a;
    private long b;
    private int c;
    private int d;
    private int e;
    private byte[] f;

    public aas(aar aar) {
        this(aar, 1);
    }

    public aas(aar aar, int i) {
        this.f = new byte[1];
        this.a = aar;
        this.d = i & 65535;
        this.e = (i >>> 16) & 65535;
        if (aar.l != 16) {
            aar.a(i, this.e);
            this.d &= -81;
        } else {
            aar.a();
        }
        this.c = Math.min(aar.i.f.e.w - 70, aar.i.f.e.s.b - 70);
    }

    public aas(String str) {
        this(new aar(str));
    }

    private static IOException a(aaq aaq) {
        Throwable th;
        acd acd;
        Throwable th2 = aaq.o;
        if (th2 instanceof acd) {
            acd = (acd) th2;
            th = acd.a;
        } else {
            th = th2;
            acd = aaq;
        }
        if (!(th instanceof InterruptedException)) {
            return acd;
        }
        InterruptedIOException interruptedIOException = new InterruptedIOException(th.getMessage());
        interruptedIOException.initCause(th);
        return interruptedIOException;
    }

    public final int a(byte[] bArr, int i, int i2) {
        int i3;
        int i4;
        if (i2 <= 0) {
            return 0;
        }
        long j = this.b;
        if (this.f == null) {
            throw new IOException("Bad file descriptor");
        }
        this.a.a(this.d, this.e);
        abx abx = aar.c;
        if (abx.a >= 4) {
            aar.c.println("read: fid=" + this.a.k + ",off=" + i + ",len=" + i2);
        }
        aad aad = new aad(bArr, i);
        if (this.a.l == 16) {
            aad.w = 0;
        }
        do {
            i3 = i2 > this.c ? this.c : i2;
            abx abx2 = aar.c;
            if (abx.a >= 4) {
                aar.c.println("read: len=" + i2 + ",r=" + i3 + ",fp=" + this.b);
            }
            try {
                aac aac = new aac(this.a.k, this.b, i3);
                if (this.a.l == 16) {
                    aac.d = 1024;
                    aac.b = 1024;
                    aac.c = 1024;
                }
                this.a.a((zm) aac, (zm) aad);
                i4 = aad.D;
                if (i4 > 0) {
                    this.b += (long) i4;
                    i2 -= i4;
                    aad.c += i4;
                    if (i2 <= 0) {
                        break;
                    }
                } else {
                    return (int) (this.b - j > 0 ? this.b - j : -1);
                }
            } catch (aaq e2) {
                if (this.a.l == 16 && e2.n == -1073741493) {
                    return -1;
                }
                throw a(e2);
            }
        } while (i4 == i3);
        return (int) (this.b - j);
    }

    public int available() {
        if (this.a.l != 16) {
            return 0;
        }
        try {
            aau aau = (aau) this.a;
            this.a.a(32, aau.s & 16711680);
            abk abk = new abk(this.a.j, this.a.k);
            abl abl = new abl(aau);
            aau.a((zm) abk, (zm) abl);
            if (abl.a != 1 && abl.a != 4) {
                return abl.S;
            }
            this.a.m = false;
            return 0;
        } catch (aaq e2) {
            throw a(e2);
        }
    }

    public void close() {
        try {
            this.a.c();
            this.f = null;
        } catch (aaq e2) {
            throw a(e2);
        }
    }

    public int read() {
        if (read(this.f, 0, 1) == -1) {
            return -1;
        }
        return this.f[0] & 255;
    }

    public int read(byte[] bArr) {
        return read(bArr, 0, bArr.length);
    }

    public int read(byte[] bArr, int i, int i2) {
        return a(bArr, i, i2);
    }

    public long skip(long j) {
        if (j <= 0) {
            return 0;
        }
        this.b += j;
        return j;
    }
}
