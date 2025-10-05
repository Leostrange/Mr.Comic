package defpackage;

import java.io.CharConversionException;
import java.io.InputStream;

/* renamed from: aip  reason: default package */
/* compiled from: ByteSourceBootstrapper */
public final class aip {
    protected final ajc a;
    protected final InputStream b;
    protected final byte[] c;
    protected int d;
    protected boolean e = true;
    protected int f = 0;
    private int g;
    private int h;
    private final boolean i;

    public aip(ajc ajc, InputStream inputStream) {
        this.a = ajc;
        this.b = inputStream;
        this.c = ajc.e();
        this.g = 0;
        this.h = 0;
        this.d = 0;
        this.i = true;
    }

    private static void a(String str) {
        throw new CharConversionException("Unsupported UCS-4 endianness (" + str + ") detected");
    }

    private boolean a(int i2) {
        if ((65280 & i2) == 0) {
            this.e = true;
        } else if ((i2 & 255) != 0) {
            return false;
        } else {
            this.e = false;
        }
        this.f = 2;
        return true;
    }

    private boolean b(int i2) {
        int i3 = this.h - this.g;
        while (i3 < i2) {
            int read = this.b == null ? -1 : this.b.read(this.c, this.h, this.c.length - this.h);
            if (read <= 0) {
                return false;
            }
            this.h += read;
            i3 = read + i3;
        }
        return true;
    }

