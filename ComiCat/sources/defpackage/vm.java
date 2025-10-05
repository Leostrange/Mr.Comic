package defpackage;

import android.support.v4.app.NotificationCompat;
import defpackage.vp;
import java.lang.reflect.Array;
import java.util.Arrays;

/* renamed from: vm  reason: default package */
/* compiled from: ModelPPM */
public final class vm {
    private static int[] w = {15581, 7999, 22975, 18675, 25761, 23228, 26162, 24657};
    private final vt A = new vt((byte[]) null);
    private final vu B = new vu();
    private final vu C = new vu();
    private final vn D = new vn((byte[]) null);
    private final vn E = new vn((byte[]) null);
    private final vn F = new vn((byte[]) null);
    private final vn G = new vn((byte[]) null);
    private final int[] H = new int[64];
    public vs[][] a = ((vs[][]) Array.newInstance(vs.class, new int[]{25, 16}));
    public vs b;
    public vn c = null;
    public vn d = null;
    public vn e = null;
    public vt f;
    int g;
    int h;
    int i;
    int j;
    int k;
    int[] l = new int[NotificationCompat.FLAG_LOCAL_ONLY];
    int[] m = new int[NotificationCompat.FLAG_LOCAL_ONLY];
    int[] n = new int[NotificationCompat.FLAG_LOCAL_ONLY];
    int[] o = new int[NotificationCompat.FLAG_LOCAL_ONLY];
    int p;
    int q;
    int r;
    int[][] s = ((int[][]) Array.newInstance(Integer.TYPE, new int[]{NotificationCompat.FLAG_HIGH_PRIORITY, 64}));
    public vp t = new vp();
    public vv u = new vv();
    private int v;
    private final vt x = new vt((byte[]) null);
    private final vt y = new vt((byte[]) null);
    private final vt z = new vt((byte[]) null);

    private int a(boolean z2, vt vtVar) {
        boolean z3;
        int i2;
        int i3;
        boolean z4;
        vu vuVar = this.C;
        vt a2 = this.x.a(this.u.n);
        vn a3 = this.D.a(this.u.n);
        a3.c(this.c.c());
        vn a4 = this.E.a(this.u.n);
        a4.c(this.f.d());
        vt a5 = this.y.a(this.u.n);
        if (!z2) {
            this.H[0] = this.f.c();
            if (a3.b() == 0) {
                z3 = true;
                i2 = 1;
            } else {
                z3 = false;
                i2 = 1;
            }
        } else {
            z3 = false;
            i2 = 0;
        }
        if (!z3) {
            if (vtVar.c() != 0) {
                a5.c(vtVar.c());
                a3.c(a3.b());
                z4 = true;
            } else {
                z4 = false;
            }
            while (true) {
                if (!z4) {
                    a3.c(a3.b());
                    if (a3.a() != 1) {
                        a5.c(a3.b.b());
                        if (a5.a() != this.f.a()) {
                            do {
                                a5.f();
                            } while (a5.a() != this.f.a());
                        }
                    } else {
                        a5.c(a3.c.c());
                    }
                }
                if (a5.d() != a4.c()) {
                    a3.c(a5.d());
                    break;
                }
                int i4 = i2 + 1;
                this.H[i2] = a5.c();
                if (a3.b() == 0) {
                    i2 = i4;
                    break;
                }
                i2 = i4;
                z4 = false;
            }
        }
        if (i2 == 0) {
            return a3.c();
        }
        vuVar.a((int) this.u.n[a4.c()]);
        vuVar.c = a4.c() + 1;
        if (a3.a() == 1) {
            vuVar.b(a3.c.b());
            i3 = i2;
        } else if (a3.c() <= this.u.j) {
            return 0;
        } else {
            a5.c(a3.b.b());
            if (a5.a() != vuVar.a) {
                do {
                    a5.f();
                } while (a5.a() != vuVar.a);
            }
            int b2 = a5.b() - 1;
            int a6 = (a3.b.a() - a3.a()) - b2;
            vuVar.b((b2 * 2 <= a6 ? b2 * 5 > a6 ? 1 : 0 : (((b2 * 2) + (a6 * 3)) - 1) / (a6 * 2)) + 1);
            i3 = i2;
        }
        do {
            i3--;
            a2.c(this.H[i3]);
            vn b3 = a3.b(this.u.n);
            b3.c(this.u.b());
            if (b3 != null) {
                b3.a(1);
                b3.c.a(vuVar);
                b3.b(a3.c());
                a2.a(b3);
            }
            a3.c(b3.c());
            if (a3.c() == 0) {
                return 0;
            }
        } while (i3 != 0);
        return a3.c();
    }

