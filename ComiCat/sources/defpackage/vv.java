package defpackage;

import android.support.v4.app.NotificationCompat;

/* renamed from: vv  reason: default package */
/* compiled from: SubAllocator */
public class vv {
    public static final int a = Math.max(vn.a, 12);
    public static final /* synthetic */ boolean u = (!vv.class.desiredAssertionStatus());
    public int b = 0;
    int[] c = new int[38];
    int[] d = new int[NotificationCompat.FLAG_HIGH_PRIORITY];
    int e;
    public int f;
    int g;
    int h;
    public final vr[] i = new vr[38];
    int j;
    int k;
    public int l;
    int m;
    public byte[] n;
    public int o;
    public int p;
    public vr q = null;
    public vq r = null;
    public vq s = null;
    public vq t = null;

    static int b(int i2) {
        return a * i2;
    }

    private static int b(int i2, int i3) {
        return (a * i3) + i2;
    }

    private int d(int i2) {
        if (this.e == 0) {
            this.e = 255;
            vq vqVar = this.r;
            vqVar.c(this.p);
            vq vqVar2 = this.s;
            vq vqVar3 = this.t;
            if (this.g != this.h) {
                this.n[this.g] = 0;
            }
            vqVar.c(vqVar);
            vqVar.b(vqVar);
            for (int i3 = 0; i3 < 38; i3++) {
                while (this.i[i3].a() != 0) {
                    vqVar2.c(a(i3));
                    vqVar2.a(vqVar);
                    vqVar2.f();
                    vqVar2.a(this.c[i3]);
                }
            }
            vqVar2.c(vqVar.b());
            while (vqVar2.c() != vqVar.c()) {
                vqVar3.c(b(vqVar2.c(), vqVar2.d()));
                while (vqVar3.e() == 65535 && vqVar2.d() + vqVar3.d() < 65536) {
                    vqVar3.a();
                    vqVar2.a(vqVar2.d() + vqVar3.d());
                    vqVar3.c(b(vqVar2.c(), vqVar2.d()));
                }
                vqVar2.c(vqVar2.b());
            }
            while (true) {
                vqVar2.c(vqVar.b());
                if (vqVar2.c() == vqVar.c()) {
                    break;
                }
                vqVar2.a();
                int d2 = vqVar2.d();
                while (d2 > 128) {
                    a(vqVar2.c(), 37);
                    vqVar2.c(b(vqVar2.c(), NotificationCompat.FLAG_HIGH_PRIORITY));
                    d2 -= 128;
                }
                int[] iArr = this.c;
                int i4 = this.d[d2 - 1];
                if (iArr[i4] != d2) {
                    i4--;
                    int i5 = d2 - this.c[i4];
                    a(b(vqVar2.c(), d2 - i5), i5 - 1);
                }
                a(vqVar2.c(), i4);
            }
            if (this.i[i2].a() != 0) {
                return a(i2);
            }
        }
        int i6 = i2;
        while (true) {
            int i7 = i6 + 1;
            if (i7 == 38) {
                this.e--;
                int i8 = this.c[i2] * a;
                int i9 = this.c[i2] * 12;
                if (this.m - this.j <= i9) {
                    return 0;
                }
                this.m -= i9;
                this.k -= i8;
                return this.k;
            } else if (this.i[i7].a() != 0) {
                int a2 = a(i7);
                a(a2, i7, i2);
                return a2;
            } else {
                i6 = i7;
            }
        }
    }

    /* access modifiers changed from: package-private */
    public final int a(int i2) {
        int a2 = this.i[i2].a();
        vr vrVar = this.q;
        vrVar.c(a2);
        this.i[i2].a(vrVar.a());
        return a2;
    }

    public final void a() {
        if (this.b != 0) {
            this.b = 0;
            wk.b.a(this.n);
            this.n = null;
            this.f = 1;
            this.q = null;
            this.r = null;
            this.s = null;
            this.t = null;
        }
    }

    /* access modifiers changed from: package-private */
    public final void a(int i2, int i3) {
        vr vrVar = this.q;
        vrVar.c(i2);
        vrVar.a(this.i[i3].a());
        this.i[i3].a(vrVar);
    }

    /* access modifiers changed from: package-private */
    public final void a(int i2, int i3, int i4) {
        int i5 = this.c[i3] - this.c[i4];
        int i6 = (this.c[i4] * a) + i2;
        int[] iArr = this.c;
        int i7 = this.d[i5 - 1];
        if (iArr[i7] != i5) {
            int i8 = i7 - 1;
            a(i6, i8);
            int i9 = this.c[i8];
            i6 += a * i9;
            i5 -= i9;
        }
        a(i6, this.d[i5 - 1]);
    }

    public final int b() {
        if (this.h == this.g) {
            return this.i[0].a() != 0 ? a(0) : d(0);
        }
        int i2 = this.h - a;
        this.h = i2;
        return i2;
    }

    public final int c(int i2) {
        int i3 = this.d[i2 - 1];
        if (this.i[i3].a() != 0) {
            return a(i3);
        }
        int i4 = this.g;
        this.g += this.c[i3] * a;
        if (this.g <= this.h) {
            return i4;
        }
        this.g -= this.c[i3] * a;
        return d(i3);
    }

    public String toString() {
        return "SubAllocator[" + "\n  subAllocatorSize=" + this.b + "\n  glueCount=" + this.e + "\n  heapStart=" + this.f + "\n  loUnit=" + this.g + "\n  hiUnit=" + this.h + "\n  pText=" + this.j + "\n  unitsStart=" + this.k + "\n]";
    }
}
