package defpackage;

import java.io.IOException;

/* renamed from: xq  reason: default package */
/* compiled from: DcerpcHandle */
public abstract class xq implements xn {
    private static int g = 1;
    protected xm a;
    protected int b = 4280;
    protected int c = this.b;
    protected int d = 0;
    protected xt f = null;

    public static xq a(String str, zl zlVar) {
        if (str.startsWith("ncacn_np:")) {
            return new xs(str, zlVar);
        }
        throw new xp("DCERPC transport not supported: " + str);
    }

    public abstract void a();

    /* JADX INFO: finally extract failed */
    public final void a(xr xrVar) {
        boolean z;
        int i = 24;
        boolean z2 = true;
        if (this.d == 0) {
            synchronized (this) {
                try {
                    this.d = 1;
                    a(new xl(this.a, this));
                } catch (IOException e) {
                    this.d = 0;
                    throw e;
                }
            }
        }
        byte[] a2 = yw.a();
        try {
            xz xzVar = new xz(a2, 0);
            xrVar.g = 3;
            int i2 = g;
            g = i2 + 1;
            xrVar.i = i2;
            xrVar.e(xzVar);
            if (this.f != null) {
                xzVar.c = 0;
            }
            int i3 = xzVar.e.d - 24;
            int i4 = 0;
            while (i4 < i3) {
                int i5 = i3 - i4;
                if (i5 + 24 > this.b) {
                    xrVar.g &= -3;
                    i5 = this.b - 24;
                    z = z2;
                } else {
                    xrVar.g |= 2;
                    xrVar.j = i5;
                    z = false;
                }
                xrVar.h = i5 + 24;
                if (i4 > 0) {
                    xrVar.g &= -2;
                }
                if ((xrVar.g & 3) != 3) {
                    xzVar.b = i4;
                    xzVar.a();
                    xrVar.c(xzVar);
                    xzVar.g(xrVar.j);
                    xzVar.f(0);
                    xzVar.f(xrVar.b());
                }
                a(a2, i4, xrVar.h, z);
                i4 = i5 + i4;
                z2 = z;
            }
            a(a2, z2);
            xzVar.a();
            xzVar.c = 8;
            xzVar.b(xzVar.c());
            xzVar.c = 0;
            xrVar.d(xzVar);
            if (xrVar.f == 2 && !xrVar.c()) {
                i = xrVar.h;
            }
            byte[] bArr = null;
            xz xzVar2 = null;
            while (!xrVar.c()) {
                if (bArr == null) {
                    bArr = new byte[this.c];
                    xzVar2 = new xz(bArr, 0);
                }
                a(bArr, z2);
                xzVar2.a();
                xzVar2.c = 8;
                xzVar2.b(xzVar2.c());
                xzVar2.a();
                xrVar.d(xzVar2);
                int i6 = xrVar.h - 24;
                if (i + i6 > a2.length) {
                    byte[] bArr2 = new byte[(i + i6)];
                    System.arraycopy(a2, 0, bArr2, 0, i);
                    a2 = bArr2;
                }
                System.arraycopy(bArr, 24, a2, i, i6);
                i += i6;
            }
            xrVar.f(new xz(a2, 0));
            yw.a(a2);
            xp a3 = xrVar.a();
            if (a3 != null) {
                throw a3;
            }
        } catch (Throwable th) {
            yw.a(a2);
            throw th;
        }
    }

    /* access modifiers changed from: protected */
    public abstract void a(byte[] bArr, int i, int i2, boolean z);

    /* access modifiers changed from: protected */
    public abstract void a(byte[] bArr, boolean z);

    public String toString() {
        return this.a.toString();
    }
}
