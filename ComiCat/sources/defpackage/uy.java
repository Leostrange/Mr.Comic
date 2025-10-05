package defpackage;

import android.support.v4.app.NotificationCompat;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.Vector;
import org.apache.http.HttpStatus;

/* renamed from: uy  reason: default package */
/* compiled from: Unpack */
public final class uy extends va {
    public static int[] b = {4, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 14, 0, 12};
    public int a;
    private long aA;
    private boolean aB;
    private boolean aC;
    private int aD;
    private int aE;
    private final vm ao = new vm();
    private vx ap = new vx();
    private List<vb> aq = new ArrayList();
    private List<vb> ar = new ArrayList();
    private List<Integer> as = new ArrayList();
    private int at;
    private boolean au;
    private byte[] av = new byte[HttpStatus.SC_NOT_FOUND];
    private int[] aw = new int[60];
    private byte[] ax = new byte[60];
    private vk ay;
    private boolean az;

    public uy(ux uxVar) {
        this.f = uxVar;
        this.j = null;
        this.az = false;
        this.d = false;
        this.e = false;
        this.g = false;
    }

    private void a(int i, int i2) {
        if (i2 != i) {
            this.g = true;
        }
        if (i2 < i) {
            a(this.j, i, (-i) & 4194303);
            a(this.j, 0, i2);
            this.e = true;
            return;
        }
        a(this.j, i, i2 - i);
    }

