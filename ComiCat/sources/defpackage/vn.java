package defpackage;

import android.support.v4.app.NotificationCompat;

/* renamed from: vn  reason: default package */
/* compiled from: PPMContext */
public final class vn extends vo {
    public static final int a = ((n + 2) + 4);
    public static final int[] d = {25, 14, 9, 7, 5, 5, 4, 4, 4, 3, 3, 3, 2, 2, 2, 2};
    private static final int n = Math.max(6, 6);
    final vl b;
    final vt c;
    final vt e = new vt((byte[]) null);
    final vt f = new vt((byte[]) null);
    final vt g = new vt((byte[]) null);
    final vt h = new vt((byte[]) null);
    final vt i = new vt((byte[]) null);
    final int[] j = new int[NotificationCompat.FLAG_LOCAL_ONLY];
    private int o;
    private int p;
    private vn q = null;

    public vn(byte[] bArr) {
        super(bArr);
        this.c = new vt(bArr);
        this.b = new vl(bArr);
    }

    public static int d(int i2) {
        return (i2 + 32) >>> 7;
    }

    public final int a() {
        if (this.k != null) {
            this.o = ug.a(this.k, this.l) & 65535;
        }
        return this.o;
    }

    public final vn a(byte[] bArr) {
        this.k = bArr;
        this.l = 0;
        this.c.a(bArr);
        this.b.a(bArr);
        return this;
    }

    public final void a(int i2) {
        this.o = 65535 & i2;
        if (this.k != null) {
            ug.a(this.k, this.l, (short) i2);
        }
    }

    public final void a(vm vmVar) {
        int i2;
        int a2 = a();
        int a3 = a() - 1;
        vt vtVar = new vt(vmVar.u.n);
        vt vtVar2 = new vt(vmVar.u.n);
        vt vtVar3 = new vt(vmVar.u.n);
        vtVar2.c(vmVar.f.c());
        while (vtVar2.c() != this.b.b()) {
            vtVar3.c(vtVar2.c() - 6);
            vt.a(vtVar2, vtVar3);
            vtVar2.e();
        }
        vtVar3.c(this.b.b());
        vtVar3.d(4);
        this.b.b(4);
        int a4 = this.b.a() - vtVar2.b();
        int i3 = vmVar.i != 0 ? 1 : 0;
        vtVar2.b((vtVar2.b() + i3) >>> 1);
        this.b.a(vtVar2.b());
        do {
            vtVar2.f();
            a4 -= vtVar2.b();
            vtVar2.b((vtVar2.b() + i3) >>> 1);
            this.b.b(vtVar2.b());
            vtVar3.c(vtVar2.c() - 6);
            if (vtVar2.b() > vtVar3.b()) {
                vtVar.c(vtVar2.c());
                vu vuVar = new vu();
                vuVar.a(vtVar);
                vt vtVar4 = new vt(vmVar.u.n);
                vt vtVar5 = new vt(vmVar.u.n);
                do {
                    vtVar4.c(vtVar.c() - 6);
                    vtVar.a(vtVar4);
                    vtVar.e();
                    vtVar5.c(vtVar.c() - 6);
                    if (vtVar.c() == this.b.b() || vuVar.b <= vtVar5.b()) {
                        vtVar.a(vuVar);
                    }
                    vtVar4.c(vtVar.c() - 6);
                    vtVar.a(vtVar4);
                    vtVar.e();
                    vtVar5.c(vtVar.c() - 6);
                    break;
                } while (vuVar.b <= vtVar5.b());
                vtVar.a(vuVar);
            }
            a3--;
        } while (a3 != 0);
        if (vtVar2.b() == 0) {
            do {
                a3++;
                vtVar2.e();
            } while (vtVar2.b() == 0);
            i2 = a4 + a3;
            a(a() - a3);
            if (a() == 1) {
                vu vuVar2 = new vu();
                vtVar3.c(this.b.b());
                vuVar2.a(vtVar3);
                do {
                    vuVar2.b = (vuVar2.b - (vuVar2.b >>> 1)) & 255;
                    i2 >>>= 1;
                } while (i2 > 1);
                vv vvVar = vmVar.u;
                vvVar.a(this.b.b(), vvVar.d[((a2 + 1) >>> 1) - 1]);
                this.c.a(vuVar2);
                vmVar.f.c(this.c.c());
                return;
            }
        } else {
            i2 = a4;
        }
        this.b.b(i2 - (i2 >>> 1));
        int i4 = (a2 + 1) >>> 1;
        int a5 = (a() + 1) >>> 1;
        if (i4 != a5) {
            vl vlVar = this.b;
            vv vvVar2 = vmVar.u;
            int b2 = this.b.b();
            int i5 = vvVar2.d[i4 - 1];
            int i6 = vvVar2.d[a5 - 1];
            if (i5 != i6) {
                if (vvVar2.i[i6].a() != 0) {
                    int a6 = vvVar2.a(i6);
                    System.arraycopy(vvVar2.n, b2, vvVar2.n, a6, vv.b(a5));
                    vvVar2.a(b2, i5);
                    b2 = a6;
                } else {
                    vvVar2.a(b2, i5, i6);
                }
            }
            vlVar.a_(b2);
        }
        vmVar.f.c(this.b.b());
    }

    public final int b() {
        if (this.k != null) {
            this.p = ug.b(this.k, this.l + 8);
        }
        return this.p;
    }

    /* access modifiers changed from: package-private */
    public final vn b(byte[] bArr) {
        if (this.q == null) {
            this.q = new vn((byte[]) null);
        }
        return this.q.a(bArr);
    }

    public final void b(int i2) {
        this.p = i2;
        if (this.k != null) {
            ug.a(this.k, this.l + 8, i2);
        }
    }

    public final void c(int i2) {
        super.c(i2);
        this.c.c(i2 + 2);
        this.b.c(i2 + 2);
    }

    public final String toString() {
        return "PPMContext[" + "\n  pos=" + this.l + "\n  size=" + a + "\n  numStats=" + a() + "\n  Suffix=" + b() + "\n  freqData=" + this.b + "\n  oneState=" + this.c + "\n]";
    }
}
