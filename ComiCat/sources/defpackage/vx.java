package defpackage;

import android.support.v4.app.FragmentTransaction;
import java.util.Vector;

/* renamed from: vx  reason: default package */
/* compiled from: RarVM */
public final class vx extends vw {
    public byte[] a = null;
    public int[] b = new int[8];
    public int c;
    public int d = 25000000;
    public int e;
    public int f;

    /* renamed from: vx$1  reason: invalid class name */
    /* compiled from: RarVM */
    public static /* synthetic */ class AnonymousClass1 {
        public static final /* synthetic */ int[] b = new int[wg.values().length];

        static {
            try {
                b[wg.VMSF_E8.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                b[wg.VMSF_E8E9.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                b[wg.VMSF_ITANIUM.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                b[wg.VMSF_DELTA.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
            try {
                b[wg.VMSF_RGB.ordinal()] = 5;
            } catch (NoSuchFieldError e5) {
            }
            try {
                b[wg.VMSF_AUDIO.ordinal()] = 6;
            } catch (NoSuchFieldError e6) {
            }
            try {
                b[wg.VMSF_UPCASE.ordinal()] = 7;
            } catch (NoSuchFieldError e7) {
            }
            a = new int[vz.values().length];
            try {
                a[vz.VM_MOV.ordinal()] = 1;
            } catch (NoSuchFieldError e8) {
            }
            try {
                a[vz.VM_MOVB.ordinal()] = 2;
            } catch (NoSuchFieldError e9) {
            }
            try {
                a[vz.VM_MOVD.ordinal()] = 3;
            } catch (NoSuchFieldError e10) {
            }
            try {
                a[vz.VM_CMP.ordinal()] = 4;
            } catch (NoSuchFieldError e11) {
            }
            try {
                a[vz.VM_CMPB.ordinal()] = 5;
            } catch (NoSuchFieldError e12) {
            }
            try {
                a[vz.VM_CMPD.ordinal()] = 6;
            } catch (NoSuchFieldError e13) {
            }
            try {
                a[vz.VM_ADD.ordinal()] = 7;
            } catch (NoSuchFieldError e14) {
            }
            try {
                a[vz.VM_ADDB.ordinal()] = 8;
            } catch (NoSuchFieldError e15) {
            }
            try {
                a[vz.VM_ADDD.ordinal()] = 9;
            } catch (NoSuchFieldError e16) {
            }
            try {
                a[vz.VM_SUB.ordinal()] = 10;
            } catch (NoSuchFieldError e17) {
            }
            try {
                a[vz.VM_SUBB.ordinal()] = 11;
            } catch (NoSuchFieldError e18) {
            }
            try {
                a[vz.VM_SUBD.ordinal()] = 12;
            } catch (NoSuchFieldError e19) {
            }
            try {
                a[vz.VM_JZ.ordinal()] = 13;
            } catch (NoSuchFieldError e20) {
            }
            try {
                a[vz.VM_JNZ.ordinal()] = 14;
            } catch (NoSuchFieldError e21) {
            }
            try {
                a[vz.VM_INC.ordinal()] = 15;
            } catch (NoSuchFieldError e22) {
            }
            try {
                a[vz.VM_INCB.ordinal()] = 16;
            } catch (NoSuchFieldError e23) {
            }
            try {
                a[vz.VM_INCD.ordinal()] = 17;
            } catch (NoSuchFieldError e24) {
            }
            try {
                a[vz.VM_DEC.ordinal()] = 18;
            } catch (NoSuchFieldError e25) {
            }
            try {
                a[vz.VM_DECB.ordinal()] = 19;
            } catch (NoSuchFieldError e26) {
            }
            try {
                a[vz.VM_DECD.ordinal()] = 20;
            } catch (NoSuchFieldError e27) {
            }
            try {
                a[vz.VM_JMP.ordinal()] = 21;
            } catch (NoSuchFieldError e28) {
            }
            try {
                a[vz.VM_XOR.ordinal()] = 22;
            } catch (NoSuchFieldError e29) {
            }
            try {
                a[vz.VM_AND.ordinal()] = 23;
            } catch (NoSuchFieldError e30) {
            }
            try {
                a[vz.VM_OR.ordinal()] = 24;
            } catch (NoSuchFieldError e31) {
            }
            try {
                a[vz.VM_TEST.ordinal()] = 25;
            } catch (NoSuchFieldError e32) {
            }
            try {
                a[vz.VM_JS.ordinal()] = 26;
            } catch (NoSuchFieldError e33) {
            }
            try {
                a[vz.VM_JNS.ordinal()] = 27;
            } catch (NoSuchFieldError e34) {
            }
            try {
                a[vz.VM_JB.ordinal()] = 28;
            } catch (NoSuchFieldError e35) {
            }
            try {
                a[vz.VM_JBE.ordinal()] = 29;
            } catch (NoSuchFieldError e36) {
            }
            try {
                a[vz.VM_JA.ordinal()] = 30;
            } catch (NoSuchFieldError e37) {
            }
            try {
                a[vz.VM_JAE.ordinal()] = 31;
            } catch (NoSuchFieldError e38) {
            }
            try {
                a[vz.VM_PUSH.ordinal()] = 32;
            } catch (NoSuchFieldError e39) {
            }
            try {
                a[vz.VM_POP.ordinal()] = 33;
            } catch (NoSuchFieldError e40) {
            }
            try {
                a[vz.VM_CALL.ordinal()] = 34;
            } catch (NoSuchFieldError e41) {
            }
            try {
                a[vz.VM_NOT.ordinal()] = 35;
            } catch (NoSuchFieldError e42) {
            }
            try {
                a[vz.VM_SHL.ordinal()] = 36;
            } catch (NoSuchFieldError e43) {
            }
            try {
                a[vz.VM_SHR.ordinal()] = 37;
            } catch (NoSuchFieldError e44) {
            }
            try {
                a[vz.VM_SAR.ordinal()] = 38;
            } catch (NoSuchFieldError e45) {
            }
            try {
                a[vz.VM_NEG.ordinal()] = 39;
            } catch (NoSuchFieldError e46) {
            }
            try {
                a[vz.VM_NEGB.ordinal()] = 40;
            } catch (NoSuchFieldError e47) {
            }
            try {
                a[vz.VM_NEGD.ordinal()] = 41;
            } catch (NoSuchFieldError e48) {
            }
            try {
                a[vz.VM_PUSHA.ordinal()] = 42;
            } catch (NoSuchFieldError e49) {
            }
            try {
                a[vz.VM_POPA.ordinal()] = 43;
            } catch (NoSuchFieldError e50) {
            }
            try {
                a[vz.VM_PUSHF.ordinal()] = 44;
            } catch (NoSuchFieldError e51) {
            }
            try {
                a[vz.VM_POPF.ordinal()] = 45;
            } catch (NoSuchFieldError e52) {
            }
            try {
                a[vz.VM_MOVZX.ordinal()] = 46;
            } catch (NoSuchFieldError e53) {
            }
            try {
                a[vz.VM_MOVSX.ordinal()] = 47;
            } catch (NoSuchFieldError e54) {
            }
            try {
                a[vz.VM_XCHG.ordinal()] = 48;
            } catch (NoSuchFieldError e55) {
            }
            try {
                a[vz.VM_MUL.ordinal()] = 49;
            } catch (NoSuchFieldError e56) {
            }
            try {
                a[vz.VM_DIV.ordinal()] = 50;
            } catch (NoSuchFieldError e57) {
            }
            try {
                a[vz.VM_ADC.ordinal()] = 51;
            } catch (NoSuchFieldError e58) {
            }
            try {
                a[vz.VM_SBB.ordinal()] = 52;
            } catch (NoSuchFieldError e59) {
            }
            try {
                a[vz.VM_RET.ordinal()] = 53;
            } catch (NoSuchFieldError e60) {
            }
            try {
                a[vz.VM_STANDARD.ordinal()] = 54;
            } catch (NoSuchFieldError e61) {
            }
            try {
                a[vz.VM_PRINT.ordinal()] = 55;
            } catch (NoSuchFieldError e62) {
            }
        }
    }

    public static int a(vw vwVar) {
        int g = vwVar.g();
        switch (49152 & g) {
            case 0:
                vwVar.b(6);
                return (g >> 10) & 15;
            case 16384:
                if ((g & 15360) == 0) {
                    int i = ((g >> 2) & 255) | -256;
                    vwVar.b(14);
                    return i;
                }
                int i2 = (g >> 6) & 255;
                vwVar.b(10);
                return i2;
            case 32768:
                vwVar.b(2);
                int g2 = vwVar.g();
                vwVar.b(16);
                return g2;
            default:
                vwVar.b(2);
                vwVar.b(16);
                int g3 = (vwVar.g() << 16) | vwVar.g();
                vwVar.b(16);
                return g3;
        }
    }

    public static void a(Vector<Byte> vector, int i, int i2) {
        vector.set(i + 0, Byte.valueOf((byte) (i2 & 255)));
        vector.set(i + 1, Byte.valueOf((byte) ((i2 >>> 8) & 255)));
        vector.set(i + 2, Byte.valueOf((byte) ((i2 >>> 16) & 255)));
        vector.set(i + 3, Byte.valueOf((byte) ((i2 >>> 24) & 255)));
    }

    private void a(wd wdVar, boolean z) {
        int g = g();
        if ((32768 & g) != 0) {
            wdVar.a = wb.VM_OPREG;
            wdVar.b = (g >> 12) & 7;
            wdVar.d = wdVar.b;
            b(4);
        } else if ((49152 & g) == 0) {
            wdVar.a = wb.VM_OPINT;
            if (z) {
                wdVar.b = (g >> 6) & 255;
                b(10);
                return;
            }
            b(2);
            wdVar.b = a((vw) this);
        } else {
            wdVar.a = wb.VM_OPREGMEM;
            if ((g & FragmentTransaction.TRANSIT_EXIT_MASK) == 0) {
                wdVar.b = (g >> 10) & 7;
                wdVar.d = wdVar.b;
                wdVar.c = 0;
                b(6);
                return;
            }
            if ((g & FragmentTransaction.TRANSIT_ENTER_MASK) == 0) {
                wdVar.b = (g >> 9) & 7;
                wdVar.d = wdVar.b;
                b(7);
            } else {
                wdVar.b = 0;
                b(4);
            }
            wdVar.c = a((vw) this);
        }
    }

    private boolean a(byte[] bArr) {
        return this.a == bArr;
    }

    public final int a(int i, int i2, int i3) {
        int i4 = i2 / 8;
        int i5 = i4 + 1;
        int i6 = i5 + 1;
        return (((((this.a[i4 + i] & 255) | ((this.a[i5 + i] & 255) << 8)) | ((this.a[i6 + i] & 255) << 16)) | ((this.a[(i6 + 1) + i] & 255) << 24)) >>> (i2 & 7)) & (-1 >>> (32 - i3));
    }

    public final int a(wd wdVar) {
        if (wdVar.a == wb.VM_OPREGMEM) {
            return ug.b(this.a, (wdVar.d + wdVar.c) & 262143);
        }
        return ug.b(this.a, wdVar.d);
    }

    public final int a(boolean z, byte[] bArr, int i) {
        return z ? a(bArr) ? bArr[i] : bArr[i] & 255 : a(bArr) ? ug.b(bArr, i) : (((((((bArr[i] & 255) | 0) << 8) | (bArr[i + 1] & 255)) << 8) | (bArr[i + 2] & 255)) << 8) | (bArr[i + 3] & 255);
    }

    public final void a(int i, byte[] bArr, int i2, int i3) {
        if (i < 262144) {
            System.arraycopy(bArr, i2, this.a, i, Math.min(262144 - i, i3));
        }
    }

    public final void a(boolean z, byte[] bArr, int i, int i2) {
        if (z) {
            if (a(bArr)) {
                bArr[i] = (byte) i2;
            } else {
                bArr[i] = (byte) ((bArr[i] & 0) | ((byte) (i2 & 255)));
            }
        } else if (a(bArr)) {
            ug.a(bArr, i, i2);
        } else {
            bArr[i] = (byte) ((i2 >>> 24) & 255);
            bArr[i + 1] = (byte) ((i2 >>> 16) & 255);
            bArr[i + 2] = (byte) ((i2 >>> 8) & 255);
            bArr[i + 3] = (byte) (i2 & 255);
        }
    }

    /* JADX WARNING: Code restructure failed: missing block: B:122:0x02b2, code lost:
        r1 = false;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final void a(byte[] r12, int r13, defpackage.we r14) {
        /*
            r11 = this;
            r10 = 2
            r9 = 32768(0x8000, float:4.5918E-41)
            r8 = 8
            r3 = 1
            r2 = 0
            r11.e()
            int r1 = java.lang.Math.min(r9, r13)
            r0 = r2
        L_0x0010:
            if (r0 >= r1) goto L_0x001f
            byte[] r4 = r11.an
            byte r5 = r4[r0]
            byte r6 = r12[r0]
            r5 = r5 | r6
            byte r5 = (byte) r5
            r4[r0] = r5
            int r0 = r0 + 1
            goto L_0x0010
        L_0x001f:
            r0 = r2
            r1 = r3
        L_0x0021:
            if (r1 >= r13) goto L_0x002a
            byte r4 = r12[r1]
            r0 = r0 ^ r4
            byte r0 = (byte) r0
            int r1 = r1 + 1
            goto L_0x0021
        L_0x002a:
            r11.b(r8)
            r14.c = r2
            byte r1 = r12[r2]
            if (r0 != r1) goto L_0x01d4
            r0 = 7
            wf[] r1 = new defpackage.wf[r0]
            wf r0 = new wf
            r4 = 53
            r5 = -1386780537(0xffffffffad576887, float:-1.2244545E-11)
            wg r6 = defpackage.wg.VMSF_E8
            r0.<init>(r4, r5, r6)
            r1[r2] = r0
            wf r0 = new wf
            r4 = 57
            r5 = 1020781950(0x3cd7e57e, float:0.026354548)
            wg r6 = defpackage.wg.VMSF_E8E9
            r0.<init>(r4, r5, r6)
            r1[r3] = r0
            wf r0 = new wf
            r4 = 120(0x78, float:1.68E-43)
            r5 = 929663295(0x3769893f, float:1.3919837E-5)
            wg r6 = defpackage.wg.VMSF_ITANIUM
            r0.<init>(r4, r5, r6)
            r1[r10] = r0
            r0 = 3
            wf r4 = new wf
            r5 = 29
            r6 = 235276157(0xe06077d, float:1.652038E-30)
            wg r7 = defpackage.wg.VMSF_DELTA
            r4.<init>(r5, r6, r7)
            r1[r0] = r4
            r0 = 4
            wf r4 = new wf
            r5 = 149(0x95, float:2.09E-43)
            r6 = 472669640(0x1c2c5dc8, float:5.7031236E-22)
            wg r7 = defpackage.wg.VMSF_RGB
            r4.<init>(r5, r6, r7)
            r1[r0] = r4
            r0 = 5
            wf r4 = new wf
            r5 = 216(0xd8, float:3.03E-43)
            r6 = -1132075263(0xffffffffbc85e701, float:-0.016345503)
            wg r7 = defpackage.wg.VMSF_AUDIO
            r4.<init>(r5, r6, r7)
            r1[r0] = r4
            r0 = 6
            wf r4 = new wf
            r5 = 40
            r6 = 1186579808(0x46b9c560, float:23778.688)
            wg r7 = defpackage.wg.VMSF_UPCASE
            r4.<init>(r5, r6, r7)
            r1[r0] = r4
            r0 = -1
            int r4 = r12.length
            int r0 = defpackage.ud.a(r0, r12, r2, r4)
            r4 = r0 ^ -1
            r0 = r2
        L_0x00a5:
            r5 = 7
            if (r0 >= r5) goto L_0x0119
            r5 = r1[r0]
            int r5 = r5.b
            if (r5 != r4) goto L_0x0116
            r5 = r1[r0]
            int r5 = r5.a
            int r6 = r12.length
            if (r5 != r6) goto L_0x0116
            r0 = r1[r0]
            wg r0 = r0.c
        L_0x00b9:
            wg r1 = defpackage.wg.VMSF_NONE
            if (r0 == r1) goto L_0x00e4
            wc r1 = new wc
            r1.<init>()
            vz r4 = defpackage.vz.VM_STANDARD
            r1.a = r4
            wd r4 = r1.c
            int r0 = r0.i
            r4.b = r0
            wd r0 = r1.c
            wb r4 = defpackage.wb.VM_OPNONE
            r0.a = r4
            wd r0 = r1.d
            wb r4 = defpackage.wb.VM_OPNONE
            r0.a = r4
            java.util.List<wc> r0 = r14.a
            r0.add(r1)
            int r0 = r14.c
            int r0 = r0 + 1
            r14.c = r0
            r13 = r2
        L_0x00e4:
            int r0 = r11.g()
            r11.b(r3)
            r0 = r0 & r9
            if (r0 == 0) goto L_0x011c
            int r0 = a((defpackage.vw) r11)
            long r0 = (long) r0
            r4 = 0
            long r4 = r4 & r0
            r0 = r2
        L_0x00f7:
            int r1 = r11.al
            if (r1 >= r13) goto L_0x011c
            long r6 = (long) r0
            int r1 = (r6 > r4 ? 1 : (r6 == r4 ? 0 : -1))
            if (r1 >= 0) goto L_0x011c
            java.util.Vector<java.lang.Byte> r1 = r14.e
            int r6 = r11.g()
            int r6 = r6 >> 8
            byte r6 = (byte) r6
            java.lang.Byte r6 = java.lang.Byte.valueOf(r6)
            r1.add(r6)
            r11.b(r8)
            int r0 = r0 + 1
            goto L_0x00f7
        L_0x0116:
            int r0 = r0 + 1
            goto L_0x00a5
        L_0x0119:
            wg r0 = defpackage.wg.VMSF_NONE
            goto L_0x00b9
        L_0x011c:
            int r0 = r11.al
            if (r0 >= r13) goto L_0x01d4
            wc r1 = new wc
            r1.<init>()
            int r0 = r11.g()
            r4 = r0 & r9
            if (r4 != 0) goto L_0x0187
            int r0 = r0 >> 12
            vz r0 = defpackage.vz.a(r0)
            r1.a = r0
            r0 = 4
            r11.b(r0)
        L_0x0139:
            byte[] r0 = defpackage.vy.a
            vz r4 = r1.a
            int r4 = r4.ad
            byte r0 = r0[r4]
            r0 = r0 & 4
            if (r0 == 0) goto L_0x0198
            int r0 = r11.g()
            int r0 = r0 >> 15
            if (r0 != r3) goto L_0x0196
            r0 = r3
        L_0x014e:
            r1.b = r0
            r11.b(r3)
        L_0x0153:
            wd r0 = r1.c
            wb r4 = defpackage.wb.VM_OPNONE
            r0.a = r4
            wd r0 = r1.d
            wb r4 = defpackage.wb.VM_OPNONE
            r0.a = r4
            byte[] r0 = defpackage.vy.a
            vz r4 = r1.a
            int r4 = r4.ad
            byte r0 = r0[r4]
            r0 = r0 & 3
            if (r0 <= 0) goto L_0x017b
            wd r4 = r1.c
            boolean r5 = r1.b
            r11.a(r4, r5)
            if (r0 != r10) goto L_0x019b
            wd r0 = r1.d
            boolean r4 = r1.b
            r11.a(r0, r4)
        L_0x017b:
            int r0 = r14.c
            int r0 = r0 + 1
            r14.c = r0
            java.util.List<wc> r0 = r14.a
            r0.add(r1)
            goto L_0x011c
        L_0x0187:
            int r0 = r0 >> 10
            int r0 = r0 + -24
            vz r0 = defpackage.vz.a(r0)
            r1.a = r0
            r0 = 6
            r11.b(r0)
            goto L_0x0139
        L_0x0196:
            r0 = r2
            goto L_0x014e
        L_0x0198:
            r1.b = r2
            goto L_0x0153
        L_0x019b:
            wd r0 = r1.c
            wb r0 = r0.a
            wb r4 = defpackage.wb.VM_OPINT
            if (r0 != r4) goto L_0x017b
            byte[] r0 = defpackage.vy.a
            vz r4 = r1.a
            int r4 = r4.ad
            byte r0 = r0[r4]
            r0 = r0 & 24
            if (r0 == 0) goto L_0x017b
            wd r0 = r1.c
            int r0 = r0.b
            r4 = 256(0x100, float:3.59E-43)
            if (r0 < r4) goto L_0x01be
            int r0 = r0 + -256
        L_0x01b9:
            wd r4 = r1.c
            r4.b = r0
            goto L_0x017b
        L_0x01be:
            r4 = 136(0x88, float:1.9E-43)
            if (r0 < r4) goto L_0x01c8
            int r0 = r0 + -264
        L_0x01c4:
            int r4 = r14.c
            int r0 = r0 + r4
            goto L_0x01b9
        L_0x01c8:
            r4 = 16
            if (r0 < r4) goto L_0x01cf
            int r0 = r0 + -8
            goto L_0x01c4
        L_0x01cf:
            if (r0 < r8) goto L_0x01c4
            int r0 = r0 + -16
            goto L_0x01c4
        L_0x01d4:
            wc r0 = new wc
            r0.<init>()
            vz r1 = defpackage.vz.VM_RET
            r0.a = r1
            wd r1 = r0.c
            wb r4 = defpackage.wb.VM_OPNONE
            r1.a = r4
            wd r1 = r0.d
            wb r4 = defpackage.wb.VM_OPNONE
            r1.a = r4
            java.util.List<wc> r1 = r14.a
            r1.add(r0)
            int r0 = r14.c
            int r0 = r0 + 1
            r14.c = r0
            if (r13 == 0) goto L_0x02b1
            java.util.List<wc> r5 = r14.a
            java.util.Iterator r6 = r5.iterator()
        L_0x01fc:
            boolean r0 = r6.hasNext()
            if (r0 == 0) goto L_0x02b1
            java.lang.Object r0 = r6.next()
            wc r0 = (defpackage.wc) r0
            int[] r1 = defpackage.vx.AnonymousClass1.a
            vz r4 = r0.a
            int r4 = r4.ordinal()
            r1 = r1[r4]
            switch(r1) {
                case 1: goto L_0x025a;
                case 2: goto L_0x0215;
                case 3: goto L_0x0215;
                case 4: goto L_0x0266;
                default: goto L_0x0215;
            }
        L_0x0215:
            byte[] r1 = defpackage.vy.a
            vz r4 = r0.a
            int r4 = r4.ad
            byte r1 = r1[r4]
            r1 = r1 & 64
            if (r1 == 0) goto L_0x01fc
            int r1 = r5.indexOf(r0)
            int r1 = r1 + 1
            r4 = r1
        L_0x0228:
            int r1 = r5.size()
            if (r4 >= r1) goto L_0x02b2
            byte[] r7 = defpackage.vy.a
            java.lang.Object r1 = r5.get(r4)
            wc r1 = (defpackage.wc) r1
            vz r1 = r1.a
            int r1 = r1.ad
            byte r1 = r7[r1]
            r7 = r1 & 56
            if (r7 == 0) goto L_0x0272
            r1 = r3
        L_0x0241:
            if (r1 != 0) goto L_0x01fc
            int[] r1 = defpackage.vx.AnonymousClass1.a
            vz r4 = r0.a
            int r4 = r4.ordinal()
            r1 = r1[r4]
            switch(r1) {
                case 7: goto L_0x0251;
                case 10: goto L_0x027d;
                case 15: goto L_0x028a;
                case 18: goto L_0x0297;
                case 39: goto L_0x02a4;
                default: goto L_0x0250;
            }
        L_0x0250:
            goto L_0x01fc
        L_0x0251:
            boolean r1 = r0.b
            if (r1 == 0) goto L_0x027a
            vz r1 = defpackage.vz.VM_ADDB
        L_0x0257:
            r0.a = r1
            goto L_0x01fc
        L_0x025a:
            boolean r1 = r0.b
            if (r1 == 0) goto L_0x0263
            vz r1 = defpackage.vz.VM_MOVB
        L_0x0260:
            r0.a = r1
            goto L_0x01fc
        L_0x0263:
            vz r1 = defpackage.vz.VM_MOVD
            goto L_0x0260
        L_0x0266:
            boolean r1 = r0.b
            if (r1 == 0) goto L_0x026f
            vz r1 = defpackage.vz.VM_CMPB
        L_0x026c:
            r0.a = r1
            goto L_0x01fc
        L_0x026f:
            vz r1 = defpackage.vz.VM_CMPD
            goto L_0x026c
        L_0x0272:
            r1 = r1 & 64
            if (r1 != 0) goto L_0x02b2
            int r1 = r4 + 1
            r4 = r1
            goto L_0x0228
        L_0x027a:
            vz r1 = defpackage.vz.VM_ADDD
            goto L_0x0257
        L_0x027d:
            boolean r1 = r0.b
            if (r1 == 0) goto L_0x0287
            vz r1 = defpackage.vz.VM_SUBB
        L_0x0283:
            r0.a = r1
            goto L_0x01fc
        L_0x0287:
            vz r1 = defpackage.vz.VM_SUBD
            goto L_0x0283
        L_0x028a:
            boolean r1 = r0.b
            if (r1 == 0) goto L_0x0294
            vz r1 = defpackage.vz.VM_INCB
        L_0x0290:
            r0.a = r1
            goto L_0x01fc
        L_0x0294:
            vz r1 = defpackage.vz.VM_INCD
            goto L_0x0290
        L_0x0297:
            boolean r1 = r0.b
            if (r1 == 0) goto L_0x02a1
            vz r1 = defpackage.vz.VM_DECB
        L_0x029d:
            r0.a = r1
            goto L_0x01fc
        L_0x02a1:
            vz r1 = defpackage.vz.VM_DECD
            goto L_0x029d
        L_0x02a4:
            boolean r1 = r0.b
            if (r1 == 0) goto L_0x02ae
            vz r1 = defpackage.vz.VM_NEGB
        L_0x02aa:
            r0.a = r1
            goto L_0x01fc
        L_0x02ae:
            vz r1 = defpackage.vz.VM_NEGD
            goto L_0x02aa
        L_0x02b1:
            return
        L_0x02b2:
            r1 = r2
            goto L_0x0241
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.vx.a(byte[], int, we):void");
    }

    public final boolean c(int i) {
        if (i >= this.e) {
            return true;
        }
        int i2 = this.d - 1;
        this.d = i2;
        if (i2 <= 0) {
            return false;
        }
        this.f = i;
        return true;
    }
}