    /* JADX WARNING: Can't fix incorrect switch cases order */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private void a(defpackage.we r31) {
        /*
            r30 = this;
            r0 = r31
            java.util.Vector<java.lang.Byte> r2 = r0.d
            int r2 = r2.size()
            if (r2 <= 0) goto L_0x0c34
            r0 = r31
            int[] r2 = r0.f
            r3 = 6
            r0 = r30
            long r4 = r0.aA
            int r4 = (int) r4
            r2[r3] = r4
            r0 = r31
            java.util.Vector<java.lang.Byte> r2 = r0.d
            r3 = 36
            r0 = r30
            long r4 = r0.aA
            int r4 = (int) r4
            defpackage.vx.a((java.util.Vector<java.lang.Byte>) r2, (int) r3, (int) r4)
            r0 = r31
            java.util.Vector<java.lang.Byte> r2 = r0.d
            r3 = 40
            r0 = r30
            long r4 = r0.aA
            r6 = 32
            long r4 = r4 >>> r6
            int r4 = (int) r4
            defpackage.vx.a((java.util.Vector<java.lang.Byte>) r2, (int) r3, (int) r4)
            r0 = r30
            vx r5 = r0.ap
            r2 = 0
        L_0x003a:
            r0 = r31
            int[] r3 = r0.f
            int r3 = r3.length
            if (r2 >= r3) goto L_0x004e
            int[] r3 = r5.b
            r0 = r31
            int[] r4 = r0.f
            r4 = r4[r2]
            r3[r2] = r4
            int r2 = r2 + 1
            goto L_0x003a
        L_0x004e:
            r0 = r31
            java.util.Vector<java.lang.Byte> r2 = r0.d
            int r2 = r2.size()
            r3 = 8192(0x2000, float:1.14794E-41)
            int r2 = java.lang.Math.min(r2, r3)
            r2 = r2 & -1
            long r6 = (long) r2
            r2 = 0
            int r2 = (r6 > r2 ? 1 : (r6 == r2 ? 0 : -1))
            if (r2 == 0) goto L_0x0087
            r2 = 0
            r3 = r2
        L_0x0067:
            long r8 = (long) r3
            int r2 = (r8 > r6 ? 1 : (r8 == r6 ? 0 : -1))
            if (r2 >= 0) goto L_0x0087
            byte[] r4 = r5.a
            r2 = 245760(0x3c000, float:3.44383E-40)
            int r8 = r2 + r3
            r0 = r31
            java.util.Vector<java.lang.Byte> r2 = r0.d
            java.lang.Object r2 = r2.get(r3)
            java.lang.Byte r2 = (java.lang.Byte) r2
            byte r2 = r2.byteValue()
            r4[r8] = r2
            int r2 = r3 + 1
            r3 = r2
            goto L_0x0067
        L_0x0087:
            r0 = r31
            java.util.Vector<java.lang.Byte> r2 = r0.e
            int r2 = r2.size()
            long r2 = (long) r2
            r8 = 8192(0x2000, double:4.0474E-320)
            long r8 = r8 - r6
            long r2 = java.lang.Math.min(r2, r8)
            r8 = -1
            long r8 = r8 & r2
            r2 = 0
            int r2 = (r8 > r2 ? 1 : (r8 == r2 ? 0 : -1))
            if (r2 == 0) goto L_0x00c4
            r2 = 0
            r3 = r2
        L_0x00a2:
            long r10 = (long) r3
            int r2 = (r10 > r8 ? 1 : (r10 == r8 ? 0 : -1))
            if (r2 >= 0) goto L_0x00c4
            byte[] r4 = r5.a
            r2 = 245760(0x3c000, float:3.44383E-40)
            int r10 = (int) r6
            int r2 = r2 + r10
            int r10 = r2 + r3
            r0 = r31
            java.util.Vector<java.lang.Byte> r2 = r0.e
            java.lang.Object r2 = r2.get(r3)
            java.lang.Byte r2 = (java.lang.Byte) r2
            byte r2 = r2.byteValue()
            r4[r10] = r2
            int r2 = r3 + 1
            r3 = r2
            goto L_0x00a2
        L_0x00c4:
            int[] r2 = r5.b
            r3 = 7
            r4 = 262144(0x40000, float:3.67342E-40)
            r2[r3] = r4
            r2 = 0
            r5.c = r2
            r0 = r31
            java.util.List<wc> r2 = r0.b
            int r2 = r2.size()
            if (r2 == 0) goto L_0x0119
            r0 = r31
            java.util.List<wc> r2 = r0.b
            r3 = r2
        L_0x00dd:
            r0 = r31
            int r2 = r0.c
            r4 = 25000000(0x17d7840, float:4.6555036E-38)
            r5.d = r4
            r5.e = r2
            r2 = 0
            r5.f = r2
        L_0x00eb:
            int r2 = r5.f
            java.lang.Object r2 = r3.get(r2)
            wc r2 = (defpackage.wc) r2
            wd r4 = r2.c
            int r7 = r5.a((defpackage.wd) r4)
            wd r4 = r2.d
            int r4 = r5.a((defpackage.wd) r4)
            int[] r6 = defpackage.vx.AnonymousClass1.a
            vz r8 = r2.a
            int r8 = r8.ordinal()
            r6 = r6[r8]
            switch(r6) {
                case 1: goto L_0x011f;
                case 2: goto L_0x012f;
                case 3: goto L_0x013d;
                case 4: goto L_0x014b;
                case 5: goto L_0x0175;
                case 6: goto L_0x019e;
                case 7: goto L_0x01c7;
                case 8: goto L_0x021d;
                case 9: goto L_0x023d;
                case 10: goto L_0x025d;
                case 11: goto L_0x0294;
                case 12: goto L_0x02b4;
                case 13: goto L_0x02d4;
                case 14: goto L_0x02e9;
                case 15: goto L_0x02fe;
                case 16: goto L_0x0328;
                case 17: goto L_0x033c;
                case 18: goto L_0x0350;
                case 19: goto L_0x0374;
                case 20: goto L_0x0388;
                case 21: goto L_0x039c;
                case 22: goto L_0x03a8;
                case 23: goto L_0x03d0;
                case 24: goto L_0x03f8;
                case 25: goto L_0x0420;
                case 26: goto L_0x0441;
                case 27: goto L_0x0456;
                case 28: goto L_0x046b;
                case 29: goto L_0x0480;
                case 30: goto L_0x049a;
                case 31: goto L_0x04b4;
                case 32: goto L_0x04c9;
                case 33: goto L_0x04ea;
                case 34: goto L_0x050b;
                case 35: goto L_0x0533;
                case 36: goto L_0x0546;
                case 37: goto L_0x0581;
                case 38: goto L_0x05b3;
                case 39: goto L_0x05e5;
                case 40: goto L_0x060a;
                case 41: goto L_0x061a;
                case 42: goto L_0x062a;
                case 43: goto L_0x0654;
                case 44: goto L_0x0674;
                case 45: goto L_0x0690;
                case 46: goto L_0x06ad;
                case 47: goto L_0x06bc;
                case 48: goto L_0x06cc;
                case 49: goto L_0x06ec;
                case 50: goto L_0x0712;
                case 51: goto L_0x072f;
                case 52: goto L_0x077d;
                case 53: goto L_0x07cb;
                case 54: goto L_0x07f2;
                default: goto L_0x010c;
            }
        L_0x010c:
            int r2 = r5.f
            int r2 = r2 + 1
            r5.f = r2
            int r2 = r5.d
            int r2 = r2 + -1
            r5.d = r2
            goto L_0x00eb
        L_0x0119:
            r0 = r31
            java.util.List<wc> r2 = r0.a
            r3 = r2
            goto L_0x00dd
        L_0x011f:
            boolean r6 = r2.b
            byte[] r8 = r5.a
            boolean r2 = r2.b
            byte[] r9 = r5.a
            int r2 = r5.a((boolean) r2, (byte[]) r9, (int) r4)
            r5.a((boolean) r6, (byte[]) r8, (int) r7, (int) r2)
            goto L_0x010c
        L_0x012f:
            r2 = 1
            byte[] r6 = r5.a
            r8 = 1
            byte[] r9 = r5.a
            int r4 = r5.a((boolean) r8, (byte[]) r9, (int) r4)
            r5.a((boolean) r2, (byte[]) r6, (int) r7, (int) r4)
            goto L_0x010c
        L_0x013d:
            r2 = 0
            byte[] r6 = r5.a
            r8 = 0
            byte[] r9 = r5.a
            int r4 = r5.a((boolean) r8, (byte[]) r9, (int) r4)
            r5.a((boolean) r2, (byte[]) r6, (int) r7, (int) r4)
            goto L_0x010c
        L_0x014b:
            boolean r6 = r2.b
            byte[] r8 = r5.a
            int r6 = r5.a((boolean) r6, (byte[]) r8, (int) r7)
            boolean r2 = r2.b
            byte[] r7 = r5.a
            int r2 = r5.a((boolean) r2, (byte[]) r7, (int) r4)
            int r2 = r6 - r2
            if (r2 != 0) goto L_0x0167
            wa r2 = defpackage.wa.VM_FZ
            int r2 = r2.d
            r4 = r5
        L_0x0164:
            r4.c = r2
            goto L_0x010c
        L_0x0167:
            if (r2 <= r6) goto L_0x016c
            r2 = 1
            r4 = r5
            goto L_0x0164
        L_0x016c:
            wa r4 = defpackage.wa.VM_FS
            int r4 = r4.d
            r2 = r2 & r4
            r2 = r2 | 0
            r4 = r5
            goto L_0x0164
        L_0x0175:
            r2 = 1
            byte[] r6 = r5.a
            int r2 = r5.a((boolean) r2, (byte[]) r6, (int) r7)
            r6 = 1
            byte[] r7 = r5.a
            int r4 = r5.a((boolean) r6, (byte[]) r7, (int) r4)
            int r4 = r2 - r4
            if (r4 != 0) goto L_0x0190
            wa r2 = defpackage.wa.VM_FZ
            int r2 = r2.d
            r4 = r5
        L_0x018c:
            r4.c = r2
            goto L_0x010c
        L_0x0190:
            if (r4 <= r2) goto L_0x0195
            r2 = 1
            r4 = r5
            goto L_0x018c
        L_0x0195:
            wa r2 = defpackage.wa.VM_FS
            int r2 = r2.d
            r2 = r2 & r4
            r2 = r2 | 0
            r4 = r5
            goto L_0x018c
        L_0x019e:
            r2 = 0
            byte[] r6 = r5.a
            int r2 = r5.a((boolean) r2, (byte[]) r6, (int) r7)
            r6 = 0
            byte[] r7 = r5.a
            int r4 = r5.a((boolean) r6, (byte[]) r7, (int) r4)
            int r4 = r2 - r4
            if (r4 != 0) goto L_0x01b9
            wa r2 = defpackage.wa.VM_FZ
            int r2 = r2.d
            r4 = r5
        L_0x01b5:
            r4.c = r2
            goto L_0x010c
        L_0x01b9:
            if (r4 <= r2) goto L_0x01be
            r2 = 1
            r4 = r5
            goto L_0x01b5
        L_0x01be:
            wa r2 = defpackage.wa.VM_FS
            int r2 = r2.d
            r2 = r2 & r4
            r2 = r2 | 0
            r4 = r5
            goto L_0x01b5
        L_0x01c7:
            boolean r6 = r2.b
            byte[] r8 = r5.a
            int r8 = r5.a((boolean) r6, (byte[]) r8, (int) r7)
            long r10 = (long) r8
            boolean r6 = r2.b
            byte[] r9 = r5.a
            int r4 = r5.a((boolean) r6, (byte[]) r9, (int) r4)
            long r12 = (long) r4
            long r10 = r10 + r12
            r12 = -1
            long r10 = r10 & r12
            int r6 = (int) r10
            boolean r4 = r2.b
            if (r4 == 0) goto L_0x0207
            r6 = r6 & 255(0xff, float:3.57E-43)
            if (r6 >= r8) goto L_0x01f3
            r4 = 1
        L_0x01e7:
            r5.c = r4
            r4 = r6
        L_0x01ea:
            boolean r2 = r2.b
            byte[] r6 = r5.a
            r5.a((boolean) r2, (byte[]) r6, (int) r7, (int) r4)
            goto L_0x010c
        L_0x01f3:
            if (r6 != 0) goto L_0x01fc
            wa r4 = defpackage.wa.VM_FZ
            int r4 = r4.d
        L_0x01f9:
            r4 = r4 | 0
            goto L_0x01e7
        L_0x01fc:
            r4 = r6 & 128(0x80, float:1.794E-43)
            if (r4 == 0) goto L_0x0205
            wa r4 = defpackage.wa.VM_FS
            int r4 = r4.d
            goto L_0x01f9
        L_0x0205:
            r4 = 0
            goto L_0x01f9
        L_0x0207:
            if (r6 >= r8) goto L_0x020e
            r4 = 1
        L_0x020a:
            r5.c = r4
            r4 = r6
            goto L_0x01ea
        L_0x020e:
            if (r6 != 0) goto L_0x0217
            wa r4 = defpackage.wa.VM_FZ
            int r4 = r4.d
        L_0x0214:
            r4 = r4 | 0
            goto L_0x020a
        L_0x0217:
            wa r4 = defpackage.wa.VM_FS
            int r4 = r4.d
            r4 = r4 & r6
            goto L_0x0214
        L_0x021d:
            r2 = 1
            byte[] r6 = r5.a
            r8 = 1
            byte[] r9 = r5.a
            int r8 = r5.a((boolean) r8, (byte[]) r9, (int) r7)
            long r8 = (long) r8
            r10 = -1
            r12 = 1
            byte[] r13 = r5.a
            int r4 = r5.a((boolean) r12, (byte[]) r13, (int) r4)
            long r12 = (long) r4
            long r10 = r10 + r12
            long r8 = r8 & r10
            r10 = -1
            long r8 = r8 & r10
            int r4 = (int) r8
            r5.a((boolean) r2, (byte[]) r6, (int) r7, (int) r4)
            goto L_0x010c
        L_0x023d:
            r2 = 0
            byte[] r6 = r5.a
            r8 = 0
            byte[] r9 = r5.a
            int r8 = r5.a((boolean) r8, (byte[]) r9, (int) r7)
            long r8 = (long) r8
            r10 = -1
            r12 = 0
            byte[] r13 = r5.a
            int r4 = r5.a((boolean) r12, (byte[]) r13, (int) r4)
            long r12 = (long) r4
            long r10 = r10 + r12
            long r8 = r8 & r10
            r10 = -1
            long r8 = r8 & r10
            int r4 = (int) r8
            r5.a((boolean) r2, (byte[]) r6, (int) r7, (int) r4)
            goto L_0x010c
        L_0x025d:
            boolean r6 = r2.b
            byte[] r8 = r5.a
            int r6 = r5.a((boolean) r6, (byte[]) r8, (int) r7)
            long r8 = (long) r6
            r10 = -1
            boolean r12 = r2.b
            byte[] r13 = r5.a
            int r4 = r5.a((boolean) r12, (byte[]) r13, (int) r4)
            long r12 = (long) r4
            long r10 = r10 - r12
            long r8 = r8 & r10
            r10 = -1
            long r8 = r8 & r10
            int r8 = (int) r8
            if (r8 != 0) goto L_0x0288
            wa r4 = defpackage.wa.VM_FZ
            int r4 = r4.d
        L_0x027d:
            r5.c = r4
            boolean r2 = r2.b
            byte[] r4 = r5.a
            r5.a((boolean) r2, (byte[]) r4, (int) r7, (int) r8)
            goto L_0x010c
        L_0x0288:
            if (r8 <= r6) goto L_0x028c
            r4 = 1
            goto L_0x027d
        L_0x028c:
            wa r4 = defpackage.wa.VM_FS
            int r4 = r4.d
            r4 = r4 & r8
            r4 = r4 | 0
            goto L_0x027d
        L_0x0294:
            r2 = 1
            byte[] r6 = r5.a
            r8 = 1
            byte[] r9 = r5.a
            int r8 = r5.a((boolean) r8, (byte[]) r9, (int) r7)
            long r8 = (long) r8
            r10 = -1
            r12 = 1
            byte[] r13 = r5.a
            int r4 = r5.a((boolean) r12, (byte[]) r13, (int) r4)
            long r12 = (long) r4
            long r10 = r10 - r12
            long r8 = r8 & r10
            r10 = -1
            long r8 = r8 & r10
            int r4 = (int) r8
            r5.a((boolean) r2, (byte[]) r6, (int) r7, (int) r4)
            goto L_0x010c
        L_0x02b4:
            r2 = 0
            byte[] r6 = r5.a
            r8 = 0
            byte[] r9 = r5.a
            int r8 = r5.a((boolean) r8, (byte[]) r9, (int) r7)
            long r8 = (long) r8
            r10 = -1
            r12 = 0
            byte[] r13 = r5.a
            int r4 = r5.a((boolean) r12, (byte[]) r13, (int) r4)
            long r12 = (long) r4
            long r10 = r10 - r12
            long r8 = r8 & r10
            r10 = -1
            long r8 = r8 & r10
            int r4 = (int) r8
            r5.a((boolean) r2, (byte[]) r6, (int) r7, (int) r4)
            goto L_0x010c
        L_0x02d4:
            int r2 = r5.c
            wa r4 = defpackage.wa.VM_FZ
            int r4 = r4.d
            r2 = r2 & r4
            if (r2 == 0) goto L_0x010c
            r2 = 0
            byte[] r4 = r5.a
            int r2 = r5.a((boolean) r2, (byte[]) r4, (int) r7)
            r5.c(r2)
            goto L_0x00eb
        L_0x02e9:
            int r2 = r5.c
            wa r4 = defpackage.wa.VM_FZ
            int r4 = r4.d
            r2 = r2 & r4
            if (r2 != 0) goto L_0x010c
            r2 = 0
            byte[] r4 = r5.a
            int r2 = r5.a((boolean) r2, (byte[]) r4, (int) r7)
            r5.c(r2)
            goto L_0x00eb
        L_0x02fe:
            boolean r4 = r2.b
            byte[] r6 = r5.a
            int r4 = r5.a((boolean) r4, (byte[]) r6, (int) r7)
            long r8 = (long) r4
            r10 = 0
            long r8 = r8 & r10
            int r4 = (int) r8
            boolean r6 = r2.b
            if (r6 == 0) goto L_0x0311
            r4 = r4 & 255(0xff, float:3.57E-43)
        L_0x0311:
            boolean r2 = r2.b
            byte[] r6 = r5.a
            r5.a((boolean) r2, (byte[]) r6, (int) r7, (int) r4)
            if (r4 != 0) goto L_0x0322
            wa r2 = defpackage.wa.VM_FZ
            int r2 = r2.d
        L_0x031e:
            r5.c = r2
            goto L_0x010c
        L_0x0322:
            wa r2 = defpackage.wa.VM_FS
            int r2 = r2.d
            r2 = r2 & r4
            goto L_0x031e
        L_0x0328:
            r2 = 1
            byte[] r4 = r5.a
            r6 = 1
            byte[] r8 = r5.a
            int r6 = r5.a((boolean) r6, (byte[]) r8, (int) r7)
            long r8 = (long) r6
            r10 = 0
            long r8 = r8 & r10
            int r6 = (int) r8
            r5.a((boolean) r2, (byte[]) r4, (int) r7, (int) r6)
            goto L_0x010c
        L_0x033c:
            r2 = 0
            byte[] r4 = r5.a
            r6 = 0
            byte[] r8 = r5.a
            int r6 = r5.a((boolean) r6, (byte[]) r8, (int) r7)
            long r8 = (long) r6
            r10 = 0
            long r8 = r8 & r10
            int r6 = (int) r8
            r5.a((boolean) r2, (byte[]) r4, (int) r7, (int) r6)
            goto L_0x010c
        L_0x0350:
            boolean r4 = r2.b
            byte[] r6 = r5.a
            int r4 = r5.a((boolean) r4, (byte[]) r6, (int) r7)
            long r8 = (long) r4
            r10 = -2
            long r8 = r8 & r10
            int r4 = (int) r8
            boolean r2 = r2.b
            byte[] r6 = r5.a
            r5.a((boolean) r2, (byte[]) r6, (int) r7, (int) r4)
            if (r4 != 0) goto L_0x036e
            wa r2 = defpackage.wa.VM_FZ
            int r2 = r2.d
        L_0x036a:
            r5.c = r2
            goto L_0x010c
        L_0x036e:
            wa r2 = defpackage.wa.VM_FS
            int r2 = r2.d
            r2 = r2 & r4
            goto L_0x036a
        L_0x0374:
            r2 = 1
            byte[] r4 = r5.a
            r6 = 1
            byte[] r8 = r5.a
            int r6 = r5.a((boolean) r6, (byte[]) r8, (int) r7)
            long r8 = (long) r6
            r10 = -2
            long r8 = r8 & r10
            int r6 = (int) r8
            r5.a((boolean) r2, (byte[]) r4, (int) r7, (int) r6)
            goto L_0x010c
        L_0x0388:
            r2 = 0
            byte[] r4 = r5.a
            r6 = 0
            byte[] r8 = r5.a
            int r6 = r5.a((boolean) r6, (byte[]) r8, (int) r7)
            long r8 = (long) r6
            r10 = -2
            long r8 = r8 & r10
            int r6 = (int) r8
            r5.a((boolean) r2, (byte[]) r4, (int) r7, (int) r6)
            goto L_0x010c
        L_0x039c:
            r2 = 0
            byte[] r4 = r5.a
            int r2 = r5.a((boolean) r2, (byte[]) r4, (int) r7)
            r5.c(r2)
            goto L_0x00eb
        L_0x03a8:
            boolean r6 = r2.b
            byte[] r8 = r5.a
            int r6 = r5.a((boolean) r6, (byte[]) r8, (int) r7)
            boolean r8 = r2.b
            byte[] r9 = r5.a
            int r4 = r5.a((boolean) r8, (byte[]) r9, (int) r4)
            r6 = r6 ^ r4
            if (r6 != 0) goto L_0x03ca
            wa r4 = defpackage.wa.VM_FZ
            int r4 = r4.d
        L_0x03bf:
            r5.c = r4
            boolean r2 = r2.b
            byte[] r4 = r5.a
            r5.a((boolean) r2, (byte[]) r4, (int) r7, (int) r6)
            goto L_0x010c
        L_0x03ca:
            wa r4 = defpackage.wa.VM_FS
            int r4 = r4.d
            r4 = r4 & r6
            goto L_0x03bf
        L_0x03d0:
            boolean r6 = r2.b
            byte[] r8 = r5.a
            int r6 = r5.a((boolean) r6, (byte[]) r8, (int) r7)
            boolean r8 = r2.b
            byte[] r9 = r5.a
            int r4 = r5.a((boolean) r8, (byte[]) r9, (int) r4)
            r6 = r6 & r4
            if (r6 != 0) goto L_0x03f2
            wa r4 = defpackage.wa.VM_FZ
            int r4 = r4.d
        L_0x03e7:
            r5.c = r4
            boolean r2 = r2.b
            byte[] r4 = r5.a
            r5.a((boolean) r2, (byte[]) r4, (int) r7, (int) r6)
            goto L_0x010c
        L_0x03f2:
            wa r4 = defpackage.wa.VM_FS
            int r4 = r4.d
            r4 = r4 & r6
            goto L_0x03e7
        L_0x03f8:
            boolean r6 = r2.b
            byte[] r8 = r5.a
            int r6 = r5.a((boolean) r6, (byte[]) r8, (int) r7)
            boolean r8 = r2.b
            byte[] r9 = r5.a
            int r4 = r5.a((boolean) r8, (byte[]) r9, (int) r4)
            r6 = r6 | r4
            if (r6 != 0) goto L_0x041a
            wa r4 = defpackage.wa.VM_FZ
            int r4 = r4.d
        L_0x040f:
            r5.c = r4
            boolean r2 = r2.b
            byte[] r4 = r5.a
            r5.a((boolean) r2, (byte[]) r4, (int) r7, (int) r6)
            goto L_0x010c
        L_0x041a:
            wa r4 = defpackage.wa.VM_FS
            int r4 = r4.d
            r4 = r4 & r6
            goto L_0x040f
        L_0x0420:
            boolean r6 = r2.b
            byte[] r8 = r5.a
            int r6 = r5.a((boolean) r6, (byte[]) r8, (int) r7)
            boolean r2 = r2.b
            byte[] r7 = r5.a
            int r2 = r5.a((boolean) r2, (byte[]) r7, (int) r4)
            r2 = r2 & r6
            if (r2 != 0) goto L_0x043b
            wa r2 = defpackage.wa.VM_FZ
            int r2 = r2.d
        L_0x0437:
            r5.c = r2
            goto L_0x010c
        L_0x043b:
            wa r4 = defpackage.wa.VM_FS
            int r4 = r4.d
            r2 = r2 & r4
            goto L_0x0437
        L_0x0441:
            int r2 = r5.c
            wa r4 = defpackage.wa.VM_FS
            int r4 = r4.d
            r2 = r2 & r4
            if (r2 == 0) goto L_0x010c
            r2 = 0
            byte[] r4 = r5.a
            int r2 = r5.a((boolean) r2, (byte[]) r4, (int) r7)
            r5.c(r2)
            goto L_0x00eb
        L_0x0456:
            int r2 = r5.c
            wa r4 = defpackage.wa.VM_FS
            int r4 = r4.d
            r2 = r2 & r4
            if (r2 != 0) goto L_0x010c
            r2 = 0
            byte[] r4 = r5.a
            int r2 = r5.a((boolean) r2, (byte[]) r4, (int) r7)
            r5.c(r2)
            goto L_0x00eb
        L_0x046b:
            int r2 = r5.c
            wa r4 = defpackage.wa.VM_FC
            int r4 = r4.d
            r2 = r2 & r4
            if (r2 == 0) goto L_0x010c
            r2 = 0
            byte[] r4 = r5.a
            int r2 = r5.a((boolean) r2, (byte[]) r4, (int) r7)
            r5.c(r2)
            goto L_0x00eb
        L_0x0480:
            int r2 = r5.c
            wa r4 = defpackage.wa.VM_FC
            int r4 = r4.d
            wa r6 = defpackage.wa.VM_FZ
            int r6 = r6.d
            r4 = r4 | r6
            r2 = r2 & r4
            if (r2 == 0) goto L_0x010c
            r2 = 0
            byte[] r4 = r5.a
            int r2 = r5.a((boolean) r2, (byte[]) r4, (int) r7)
            r5.c(r2)
            goto L_0x00eb
        L_0x049a:
            int r2 = r5.c
            wa r4 = defpackage.wa.VM_FC
            int r4 = r4.d
            wa r6 = defpackage.wa.VM_FZ
            int r6 = r6.d
            r4 = r4 | r6
            r2 = r2 & r4
            if (r2 != 0) goto L_0x010c
            r2 = 0
            byte[] r4 = r5.a
            int r2 = r5.a((boolean) r2, (byte[]) r4, (int) r7)
            r5.c(r2)
            goto L_0x00eb
        L_0x04b4:
            int r2 = r5.c
            wa r4 = defpackage.wa.VM_FC
            int r4 = r4.d
            r2 = r2 & r4
            if (r2 != 0) goto L_0x010c
            r2 = 0
            byte[] r4 = r5.a
            int r2 = r5.a((boolean) r2, (byte[]) r4, (int) r7)
            r5.c(r2)
            goto L_0x00eb
        L_0x04c9:
            int[] r2 = r5.b
            r4 = 7
            r6 = r2[r4]
            int r6 = r6 + -4
            r2[r4] = r6
            r2 = 0
            byte[] r4 = r5.a
            int[] r6 = r5.b
            r8 = 7
            r6 = r6[r8]
            r8 = 262143(0x3ffff, float:3.6734E-40)
            r6 = r6 & r8
            r8 = 0
            byte[] r9 = r5.a
            int r7 = r5.a((boolean) r8, (byte[]) r9, (int) r7)
            r5.a((boolean) r2, (byte[]) r4, (int) r6, (int) r7)
            goto L_0x010c
        L_0x04ea:
            r2 = 0
            byte[] r4 = r5.a
            r6 = 0
            byte[] r8 = r5.a
            int[] r9 = r5.b
            r10 = 7
            r9 = r9[r10]
            r10 = 262143(0x3ffff, float:3.6734E-40)
            r9 = r9 & r10
            int r6 = r5.a((boolean) r6, (byte[]) r8, (int) r9)
            r5.a((boolean) r2, (byte[]) r4, (int) r7, (int) r6)
            int[] r2 = r5.b
            r4 = 7
            r6 = r2[r4]
            int r6 = r6 + 4
            r2[r4] = r6
            goto L_0x010c
        L_0x050b:
            int[] r2 = r5.b
            r4 = 7
            r6 = r2[r4]
            int r6 = r6 + -4
            r2[r4] = r6
            r2 = 0
            byte[] r4 = r5.a
            int[] r6 = r5.b
            r8 = 7
            r6 = r6[r8]
            r8 = 262143(0x3ffff, float:3.6734E-40)
            r6 = r6 & r8
            int r8 = r5.f
            int r8 = r8 + 1
            r5.a((boolean) r2, (byte[]) r4, (int) r6, (int) r8)
            r2 = 0
            byte[] r4 = r5.a
            int r2 = r5.a((boolean) r2, (byte[]) r4, (int) r7)
            r5.c(r2)
            goto L_0x00eb
        L_0x0533:
            boolean r4 = r2.b
            byte[] r6 = r5.a
            boolean r2 = r2.b
            byte[] r8 = r5.a
            int r2 = r5.a((boolean) r2, (byte[]) r8, (int) r7)
            r2 = r2 ^ -1
            r5.a((boolean) r4, (byte[]) r6, (int) r7, (int) r2)
            goto L_0x010c
        L_0x0546:
            boolean r6 = r2.b
            byte[] r8 = r5.a
            int r8 = r5.a((boolean) r6, (byte[]) r8, (int) r7)
            boolean r6 = r2.b
            byte[] r9 = r5.a
            int r9 = r5.a((boolean) r6, (byte[]) r9, (int) r4)
            int r10 = r8 << r9
            if (r10 != 0) goto L_0x0578
            wa r4 = defpackage.wa.VM_FZ
            int r4 = r4.d
            r6 = r4
        L_0x055f:
            int r4 = r9 + -1
            int r4 = r8 << r4
            r8 = -2147483648(0xffffffff80000000, float:-0.0)
            r4 = r4 & r8
            if (r4 == 0) goto L_0x057f
            wa r4 = defpackage.wa.VM_FC
            int r4 = r4.d
        L_0x056c:
            r4 = r4 | r6
            r5.c = r4
            boolean r2 = r2.b
            byte[] r4 = r5.a
            r5.a((boolean) r2, (byte[]) r4, (int) r7, (int) r10)
            goto L_0x010c
        L_0x0578:
            wa r4 = defpackage.wa.VM_FS
            int r4 = r4.d
            r4 = r4 & r10
            r6 = r4
            goto L_0x055f
        L_0x057f:
            r4 = 0
            goto L_0x056c
        L_0x0581:
            boolean r6 = r2.b
            byte[] r8 = r5.a
            int r6 = r5.a((boolean) r6, (byte[]) r8, (int) r7)
            boolean r8 = r2.b
            byte[] r9 = r5.a
            int r8 = r5.a((boolean) r8, (byte[]) r9, (int) r4)
            int r9 = r6 >>> r8
            if (r9 != 0) goto L_0x05ad
            wa r4 = defpackage.wa.VM_FZ
            int r4 = r4.d
        L_0x0599:
            int r8 = r8 + -1
            int r6 = r6 >>> r8
            wa r8 = defpackage.wa.VM_FC
            int r8 = r8.d
            r6 = r6 & r8
            r4 = r4 | r6
            r5.c = r4
            boolean r2 = r2.b
            byte[] r4 = r5.a
            r5.a((boolean) r2, (byte[]) r4, (int) r7, (int) r9)
            goto L_0x010c
        L_0x05ad:
            wa r4 = defpackage.wa.VM_FS
            int r4 = r4.d
            r4 = r4 & r9
            goto L_0x0599
        L_0x05b3:
            boolean r6 = r2.b
            byte[] r8 = r5.a
            int r6 = r5.a((boolean) r6, (byte[]) r8, (int) r7)
            boolean r8 = r2.b
            byte[] r9 = r5.a
            int r8 = r5.a((boolean) r8, (byte[]) r9, (int) r4)
            int r9 = r6 >> r8
            if (r9 != 0) goto L_0x05df
            wa r4 = defpackage.wa.VM_FZ
            int r4 = r4.d
        L_0x05cb:
            int r8 = r8 + -1
            int r6 = r6 >> r8
            wa r8 = defpackage.wa.VM_FC
            int r8 = r8.d
            r6 = r6 & r8
            r4 = r4 | r6
            r5.c = r4
            boolean r2 = r2.b
            byte[] r4 = r5.a
            r5.a((boolean) r2, (byte[]) r4, (int) r7, (int) r9)
            goto L_0x010c
        L_0x05df:
            wa r4 = defpackage.wa.VM_FS
            int r4 = r4.d
            r4 = r4 & r9
            goto L_0x05cb
        L_0x05e5:
            boolean r4 = r2.b
            byte[] r6 = r5.a
            int r4 = r5.a((boolean) r4, (byte[]) r6, (int) r7)
            int r6 = -r4
            if (r6 != 0) goto L_0x05ff
            wa r4 = defpackage.wa.VM_FZ
            int r4 = r4.d
        L_0x05f4:
            r5.c = r4
            boolean r2 = r2.b
            byte[] r4 = r5.a
            r5.a((boolean) r2, (byte[]) r4, (int) r7, (int) r6)
            goto L_0x010c
        L_0x05ff:
            wa r4 = defpackage.wa.VM_FC
            int r4 = r4.d
            wa r8 = defpackage.wa.VM_FS
            int r8 = r8.d
            r8 = r8 & r6
            r4 = r4 | r8
            goto L_0x05f4
        L_0x060a:
            r2 = 1
            byte[] r4 = r5.a
            r6 = 1
            byte[] r8 = r5.a
            int r6 = r5.a((boolean) r6, (byte[]) r8, (int) r7)
            int r6 = -r6
            r5.a((boolean) r2, (byte[]) r4, (int) r7, (int) r6)
            goto L_0x010c
        L_0x061a:
            r2 = 0
            byte[] r4 = r5.a
            r6 = 0
            byte[] r8 = r5.a
            int r6 = r5.a((boolean) r6, (byte[]) r8, (int) r7)
            int r6 = -r6
            r5.a((boolean) r2, (byte[]) r4, (int) r7, (int) r6)
            goto L_0x010c
        L_0x062a:
            r4 = 0
            int[] r2 = r5.b
            r6 = 7
            r2 = r2[r6]
            int r2 = r2 + -4
        L_0x0632:
            r6 = 8
            if (r4 >= r6) goto L_0x0649
            r6 = 0
            byte[] r7 = r5.a
            r8 = 262143(0x3ffff, float:3.6734E-40)
            r8 = r8 & r2
            int[] r9 = r5.b
            r9 = r9[r4]
            r5.a((boolean) r6, (byte[]) r7, (int) r8, (int) r9)
            int r4 = r4 + 1
            int r2 = r2 + -4
            goto L_0x0632
        L_0x0649:
            int[] r2 = r5.b
            r4 = 7
            r6 = r2[r4]
            int r6 = r6 + -32
            r2[r4] = r6
            goto L_0x010c
        L_0x0654:
            r4 = 0
            int[] r2 = r5.b
            r6 = 7
            r2 = r2[r6]
        L_0x065a:
            r6 = 8
            if (r4 >= r6) goto L_0x010c
            int[] r6 = r5.b
            int r7 = 7 - r4
            r8 = 0
            byte[] r9 = r5.a
            r10 = 262143(0x3ffff, float:3.6734E-40)
            r10 = r10 & r2
            int r8 = r5.a((boolean) r8, (byte[]) r9, (int) r10)
            r6[r7] = r8
            int r4 = r4 + 1
            int r2 = r2 + 4
            goto L_0x065a
        L_0x0674:
            int[] r2 = r5.b
            r4 = 7
            r6 = r2[r4]
            int r6 = r6 + -4
            r2[r4] = r6
            r2 = 0
            byte[] r4 = r5.a
            int[] r6 = r5.b
            r7 = 7
            r6 = r6[r7]
            r7 = 262143(0x3ffff, float:3.6734E-40)
            r6 = r6 & r7
            int r7 = r5.c
            r5.a((boolean) r2, (byte[]) r4, (int) r6, (int) r7)
            goto L_0x010c
        L_0x0690:
            r2 = 0
            byte[] r4 = r5.a
            int[] r6 = r5.b
            r7 = 7
            r6 = r6[r7]
            r7 = 262143(0x3ffff, float:3.6734E-40)
            r6 = r6 & r7
            int r2 = r5.a((boolean) r2, (byte[]) r4, (int) r6)
            r5.c = r2
            int[] r2 = r5.b
            r4 = 7
            r6 = r2[r4]
            int r6 = r6 + 4
            r2[r4] = r6
            goto L_0x010c
        L_0x06ad:
            r2 = 0
            byte[] r6 = r5.a
            r8 = 1
            byte[] r9 = r5.a
            int r4 = r5.a((boolean) r8, (byte[]) r9, (int) r4)
            r5.a((boolean) r2, (byte[]) r6, (int) r7, (int) r4)
            goto L_0x010c
        L_0x06bc:
            r2 = 0
            byte[] r6 = r5.a
            r8 = 1
            byte[] r9 = r5.a
            int r4 = r5.a((boolean) r8, (byte[]) r9, (int) r4)
            byte r4 = (byte) r4
            r5.a((boolean) r2, (byte[]) r6, (int) r7, (int) r4)
            goto L_0x010c
        L_0x06cc:
            boolean r6 = r2.b
            byte[] r8 = r5.a
            int r6 = r5.a((boolean) r6, (byte[]) r8, (int) r7)
            boolean r8 = r2.b
            byte[] r9 = r5.a
            boolean r10 = r2.b
            byte[] r11 = r5.a
            int r10 = r5.a((boolean) r10, (byte[]) r11, (int) r4)
            r5.a((boolean) r8, (byte[]) r9, (int) r7, (int) r10)
            boolean r2 = r2.b
            byte[] r7 = r5.a
            r5.a((boolean) r2, (byte[]) r7, (int) r4, (int) r6)
            goto L_0x010c
        L_0x06ec:
            boolean r6 = r2.b
            byte[] r8 = r5.a
            int r6 = r5.a((boolean) r6, (byte[]) r8, (int) r7)
            long r8 = (long) r6
            r10 = -1
            boolean r6 = r2.b
            byte[] r12 = r5.a
            int r4 = r5.a((boolean) r6, (byte[]) r12, (int) r4)
            long r12 = (long) r4
            long r10 = r10 * r12
            long r8 = r8 & r10
            r10 = -1
            long r8 = r8 & r10
            r10 = -1
            long r8 = r8 & r10
            int r4 = (int) r8
            boolean r2 = r2.b
            byte[] r6 = r5.a
            r5.a((boolean) r2, (byte[]) r6, (int) r7, (int) r4)
            goto L_0x010c
        L_0x0712:
            boolean r6 = r2.b
            byte[] r8 = r5.a
            int r4 = r5.a((boolean) r6, (byte[]) r8, (int) r4)
            if (r4 == 0) goto L_0x010c
            boolean r6 = r2.b
            byte[] r8 = r5.a
            int r6 = r5.a((boolean) r6, (byte[]) r8, (int) r7)
            int r4 = r6 / r4
            boolean r2 = r2.b
            byte[] r6 = r5.a
            r5.a((boolean) r2, (byte[]) r6, (int) r7, (int) r4)
            goto L_0x010c
        L_0x072f:
            boolean r6 = r2.b
            byte[] r8 = r5.a
            int r8 = r5.a((boolean) r6, (byte[]) r8, (int) r7)
            int r6 = r5.c
            wa r9 = defpackage.wa.VM_FC
            int r9 = r9.d
            r9 = r9 & r6
            long r10 = (long) r8
            r12 = -1
            boolean r6 = r2.b
            byte[] r14 = r5.a
            int r4 = r5.a((boolean) r6, (byte[]) r14, (int) r4)
            long r14 = (long) r4
            long r12 = r12 + r14
            long r10 = r10 & r12
            r12 = -1
            long r14 = (long) r9
            long r12 = r12 + r14
            long r10 = r10 & r12
            r12 = -1
            long r10 = r10 & r12
            int r4 = (int) r10
            boolean r6 = r2.b
            if (r6 == 0) goto L_0x0c3f
            r4 = r4 & 255(0xff, float:3.57E-43)
            r6 = r4
        L_0x075c:
            if (r6 < r8) goto L_0x0762
            if (r6 != r8) goto L_0x076e
            if (r9 == 0) goto L_0x076e
        L_0x0762:
            r4 = 1
        L_0x0763:
            r5.c = r4
            boolean r2 = r2.b
            byte[] r4 = r5.a
            r5.a((boolean) r2, (byte[]) r4, (int) r7, (int) r6)
            goto L_0x010c
        L_0x076e:
            if (r6 != 0) goto L_0x0777
            wa r4 = defpackage.wa.VM_FZ
            int r4 = r4.d
        L_0x0774:
            r4 = r4 | 0
            goto L_0x0763
        L_0x0777:
            wa r4 = defpackage.wa.VM_FS
            int r4 = r4.d
            r4 = r4 & r6
            goto L_0x0774
        L_0x077d:
            boolean r6 = r2.b
            byte[] r8 = r5.a
            int r8 = r5.a((boolean) r6, (byte[]) r8, (int) r7)
            int r6 = r5.c
            wa r9 = defpackage.wa.VM_FC
            int r9 = r9.d
            r9 = r9 & r6
            long r10 = (long) r8
            r12 = -1
            boolean r6 = r2.b
            byte[] r14 = r5.a
            int r4 = r5.a((boolean) r6, (byte[]) r14, (int) r4)
            long r14 = (long) r4
            long r12 = r12 - r14
            long r10 = r10 & r12
            r12 = -1
            long r14 = (long) r9
            long r12 = r12 - r14
            long r10 = r10 & r12
            r12 = -1
            long r10 = r10 & r12
            int r4 = (int) r10
            boolean r6 = r2.b
            if (r6 == 0) goto L_0x0c3c
            r4 = r4 & 255(0xff, float:3.57E-43)
            r6 = r4
        L_0x07aa:
            if (r6 > r8) goto L_0x07b0
            if (r6 != r8) goto L_0x07bc
            if (r9 == 0) goto L_0x07bc
        L_0x07b0:
            r4 = 1
        L_0x07b1:
            r5.c = r4
            boolean r2 = r2.b
            byte[] r4 = r5.a
            r5.a((boolean) r2, (byte[]) r4, (int) r7, (int) r6)
            goto L_0x010c
        L_0x07bc:
            if (r6 != 0) goto L_0x07c5
            wa r4 = defpackage.wa.VM_FZ
            int r4 = r4.d
        L_0x07c2:
            r4 = r4 | 0
            goto L_0x07b1
        L_0x07c5:
            wa r4 = defpackage.wa.VM_FS
            int r4 = r4.d
            r4 = r4 & r6
            goto L_0x07c2
        L_0x07cb:
            int[] r2 = r5.b
            r4 = 7
            r2 = r2[r4]
            r4 = 262144(0x40000, float:3.67342E-40)
            if (r2 >= r4) goto L_0x0bcb
            r2 = 0
            byte[] r4 = r5.a
            int[] r6 = r5.b
            r7 = 7
            r6 = r6[r7]
            r7 = 262143(0x3ffff, float:3.6734E-40)
            r6 = r6 & r7
            int r2 = r5.a((boolean) r2, (byte[]) r4, (int) r6)
            r5.c(r2)
            int[] r2 = r5.b
            r4 = 7
            r6 = r2[r4]
            int r6 = r6 + 4
            r2[r4] = r6
            goto L_0x00eb
        L_0x07f2:
            wd r2 = r2.c
            int r2 = r2.b
            wg r2 = defpackage.wg.a(r2)
            int[] r4 = defpackage.vx.AnonymousClass1.b
            int r6 = r2.ordinal()
            r4 = r4[r6]
            switch(r4) {
                case 1: goto L_0x0807;
                case 2: goto L_0x0807;
                case 3: goto L_0x087c;
                case 4: goto L_0x091e;
                case 5: goto L_0x095b;
                case 6: goto L_0x0a24;
                case 7: goto L_0x0b8b;
                default: goto L_0x0805;
            }
        L_0x0805:
            goto L_0x010c
        L_0x0807:
            int[] r4 = r5.b
            r6 = 4
            r6 = r4[r6]
            int[] r4 = r5.b
            r7 = 6
            r4 = r4[r7]
            r4 = r4 & -1
            long r8 = (long) r4
            r4 = 245760(0x3c000, float:3.44383E-40)
            if (r6 >= r4) goto L_0x010c
            wg r4 = defpackage.wg.VMSF_E8E9
            if (r2 != r4) goto L_0x085f
            r2 = 233(0xe9, float:3.27E-43)
        L_0x081f:
            byte r7 = (byte) r2
            r2 = 0
            r4 = r2
        L_0x0822:
            int r2 = r6 + -4
            if (r4 >= r2) goto L_0x010c
            byte[] r10 = r5.a
            int r2 = r4 + 1
            byte r4 = r10[r4]
            r10 = 232(0xe8, float:3.25E-43)
            if (r4 == r10) goto L_0x0832
            if (r4 != r7) goto L_0x085d
        L_0x0832:
            long r10 = (long) r2
            long r10 = r10 + r8
            r4 = 0
            byte[] r12 = r5.a
            int r4 = r5.a((boolean) r4, (byte[]) r12, (int) r2)
            long r12 = (long) r4
            r14 = -2147483648(0xffffffff80000000, double:NaN)
            long r14 = r14 & r12
            r16 = 0
            int r4 = (r14 > r16 ? 1 : (r14 == r16 ? 0 : -1))
            if (r4 == 0) goto L_0x0862
            long r10 = r10 + r12
            r14 = -2147483648(0xffffffff80000000, double:NaN)
            long r10 = r10 & r14
            r14 = 0
            int r4 = (r10 > r14 ? 1 : (r10 == r14 ? 0 : -1))
            if (r4 != 0) goto L_0x085b
            r4 = 0
            byte[] r10 = r5.a
            int r11 = (int) r12
            r12 = 16777216(0x1000000, float:2.3509887E-38)
            int r11 = r11 + r12
            r5.a((boolean) r4, (byte[]) r10, (int) r2, (int) r11)
        L_0x085b:
            int r2 = r2 + 4
        L_0x085d:
            r4 = r2
            goto L_0x0822
        L_0x085f:
            r2 = 232(0xe8, float:3.25E-43)
            goto L_0x081f
        L_0x0862:
            r14 = 16777216(0x1000000, double:8.289046E-317)
            long r14 = r12 - r14
            r16 = -2147483648(0xffffffff80000000, double:NaN)
            long r14 = r14 & r16
            r16 = 0
            int r4 = (r14 > r16 ? 1 : (r14 == r16 ? 0 : -1))
            if (r4 == 0) goto L_0x085b
            r4 = 0
            byte[] r14 = r5.a
            long r10 = r12 - r10
            int r10 = (int) r10
            r5.a((boolean) r4, (byte[]) r14, (int) r2, (int) r10)
            goto L_0x085b
        L_0x087c:
            int[] r2 = r5.b
            r4 = 4
            r11 = r2[r4]
            int[] r2 = r5.b
            r4 = 6
            r2 = r2[r4]
            r2 = r2 & -1
            long r6 = (long) r2
            r2 = 245760(0x3c000, float:3.44383E-40)
            if (r11 >= r2) goto L_0x010c
            r2 = 0
            r4 = 16
            byte[] r12 = new byte[r4]
            r12 = {4, 4, 6, 6, 0, 0, 7, 7, 4, 4, 0, 0, 4, 4, 0, 0} // fill-array
            r4 = 4
            long r6 = r6 >>> r4
            r8 = r6
            r10 = r2
        L_0x089a:
            int r2 = r11 + -21
            if (r10 >= r2) goto L_0x010c
            byte[] r2 = r5.a
            byte r2 = r2[r10]
            r2 = r2 & 31
            int r2 = r2 + -16
            if (r2 < 0) goto L_0x0915
            byte r13 = r12[r2]
            if (r13 == 0) goto L_0x0915
            r2 = 0
            r7 = r2
        L_0x08ae:
            r2 = 2
            if (r7 > r2) goto L_0x0915
            r2 = 1
            int r2 = r2 << r7
            r2 = r2 & r13
            if (r2 == 0) goto L_0x0911
            int r2 = r7 * 41
            int r2 = r2 + 5
            int r4 = r2 + 37
            r6 = 4
            int r4 = r5.a((int) r10, (int) r4, (int) r6)
            r6 = 5
            if (r4 != r6) goto L_0x0911
            int r4 = r2 + 13
            r6 = 20
            int r4 = r5.a((int) r10, (int) r4, (int) r6)
            long r14 = (long) r4
            long r14 = r14 - r8
            int r4 = (int) r14
            r6 = 1048575(0xfffff, float:1.469367E-39)
            r4 = r4 & r6
            int r2 = r2 + 13
            int r14 = r2 / 8
            r6 = r2 & 7
            r2 = 1048575(0xfffff, float:1.469367E-39)
            int r2 = r2 << r6
            r2 = r2 ^ -1
            int r6 = r4 << r6
            r4 = 0
        L_0x08e2:
            r15 = 4
            if (r4 >= r15) goto L_0x0911
            byte[] r15 = r5.a
            int r16 = r10 + r14
            int r16 = r16 + r4
            byte r17 = r15[r16]
            r17 = r17 & r2
            r0 = r17
            byte r0 = (byte) r0
            r17 = r0
            r15[r16] = r17
            byte[] r15 = r5.a
            int r16 = r10 + r14
            int r16 = r16 + r4
            byte r17 = r15[r16]
            r17 = r17 | r6
            r0 = r17
            byte r0 = (byte) r0
            r17 = r0
            r15[r16] = r17
            int r2 = r2 >>> 8
            r15 = -16777216(0xffffffffff000000, float:-1.7014118E38)
            r2 = r2 | r15
            int r6 = r6 >>> 8
            int r4 = r4 + 1
            goto L_0x08e2
        L_0x0911:
            int r2 = r7 + 1
            r7 = r2
            goto L_0x08ae
        L_0x0915:
            int r2 = r10 + 16
            r6 = 1
            long r6 = r6 + r8
            r8 = r6
            r10 = r2
            goto L_0x089a
        L_0x091e:
            int[] r2 = r5.b
            r4 = 4
            r2 = r2[r4]
            r9 = r2 & -1
            int[] r2 = r5.b
            r4 = 0
            r2 = r2[r4]
            r10 = r2 & -1
            r6 = 0
            int r2 = r9 * 2
            r11 = r2 & -1
            r2 = 0
            byte[] r4 = r5.a
            r7 = 245792(0x3c020, float:3.44428E-40)
            r5.a((boolean) r2, (byte[]) r4, (int) r7, (int) r9)
            r2 = 122880(0x1e000, float:1.72192E-40)
            if (r9 >= r2) goto L_0x010c
            r2 = 0
            r8 = r2
        L_0x0941:
            if (r8 >= r10) goto L_0x010c
            r4 = 0
            int r2 = r9 + r8
        L_0x0946:
            if (r2 >= r11) goto L_0x0957
            byte[] r12 = r5.a
            byte[] r13 = r5.a
            int r7 = r6 + 1
            byte r6 = r13[r6]
            int r4 = r4 - r6
            byte r4 = (byte) r4
            r12[r2] = r4
            int r2 = r2 + r10
            r6 = r7
            goto L_0x0946
        L_0x0957:
            int r2 = r8 + 1
            r8 = r2
            goto L_0x0941
        L_0x095b:
            int[] r2 = r5.b
            r4 = 4
            r13 = r2[r4]
            int[] r2 = r5.b
            r4 = 0
            r2 = r2[r4]
            int r14 = r2 + -3
            int[] r2 = r5.b
            r4 = 1
            r2 = r2[r4]
            r6 = 0
            r4 = 0
            byte[] r7 = r5.a
            r8 = 245792(0x3c020, float:3.44428E-40)
            r5.a((boolean) r4, (byte[]) r7, (int) r8, (int) r13)
            r4 = 122880(0x1e000, float:1.72192E-40)
            if (r13 >= r4) goto L_0x010c
            if (r2 < 0) goto L_0x010c
            r4 = 0
        L_0x097e:
            r7 = 3
            if (r4 >= r7) goto L_0x09ff
            r8 = 0
            r28 = r8
            r9 = r4
            r8 = r6
            r6 = r28
        L_0x0989:
            if (r9 >= r13) goto L_0x09fb
            int r10 = r9 - r14
            r11 = 3
            if (r10 < r11) goto L_0x09d7
            int r10 = r10 + r13
            byte[] r11 = r5.a
            byte r11 = r11[r10]
            r11 = r11 & 255(0xff, float:3.57E-43)
            byte[] r12 = r5.a
            int r10 = r10 + -3
            byte r10 = r12[r10]
            r10 = r10 & 255(0xff, float:3.57E-43)
            long r0 = (long) r11
            r16 = r0
            long r16 = r16 + r6
            long r0 = (long) r10
            r18 = r0
            long r16 = r16 - r18
            long r18 = r16 - r6
            r0 = r18
            int r12 = (int) r0
            int r12 = java.lang.Math.abs(r12)
            long r0 = (long) r11
            r18 = r0
            long r18 = r16 - r18
            r0 = r18
            int r15 = (int) r0
            int r15 = java.lang.Math.abs(r15)
            long r0 = (long) r10
            r18 = r0
            long r16 = r16 - r18
            r0 = r16
            int r0 = (int) r0
            r16 = r0
            int r16 = java.lang.Math.abs(r16)
            if (r12 > r15) goto L_0x09d2
            r0 = r16
            if (r12 <= r0) goto L_0x09d7
        L_0x09d2:
            r0 = r16
            if (r15 > r0) goto L_0x09f9
            long r6 = (long) r11
        L_0x09d7:
            byte[] r10 = r5.a
            int r12 = r8 + 1
            byte r8 = r10[r8]
            long r10 = (long) r8
            long r6 = r6 - r10
            r10 = 255(0xff, double:1.26E-321)
            long r6 = r6 & r10
            r10 = 255(0xff, double:1.26E-321)
            long r10 = r10 & r6
            byte[] r6 = r5.a
            int r7 = r13 + r9
            r16 = 255(0xff, double:1.26E-321)
            long r16 = r16 & r10
            r0 = r16
            int r8 = (int) r0
            byte r8 = (byte) r8
            r6[r7] = r8
            int r6 = r9 + 3
            r9 = r6
            r8 = r12
            r6 = r10
            goto L_0x0989
        L_0x09f9:
            long r6 = (long) r10
            goto L_0x09d7
        L_0x09fb:
            int r4 = r4 + 1
            r6 = r8
            goto L_0x097e
        L_0x09ff:
            int r4 = r13 + -2
        L_0x0a01:
            if (r2 >= r4) goto L_0x010c
            byte[] r6 = r5.a
            int r7 = r13 + r2
            int r7 = r7 + 1
            byte r6 = r6[r7]
            byte[] r7 = r5.a
            int r8 = r13 + r2
            byte r9 = r7[r8]
            int r9 = r9 + r6
            byte r9 = (byte) r9
            r7[r8] = r9
            byte[] r7 = r5.a
            int r8 = r13 + r2
            int r8 = r8 + 2
            byte r9 = r7[r8]
            int r6 = r6 + r9
            byte r6 = (byte) r6
            r7[r8] = r6
            int r2 = r2 + 3
            goto L_0x0a01
        L_0x0a24:
            int[] r2 = r5.b
            r4 = 4
            r23 = r2[r4]
            int[] r2 = r5.b
            r4 = 0
            r24 = r2[r4]
            r2 = 0
            r4 = 0
            byte[] r6 = r5.a
            r7 = 245792(0x3c020, float:3.44428E-40)
            r0 = r23
            r5.a((boolean) r4, (byte[]) r6, (int) r7, (int) r0)
            r4 = 122880(0x1e000, float:1.72192E-40)
            r0 = r23
            if (r0 >= r4) goto L_0x010c
            r4 = 0
            r11 = r4
        L_0x0a43:
            r0 = r24
            if (r11 >= r0) goto L_0x010c
            r12 = 0
            r8 = 0
            r4 = 7
            long[] r0 = new long[r4]
            r25 = r0
            r6 = 0
            r4 = 0
            r15 = 0
            r14 = 0
            r10 = 0
            r7 = 0
            r16 = r12
            r21 = r7
            r22 = r11
            r7 = r4
            r4 = r14
            r28 = r6
            r6 = r2
            r2 = r10
            r10 = r15
            r14 = r8
            r8 = r28
        L_0x0a66:
            r0 = r22
            r1 = r23
            if (r0 >= r1) goto L_0x0b85
            int r9 = (int) r14
            int r12 = r9 - r8
            int r13 = (int) r14
            r8 = 8
            long r8 = r8 * r16
            int r14 = r10 * r13
            long r14 = (long) r14
            long r8 = r8 + r14
            int r14 = r4 * r12
            long r14 = (long) r14
            long r8 = r8 + r14
            int r14 = r2 * r7
            long r14 = (long) r14
            long r8 = r8 + r14
            r14 = 3
            long r8 = r8 >>> r14
            r14 = 255(0xff, double:1.26E-321)
            long r8 = r8 & r14
            byte[] r14 = r5.a
            int r20 = r6 + 1
            byte r6 = r14[r6]
            r6 = r6 & 255(0xff, float:3.57E-43)
            long r0 = (long) r6
            r26 = r0
            long r8 = r8 - r26
            r14 = -1
            long r18 = r8 & r14
            byte[] r6 = r5.a
            int r8 = r23 + r22
            r0 = r18
            int r9 = (int) r0
            byte r9 = (byte) r9
            r6[r8] = r9
            long r8 = r18 - r16
            int r6 = (int) r8
            byte r6 = (byte) r6
            long r14 = (long) r6
            r0 = r26
            int r6 = (int) r0
            byte r6 = (byte) r6
            int r6 = r6 << 3
            r8 = 0
            r16 = r25[r8]
            int r9 = java.lang.Math.abs(r6)
            long r0 = (long) r9
            r26 = r0
            long r16 = r16 + r26
            r25[r8] = r16
            r8 = 1
            r16 = r25[r8]
            int r9 = r6 - r13
            int r9 = java.lang.Math.abs(r9)
            long r0 = (long) r9
            r26 = r0
            long r16 = r16 + r26
            r25[r8] = r16
            r8 = 2
            r16 = r25[r8]
            int r9 = r6 + r13
            int r9 = java.lang.Math.abs(r9)
            long r0 = (long) r9
            r26 = r0
            long r16 = r16 + r26
            r25[r8] = r16
            r8 = 3
            r16 = r25[r8]
            int r9 = r6 - r12
            int r9 = java.lang.Math.abs(r9)
            long r0 = (long) r9
            r26 = r0
            long r16 = r16 + r26
            r25[r8] = r16
            r8 = 4
            r16 = r25[r8]
            int r9 = r6 + r12
            int r9 = java.lang.Math.abs(r9)
            long r0 = (long) r9
            r26 = r0
            long r16 = r16 + r26
            r25[r8] = r16
            r8 = 5
            r16 = r25[r8]
            int r9 = r6 - r7
            int r9 = java.lang.Math.abs(r9)
            long r0 = (long) r9
            r26 = r0
            long r16 = r16 + r26
            r25[r8] = r16
            r8 = 6
            r16 = r25[r8]
            int r6 = r6 + r7
            int r6 = java.lang.Math.abs(r6)
            long r6 = (long) r6
            long r6 = r6 + r16
            r25[r8] = r6
            r6 = r21 & 31
            if (r6 != 0) goto L_0x0b45
            r6 = 0
            r8 = r25[r6]
            r6 = 0
            r16 = 0
            r26 = 0
            r25[r16] = r26
            r16 = 1
        L_0x0b27:
            r17 = 7
            r0 = r16
            r1 = r17
            if (r0 >= r1) goto L_0x0b41
            r26 = r25[r16]
            int r17 = (r26 > r8 ? 1 : (r26 == r8 ? 0 : -1))
            if (r17 >= 0) goto L_0x0b3a
            r8 = r25[r16]
            r0 = r16
            long r6 = (long) r0
        L_0x0b3a:
            r26 = 0
            r25[r16] = r26
            int r16 = r16 + 1
            goto L_0x0b27
        L_0x0b41:
            int r6 = (int) r6
            switch(r6) {
                case 1: goto L_0x0b57;
                case 2: goto L_0x0b5e;
                case 3: goto L_0x0b65;
                case 4: goto L_0x0b6d;
                case 5: goto L_0x0b75;
                case 6: goto L_0x0b7d;
                default: goto L_0x0b45;
            }
        L_0x0b45:
            r6 = r10
        L_0x0b46:
            int r8 = r22 + r24
            int r7 = r21 + 1
            r16 = r18
            r21 = r7
            r22 = r8
            r10 = r6
            r8 = r13
            r7 = r12
            r6 = r20
            goto L_0x0a66
        L_0x0b57:
            r6 = -16
            if (r10 < r6) goto L_0x0b45
            int r6 = r10 + -1
            goto L_0x0b46
        L_0x0b5e:
            r6 = 16
            if (r10 >= r6) goto L_0x0b45
            int r6 = r10 + 1
            goto L_0x0b46
        L_0x0b65:
            r6 = -16
            if (r4 < r6) goto L_0x0b45
            int r4 = r4 + -1
            r6 = r10
            goto L_0x0b46
        L_0x0b6d:
            r6 = 16
            if (r4 >= r6) goto L_0x0b45
            int r4 = r4 + 1
            r6 = r10
            goto L_0x0b46
        L_0x0b75:
            r6 = -16
            if (r2 < r6) goto L_0x0b45
            int r2 = r2 + -1
            r6 = r10
            goto L_0x0b46
        L_0x0b7d:
            r6 = 16
            if (r2 >= r6) goto L_0x0b45
            int r2 = r2 + 1
            r6 = r10
            goto L_0x0b46
        L_0x0b85:
            int r2 = r11 + 1
            r11 = r2
            r2 = r6
            goto L_0x0a43
        L_0x0b8b:
            int[] r2 = r5.b
            r4 = 4
            r7 = r2[r4]
            r2 = 0
            r4 = 122880(0x1e000, float:1.72192E-40)
            if (r7 >= r4) goto L_0x010c
            r6 = r7
        L_0x0b97:
            if (r2 >= r7) goto L_0x0bb6
            byte[] r8 = r5.a
            int r4 = r2 + 1
            byte r2 = r8[r2]
            r8 = 2
            if (r2 != r8) goto L_0x0c35
            byte[] r8 = r5.a
            int r2 = r4 + 1
            byte r4 = r8[r4]
            r8 = 2
            if (r4 == r8) goto L_0x0bae
            int r4 = r4 + -32
            byte r4 = (byte) r4
        L_0x0bae:
            byte[] r9 = r5.a
            int r8 = r6 + 1
            r9[r6] = r4
            r6 = r8
            goto L_0x0b97
        L_0x0bb6:
            r2 = 0
            byte[] r4 = r5.a
            r8 = 245788(0x3c01c, float:3.44422E-40)
            int r6 = r6 - r7
            r5.a((boolean) r2, (byte[]) r4, (int) r8, (int) r6)
            r2 = 0
            byte[] r4 = r5.a
            r6 = 245792(0x3c020, float:3.44428E-40)
            r5.a((boolean) r2, (byte[]) r4, (int) r6, (int) r7)
            goto L_0x010c
        L_0x0bcb:
            r2 = 0
            byte[] r3 = r5.a
            r4 = 245792(0x3c020, float:3.44428E-40)
            int r2 = r5.a((boolean) r2, (byte[]) r3, (int) r4)
            r3 = 262143(0x3ffff, float:3.6734E-40)
            r3 = r3 & r2
            r2 = 0
            byte[] r4 = r5.a
            r6 = 245788(0x3c01c, float:3.44422E-40)
            int r2 = r5.a((boolean) r2, (byte[]) r4, (int) r6)
            r4 = 262143(0x3ffff, float:3.6734E-40)
            r2 = r2 & r4
            int r4 = r3 + r2
            r6 = 262144(0x40000, float:3.67342E-40)
            if (r4 < r6) goto L_0x0bef
            r3 = 0
            r2 = 0
        L_0x0bef:
            r0 = r31
            r0.g = r3
            r0 = r31
            r0.h = r2
            r0 = r31
            java.util.Vector<java.lang.Byte> r2 = r0.d
            r2.clear()
            r2 = 0
            byte[] r3 = r5.a
            r4 = 245808(0x3c030, float:3.4445E-40)
            int r2 = r5.a((boolean) r2, (byte[]) r3, (int) r4)
            r3 = 8128(0x1fc0, float:1.139E-41)
            int r3 = java.lang.Math.min(r2, r3)
            if (r3 == 0) goto L_0x0c34
            r0 = r31
            java.util.Vector<java.lang.Byte> r2 = r0.d
            int r4 = r3 + 64
            r2.setSize(r4)
            r2 = 0
        L_0x0c1a:
            int r4 = r3 + 64
            if (r2 >= r4) goto L_0x0c34
            r0 = r31
            java.util.Vector<java.lang.Byte> r4 = r0.d
            byte[] r6 = r5.a
            r7 = 245760(0x3c000, float:3.44383E-40)
            int r7 = r7 + r2
            byte r6 = r6[r7]
            java.lang.Byte r6 = java.lang.Byte.valueOf(r6)
            r4.set(r2, r6)
            int r2 = r2 + 1
            goto L_0x0c1a
        L_0x0c34:
            return
        L_0x0c35:
            r28 = r4
            r4 = r2
            r2 = r28
            goto L_0x0bae
        L_0x0c3c:
            r6 = r4
            goto L_0x07aa
        L_0x0c3f:
            r6 = r4
            goto L_0x075c
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.uy.a(we):void");
    }

    private void a(byte[] bArr, int i, int i2) {
        if (this.aA < this.i) {
            long j = this.i - this.aA;
            this.f.b(bArr, i, ((long) i2) > j ? (int) j : i2);
            this.aA += (long) i2;
        }
    }

    private boolean a(int i, List<Byte> list) {
        int i2;
        vb vbVar;
        int i3;
        vb vbVar2;
        int a2;
        vw vwVar = new vw();
        vwVar.e();
        for (int i4 = 0; i4 < Math.min(32768, list.size()); i4++) {
            vwVar.i()[i4] = list.get(i4).byteValue();
        }
        vx vxVar = this.ap;
        if (vxVar.a == null) {
            vxVar.a = new byte[262148];
        }
        if ((i & NotificationCompat.FLAG_HIGH_PRIORITY) != 0) {
            int a3 = vx.a(vwVar);
            if (a3 == 0) {
                k();
                i2 = a3;
            } else {
                i2 = a3 - 1;
            }
        } else {
            i2 = this.at;
        }
        if (i2 > this.aq.size() || i2 > this.as.size()) {
            return false;
        }
        this.at = i2;
        boolean z = i2 == this.aq.size();
        vb vbVar3 = new vb();
        if (!z) {
            vb vbVar4 = this.aq.get(i2);
            vbVar3.e = i2;
            vbVar4.c++;
            vbVar = vbVar4;
        } else if (i2 > 1024) {
            return false;
        } else {
            vb vbVar5 = new vb();
            this.aq.add(vbVar5);
            vbVar3.e = this.aq.size() - 1;
            this.as.add(0);
            vbVar5.c = 0;
            vbVar = vbVar5;
        }
        this.ar.add(vbVar3);
        vbVar3.c = vbVar.c;
        int a4 = vx.a(vwVar);
        int i5 = (i & 64) != 0 ? a4 + 258 : a4;
        vbVar3.a = (this.l + i5) & 4194303;
        if ((i & 32) != 0) {
            i3 = vx.a(vwVar);
            vbVar2 = vbVar3;
        } else if (i2 < this.as.size()) {
            i3 = this.as.get(i2).intValue();
            vbVar2 = vbVar3;
        } else {
            i3 = 0;
            vbVar2 = vbVar3;
        }
        vbVar2.b = i3;
        vbVar3.d = this.m != this.l && ((this.m - this.l) & 4194303) <= i5;
        this.as.set(i2, Integer.valueOf(vbVar3.b));
        Arrays.fill(vbVar3.f.f, 0);
        vbVar3.f.f[3] = 245760;
        vbVar3.f.f[4] = vbVar3.b;
        vbVar3.f.f[5] = vbVar3.c;
        if ((i & 16) != 0) {
            int g = vwVar.g() >>> 9;
            vwVar.b(7);
            for (int i6 = 0; i6 < 7; i6++) {
                if (((1 << i6) & g) != 0) {
                    vbVar3.f.f[i6] = vx.a(vwVar);
                }
            }
        }
        if (z) {
            int a5 = vx.a(vwVar);
            if (a5 >= 65536 || a5 == 0) {
                return false;
            }
            byte[] bArr = new byte[a5];
            for (int i7 = 0; i7 < a5; i7++) {
                if (vwVar.h()) {
                    return false;
                }
                bArr[i7] = (byte) (vwVar.g() >> 8);
                vwVar.b(8);
            }
            this.ap.a(bArr, a5, vbVar.f);
        }
        vbVar3.f.b = vbVar.f.a;
        vbVar3.f.c = vbVar.f.c;
        int size = vbVar.f.e.size();
        if (size > 0 && size < 8192) {
            vbVar3.f.e = vbVar.f.e;
        }
        if (vbVar3.f.d.size() < 64) {
            vbVar3.f.d.clear();
            vbVar3.f.d.setSize(64);
        }
        Vector<Byte> vector = vbVar3.f.d;
        for (int i8 = 0; i8 < 7; i8++) {
            vx.a(vector, i8 * 4, vbVar3.f.f[i8]);
        }
        vx.a(vector, 28, vbVar3.b);
        vx.a(vector, 32, 0);
        vx.a(vector, 36, 0);
        vx.a(vector, 40, 0);
        vx.a(vector, 44, vbVar3.c);
        for (int i9 = 0; i9 < 16; i9++) {
            vector.set(i9 + 48, (byte) 0);
        }
        if ((i & 8) != 0) {
            if (vwVar.h() || (a2 = vx.a(vwVar)) > 8128) {
                return false;
            }
            int size2 = vbVar3.f.d.size();
            if (size2 < a2 + 64) {
                vbVar3.f.d.setSize((a2 + 64) - size2);
            }
            Vector<Byte> vector2 = vbVar3.f.d;
            for (int i10 = 0; i10 < a2; i10++) {
                if (vwVar.h()) {
                    return false;
                }
                vector2.set(i10 + 64, Byte.valueOf((byte) (vwVar.g() >>> 8)));
                vwVar.b(8);
            }
        }
        return true;
    }

    private void b(int i, int i2) {
        this.N = i2;
        this.O = i;
    }

    private void c(int i) {
        this.k[3] = this.k[2];
        this.k[2] = this.k[1];
        this.k[1] = this.k[0];
        this.k[0] = i;
    }

    private void c(int i, int i2) {
        int i3 = this.l - i2;
        if (i3 < 0 || i3 >= 4194044 || this.l >= 4194044) {
            while (true) {
                int i4 = i - 1;
                if (i != 0) {
                    this.j[this.l] = this.j[i3 & 4194303];
                    this.l = (this.l + 1) & 4194303;
                    i3++;
                    i = i4;
                } else {
                    return;
                }
            }
        } else {
            byte[] bArr = this.j;
            int i5 = this.l;
            this.l = i5 + 1;
            int i6 = i3 + 1;
            bArr[i5] = this.j[i3];
            while (true) {
                int i7 = i6;
                i--;
                if (i > 0) {
                    byte[] bArr2 = this.j;
                    int i8 = this.l;
                    this.l = i8 + 1;
                    i6 = i7 + 1;
                    bArr2[i8] = this.j[i7];
                } else {
                    return;
                }
            }
        }
    }

    private void j() {
        int i;
        int i2;
        byte[] bArr;
        vb vbVar;
        int i3 = this.m;
        int i4 = 0;
        int i5 = i3;
        int i6 = (this.l - i3) & 4194303;
        while (i4 < this.ar.size()) {
            vb vbVar2 = this.ar.get(i4);
            if (vbVar2 != null) {
                if (vbVar2.d) {
                    vbVar2.d = false;
                    i = i4;
                    i2 = i5;
                } else {
                    int i7 = vbVar2.a;
                    int i8 = vbVar2.b;
                    if (((i7 - i5) & 4194303) < i6) {
                        if (i5 != i7) {
                            a(i5, i7);
                            i6 = (this.l - i7) & 4194303;
                            i5 = i7;
                        }
                        if (i8 <= i6) {
                            int i9 = (i7 + i8) & 4194303;
                            if (i7 < i9 || i9 == 0) {
                                this.ap.a(0, this.j, i7, i8);
                            } else {
                                int i10 = 4194304 - i7;
                                this.ap.a(0, this.j, i7, i10);
                                this.ap.a(i10, this.j, 0, i9);
                            }
                            we weVar = this.aq.get(vbVar2.e).f;
                            we weVar2 = vbVar2.f;
                            if (weVar.d.size() > 64) {
                                weVar2.d.setSize(weVar.d.size());
                                for (int i11 = 0; i11 < weVar.d.size() - 64; i11++) {
                                    weVar2.d.set(i11 + 64, weVar.d.get(i11 + 64));
                                }
                            }
                            a(weVar2);
                            if (weVar2.d.size() > 64) {
                                if (weVar.d.size() < weVar2.d.size()) {
                                    weVar.d.setSize(weVar2.d.size());
                                }
                                for (int i12 = 0; i12 < weVar2.d.size() - 64; i12++) {
                                    weVar.d.set(i12 + 64, weVar2.d.get(i12 + 64));
                                }
                            } else {
                                weVar.d.clear();
                            }
                            int i13 = weVar2.g;
                            int i14 = weVar2.h;
                            byte[] a2 = wk.b.a(i14);
                            System.arraycopy(this.ap.a, i13, a2, 0, i14);
                            this.ar.set(i4, (Object) null);
                            int i15 = i14;
                            while (true) {
                                bArr = a2;
                                if (i4 + 1 >= this.ar.size() || (vbVar = this.ar.get(i4 + 1)) == null || vbVar.a != i7 || vbVar.b != i15 || vbVar.d) {
                                    this.f.b(bArr, 0, i15);
                                    wk.b.a(bArr);
                                    this.g = true;
                                    this.aA += (long) i15;
                                    i6 = (this.l - i9) & 4194303;
                                    i = i4;
                                    i2 = i9;
                                } else {
                                    this.ap.a(0, bArr, 0, i15);
                                    wk.b.a(bArr);
                                    we weVar3 = this.aq.get(vbVar.e).f;
                                    we weVar4 = vbVar.f;
                                    if (weVar3.d.size() > 64) {
                                        weVar4.d.setSize(weVar3.d.size());
                                        for (int i16 = 0; i16 < weVar3.d.size() - 64; i16++) {
                                            weVar4.d.set(i16 + 64, weVar3.d.get(i16 + 64));
                                        }
                                    }
                                    a(weVar4);
                                    if (weVar4.d.size() > 64) {
                                        if (weVar3.d.size() < weVar4.d.size()) {
                                            weVar3.d.setSize(weVar4.d.size());
                                        }
                                        for (int i17 = 0; i17 < weVar4.d.size() - 64; i17++) {
                                            weVar3.d.set(i17 + 64, weVar4.d.get(i17 + 64));
                                        }
                                    } else {
                                        weVar3.d.clear();
                                    }
                                    int i18 = weVar4.g;
                                    i15 = weVar4.h;
                                    a2 = wk.b.a(i15);
                                    for (int i19 = 0; i19 < i15; i19++) {
                                        a2[i19] = weVar4.d.get(i18 + i19).byteValue();
                                    }
                                    i4++;
                                    this.ar.set(i4, (Object) null);
                                }
                            }
                            this.f.b(bArr, 0, i15);
                            wk.b.a(bArr);
                            this.g = true;
                            this.aA += (long) i15;
                            i6 = (this.l - i9) & 4194303;
                            i = i4;
                            i2 = i9;
                        } else {
                            while (i4 < this.ar.size()) {
                                vb vbVar3 = this.ar.get(i4);
                                if (vbVar3 != null && vbVar3.d) {
                                    vbVar3.d = false;
                                }
                                i4++;
                            }
                            this.m = i5;
                            return;
                        }
                    }
                }
                i5 = i2;
                i4 = i + 1;
            }
            i = i4;
            i2 = i5;
            i5 = i2;
            i4 = i + 1;
        }
        a(i5, this.l);
        this.m = this.l;
    }

    private void k() {
        this.as.clear();
        this.at = 0;
        this.aq.clear();
        this.ar.clear();
    }

    private boolean l() {
        int i;
        int i2;
        int i3;
        int i4;
        byte[] a2 = wk.b.a(20);
        byte[] a3 = wk.b.a((int) HttpStatus.SC_NOT_FOUND);
        if (this.al > this.h - 25 && !c()) {
            return false;
        }
        b((8 - this.am) & 7);
        long g = (long) (g() & -1);
        if ((32768 & g) != 0) {
            this.ay = vk.BLOCK_PPM;
            vm vmVar = this.ao;
            int a4 = a() & 255;
            boolean z = (a4 & 32) != 0;
            if (z) {
                i4 = a();
            } else if (vmVar.u.b == 0) {
                return false;
            } else {
                i4 = 0;
            }
            if ((a4 & 64) != 0) {
                this.a = a();
            }
            vp vpVar = vmVar.t;
            vpVar.e = this;
            vpVar.b = 0;
            vpVar.a = 0;
            vpVar.c = 4294967295L;
            for (int i5 = 0; i5 < 4; i5++) {
                vpVar.b = ((vpVar.b << 8) | ((long) vpVar.e.a())) & 4294967295L;
            }
            if (z) {
                int i6 = (a4 & 31) + 1;
                int i7 = i6 > 16 ? ((i6 - 16) * 3) + 16 : i6;
                if (i7 == 1) {
                    vmVar.u.a();
                    return false;
                }
                vv vvVar = vmVar.u;
                int i8 = i4 + 1;
                if (i8 > 2) {
                    i8 = 2;
                }
                int i9 = i8 << 20;
                if (vvVar.b != i9) {
                    vvVar.a();
                    int i10 = vv.a + ((i9 / 12) * vv.a);
                    int i11 = i10 + 1 + 152;
                    vvVar.p = i11;
                    int i12 = i11 + 12;
                    vvVar.n = wk.b.a(i12);
                    vvVar.f = 1;
                    vvVar.l = (vvVar.f + i10) - vv.a;
                    vvVar.b = i9;
                    vvVar.o = vvVar.f + i10;
                    if (vv.u || i12 - vvVar.p == 12) {
                        int i13 = vvVar.o;
                        int i14 = 0;
                        while (i14 < vvVar.i.length) {
                            vvVar.i[i14] = new vr(vvVar.n);
                            vvVar.i[i14].c(i13);
                            i14++;
                            i13 += 4;
                        }
                        vvVar.q = new vr(vvVar.n);
                        vvVar.r = new vq(vvVar.n);
                        vvVar.s = new vq(vvVar.n);
                        vvVar.t = new vq(vvVar.n);
                    } else {
                        throw new AssertionError(i12 + " " + vvVar.p + " 12");
                    }
                }
                vmVar.c = new vn(vmVar.u.n);
                vmVar.d = new vn(vmVar.u.n);
                vmVar.e = new vn(vmVar.u.n);
                vmVar.f = new vt(vmVar.u.n);
                vmVar.b = new vs();
                for (int i15 = 0; i15 < 25; i15++) {
                    for (int i16 = 0; i16 < 16; i16++) {
                        vmVar.a[i15][i16] = new vs();
                    }
                }
                vmVar.a(i7);
            }
            return vmVar.c.c() != 0;
        }
        this.ay = vk.BLOCK_LZ;
        this.aD = 0;
        this.aE = 0;
        if ((g & 16384) == 0) {
            Arrays.fill(this.av, (byte) 0);
        }
        b(2);
        int i17 = 0;
        while (i17 < 20) {
            int g2 = (g() >>> 12) & 255;
            b(4);
            if (g2 == 15) {
                int g3 = (g() >>> 12) & 255;
                b(4);
                if (g3 == 0) {
                    a2[i17] = 15;
                } else {
                    int i18 = g3 + 2;
                    while (true) {
                        i3 = i17;
                        int i19 = i18;
                        i18 = i19 - 1;
                        if (i19 <= 0 || i3 >= a2.length) {
                            i17 = i3 - 1;
                        } else {
                            i17 = i3 + 1;
                            a2[i3] = 0;
                        }
                    }
                    i17 = i3 - 1;
                }
            } else {
                a2[i17] = (byte) g2;
            }
            i17++;
        }
        a(a2, 0, this.ae, 20);
        int i20 = 0;
        while (i20 < 404) {
            if (this.al <= this.h - 5 || c()) {
                int a5 = a(this.ae);
                if (a5 >= 16) {
                    if (a5 >= 18) {
                        if (a5 == 18) {
                            i = (g() >>> 13) + 3;
                            b(3);
                        } else {
                            i = (g() >>> 9) + 11;
                            b(7);
                        }
                        while (true) {
                            int i21 = i - 1;
                            if (i <= 0 || i20 >= 404) {
                                break;
                            }
                            a3[i20] = 0;
                            i20++;
                            i = i21;
                        }
                    } else {
                        if (a5 == 16) {
                            i2 = (g() >>> 13) + 3;
                            b(3);
                        } else {
                            i2 = (g() >>> 9) + 11;
                            b(7);
                        }
                        while (true) {
                            int i22 = i2 - 1;
                            if (i2 <= 0 || i20 >= 404) {
                                break;
                            }
                            a3[i20] = a3[i20 - 1];
                            i20++;
                            i2 = i22;
                        }
                    }
                } else {
                    a3[i20] = (byte) ((a5 + this.av[i20]) & 15);
                    i20++;
                }
            } else {
                return false;
            }
        }
        this.au = true;
        if (this.al > this.h) {
            return false;
        }
        a(a3, 0, this.aa, 299);
        a(a3, 299, this.ab, 60);
        a(a3, 359, this.ac, 17);
        a(a3, 376, this.ad, 28);
        for (int i23 = 0; i23 < this.av.length; i23++) {
            this.av[i23] = a3[i23];
        }
        wk.b.a(a3);
        wk.b.a(a2);
        return true;
    }

    private boolean m() {
        int f = f() >> 8;
        a(8);
        int i = (f & 7) + 1;
        if (i == 7) {
            i = (f() >> 8) + 7;
            a(8);
        } else if (i == 8) {
            i = f();
            a(16);
        }
        ArrayList arrayList = new ArrayList();
        for (int i2 = 0; i2 < i; i2++) {
            if (this.al >= this.h - 1 && !c() && i2 < i - 1) {
                return false;
            }
            arrayList.add(Byte.valueOf((byte) (f() >> 8)));
            a(8);
        }
        return a(f, (List<Byte>) arrayList);
    }

    public final int a() {
        if (this.al > 32738) {
            c();
        }
        byte[] bArr = this.an;
        int i = this.al;
        this.al = i + 1;
        return bArr[i] & 255;
    }

    public final void a(int i, boolean z) {
        boolean z2;
        boolean z3;
        boolean z4;
        if (this.f.g.k == 48) {
            byte[] bArr = new byte[65536];
            while (true) {
                int a2 = this.f.a(bArr, 0, (int) Math.min(65536, this.i));
                if (a2 == 0 || a2 == -1) {
                    break;
                }
                if (((long) a2) >= this.i) {
                    a2 = (int) this.i;
                }
                this.f.b(bArr, 0, a2);
                if (this.i >= 0) {
                    this.i -= (long) a2;
                }
            }
        }
        switch (i) {
            case 15:
                b(z);
                return;
            case 20:
            case 26:
                c(z);
                return;
            case 29:
            case 36:
                if (this.aw[1] == 0) {
                    int i2 = 0;
                    int i3 = 0;
                    int i4 = 0;
                    int i5 = 0;
                    while (i2 < b.length) {
                        int i6 = b[i2];
                        int i7 = 0;
                        while (i7 < i6) {
                            this.aw[i3] = i5;
                            this.ax[i3] = (byte) i4;
                            i7++;
                            i3++;
                            i5 += 1 << i4;
                        }
                        i2++;
                        i4++;
                    }
                }
                this.aB = true;
                if (!this.d) {
                    a(z);
                    if (!c()) {
                        return;
                    }
                    if ((!z || !this.au) && !l()) {
                        return;
                    }
                }
                if (!this.aC) {
                    while (true) {
                        this.l &= 4194303;
                        if (this.al <= this.c || c()) {
                            if (((this.m - this.l) & 4194303) < 260 && this.m != this.l) {
                                j();
                                if (this.aA > this.i) {
                                    return;
                                }
                                if (this.d) {
                                    this.aB = false;
                                    return;
                                }
                            }
                            if (this.ay == vk.BLOCK_PPM) {
                                int a3 = this.ao.a();
                                if (a3 == -1) {
                                    this.aC = true;
                                } else {
                                    if (a3 == this.a) {
                                        int a4 = this.ao.a();
                                        if (a4 == 0) {
                                            if (!l()) {
                                            }
                                        } else if (!(a4 == 2 || a4 == -1)) {
                                            if (a4 == 3) {
                                                int a5 = this.ao.a();
                                                if (a5 == -1) {
                                                    z4 = false;
                                                } else {
                                                    int i8 = (a5 & 7) + 1;
                                                    if (i8 == 7) {
                                                        int a6 = this.ao.a();
                                                        if (a6 == -1) {
                                                            z4 = false;
                                                        } else {
                                                            i8 = a6 + 7;
                                                        }
                                                    } else if (i8 == 8) {
                                                        int a7 = this.ao.a();
                                                        if (a7 == -1) {
                                                            z4 = false;
                                                        } else {
                                                            int a8 = this.ao.a();
                                                            if (a8 == -1) {
                                                                z4 = false;
                                                            } else {
                                                                i8 = (a7 * NotificationCompat.FLAG_LOCAL_ONLY) + a8;
                                                            }
                                                        }
                                                    }
                                                    ArrayList arrayList = new ArrayList();
                                                    int i9 = 0;
                                                    while (true) {
                                                        if (i9 >= i8) {
                                                            z4 = a(a5, (List<Byte>) arrayList);
                                                        } else {
                                                            int a9 = this.ao.a();
                                                            if (a9 == -1) {
                                                                z4 = false;
                                                            } else {
                                                                arrayList.add(Byte.valueOf((byte) a9));
                                                                i9++;
                                                            }
                                                        }
                                                    }
                                                }
                                                if (!z4) {
                                                }
                                            } else if (a4 == 4) {
                                                boolean z5 = false;
                                                int i10 = 0;
                                                int i11 = 0;
                                                for (int i12 = 0; i12 < 4 && !z5; i12++) {
                                                    int a10 = this.ao.a();
                                                    if (a10 == -1) {
                                                        z5 = true;
                                                    } else if (i12 == 3) {
                                                        i10 = a10 & 255;
                                                    } else {
                                                        i11 = (i11 << 8) + (a10 & 255);
                                                    }
                                                }
                                                if (!z5) {
                                                    c(i10 + 32, i11 + 2);
                                                }
                                            } else if (a4 == 5) {
                                                int a11 = this.ao.a();
                                                if (a11 != -1) {
                                                    c(a11 + 4, 1);
                                                }
                                            }
                                        }
                                    }
                                    byte[] bArr2 = this.j;
                                    int i13 = this.l;
                                    this.l = i13 + 1;
                                    bArr2[i13] = (byte) a3;
                                }
                            } else {
                                int a12 = a(this.aa);
                                if (a12 < 256) {
                                    byte[] bArr3 = this.j;
                                    int i14 = this.l;
                                    this.l = i14 + 1;
                                    bArr3[i14] = (byte) a12;
                                } else if (a12 >= 271) {
                                    int i15 = a12 - 271;
                                    int i16 = af[i15] + 3;
                                    byte b2 = ag[i15];
                                    if (b2 > 0) {
                                        i16 += f() >>> (16 - b2);
                                        a(b2);
                                    }
                                    int a13 = a(this.ab);
                                    int i17 = this.aw[a13] + 1;
                                    byte b3 = this.ax[a13];
                                    if (b3 > 0) {
                                        if (a13 > 9) {
                                            if (b3 > 4) {
                                                i17 += (f() >>> (20 - b3)) << 4;
                                                a(b3 - 4);
                                            }
                                            if (this.aE > 0) {
                                                this.aE--;
                                                i17 += this.aD;
                                            } else {
                                                int a14 = a(this.ac);
                                                if (a14 == 16) {
                                                    this.aE = 15;
                                                    i17 += this.aD;
                                                } else {
                                                    i17 += a14;
                                                    this.aD = a14;
                                                }
                                            }
                                        } else {
                                            i17 += f() >>> (16 - b3);
                                            a(b3);
                                        }
                                    }
                                    if (i17 >= 8192) {
                                        i16++;
                                        if (((long) i17) >= 262144) {
                                            i16++;
                                        }
                                    }
                                    c(i17);
                                    b(i16, i17);
                                    c(i16, i17);
                                } else if (a12 == 256) {
                                    int f = f();
                                    if ((32768 & f) != 0) {
                                        a(1);
                                        z3 = false;
                                        z2 = true;
                                    } else {
                                        z2 = (f & 16384) != 0;
                                        a(2);
                                        z3 = true;
                                    }
                                    this.au = !z2;
                                    if (!(!z3 && l())) {
                                    }
                                } else if (a12 == 257) {
                                    if (!m()) {
                                    }
                                } else if (a12 == 258) {
                                    if (this.O != 0) {
                                        c(this.O, this.N);
                                    }
                                } else if (a12 < 263) {
                                    int i18 = a12 - 259;
                                    int i19 = this.k[i18];
                                    while (i18 > 0) {
                                        this.k[i18] = this.k[i18 - 1];
                                        i18--;
                                    }
                                    this.k[0] = i19;
                                    int a15 = a(this.ad);
                                    int i20 = af[a15] + 2;
                                    byte b4 = ag[a15];
                                    if (b4 > 0) {
                                        i20 += f() >>> (16 - b4);
                                        a(b4);
                                    }
                                    b(i20, i19);
                                    c(i20, i19);
                                } else if (a12 < 272) {
                                    int i21 = a12 - 263;
                                    int i22 = aj[i21] + 1;
                                    int i23 = ak[i21];
                                    if (i23 > 0) {
                                        i22 += f() >>> (16 - i23);
                                        a(i23);
                                    }
                                    c(i22);
                                    b(2, i22);
                                    c(2, i22);
                                }
                            }
                        }
                    }
                    j();
                    return;
                }
                return;
            default:
                return;
        }
    }

    public final void a(long j) {
        this.i = j;
        this.aB = false;
    }

    /* access modifiers changed from: protected */
    public final void a(boolean z) {
        if (!z) {
            this.au = false;
            Arrays.fill(this.k, 0);
            this.n = 0;
            this.N = 0;
            this.O = 0;
            Arrays.fill(this.av, (byte) 0);
            this.l = 0;
            this.m = 0;
            this.a = 2;
            k();
        }
        e();
        this.aC = false;
        this.aA = 0;
        this.h = 0;
        this.c = 0;
        d(z);
    }

    public final void a(byte[] bArr) {
        if (bArr == null) {
            this.j = new byte[4194304];
        } else {
            this.j = bArr;
            this.az = true;
        }
        this.al = 0;
        a(false);
    }

    public final void b() {
        vv vvVar;
        if (this.ao != null && (vvVar = this.ao.u) != null) {
            vvVar.a();
        }
    }
}
