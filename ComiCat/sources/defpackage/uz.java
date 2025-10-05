package defpackage;

import android.support.v4.app.FragmentTransaction;
import android.support.v4.app.NotificationCompat;
import java.util.Arrays;

/* renamed from: uz  reason: default package */
/* compiled from: Unpack15 */
public abstract class uz extends vw {
    static int[] P = {1, 3, 4, 4, 5, 6, 7, 8, 8, 4, 4, 5, 6, 6, 4, 0};
    static int[] Q = {0, 160, 208, 224, 240, 248, 252, 254, 255, 192, NotificationCompat.FLAG_HIGH_PRIORITY, 144, 152, 156, 176};
    static int[] R = {2, 3, 3, 3, 4, 4, 5, 6, 6, 4, 4, 5, 6, 6, 4, 0};
    static int[] S = {0, 64, 96, 160, 208, 224, 240, 248, 252, 192, NotificationCompat.FLAG_HIGH_PRIORITY, 144, 152, 156, 176};
    private static int[] T = {40960, 49152, 53248, 57344, 59904, 60928, 61440, 61952, 62016, 65535};
    private static int[] U = {0, 0, 0, 0, 5, 7, 9, 13, 18, 22, 26, 34, 36};
    private static int[] V = {32768, 49152, 57344, 61952, 61952, 61952, 61952, 61952, 65535};
    private static int[] W = {0, 0, 0, 0, 0, 8, 16, 24, 33, 33, 33, 33, 33};
    private static int[] X = {FragmentTransaction.TRANSIT_EXIT_MASK, 49152, 57344, 61440, 61952, 61952, 63456, 65535};
    private static int[] Y = {0, 0, 0, 0, 0, 0, 4, 44, 60, 76, 80, 80, 127};
    private static int[] Z = {FragmentTransaction.TRANSIT_ENTER_MASK, 9216, 32768, 49152, 64000, 65535, 65535, 65535};
    private static int[] a = {32768, 40960, 49152, 53248, 57344, 59904, 60928, 61440, 61952, 61952, 65535};
    private static int[] aa = {0, 0, 0, 0, 0, 0, 2, 7, 53, 117, 233, 0, 0};
    private static int[] ab = {2048, 9216, 60928, 65152, 65535, 65535, 65535};
    private static int[] ac = {0, 0, 0, 0, 0, 0, 0, 2, 16, 218, 251, 0, 0};
    private static int[] ad = {65280, 65535, 65535, 65535, 65535, 65535};
    private static int[] ae = {0, 0, 0, 0, 0, 0, 0, 0, 0, 255, 0, 0, 0};
    private static int[] b = {0, 0, 0, 2, 3, 5, 7, 11, 16, 20, 24, 32, 32};
    protected int A;
    protected int B;
    protected int C;
    protected int D;
    protected int E;
    protected int F;
    protected int G;
    protected int H;
    protected int I;
    protected int J;
    protected int K;
    protected int L;
    protected int M;
    protected int N;
    protected int O;
    protected int c;
    protected boolean d;
    protected boolean e;
    protected ux f;
    protected boolean g;
    protected int h;
    protected long i;
    protected byte[] j;
    protected int[] k = new int[4];
    protected int l;
    protected int m;
    protected int n;
    protected int[] o = new int[NotificationCompat.FLAG_LOCAL_ONLY];
    protected int[] p = new int[NotificationCompat.FLAG_LOCAL_ONLY];
    protected int[] q = new int[NotificationCompat.FLAG_LOCAL_ONLY];
    protected int[] r = new int[NotificationCompat.FLAG_LOCAL_ONLY];
    protected int[] s = new int[NotificationCompat.FLAG_LOCAL_ONLY];
    protected int[] t = new int[NotificationCompat.FLAG_LOCAL_ONLY];
    protected int[] u = new int[NotificationCompat.FLAG_LOCAL_ONLY];
    protected int[] v = new int[NotificationCompat.FLAG_LOCAL_ONLY];
    protected int[] w = new int[NotificationCompat.FLAG_LOCAL_ONLY];
    protected int[] x = new int[NotificationCompat.FLAG_LOCAL_ONLY];
    protected int[] y = new int[NotificationCompat.FLAG_LOCAL_ONLY];
    protected int z;

