package defpackage;

import java.io.IOException;
import java.io.OutputStream;

/* renamed from: aat  reason: default package */
/* compiled from: SmbFileOutputStream */
public class aat extends OutputStream {
    public aar a;
    private boolean b;
    private boolean c;
    private int d;
    private int e;
    private int f;
    private long g;
    private byte[] h;
    private aam i;
    private aan j;
    private aal k;
    private aao l;

    public aat(aar aar) {
        this(aar, (byte) 0);
    }

    private aat(aar aar, byte b2) {
        this(aar, 82);
    }

    public aat(aar aar, int i2) {
        this.h = new byte[1];
        this.a = aar;
        this.b = false;
        this.d = i2;
        this.e = (i2 >>> 16) & 65535;
        if ((aar instanceof aau) && aar.j.startsWith("\\pipe\\")) {
            aar.j = aar.j.substring(5);
            aar.a((zm) new abo("\\pipe" + aar.j), (zm) new abp());
        }
        aar.a(i2, this.e | 2);
        this.d &= -81;
        this.f = aar.i.f.e.v - 70;
        this.c = aar.i.f.e.a(16);
        if (this.c) {
            this.i = new aam();
            this.j = new aan();
            return;
        }
        this.k = new aal();
        this.l = new aao();
    }

    /* access modifiers changed from: package-private */
    public final void a() {
        if (!this.a.b()) {
            this.a.a(this.d, this.e | 2);
            if (this.b) {
                this.g = this.a.j();
            }
        }
    }

    public final void a(byte[] bArr, int i2, int i3, int i4) {
        if (i3 > 0) {
            if (this.h == null) {
                throw new IOException("Bad file descriptor");
            }
            a();
            abx abx = aar.c;
            if (abx.a >= 4) {
                aar.c.println("write: fid=" + this.a.k + ",off=" + i2 + ",len=" + i3);
            }
            do {
                int i5 = i2;
                int i6 = i3 > this.f ? this.f : i3;
                if (this.c) {
                    this.i.a(this.a.k, this.g, i3 - i6, bArr, i5, i6);
                    if ((i4 & 1) != 0) {
                        this.i.a(this.a.k, this.g, i3, bArr, i5, i6);
                        this.i.b = 8;
                    } else {
                        this.i.b = 0;
                    }
                    this.a.a((zm) this.i, (zm) this.j);
                    this.g += this.j.b;
                    i3 = (int) (((long) i3) - this.j.b);
                    i2 = (int) (((long) i5) + this.j.b);
                    continue;
                } else {
                    aal aal = this.k;
                    int i7 = this.a.k;
                    long j2 = this.g;
                    aal.a = i7;
                    aal.c = (int) (j2 & 4294967295L);
                    aal.d = i3 - i6;
                    aal.E = bArr;
                    aal.D = i5;
                    aal.b = i6;
                    aal.B = null;
                    this.g += this.l.a;
                    i3 = (int) (((long) i3) - this.l.a);
                    i2 = (int) (((long) i5) + this.l.a);
                    this.a.a((zm) this.k, (zm) this.l);
                    continue;
                }
            } while (i3 > 0);
        }
    }

    public void close() {
        this.a.c();
        this.h = null;
    }

    public void write(int i2) {
        this.h[0] = (byte) i2;
        write(this.h, 0, 1);
    }

    public void write(byte[] bArr) {
        write(bArr, 0, bArr.length);
    }

    public void write(byte[] bArr, int i2, int i3) {
        if (!this.a.b() && (this.a instanceof aau)) {
            this.a.a((zm) new abo("\\pipe" + this.a.j), (zm) new abp());
        }
        a(bArr, i2, i3, 0);
    }
}
