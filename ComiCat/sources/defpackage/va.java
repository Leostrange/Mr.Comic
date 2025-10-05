package defpackage;

import android.support.v4.app.FragmentTransaction;
import android.support.v4.app.NotificationCompat;
import java.util.Arrays;

/* renamed from: va  reason: default package */
/* compiled from: Unpack20 */
public abstract class va extends uz {
    public static final int[] af = {0, 1, 2, 3, 4, 5, 6, 7, 8, 10, 12, 14, 16, 20, 24, 28, 32, 40, 48, 56, 64, 80, 96, 112, NotificationCompat.FLAG_HIGH_PRIORITY, 160, 192, 224};
    public static final byte[] ag = {0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 2, 2, 2, 2, 3, 3, 3, 3, 4, 4, 4, 4, 5, 5, 5, 5};
    public static final int[] ah = {0, 1, 2, 3, 4, 6, 8, 12, 16, 24, 32, 48, 64, 96, NotificationCompat.FLAG_HIGH_PRIORITY, 192, NotificationCompat.FLAG_LOCAL_ONLY, 384, NotificationCompat.FLAG_GROUP_SUMMARY, 768, 1024, 1536, 2048, 3072, FragmentTransaction.TRANSIT_ENTER_MASK, 6144, FragmentTransaction.TRANSIT_EXIT_MASK, 12288, 16384, 24576, 32768, 49152, 65536, 98304, 131072, 196608, 262144, 327680, 393216, 458752, 524288, 589824, 655360, 720896, 786432, 851968, 917504, 983040};
    public static final int[] ai = {0, 0, 0, 0, 1, 1, 2, 2, 3, 3, 4, 4, 5, 5, 6, 6, 7, 7, 8, 8, 9, 9, 10, 10, 11, 11, 12, 12, 13, 13, 14, 14, 15, 15, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16};
    public static final int[] aj = {0, 4, 8, 16, 32, 64, NotificationCompat.FLAG_HIGH_PRIORITY, 192};
    public static final int[] ak = {2, 2, 3, 4, 5, 6, 6, 6};
    protected vi[] T = new vi[4];
    protected byte[] U = new byte[1028];
    protected int V;
    protected int W;
    protected int X;
    protected int Y;
    protected vc[] Z = new vc[4];
    protected vg aa = new vg();
    protected vf ab = new vf();
    protected vh ac = new vh();
    protected vj ad = new vj();
    protected vd ae = new vd();

    private void a(int i, int i2) {
        int[] iArr = this.k;
        int i3 = this.n;
        this.n = i3 + 1;
        iArr[i3 & 3] = i2;
        this.N = i2;
        this.O = i;
        this.i -= (long) i;
        int i4 = this.l - i2;
        if (i4 >= 4194004 || this.l >= 4194004) {
            while (true) {
                int i5 = i - 1;
                if (i != 0) {
                    this.j[this.l] = this.j[i4 & 4194303];
                    this.l = (this.l + 1) & 4194303;
                    i4++;
                    i = i5;
                } else {
                    return;
                }
            }
        } else {
            byte[] bArr = this.j;
            int i6 = this.l;
            this.l = i6 + 1;
            int i7 = i4 + 1;
            bArr[i6] = this.j[i4];
            byte[] bArr2 = this.j;
            int i8 = this.l;
            this.l = i8 + 1;
            int i9 = i7 + 1;
            bArr2[i8] = this.j[i7];
            while (i > 2) {
                i--;
                byte[] bArr3 = this.j;
                int i10 = this.l;
                this.l = i10 + 1;
                bArr3[i10] = this.j[i9];
                i9++;
            }
        }
    }