    private int a(int i2, int i3, int[] iArr, int[] iArr2) {
        int i4 = 0;
        int i5 = i2 & 65520;
        int i6 = 0;
        while (iArr[i6] <= i5) {
            i3++;
            i6++;
        }
        b(i3);
        if (i6 != 0) {
            i4 = iArr[i6 - 1];
        }
        return ((i5 - i4) >>> (16 - i3)) + iArr2[i3];
    }

    private void a() {
        int i2;
        int i3;
        int i4 = 0;
        this.G = 0;
        this.L += 16;
        if (this.L > 255) {
            this.L = 144;
            this.K >>>= 1;
        }
        int i5 = this.D;
        int g2 = g();
        if (this.D >= 122) {
            g2 = a(g2, 3, T, U);
        } else if (this.D >= 64) {
            g2 = a(g2, 2, a, b);
        } else if (g2 < 256) {
            b(16);
        } else {
            while (((g2 << i4) & 32768) == 0) {
                i4++;
            }
            b(i4 + 1);
            g2 = i4;
        }
        this.D += g2;
        this.D -= this.D >>> 5;
        int g3 = g();
        int a2 = this.B > 10495 ? a(g3, 5, Z, aa) : this.B > 1791 ? a(g3, 5, X, Y) : a(g3, 4, V, W);
        this.B += a2;
        this.B -= this.B >> 8;
        while (true) {
            int i6 = this.q[a2 & 255];
            int[] iArr = this.x;
            i2 = i6 + 1;
            int i7 = i6 & 255;
            i3 = iArr[i7];
            iArr[i7] = i3 + 1;
            if ((i2 & 255) != 0) {
                break;
            }
            a(this.q, this.x);
        }
        this.q[a2] = this.q[i3];
        this.q[i3] = i2;
        int g4 = ((65280 & i2) | (g() >>> 8)) >>> 1;
        b(7);
        int i8 = this.E;
        if (!(g2 == 1 || g2 == 4)) {
            if (g2 == 0 && g4 <= this.M) {
                this.E++;
                this.E -= this.E >> 8;
            } else if (this.E > 0) {
                this.E--;
            }
        }
        int i9 = g2 + 3;
        if (g4 >= this.M) {
            i9++;
        }
        if (g4 <= 256) {
            i9 += 8;
        }
        if (i8 > 176 || (this.A >= 10752 && i5 < 64)) {
            this.M = 32512;
        } else {
            this.M = 8193;
        }
        int[] iArr2 = this.k;
        int i10 = this.n;
        this.n = i10 + 1;
        iArr2[i10] = g4;
        this.n &= 3;
        this.O = i9;
        this.N = g4;
        a(g4, i9);
    }

    private void a(int i2, int i3) {
        this.i -= (long) i3;
        while (true) {
            int i4 = i3 - 1;
            if (i3 != 0) {
                this.j[this.l] = this.j[(this.l - i2) & 4194303];
                this.l = (this.l + 1) & 4194303;
                i3 = i4;
            } else {
                return;
            }
        }
    }

    private static void a(int[] iArr, int[] iArr2) {
        int i2 = 0;
        for (int i3 = 7; i3 >= 0; i3--) {
            int i4 = 0;
            while (i4 < 32) {
                iArr[i2] = (iArr[i2] & -256) | i3;
                i4++;
                i2++;
            }
        }
        Arrays.fill(iArr2, 0);
        for (int i5 = 6; i5 >= 0; i5--) {
            iArr2[i5] = (7 - i5) * 32;
        }
    }