    /* JADX WARNING: Code restructure failed: missing block: B:17:0x009e, code lost:
        a("3412");
     */
    /* JADX WARNING: Code restructure failed: missing block: B:19:0x00a7, code lost:
        if (r2 != 65534) goto L_0x00b5;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:20:0x00a9, code lost:
        r11.g += 2;
        r11.f = 2;
        r11.e = false;
        r2 = true;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:22:0x00ba, code lost:
        if ((r3 >>> 8) != 15711167) goto L_0x00c8;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:23:0x00bc, code lost:
        r11.g += 3;
        r11.f = 1;
        r11.e = true;
        r2 = true;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:24:0x00c8, code lost:
        r2 = false;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:26:0x00cc, code lost:
        if ((r3 >> 8) != 0) goto L_0x00e0;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:27:0x00ce, code lost:
        r11.e = true;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:28:0x00d0, code lost:
        r11.f = 4;
        r2 = true;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:29:0x00d3, code lost:
        if (r2 != false) goto L_0x004e;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:31:0x00db, code lost:
        if (a(r3 >>> 16) != false) goto L_0x004e;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:34:0x00e4, code lost:
        if ((16777215 & r3) != 0) goto L_0x00e9;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:35:0x00e6, code lost:
        r11.e = false;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:37:0x00ed, code lost:
        if ((-16711681 & r3) != 0) goto L_0x00f5;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:38:0x00ef, code lost:
        a("3412");
     */
    /* JADX WARNING: Code restructure failed: missing block: B:40:0x00f9, code lost:
        if ((-65281 & r3) != 0) goto L_0x0101;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:41:0x00fb, code lost:
        a("2143");
     */
    /* JADX WARNING: Code restructure failed: missing block: B:42:0x0101, code lost:
        r2 = false;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:46:0x0122, code lost:
        if (a((int) ((r11.c[r11.g] & 255) << 8) | (r11.c[r11.g + 1] & 255)) != false) goto L_0x004e;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:4:0x003a, code lost:
        r2 = r3 >>> 16;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:5:0x003f, code lost:
        if (r2 != 65279) goto L_0x00a4;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:6:0x0041, code lost:
        r11.g += 2;
        r11.f = 2;
        r11.e = true;
        r2 = true;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:7:0x004c, code lost:
        if (r2 == false) goto L_0x00ca;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final defpackage.aii a(int r12, defpackage.aim r13, defpackage.ajk r14, defpackage.ajl r15) {
        /*
            r11 = this;
            r6 = 2
            r5 = 4
            r1 = 0
            r0 = 1
            boolean r2 = r11.b(r5)
            if (r2 == 0) goto L_0x0103
            byte[] r2 = r11.c
            int r3 = r11.g
            byte r2 = r2[r3]
            int r2 = r2 << 24
            byte[] r3 = r11.c
            int r4 = r11.g
            int r4 = r4 + 1
            byte r3 = r3[r4]
            r3 = r3 & 255(0xff, float:3.57E-43)
            int r3 = r3 << 16
            r2 = r2 | r3
            byte[] r3 = r11.c
            int r4 = r11.g
            int r4 = r4 + 2
            byte r3 = r3[r4]
            r3 = r3 & 255(0xff, float:3.57E-43)
            int r3 = r3 << 8
            r2 = r2 | r3
            byte[] r3 = r11.c
            int r4 = r11.g
            int r4 = r4 + 3
            byte r3 = r3[r4]
            r3 = r3 & 255(0xff, float:3.57E-43)
            r3 = r3 | r2
            switch(r3) {
                case -16842752: goto L_0x009e;
                case -131072: goto L_0x008d;
                case 65279: goto L_0x0081;
                case 65534: goto L_0x0099;
                default: goto L_0x003a;
            }
        L_0x003a:
            int r2 = r3 >>> 16
            r4 = 65279(0xfeff, float:9.1475E-41)
            if (r2 != r4) goto L_0x00a4
            int r2 = r11.g
            int r2 = r2 + 2
            r11.g = r2
            r11.f = r6
            r11.e = r0
            r2 = r0
        L_0x004c:
            if (r2 == 0) goto L_0x00ca
        L_0x004e:
            if (r0 != 0) goto L_0x0126
            aic r0 = defpackage.aic.UTF8
        L_0x0052:
            ajc r1 = r11.a
            r1.a((defpackage.aic) r0)
            aii$a r1 = defpackage.aii.a.CANONICALIZE_FIELD_NAMES
            boolean r8 = r1.a(r12)
            aii$a r1 = defpackage.aii.a.INTERN_FIELD_NAMES
            boolean r9 = r1.a(r12)
            aic r1 = defpackage.aic.UTF8
            if (r0 != r1) goto L_0x014f
            if (r8 == 0) goto L_0x014f
            ajk r5 = r14.a((boolean) r9)
            aiy r0 = new aiy
            ajc r1 = r11.a
            java.io.InputStream r3 = r11.b
            byte[] r6 = r11.c
            int r7 = r11.g
            int r8 = r11.h
            boolean r9 = r11.i
            r2 = r12
            r4 = r13
            r0.<init>(r1, r2, r3, r4, r5, r6, r7, r8, r9)
        L_0x0080:
            return r0
        L_0x0081:
            r11.e = r0
            int r2 = r11.g
            int r2 = r2 + 4
            r11.g = r2
            r11.f = r5
            r2 = r0
            goto L_0x004c
        L_0x008d:
            int r2 = r11.g
            int r2 = r2 + 4
            r11.g = r2
            r11.f = r5
            r11.e = r1
            r2 = r0
            goto L_0x004c
        L_0x0099:
            java.lang.String r2 = "2143"
            a((java.lang.String) r2)
        L_0x009e:
            java.lang.String r2 = "3412"
            a((java.lang.String) r2)
            goto L_0x003a
        L_0x00a4:
            r4 = 65534(0xfffe, float:9.1833E-41)
            if (r2 != r4) goto L_0x00b5
            int r2 = r11.g
            int r2 = r2 + 2
            r11.g = r2
            r11.f = r6
            r11.e = r1
            r2 = r0
            goto L_0x004c
        L_0x00b5:
            int r2 = r3 >>> 8
            r4 = 15711167(0xefbbbf, float:2.2016034E-38)
            if (r2 != r4) goto L_0x00c8
            int r2 = r11.g
            int r2 = r2 + 3
            r11.g = r2
            r11.f = r0
            r11.e = r0
            r2 = r0
            goto L_0x004c
        L_0x00c8:
            r2 = r1
            goto L_0x004c
        L_0x00ca:
            int r2 = r3 >> 8
            if (r2 != 0) goto L_0x00e0
            r11.e = r0
        L_0x00d0:
            r11.f = r5
            r2 = r0
        L_0x00d3:
            if (r2 != 0) goto L_0x004e
            int r2 = r3 >>> 16
            boolean r2 = r11.a((int) r2)
            if (r2 != 0) goto L_0x004e
        L_0x00dd:
            r0 = r1
            goto L_0x004e
        L_0x00e0:
            r2 = 16777215(0xffffff, float:2.3509886E-38)
            r2 = r2 & r3
            if (r2 != 0) goto L_0x00e9
            r11.e = r1
            goto L_0x00d0
        L_0x00e9:
            r2 = -16711681(0xffffffffff00ffff, float:-1.714704E38)
            r2 = r2 & r3
            if (r2 != 0) goto L_0x00f5
            java.lang.String r2 = "3412"
            a((java.lang.String) r2)
            goto L_0x00d0
        L_0x00f5:
            r2 = -65281(0xffffffffffff00ff, float:NaN)
            r2 = r2 & r3
            if (r2 != 0) goto L_0x0101
            java.lang.String r2 = "2143"
            a((java.lang.String) r2)
            goto L_0x00d0
        L_0x0101:
            r2 = r1
            goto L_0x00d3
        L_0x0103:
            boolean r2 = r11.b(r6)
            if (r2 == 0) goto L_0x00dd
            byte[] r2 = r11.c
            int r3 = r11.g
            byte r2 = r2[r3]
            r2 = r2 & 255(0xff, float:3.57E-43)
            int r2 = r2 << 8
            byte[] r3 = r11.c
            int r4 = r11.g
            int r4 = r4 + 1
            byte r3 = r3[r4]
            r3 = r3 & 255(0xff, float:3.57E-43)
            r2 = r2 | r3
            boolean r2 = r11.a((int) r2)
            if (r2 == 0) goto L_0x00dd
            goto L_0x004e
        L_0x0126:
            int r0 = r11.f
            switch(r0) {
                case 1: goto L_0x0133;
                case 2: goto L_0x0137;
                case 3: goto L_0x012b;
                case 4: goto L_0x0143;
                default: goto L_0x012b;
            }
        L_0x012b:
            java.lang.RuntimeException r0 = new java.lang.RuntimeException
            java.lang.String r1 = "Internal error"
            r0.<init>(r1)
            throw r0
        L_0x0133:
            aic r0 = defpackage.aic.UTF8
            goto L_0x0052
        L_0x0137:
            boolean r0 = r11.e
            if (r0 == 0) goto L_0x013f
            aic r0 = defpackage.aic.UTF16_BE
            goto L_0x0052
        L_0x013f:
            aic r0 = defpackage.aic.UTF16_LE
            goto L_0x0052
        L_0x0143:
            boolean r0 = r11.e
            if (r0 == 0) goto L_0x014b
            aic r0 = defpackage.aic.UTF32_BE
            goto L_0x0052
        L_0x014b:
            aic r0 = defpackage.aic.UTF32_LE
            goto L_0x0052
        L_0x014f:
            aiw r7 = new aiw
            ajc r10 = r11.a
            ajc r0 = r11.a
            aic r6 = r0.b()
            int[] r0 = defpackage.aip.AnonymousClass1.a
            int r1 = r6.ordinal()
            r0 = r0[r1]
            switch(r0) {
                case 1: goto L_0x016c;
                case 2: goto L_0x016c;
                case 3: goto L_0x0194;
                case 4: goto L_0x0194;
                case 5: goto L_0x0194;
                default: goto L_0x0164;
            }
        L_0x0164:
            java.lang.RuntimeException r0 = new java.lang.RuntimeException
            java.lang.String r1 = "Internal error"
            r0.<init>(r1)
            throw r0
        L_0x016c:
            aji r0 = new aji
            ajc r1 = r11.a
            java.io.InputStream r2 = r11.b
            byte[] r3 = r11.c
            int r4 = r11.g
            int r5 = r11.h
            ajc r6 = r11.a
            aic r6 = r6.b()
            boolean r6 = r6.b()
            r0.<init>(r1, r2, r3, r4, r5, r6)
            r3 = r0
        L_0x0186:
            ajl r5 = r15.a((boolean) r8, (boolean) r9)
            r0 = r7
            r1 = r10
            r2 = r12
            r4 = r13
            r0.<init>(r1, r2, r3, r4, r5)
            r0 = r7
            goto L_0x0080
        L_0x0194:
            java.io.InputStream r2 = r11.b
            if (r2 != 0) goto L_0x01ad
            java.io.ByteArrayInputStream r0 = new java.io.ByteArrayInputStream
            byte[] r1 = r11.c
            int r2 = r11.g
            int r3 = r11.h
            r0.<init>(r1, r2, r3)
        L_0x01a3:
            java.io.InputStreamReader r3 = new java.io.InputStreamReader
            java.lang.String r1 = r6.a()
            r3.<init>(r0, r1)
            goto L_0x0186
        L_0x01ad:
            int r0 = r11.g
            int r1 = r11.h
            if (r0 >= r1) goto L_0x01c1
            aje r0 = new aje
            ajc r1 = r11.a
            byte[] r3 = r11.c
            int r4 = r11.g
            int r5 = r11.h
            r0.<init>(r1, r2, r3, r4, r5)
            goto L_0x01a3
        L_0x01c1:
            r0 = r2
            goto L_0x01a3
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.aip.a(int, aim, ajk, ajl):aii");
    }
}