    private void b() {
        Arrays.fill(this.l, 0);
        vv vvVar = this.u;
        Arrays.fill(vvVar.n, vvVar.o, vvVar.o + (vvVar.i.length * 4), (byte) 0);
        vvVar.j = vvVar.f;
        int i2 = ((vvVar.b / 8) / 12) * 7 * 12;
        int i3 = (i2 / 12) * vv.a;
        int i4 = vvVar.b - i2;
        int i5 = ((i4 / 12) * vv.a) + (i4 % 12);
        vvVar.h = vvVar.f + vvVar.b;
        int i6 = i5 + vvVar.f;
        vvVar.k = i6;
        vvVar.g = i6;
        vvVar.m = i4 + vvVar.f;
        vvVar.h = vvVar.g + i3;
        int i7 = 0;
        int i8 = 1;
        while (i7 < 4) {
            vvVar.c[i7] = i8 & 255;
            i7++;
            i8++;
        }
        int i9 = i8 + 1;
        while (i7 < 8) {
            vvVar.c[i7] = i9 & 255;
            i7++;
            i9 += 2;
        }
        int i10 = i9 + 1;
        while (i7 < 12) {
            vvVar.c[i7] = i10 & 255;
            i7++;
            i10 += 3;
        }
        int i11 = i10 + 1;
        while (i7 < 38) {
            vvVar.c[i7] = i11 & 255;
            i7++;
            i11 += 4;
        }
        vvVar.e = 0;
        int i12 = 0;
        int i13 = 0;
        while (i13 < 128) {
            int i14 = (vvVar.c[i12] < i13 + 1 ? 1 : 0) + i12;
            vvVar.d[i13] = i14 & 255;
            i13++;
            i12 = i14;
        }
        this.k = (-(this.v < 12 ? this.v : 12)) - 1;
        int b2 = this.u.b();
        this.c.c(b2);
        this.e.c(b2);
        this.c.b(0);
        this.i = this.v;
        this.c.a((int) NotificationCompat.FLAG_LOCAL_ONLY);
        this.c.b.a(this.c.a() + 1);
        int c2 = this.u.c(NotificationCompat.FLAG_HIGH_PRIORITY);
        this.f.c(c2);
        this.c.b.a_(c2);
        vt vtVar = new vt(this.u.n);
        int b3 = this.c.b.b();
        this.j = this.k;
        this.q = 0;
        for (int i15 = 0; i15 < 256; i15++) {
            vtVar.c((i15 * 6) + b3);
            vtVar.a(i15);
            vtVar.b(1);
            vtVar.e(0);
        }
        for (int i16 = 0; i16 < 128; i16++) {
            for (int i17 = 0; i17 < 8; i17++) {
                for (int i18 = 0; i18 < 64; i18 += 8) {
                    this.s[i16][i17 + i18] = 16384 - (w[i17] / (i16 + 2));
                }
            }
        }
        for (int i19 = 0; i19 < 25; i19++) {
            for (int i20 = 0; i20 < 16; i20++) {
                vs vsVar = this.a[i19][i20];
                vsVar.b = 3;
                vsVar.a = (((i19 * 5) + 10) << vsVar.b) & 65535;
                vsVar.c = 4;
            }
        }
    }

    private void b(int i2) {
        this.q = i2 & 255;
    }

    private void c() {
        b();
        this.p = 0;
    }

    private void c(int i2) {
        this.j += i2;
    }

    private void d(int i2) {
        this.r = i2 & 255;
    }

