package defpackage;

import java.io.EOFException;
import java.io.InputStream;

/* renamed from: ux  reason: default package */
/* compiled from: ComprDataIO */
public final class ux {
    public final ua a;
    public long b;
    public boolean c;
    public boolean d;
    public InputStream e;
    public ags f;
    public uo g;
    public boolean h;
    public boolean i;
    public boolean j;
    public long k;
    public long l;
    public long m;
    public long n;
    public long o;
    public long p;
    public long q;
    public long r;
    public long s;
    public long t;
    public int u;
    public int v;
    public int w;
    public char x;

    public ux(ua uaVar) {
        this.a = uaVar;
    }

    public final int a(byte[] bArr, int i2, int i3) {
        int i4;
        int i5 = 0;
        if (i3 > 0) {
            if (((long) i3) > this.b) {
                i3 = (int) this.b;
            }
            i4 = this.e.read(bArr, i2, i3);
            if (i4 < 0) {
                throw new EOFException();
            }
            if (this.g.h()) {
                this.t = (long) ud.a((int) this.t, bArr, i2, i4);
            }
            this.n += (long) i4;
            i5 = i4 + 0;
            this.b -= (long) i4;
            ua uaVar = this.a;
            if (i4 > 0) {
                uaVar.g += (long) i4;
            }
            if (this.b == 0 && this.g.h()) {
                this.j = true;
                return -1;
            }
        } else {
            i4 = 0;
        }
        return i4 == -1 ? i4 : i5;
    }

    public final void b(byte[] bArr, int i2, int i3) {
        if (!this.c) {
            this.f.a(bArr, i2, i3);
        }
        this.o += (long) i3;
        if (this.d) {
            return;
        }
        if (this.a.d.g) {
            this.s = (long) ud.a((short) ((int) this.s), bArr, i3);
        } else {
            this.s = (long) ud.a((int) this.s, bArr, i2, i3);
        }
    }
}