    private void b() {
        int g2 = g();
        int a2 = (this.A > 30207 ? a(g2, 8, ad, ae) : this.A > 24063 ? a(g2, 6, ab, ac) : this.A > 13823 ? a(g2, 5, Z, aa) : this.A > 3583 ? a(g2, 5, X, Y) : a(g2, 4, V, W)) & 255;
        if (this.H != 0) {
            if (a2 == 0 && g2 > 4095) {
                a2 = NotificationCompat.FLAG_LOCAL_ONLY;
            }
            a2--;
            if (a2 == -1) {
                int g3 = g();
                b(1);
                if ((32768 & g3) != 0) {
                    this.H = 0;
                    this.G = 0;
                    return;
                }
                int i2 = (g3 & 16384) != 0 ? 4 : 3;
                b(1);
                b(5);
                a((a(g(), 5, Z, aa) << 5) | (g() >>> 11), i2);
                return;
            }
        } else {
            int i3 = this.G;
            this.G = i3 + 1;
            if (i3 >= 16 && this.J == 0) {
                this.H = 1;
            }
        }
        this.A += a2;
        this.A -= this.A >>> 8;
        this.K += 16;
        if (this.K > 255) {
            this.K = 144;
            this.L >>>= 1;
        }
        byte[] bArr = this.j;
        int i4 = this.l;
        this.l = i4 + 1;
        bArr[i4] = (byte) (this.o[a2] >>> 8);
        this.i--;
        while (true) {
            int i5 = this.o[a2];
            int[] iArr = this.w;
            int i6 = i5 + 1;
            int i7 = i5 & 255;
            int i8 = iArr[i7];
            iArr[i7] = i8 + 1;
            if ((i6 & 255) > 161) {
                a(this.o, this.w);
            } else {
                this.o[a2] = this.o[i8];
                this.o[i8] = i6;
                return;
            }
        }
    }

    private int c(int i2) {
        return i2 == 1 ? this.F + 3 : P[i2];
    }

    private int d(int i2) {
        return i2 == 3 ? this.F + 3 : R[i2];
    }

    private void j() {
        int a2 = a(g(), 5, Z, aa);
        while (true) {
            int i2 = this.r[a2];
            this.z = i2 >>> 8;
            int[] iArr = this.y;
            int i3 = i2 + 1;
            int i4 = i2 & 255;
            int i5 = iArr[i4];
            iArr[i4] = i5 + 1;
            if ((i3 & 255) == 0) {
                a(this.r, this.y);
            } else {
                this.r[a2] = this.r[i5];
                this.r[i5] = i3;
                return;
            }
        }
    }

    /* access modifiers changed from: protected */
    public abstract void a(boolean z2);