    public final int a() {
        int i2;
        vs vsVar;
        int b2;
        boolean z2;
        boolean z3;
        if (this.c.c() <= this.u.j || this.c.c() > this.u.l) {
            return -1;
        }
        if (this.c.a() == 1) {
            vn vnVar = this.c;
            vt a2 = vnVar.e.a(this.u.n);
            a2.c(vnVar.c.c());
            d(this.o[this.f.a()]);
            int b3 = a2.b() - 1;
            vn b4 = vnVar.b(this.u.n);
            b4.c(vnVar.b());
            int i3 = ((this.j >>> 26) & 32) + this.q + 0 + this.n[b4.a() - 1] + this.r + (this.o[a2.a()] * 2);
            int i4 = this.s[b3][i3];
            vp vpVar = this.t;
            vpVar.c >>>= 14;
            if ((((vpVar.b - vpVar.a) / vpVar.c) & 4294967295L) < ((long) i4)) {
                this.f.c(a2.c());
                a2.d(a2.b() < 128 ? 1 : 0);
                this.t.d.b(0);
                this.t.d.a((long) i4);
                this.s[b3][i3] = ((i4 + NotificationCompat.FLAG_HIGH_PRIORITY) - vn.d(i4)) & 65535;
                b(1);
                c(1);
            } else {
                this.t.d.b((long) i4);
                int d2 = (i4 - vn.d(i4)) & 65535;
                this.s[b3][i3] = d2;
                this.t.d.a(16384);
                this.h = vn.d[d2 >>> 10];
                this.g = 1;
                this.l[a2.a()] = this.p;
                b(0);
                this.f.c(0);
            }
        } else if (this.c.b.b() <= this.u.j || this.c.b.b() > this.u.l) {
            return -1;
        } else {
            vn vnVar2 = this.c;
            vp vpVar2 = this.t;
            vpVar2.d.c((long) vnVar2.b.a());
            vt vtVar = new vt(this.u.n);
            vtVar.c(vnVar2.b.b());
            long a3 = (long) vpVar2.a();
            if (a3 >= vpVar2.d.b) {
                z3 = false;
            } else {
                int b5 = vtVar.b();
                if (a3 < ((long) b5)) {
                    vpVar2.d.a((long) b5);
                    b(((long) (b5 * 2)) > vpVar2.d.b ? 1 : 0);
                    c(this.q);
                    int i5 = b5 + 4;
                    this.f.c(vtVar.c());
                    this.f.b(i5);
                    vnVar2.b.b(4);
                    if (i5 > 124) {
                        vnVar2.a(this);
                    }
                    vpVar2.d.b(0);
                } else if (this.f.c() == 0) {
                    z3 = false;
                } else {
                    b(0);
                    int a4 = vnVar2.a();
                    int i6 = b5;
                    int i7 = a4 - 1;
                    int i8 = i6;
                    while (true) {
                        i8 += vtVar.f().b();
                        if (((long) i8) <= a3) {
                            i7--;
                            if (i7 == 0) {
                                d(this.o[this.f.a()]);
                                vpVar2.d.b((long) i8);
                                this.l[vtVar.a()] = this.p;
                                this.g = a4;
                                int i9 = a4 - 1;
                                this.f.c(0);
                                do {
                                    this.l[vtVar.e().a()] = this.p;
                                    i9--;
                                } while (i9 != 0);
                                vpVar2.d.a(vpVar2.d.b);
                                break;
                            }
                        } else {
                            vpVar2.d.b((long) (i8 - vtVar.b()));
                            vpVar2.d.a((long) i8);
                            int c2 = vtVar.c();
                            this.f.c(c2);
                            this.f.d(4);
                            vnVar2.b.b(4);
                            vt a5 = vnVar2.g.a(this.u.n);
                            vt a6 = vnVar2.h.a(this.u.n);
                            a5.c(c2);
                            a6.c(c2 - 6);
                            if (a5.b() > a6.b()) {
                                vt.a(a5, a6);
                                this.f.c(a6.c());
                                if (a6.b() > 124) {
                                    vnVar2.a(this);
                                }
                            }
                        }
                    }
                }
                z3 = true;
            }
            if (!z3) {
                return -1;
            }
        }
        this.t.b();
        while (this.f.c() == 0) {
            this.t.c();
            do {
                this.i++;
                this.c.c(this.c.b());
                if (this.c.c() <= this.u.j || this.c.c() > this.u.l) {
                    return -1;
                }
            } while (this.c.a() == this.g);
            vn vnVar3 = this.c;
            int a7 = vnVar3.a() - this.g;
            int a8 = vnVar3.a();
            if (a8 != 256) {
                vn b6 = vnVar3.b(this.u.n);
                b6.c(vnVar3.b());
                vs vsVar2 = this.a[this.m[a7 - 1]][((this.g > a7 ? 1 : 0) * 4) + (a7 < b6.a() - a8 ? 1 : 0) + 0 + ((vnVar3.b.a() < a8 * 11 ? 1 : 0) * 2) + this.r];
                vp.a aVar = this.t.d;
                int i10 = vsVar2.a >>> vsVar2.b;
                vsVar2.a -= i10;
                aVar.c((long) ((i10 == 0 ? 1 : 0) + i10));
                vsVar = vsVar2;
            } else {
                vs vsVar3 = this.b;
                this.t.d.c(1);
                vsVar = vsVar3;
            }
            vp vpVar3 = this.t;
            vt a9 = vnVar3.e.a(this.u.n);
            vt a10 = vnVar3.f.a(this.u.n);
            a9.c(vnVar3.b.b() - 6);
            int i11 = 0;
            int i12 = 0;
            while (true) {
                a9.f();
                if (this.l[a9.a()] != this.p) {
                    b2 = a9.b() + i12;
                    int i13 = i11 + 1;
                    vnVar3.j[i11] = a9.c();
                    int i14 = a7 - 1;
                    if (i14 == 0) {
                        break;
                    }
                    a7 = i14;
                    i11 = i13;
                    i12 = b2;
                }
            }
            vp.a aVar2 = vpVar3.d;
            aVar2.c(aVar2.b + ((long) b2));
            long a11 = (long) vpVar3.a();
            if (a11 >= vpVar3.d.b) {
                z2 = false;
            } else {
                int i15 = 0;
                a9.c(vnVar3.j[0]);
                if (a11 < ((long) b2)) {
                    int i16 = 0;
                    while (true) {
                        i16 += a9.b();
                        if (((long) i16) > a11) {
                            break;
                        }
                        i15++;
                        a9.c(vnVar3.j[i15]);
                    }
                    vpVar3.d.a((long) i16);
                    vpVar3.d.b((long) (i16 - a9.b()));
                    if (vsVar.b < 7) {
                        int i17 = vsVar.c - 1;
                        vsVar.c = i17;
                        if (i17 == 0) {
                            vsVar.a += vsVar.a;
                            int i18 = vsVar.b;
                            vsVar.b = i18 + 1;
                            vsVar.c = 3 << i18;
                        }
                    }
                    vsVar.a &= 65535;
                    vsVar.c &= 255;
                    vsVar.b &= 255;
                    int c3 = a9.c();
                    vt a12 = vnVar3.i.a(this.u.n);
                    a12.c(c3);
                    this.f.c(c3);
                    this.f.d(4);
                    vnVar3.b.b(4);
                    if (a12.b() > 124) {
                        vnVar3.a(this);
                    }
                    this.p = (this.p + 1) & 255;
                    this.j = this.k;
                } else {
                    vpVar3.d.b((long) b2);
                    vpVar3.d.a(vpVar3.d.b);
                    int a13 = vnVar3.a() - this.g;
                    int i19 = -1;
                    do {
                        i19++;
                        a10.c(vnVar3.j[i19]);
                        this.l[a10.a()] = this.p;
                        a13--;
                    } while (a13 != 0);
                    vsVar.a = (((int) vpVar3.d.b) + vsVar.a) & 65535;
                    this.g = vnVar3.a();
                }
                z2 = true;
            }
            if (!z2) {
                return -1;
            }
            this.t.b();
        }
        int a14 = this.f.a();
        if (this.i != 0 || this.f.d() <= this.u.j) {
            vu vuVar = this.B;
            vuVar.a(this.f);
            vt a15 = this.z.a(this.u.n);
            vt a16 = this.A.a(this.u.n);
            vn a17 = this.F.a(this.u.n);
            vn a18 = this.G.a(this.u.n);
            a17.c(this.c.b());
            if (vuVar.b < 31 && a17.c() != 0) {
                if (a17.a() != 1) {
                    a15.c(a17.b.b());
                    if (a15.a() != vuVar.a) {
                        do {
                            a15.f();
                        } while (a15.a() != vuVar.a);
                        a16.c(a15.c() - 6);
                        if (a15.b() >= a16.b()) {
                            vt.a(a15, a16);
                            a15.e();
                        }
                    }
                    if (a15.b() < 115) {
                        a15.d(2);
                        a17.b.b(2);
                    }
                } else {
                    a15.c(a17.c.c());
                    if (a15.b() < 32) {
                        a15.d(1);
                    }
                }
            }
            if (this.i != 0) {
                this.u.n[this.u.j] = (byte) vuVar.a;
                this.u.j++;
                a18.c(this.u.j);
                if (this.u.j < this.u.m) {
                    if (vuVar.c != 0) {
                        if (vuVar.c <= this.u.j) {
                            vuVar.c = a(false, a15);
                            if (vuVar.c == 0) {
                                c();
                            }
                        }
                        int i20 = this.i - 1;
                        this.i = i20;
                        if (i20 == 0) {
                            a18.c(vuVar.c);
                            if (this.e.c() != this.c.c()) {
                                vv vvVar = this.u;
                                vvVar.j--;
                            }
                        }
                    } else {
                        this.f.e(a18.c());
                        vuVar.c = this.c.c();
                    }
                    int a19 = this.c.a();
                    int a20 = (this.c.b.a() - a19) - (vuVar.b - 1);
                    a17.c(this.e.c());
                    while (true) {
                        if (a17.c() == this.c.c()) {
                            int i21 = vuVar.c;
                            this.e.c(i21);
                            this.c.c(i21);
                            break;
                        }
                        int a21 = a17.a();
                        if (a21 != 1) {
                            if ((a21 & 1) == 0) {
                                vl vlVar = a17.b;
                                vv vvVar2 = this.u;
                                int b7 = a17.b.b();
                                int i22 = a21 >>> 1;
                                int i23 = vvVar2.d[i22 - 1];
                                if (i23 != vvVar2.d[(i22 - 1) + 1]) {
                                    int c4 = vvVar2.c(i22 + 1);
                                    if (c4 != 0) {
                                        System.arraycopy(vvVar2.n, b7, vvVar2.n, c4, vv.b(i22));
                                        vvVar2.a(b7, i23);
                                    }
                                    b7 = c4;
                                }
                                vlVar.a_(b7);
                                if (a17.b.b() == 0) {
                                    c();
                                    break;
                                }
                            }
                            a17.b.b((((a21 * 4 <= a19 ? 1 : 0) & (a17.b.a() <= a21 * 8 ? 1 : 0)) * 2) + (a21 * 2 < a19 ? 1 : 0));
                        } else {
                            a15.c(this.u.c(1));
                            if (a15.c() == 0) {
                                c();
                                break;
                            }
                            a15.a(a17.c);
                            a17.b.a(a15);
                            if (a15.b() < 30) {
                                a15.d(a15.b());
                            } else {
                                a15.b(120);
                            }
                            a17.b.a((a19 > 3 ? 1 : 0) + this.h + a15.b());
                        }
                        int a22 = (a17.b.a() + 6) * vuVar.b * 2;
                        int a23 = a20 + a17.b.a();
                        if (a22 < a23 * 6) {
                            i2 = (a22 >= a23 * 4 ? 1 : 0) + (a22 > a23 ? 1 : 0) + 1;
                            a17.b.b(3);
                        } else {
                            i2 = (a22 >= a23 * 15 ? 1 : 0) + (a22 >= a23 * 9 ? 1 : 0) + 4 + (a22 >= a23 * 12 ? 1 : 0);
                            a17.b.b(i2);
                        }
                        a15.c(a17.b.b() + (a21 * 6));
                        a15.a(a18);
                        a15.a(vuVar.a);
                        a15.b(i2);
                        a17.a(a21 + 1);
                        a17.c(a17.b());
                    }
                } else {
                    c();
                }
            } else {
                this.f.e(a(true, a15));
                this.c.c(this.f.d());
                this.e.c(this.f.d());
                if (this.c.c() == 0) {
                    c();
                }
            }
            if (this.p == 0) {
                this.p = 1;
                Arrays.fill(this.l, 0);
            }
        } else {
            int d3 = this.f.d();
            this.c.c(d3);
            this.e.c(d3);
        }
        this.t.c();
        return a14;
    }