    protected static void a(byte[] bArr, int i, ve veVar, int i2) {
        int[] iArr = new int[16];
        int[] iArr2 = new int[16];
        Arrays.fill(iArr, 0);
        Arrays.fill(veVar.a(), 0);
        for (int i3 = 0; i3 < i2; i3++) {
            byte b = bArr[i + i3] & 15;
            iArr[b] = iArr[b] + 1;
        }
        iArr[0] = 0;
        iArr2[0] = 0;
        veVar.c[0] = 0;
        veVar.b[0] = 0;
        long j = 0;
        int i4 = 1;
        while (i4 < 16) {
            long j2 = 2 * (j + ((long) iArr[i4]));
            long j3 = j2 << (15 - i4);
            if (j3 > 65535) {
                j3 = 65535;
            }
            veVar.b[i4] = (int) j3;
            int[] iArr3 = veVar.c;
            int i5 = veVar.c[i4 - 1] + iArr[i4 - 1];
            iArr3[i4] = i5;
            iArr2[i4] = i5;
            i4++;
            j = j2;
        }
        for (int i6 = 0; i6 < i2; i6++) {
            if (bArr[i + i6] != 0) {
                int[] a = veVar.a();
                byte b2 = bArr[i + i6] & 15;
                int i7 = iArr2[b2];
                iArr2[b2] = i7 + 1;
                a[i7] = i6;
            }
        }
        veVar.a = i2;
    }

    private boolean a() {
        int i;
        int i2;
        byte[] bArr = new byte[19];
        byte[] bArr2 = new byte[1028];
        if (this.al > this.h - 25 && !c()) {
            return false;
        }
        int f = f();
        this.V = 32768 & f;
        if ((f & 16384) == 0) {
            Arrays.fill(this.U, (byte) 0);
        }
        a(2);
        if (this.V != 0) {
            this.W = ((f >>> 12) & 3) + 1;
            if (this.X >= this.W) {
                this.X = 0;
            }
            a(2);
            i = this.W * 257;
        } else {
            i = 374;
        }
        for (int i3 = 0; i3 < 19; i3++) {
            bArr[i3] = (byte) (f() >>> 12);
            a(4);
        }
        a(bArr, 0, this.ae, 19);
        int i4 = 0;
        while (i4 < i) {
            if (this.al <= this.h - 5 || c()) {
                int a = a(this.ae);
                if (a >= 16) {
                    if (a != 16) {
                        if (a == 17) {
                            i2 = (f() >>> 13) + 3;
                            a(3);
                        } else {
                            i2 = (f() >>> 9) + 11;
                            a(7);
                        }
                        while (true) {
                            int i5 = i2 - 1;
                            if (i2 <= 0 || i4 >= i) {
                                break;
                            }
                            bArr2[i4] = 0;
                            i4++;
                            i2 = i5;
                        }
                    } else {
                        int f2 = (f() >>> 14) + 3;
                        a(2);
                        while (true) {
                            int i6 = f2 - 1;
                            if (f2 <= 0 || i4 >= i) {
                                break;
                            }
                            bArr2[i4] = bArr2[i4 - 1];
                            i4++;
                            f2 = i6;
                        }
                    }
                } else {
                    bArr2[i4] = (byte) ((a + this.U[i4]) & 15);
                    i4++;
                }
            } else {
                return false;
            }
        }
        if (this.al > this.h) {
            return true;
        }
        if (this.V != 0) {
            for (int i7 = 0; i7 < this.W; i7++) {
                a(bArr2, i7 * 257, this.T[i7], 257);
            }
        } else {
            a(bArr2, 0, this.aa, 298);
            a(bArr2, 298, this.ab, 48);
            a(bArr2, 346, this.ad, 28);
        }
        for (int i8 = 0; i8 < this.U.length; i8++) {
            this.U[i8] = bArr2[i8];
        }
        return true;
    }

    /* access modifiers changed from: protected */
    public final int a(ve veVar) {
        int i = 1;
        long f = (long) (f() & 65534);
        int[] iArr = veVar.b;
        if (f >= ((long) iArr[8])) {
            i = f < ((long) iArr[12]) ? f < ((long) iArr[10]) ? f < ((long) iArr[9]) ? 9 : 10 : f < ((long) iArr[11]) ? 11 : 12 : f < ((long) iArr[14]) ? f < ((long) iArr[13]) ? 13 : 14 : 15;
        } else if (f >= ((long) iArr[4])) {
            i = f < ((long) iArr[6]) ? f < ((long) iArr[5]) ? 5 : 6 : f < ((long) iArr[7]) ? 7 : 8;
        } else if (f >= ((long) iArr[2])) {
            i = f < ((long) iArr[3]) ? 3 : 4;
        } else if (f >= ((long) iArr[1])) {
            i = 2;
        }
        a(i);
        int i2 = ((((int) f) - iArr[i - 1]) >>> (16 - i)) + veVar.c[i];
        if (i2 >= veVar.a) {
            i2 = 0;
        }
        return veVar.a()[i2];
    }