    /* access modifiers changed from: protected */
    public final void b(boolean z2) {
        int i2;
        if (this.d) {
            this.l = this.m;
        } else {
            a(z2);
            if (!z2) {
                this.F = 0;
                this.G = 0;
                this.E = 0;
                this.D = 0;
                this.C = 0;
                this.B = 0;
                this.A = 13568;
                this.M = 8193;
                this.L = NotificationCompat.FLAG_HIGH_PRIORITY;
                this.K = NotificationCompat.FLAG_HIGH_PRIORITY;
            }
            this.J = 0;
            this.z = 0;
            this.H = 0;
            this.I = 0;
            this.h = 0;
            c();
            if (!z2) {
                for (int i3 = 0; i3 < 256; i3++) {
                    int[] iArr = this.s;
                    int[] iArr2 = this.t;
                    this.u[i3] = i3;
                    iArr2[i3] = i3;
                    iArr[i3] = i3;
                    this.v[i3] = ((i3 ^ -1) + 1) & 255;
                    int[] iArr3 = this.o;
                    int i4 = i3 << 8;
                    this.q[i3] = i4;
                    iArr3[i3] = i4;
                    this.p[i3] = i3;
                    this.r[i3] = (((i3 ^ -1) + 1) & 255) << 8;
                }
                Arrays.fill(this.w, 0);
                Arrays.fill(this.x, 0);
                Arrays.fill(this.y, 0);
                a(this.q, this.x);
                this.l = 0;
            } else {
                this.l = this.m;
            }
            this.i--;
        }
        if (this.i >= 0) {
            j();
            this.J = 8;
        }
        while (this.i >= 0) {
            this.l &= 4194303;
            if (this.al > this.h - 30 && !c()) {
                break;
            }
            if (((this.m - this.l) & 4194303) < 270 && this.m != this.l) {
                d();
                if (this.d) {
                    return;
                }
            }
            if (this.H != 0) {
                b();
            } else {
                int i5 = this.J - 1;
                this.J = i5;
                if (i5 < 0) {
                    j();
                    this.J = 7;
                }
                if ((this.z & NotificationCompat.FLAG_HIGH_PRIORITY) != 0) {
                    this.z <<= 1;
                    if (this.L > this.K) {
                        a();
                    } else {
                        b();
                    }
                } else {
                    this.z <<= 1;
                    int i6 = this.J - 1;
                    this.J = i6;
                    if (i6 < 0) {
                        j();
                        this.J = 7;
                    }
                    if ((this.z & NotificationCompat.FLAG_HIGH_PRIORITY) != 0) {
                        this.z <<= 1;
                        if (this.L > this.K) {
                            b();
                        } else {
                            a();
                        }
                    } else {
                        this.z <<= 1;
                        this.G = 0;
                        int g2 = g();
                        if (this.I == 2) {
                            b(1);
                            if (g2 >= 32768) {
                                a(this.N, this.O);
                            } else {
                                g2 <<= 1;
                                this.I = 0;
                            }
                        }
                        int i7 = g2 >>> 8;
                        if (this.C < 37) {
                            int i8 = 0;
                            while (((Q[i8] ^ i7) & ((255 >>> c(i8)) ^ -1)) != 0) {
                                i8++;
                            }
                            b(c(i8));
                            i2 = i8;
                        } else {
                            int i9 = 0;
                            while (((S[i9] ^ i7) & ((255 >> d(i9)) ^ -1)) != 0) {
                                i9++;
                            }
                            b(d(i9));
                            i2 = i9;
                        }
                        if (i2 < 9) {
                            this.I = 0;
                            this.C += i2;
                            this.C -= this.C >> 4;
                            int a2 = a(g(), 5, Z, aa) & 255;
                            int i10 = this.p[a2];
                            int i11 = a2 - 1;
                            if (i11 != -1) {
                                int[] iArr4 = this.t;
                                iArr4[i10] = iArr4[i10] - 1;
                                int i12 = this.p[i11];
                                int[] iArr5 = this.t;
                                iArr5[i12] = iArr5[i12] + 1;
                                this.p[i11 + 1] = i12;
                                this.p[i11] = i10;
                            }
                            int i13 = i2 + 2;
                            int[] iArr6 = this.k;
                            int i14 = this.n;
                            this.n = i14 + 1;
                            int i15 = i10 + 1;
                            iArr6[i14] = i15;
                            this.n &= 3;
                            this.O = i13;
                            this.N = i15;
                            a(i15, i13);
                        } else if (i2 == 9) {
                            this.I++;
                            a(this.N, this.O);
                        } else if (i2 == 14) {
                            this.I = 0;
                            int a3 = a(g(), 3, T, U) + 5;
                            int g3 = (g() >> 1) | 32768;
                            b(15);
                            this.O = a3;
                            this.N = g3;
                            a(g3, a3);
                        } else {
                            this.I = 0;
                            int i16 = this.k[(this.n - (i2 - 9)) & 3];
                            int a4 = a(g(), 2, a, b) + 2;
                            if (a4 == 257 && i2 == 10) {
                                this.F ^= 1;
                            } else {
                                if (i16 > 256) {
                                    a4++;
                                }
                                if (i16 >= this.M) {
                                    a4++;
                                }
                                int[] iArr7 = this.k;
                                int i17 = this.n;
                                this.n = i17 + 1;
                                iArr7[i17] = i16;
                                this.n &= 3;
                                this.O = a4;
                                this.N = i16;
                                a(i16, a4);
                            }
                        }
                    }
                }
            }
        }
        d();
    }

    /* access modifiers changed from: protected */
    public final boolean c() {
        int i2 = this.h - this.al;
        if (i2 < 0) {
            return false;
        }
        if (this.al > 16384) {
            if (i2 > 0) {
                System.arraycopy(this.an, this.al, this.an, 0, i2);
            }
            this.al = 0;
            this.h = i2;
        } else {
            i2 = this.h;
        }
        int a2 = this.f.a(this.an, i2, (32768 - i2) & -16);
        if (a2 > 0) {
            this.h += a2;
        }
        this.c = this.h - 30;
        return a2 != -1;
    }

    /* access modifiers changed from: protected */
    public final void d() {
        if (this.l != this.m) {
            this.g = true;
        }
        if (this.l < this.m) {
            this.f.b(this.j, this.m, (-this.m) & 4194303);
            this.f.b(this.j, 0, this.l);
            this.e = true;
        } else {
            this.f.b(this.j, this.m, this.l - this.m);
        }
        this.m = this.l;
    }
}