    public final void a(int i2) {
        int i3 = 3;
        int i4 = 1;
        this.p = 1;
        this.v = i2;
        b();
        this.n[0] = 0;
        this.n[1] = 2;
        for (int i5 = 0; i5 < 9; i5++) {
            this.n[i5 + 2] = 4;
        }
        for (int i6 = 0; i6 < 245; i6++) {
            this.n[i6 + 11] = 6;
        }
        int i7 = 0;
        while (i7 < 3) {
            this.m[i7] = i7;
            i7++;
        }
        int i8 = 1;
        for (int i9 = i7; i9 < 256; i9++) {
            this.m[i9] = i3;
            i8--;
            if (i8 == 0) {
                i4++;
                i3++;
                i8 = i4;
            }
        }
        for (int i10 = 0; i10 < 64; i10++) {
            this.o[i10] = 0;
        }
        for (int i11 = 0; i11 < 192; i11++) {
            this.o[i11 + 64] = 8;
        }
        this.b.b = 7;
    }

    public final String toString() {
        return "ModelPPM[" + "\n  numMasked=" + this.g + "\n  initEsc=" + this.h + "\n  orderFall=" + this.i + "\n  maxOrder=" + this.v + "\n  runLength=" + this.j + "\n  initRL=" + this.k + "\n  escCount=" + this.p + "\n  prevSuccess=" + this.q + "\n  foundState=" + this.f + "\n  coder=" + this.t + "\n  subAlloc=" + this.u + "\n]";
    }
}