    /* access modifiers changed from: protected */
    /* JADX WARNING: Removed duplicated region for block: B:123:0x0079 A[SYNTHETIC] */
    /* JADX WARNING: Removed duplicated region for block: B:125:0x0049 A[SYNTHETIC] */
    /* JADX WARNING: Removed duplicated region for block: B:23:0x0067  */
    /* JADX WARNING: Removed duplicated region for block: B:29:0x0081  */
    /* JADX WARNING: Removed duplicated region for block: B:5:0x0019  */
    /* JADX WARNING: Removed duplicated region for block: B:79:0x0252  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final void c(boolean r15) {
        /*
            r14 = this;
            r13 = 269(0x10d, float:3.77E-43)
            r12 = 256(0x100, float:3.59E-43)
            r11 = 16
            r10 = -16
            r2 = 0
            boolean r0 = r14.d
            if (r0 == 0) goto L_0x004a
            int r0 = r14.m
            r14.l = r0
        L_0x0011:
            long r0 = r14.i
            r4 = 0
            int r0 = (r0 > r4 ? 1 : (r0 == r4 ? 0 : -1))
            if (r0 < 0) goto L_0x0079
            int r0 = r14.l
            r1 = 4194303(0x3fffff, float:5.87747E-39)
            r0 = r0 & r1
            r14.l = r0
            int r0 = r14.al
            int r1 = r14.h
            int r1 = r1 + -30
            if (r0 <= r1) goto L_0x002f
            boolean r0 = r14.c()
            if (r0 == 0) goto L_0x0079
        L_0x002f:
            int r0 = r14.m
            int r1 = r14.l
            int r0 = r0 - r1
            r1 = 4194303(0x3fffff, float:5.87747E-39)
            r0 = r0 & r1
            r1 = 270(0x10e, float:3.78E-43)
            if (r0 >= r1) goto L_0x0063
            int r0 = r14.m
            int r1 = r14.l
            if (r0 == r1) goto L_0x0063
            r14.d()
            boolean r0 = r14.d
            if (r0 == 0) goto L_0x0063
        L_0x0049:
            return
        L_0x004a:
            r14.a(r15)
            boolean r0 = r14.c()
            if (r0 == 0) goto L_0x0049
            if (r15 != 0) goto L_0x005b
            boolean r0 = r14.a()
            if (r0 == 0) goto L_0x0049
        L_0x005b:
            long r0 = r14.i
            r4 = 1
            long r0 = r0 - r4
            r14.i = r0
            goto L_0x0011
        L_0x0063:
            int r0 = r14.V
            if (r0 == 0) goto L_0x0252
            vi[] r0 = r14.T
            int r1 = r14.X
            r0 = r0[r1]
            int r0 = r14.a(r0)
            if (r0 != r12) goto L_0x0098
            boolean r0 = r14.a()
            if (r0 != 0) goto L_0x0011
        L_0x0079:
            int r0 = r14.h
            int r1 = r14.al
            int r1 = r1 + 5
            if (r0 < r1) goto L_0x0094
            int r0 = r14.V
            if (r0 == 0) goto L_0x0330
            vi[] r0 = r14.T
            int r1 = r14.X
            r0 = r0[r1]
            int r0 = r14.a(r0)
            if (r0 != r12) goto L_0x0094
            r14.a()
        L_0x0094:
            r14.d()
            goto L_0x0049
        L_0x0098:
            byte[] r4 = r14.j
            int r5 = r14.l
            int r1 = r5 + 1
            r14.l = r1
            vc[] r1 = r14.Z
            int r3 = r14.X
            r6 = r1[r3]
            int r1 = r6.l
            int r1 = r1 + 1
            r6.l = r1
            int r1 = r6.h
            r6.i = r1
            int r1 = r6.g
            r6.h = r1
            int r1 = r6.j
            int r3 = r6.f
            int r1 = r1 - r3
            r6.g = r1
            int r1 = r6.j
            r6.f = r1
            int r1 = r6.m
            int r1 = r1 * 8
            int r3 = r6.a
            int r7 = r6.f
            int r3 = r3 * r7
            int r1 = r1 + r3
            int r3 = r6.b
            int r7 = r6.g
            int r3 = r3 * r7
            int r7 = r6.c
            int r8 = r6.h
            int r7 = r7 * r8
            int r3 = r3 + r7
            int r1 = r1 + r3
            int r3 = r6.d
            int r7 = r6.i
            int r3 = r3 * r7
            int r7 = r6.e
            int r8 = r14.Y
            int r7 = r7 * r8
            int r3 = r3 + r7
            int r1 = r1 + r3
            int r1 = r1 >>> 3
            r1 = r1 & 255(0xff, float:3.57E-43)
            int r7 = r1 - r0
            byte r0 = (byte) r0
            int r0 = r0 << 3
            int[] r1 = r6.k
            r3 = r1[r2]
            int r8 = java.lang.Math.abs(r0)
            int r3 = r3 + r8
            r1[r2] = r3
            int[] r1 = r6.k
            r3 = 1
            r8 = r1[r3]
            int r9 = r6.f
            int r9 = r0 - r9
            int r9 = java.lang.Math.abs(r9)
            int r8 = r8 + r9
            r1[r3] = r8
            int[] r1 = r6.k
            r3 = 2
            r8 = r1[r3]
            int r9 = r6.f
            int r9 = r9 + r0
            int r9 = java.lang.Math.abs(r9)
            int r8 = r8 + r9
            r1[r3] = r8
            int[] r1 = r6.k
            r3 = 3
            r8 = r1[r3]
            int r9 = r6.g
            int r9 = r0 - r9
            int r9 = java.lang.Math.abs(r9)
            int r8 = r8 + r9
            r1[r3] = r8
            int[] r1 = r6.k
            r3 = 4
            r8 = r1[r3]
            int r9 = r6.g
            int r9 = r9 + r0
            int r9 = java.lang.Math.abs(r9)
            int r8 = r8 + r9
            r1[r3] = r8
            int[] r1 = r6.k
            r3 = 5
            r8 = r1[r3]
            int r9 = r6.h
            int r9 = r0 - r9
            int r9 = java.lang.Math.abs(r9)
            int r8 = r8 + r9
            r1[r3] = r8
            int[] r1 = r6.k
            r3 = 6
            r8 = r1[r3]
            int r9 = r6.h
            int r9 = r9 + r0
            int r9 = java.lang.Math.abs(r9)
            int r8 = r8 + r9
            r1[r3] = r8
            int[] r1 = r6.k
            r3 = 7
            r8 = r1[r3]
            int r9 = r6.i
            int r9 = r0 - r9
            int r9 = java.lang.Math.abs(r9)
            int r8 = r8 + r9
            r1[r3] = r8
            int[] r1 = r6.k
            r3 = 8
            r8 = r1[r3]
            int r9 = r6.i
            int r9 = r9 + r0
            int r9 = java.lang.Math.abs(r9)
            int r8 = r8 + r9
            r1[r3] = r8
            int[] r1 = r6.k
            r3 = 9
            r8 = r1[r3]
            int r9 = r14.Y
            int r9 = r0 - r9
            int r9 = java.lang.Math.abs(r9)
            int r8 = r8 + r9
            r1[r3] = r8
            int[] r1 = r6.k
            r3 = 10
            r8 = r1[r3]
            int r9 = r14.Y
            int r0 = r0 + r9
            int r0 = java.lang.Math.abs(r0)
            int r0 = r0 + r8
            r1[r3] = r0
            int r0 = r6.m
            int r0 = r7 - r0
            byte r0 = (byte) r0
            r6.j = r0
            int r0 = r6.j
            r14.Y = r0
            r6.m = r7
            int r0 = r6.l
            r0 = r0 & 31
            if (r0 != 0) goto L_0x01cb
            int[] r0 = r6.k
            r1 = r0[r2]
            int[] r0 = r6.k
            r0[r2] = r2
            r0 = 1
            r3 = r1
            r1 = r2
        L_0x01b1:
            int[] r8 = r6.k
            int r8 = r8.length
            if (r0 >= r8) goto L_0x01c8
            int[] r8 = r6.k
            r8 = r8[r0]
            if (r8 >= r3) goto L_0x01c1
            int[] r1 = r6.k
            r3 = r1[r0]
            r1 = r0
        L_0x01c1:
            int[] r8 = r6.k
            r8[r0] = r2
            int r0 = r0 + 1
            goto L_0x01b1
        L_0x01c8:
            switch(r1) {
                case 1: goto L_0x01e3;
                case 2: goto L_0x01ee;
                case 3: goto L_0x01f9;
                case 4: goto L_0x0204;
                case 5: goto L_0x020f;
                case 6: goto L_0x021a;
                case 7: goto L_0x0225;
                case 8: goto L_0x0230;
                case 9: goto L_0x023b;
                case 10: goto L_0x0246;
                default: goto L_0x01cb;
            }
        L_0x01cb:
            byte r0 = (byte) r7
            r4[r5] = r0
            int r0 = r14.X
            int r0 = r0 + 1
            r14.X = r0
            int r1 = r14.W
            if (r0 != r1) goto L_0x01da
            r14.X = r2
        L_0x01da:
            long r0 = r14.i
            r4 = 1
            long r0 = r0 - r4
            r14.i = r0
            goto L_0x0011
        L_0x01e3:
            int r0 = r6.a
            if (r0 < r10) goto L_0x01cb
            int r0 = r6.a
            int r0 = r0 + -1
            r6.a = r0
            goto L_0x01cb
        L_0x01ee:
            int r0 = r6.a
            if (r0 >= r11) goto L_0x01cb
            int r0 = r6.a
            int r0 = r0 + 1
            r6.a = r0
            goto L_0x01cb
        L_0x01f9:
            int r0 = r6.b
            if (r0 < r10) goto L_0x01cb
            int r0 = r6.b
            int r0 = r0 + -1
            r6.b = r0
            goto L_0x01cb
        L_0x0204:
            int r0 = r6.b
            if (r0 >= r11) goto L_0x01cb
            int r0 = r6.b
            int r0 = r0 + 1
            r6.b = r0
            goto L_0x01cb
        L_0x020f:
            int r0 = r6.c
            if (r0 < r10) goto L_0x01cb
            int r0 = r6.c
            int r0 = r0 + -1
            r6.c = r0
            goto L_0x01cb
        L_0x021a:
            int r0 = r6.c
            if (r0 >= r11) goto L_0x01cb
            int r0 = r6.c
            int r0 = r0 + 1
            r6.c = r0
            goto L_0x01cb
        L_0x0225:
            int r0 = r6.d
            if (r0 < r10) goto L_0x01cb
            int r0 = r6.d
            int r0 = r0 + -1
            r6.d = r0
            goto L_0x01cb
        L_0x0230:
            int r0 = r6.d
            if (r0 >= r11) goto L_0x01cb
            int r0 = r6.d
            int r0 = r0 + 1
            r6.d = r0
            goto L_0x01cb
        L_0x023b:
            int r0 = r6.e
            if (r0 < r10) goto L_0x01cb
            int r0 = r6.e
            int r0 = r0 + -1
            r6.e = r0
            goto L_0x01cb
        L_0x0246:
            int r0 = r6.e
            if (r0 >= r11) goto L_0x01cb
            int r0 = r6.e
            int r0 = r0 + 1
            r6.e = r0
            goto L_0x01cb
        L_0x0252:
            vg r0 = r14.aa
            int r0 = r14.a(r0)
            if (r0 >= r12) goto L_0x0267
            byte[] r1 = r14.j
            int r3 = r14.l
            int r4 = r3 + 1
            r14.l = r4
            byte r0 = (byte) r0
            r1[r3] = r0
            goto L_0x005b
        L_0x0267:
            if (r0 <= r13) goto L_0x02b4
            int[] r1 = af
            int r3 = r0 + -270
            r0 = r1[r3]
            int r0 = r0 + 3
            byte[] r1 = ag
            byte r1 = r1[r3]
            if (r1 <= 0) goto L_0x0282
            int r3 = r14.f()
            int r4 = 16 - r1
            int r3 = r3 >>> r4
            int r0 = r0 + r3
            r14.a(r1)
        L_0x0282:
            vf r1 = r14.ab
            int r3 = r14.a(r1)
            int[] r1 = ah
            r1 = r1[r3]
            int r1 = r1 + 1
            int[] r4 = ai
            r3 = r4[r3]
            if (r3 <= 0) goto L_0x029f
            int r4 = r14.f()
            int r5 = 16 - r3
            int r4 = r4 >>> r5
            int r1 = r1 + r4
            r14.a(r3)
        L_0x029f:
            r3 = 8192(0x2000, float:1.14794E-41)
            if (r1 < r3) goto L_0x02af
            int r0 = r0 + 1
            long r4 = (long) r1
            r6 = 262144(0x40000, double:1.295163E-318)
            int r3 = (r4 > r6 ? 1 : (r4 == r6 ? 0 : -1))
            if (r3 < 0) goto L_0x02af
            int r0 = r0 + 1
        L_0x02af:
            r14.a(r0, r1)
            goto L_0x0011
        L_0x02b4:
            if (r0 != r13) goto L_0x02be
            boolean r0 = r14.a()
            if (r0 != 0) goto L_0x0011
            goto L_0x0079
        L_0x02be:
            if (r0 != r12) goto L_0x02c9
            int r0 = r14.O
            int r1 = r14.N
            r14.a(r0, r1)
            goto L_0x0011
        L_0x02c9:
            r1 = 261(0x105, float:3.66E-43)
            if (r0 >= r1) goto L_0x030d
            int[] r1 = r14.k
            int r3 = r14.n
            int r0 = r0 + -256
            int r0 = r3 - r0
            r0 = r0 & 3
            r1 = r1[r0]
            vj r0 = r14.ad
            int r3 = r14.a(r0)
            int[] r0 = af
            r0 = r0[r3]
            int r0 = r0 + 2
            byte[] r4 = ag
            byte r3 = r4[r3]
            if (r3 <= 0) goto L_0x02f6
            int r4 = r14.f()
            int r5 = 16 - r3
            int r4 = r4 >>> r5
            int r0 = r0 + r4
            r14.a(r3)
        L_0x02f6:
            r3 = 257(0x101, float:3.6E-43)
            if (r1 < r3) goto L_0x0308
            int r0 = r0 + 1
            r3 = 8192(0x2000, float:1.14794E-41)
            if (r1 < r3) goto L_0x0308
            int r0 = r0 + 1
            r3 = 262144(0x40000, float:3.67342E-40)
            if (r1 < r3) goto L_0x0308
            int r0 = r0 + 1
        L_0x0308:
            r14.a(r0, r1)
            goto L_0x0011
        L_0x030d:
            r1 = 270(0x10e, float:3.78E-43)
            if (r0 >= r1) goto L_0x0011
            int[] r1 = aj
            int r3 = r0 + -261
            r0 = r1[r3]
            int r0 = r0 + 1
            int[] r1 = ak
            r1 = r1[r3]
            if (r1 <= 0) goto L_0x032a
            int r3 = r14.f()
            int r4 = 16 - r1
            int r3 = r3 >>> r4
            int r0 = r0 + r3
            r14.a(r1)
        L_0x032a:
            r1 = 2
            r14.a(r1, r0)
            goto L_0x0011
        L_0x0330:
            vg r0 = r14.aa
            int r0 = r14.a(r0)
            if (r0 != r13) goto L_0x0094
            r14.a()
            goto L_0x0094
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.va.c(boolean):void");
    }

    /* access modifiers changed from: protected */
    public final void d(boolean z) {
        if (!z) {
            this.X = 0;
            this.Y = 0;
            this.W = 1;
            Arrays.fill(this.Z, new vc());
            Arrays.fill(this.U, (byte) 0);
        }
    }
}
