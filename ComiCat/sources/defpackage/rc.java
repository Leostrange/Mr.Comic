package defpackage;

import java.math.BigInteger;

/* renamed from: rc  reason: default package */
/* compiled from: KeyPairDSA */
public final class rc extends rb {
    private static final byte[] m = si.a("-----BEGIN DSA PRIVATE KEY-----");
    private static final byte[] n = si.a("-----END DSA PRIVATE KEY-----");
    private static final byte[] o = si.a("ssh-dss");
    private byte[] g;
    private byte[] h;
    private byte[] i;
    private byte[] j;
    private byte[] k;
    private int l;

    public rc(qw qwVar) {
        this(qwVar, (byte[]) null, (byte[]) null, (byte[]) null, (byte[]) null, (byte[]) null);
    }

    public rc(qw qwVar, byte[] bArr, byte[] bArr2, byte[] bArr3, byte[] bArr4, byte[] bArr5) {
        super(qwVar);
        this.l = 1024;
        this.g = bArr;
        this.h = bArr2;
        this.i = bArr3;
        this.j = bArr4;
        this.k = bArr5;
        if (bArr != null) {
            this.l = new BigInteger(bArr).bitLength();
        }
    }

    static rb a(qw qwVar, qa qaVar) {
        byte[][] a = qaVar.a(7, "invalid key format");
        rc rcVar = new rc(qwVar, a[1], a[2], a[3], a[4], a[5]);
        rcVar.b = new String(a[6]);
        rcVar.a = 0;
        return rcVar;
    }

    /* access modifiers changed from: package-private */
    public final byte[] a() {
        int a = a(1) + 1 + 1 + 1 + a(this.g.length) + this.g.length + 1 + a(this.h.length) + this.h.length + 1 + a(this.i.length) + this.i.length + 1 + a(this.j.length) + this.j.length + 1 + a(this.k.length) + this.k.length;
        byte[] bArr = new byte[(a(a) + 1 + a)];
        a(bArr, a(bArr, a(bArr, a(bArr, a(bArr, a(bArr, a(bArr, a), new byte[1]), this.g), this.h), this.i), this.j), this.k);
        return bArr;
    }

    public final byte[] a(byte[] bArr) {
        try {
            return qa.a(new byte[][]{o, ((sb) Class.forName(qw.a("signature.dss")).newInstance()).a()}).b;
        } catch (Exception e) {
            return null;
        }
    }

    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r2v10, resolved type: byte} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r2v11, resolved type: byte} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r4v39, resolved type: byte} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r4v40, resolved type: byte} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r4v42, resolved type: byte} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r2v85, resolved type: byte} */
    /* JADX WARNING: type inference failed for: r5v11, types: [int] */
    /* access modifiers changed from: package-private */
    /* JADX WARNING: Multi-variable type inference failed */
    /* JADX WARNING: Unknown variable types count: 1 */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final boolean b(byte[] r7) {
        /*
            r6 = this;
            r4 = 48
            r3 = 2
            r0 = 1
            r1 = 0
            int r2 = r6.a     // Catch:{ Exception -> 0x0192 }
            if (r2 != r0) goto L_0x0048
            r2 = 0
            byte r2 = r7[r2]     // Catch:{ Exception -> 0x0192 }
            if (r2 == r4) goto L_0x0046
            qa r2 = new qa     // Catch:{ Exception -> 0x0192 }
            r2.<init>((byte[]) r7)     // Catch:{ Exception -> 0x0192 }
            r2.b()     // Catch:{ Exception -> 0x0192 }
            byte[] r3 = r2.f()     // Catch:{ Exception -> 0x0192 }
            r6.g = r3     // Catch:{ Exception -> 0x0192 }
            byte[] r3 = r2.f()     // Catch:{ Exception -> 0x0192 }
            r6.i = r3     // Catch:{ Exception -> 0x0192 }
            byte[] r3 = r2.f()     // Catch:{ Exception -> 0x0192 }
            r6.h = r3     // Catch:{ Exception -> 0x0192 }
            byte[] r3 = r2.f()     // Catch:{ Exception -> 0x0192 }
            r6.j = r3     // Catch:{ Exception -> 0x0192 }
            byte[] r2 = r2.f()     // Catch:{ Exception -> 0x0192 }
            r6.k = r2     // Catch:{ Exception -> 0x0192 }
            byte[] r2 = r6.g     // Catch:{ Exception -> 0x0192 }
            if (r2 == 0) goto L_0x0045
            java.math.BigInteger r2 = new java.math.BigInteger     // Catch:{ Exception -> 0x0192 }
            byte[] r3 = r6.g     // Catch:{ Exception -> 0x0192 }
            r2.<init>(r3)     // Catch:{ Exception -> 0x0192 }
            int r2 = r2.bitLength()     // Catch:{ Exception -> 0x0192 }
            r6.l = r2     // Catch:{ Exception -> 0x0192 }
        L_0x0045:
            return r0
        L_0x0046:
            r0 = r1
            goto L_0x0045
        L_0x0048:
            int r2 = r6.a     // Catch:{ Exception -> 0x0192 }
            if (r2 != r3) goto L_0x0065
            qa r2 = new qa     // Catch:{ Exception -> 0x0192 }
            r2.<init>((byte[]) r7)     // Catch:{ Exception -> 0x0192 }
            int r3 = r7.length     // Catch:{ Exception -> 0x0192 }
            r2.b((int) r3)     // Catch:{ Exception -> 0x0192 }
            r3 = 1
            java.lang.String r4 = ""
            byte[][] r2 = r2.a((int) r3, (java.lang.String) r4)     // Catch:{ qy -> 0x0062 }
            r3 = 0
            r2 = r2[r3]     // Catch:{ qy -> 0x0062 }
            r6.k = r2     // Catch:{ qy -> 0x0062 }
            goto L_0x0045
        L_0x0062:
            r0 = move-exception
            r0 = r1
            goto L_0x0045
        L_0x0065:
            r2 = 0
            byte r2 = r7[r2]     // Catch:{ Exception -> 0x0192 }
            if (r2 == r4) goto L_0x006c
            r0 = r1
            goto L_0x0045
        L_0x006c:
            r2 = 1
            byte r2 = r7[r2]     // Catch:{ Exception -> 0x0192 }
            r2 = r2 & 255(0xff, float:3.57E-43)
            r4 = r2 & 128(0x80, float:1.794E-43)
            if (r4 == 0) goto L_0x0081
            r2 = r2 & 127(0x7f, float:1.78E-43)
            r4 = r2
            r2 = r3
        L_0x0079:
            int r5 = r4 + -1
            if (r4 <= 0) goto L_0x0082
            int r2 = r2 + 1
            r4 = r5
            goto L_0x0079
        L_0x0081:
            r2 = r3
        L_0x0082:
            byte r4 = r7[r2]     // Catch:{ Exception -> 0x0192 }
            if (r4 == r3) goto L_0x0088
            r0 = r1
            goto L_0x0045
        L_0x0088:
            int r2 = r2 + 1
            int r3 = r2 + 1
            byte r2 = r7[r2]     // Catch:{ Exception -> 0x0192 }
            r2 = r2 & 255(0xff, float:3.57E-43)
            r4 = r2 & 128(0x80, float:1.794E-43)
            if (r4 == 0) goto L_0x00a8
            r2 = r2 & 127(0x7f, float:1.78E-43)
            r4 = r2
            r2 = r1
        L_0x0098:
            int r5 = r4 + -1
            if (r4 <= 0) goto L_0x00a8
            int r2 = r2 << 8
            int r4 = r3 + 1
            byte r3 = r7[r3]     // Catch:{ Exception -> 0x0192 }
            r3 = r3 & 255(0xff, float:3.57E-43)
            int r2 = r2 + r3
            r3 = r4
            r4 = r5
            goto L_0x0098
        L_0x00a8:
            int r2 = r2 + r3
            int r2 = r2 + 1
            int r3 = r2 + 1
            byte r2 = r7[r2]     // Catch:{ Exception -> 0x0192 }
            r2 = r2 & 255(0xff, float:3.57E-43)
            r4 = r2 & 128(0x80, float:1.794E-43)
            if (r4 == 0) goto L_0x00c9
            r2 = r2 & 127(0x7f, float:1.78E-43)
            r4 = r2
            r2 = r1
        L_0x00b9:
            int r5 = r4 + -1
            if (r4 <= 0) goto L_0x00c9
            int r2 = r2 << 8
            int r4 = r3 + 1
            byte r3 = r7[r3]     // Catch:{ Exception -> 0x0192 }
            r3 = r3 & 255(0xff, float:3.57E-43)
            int r2 = r2 + r3
            r3 = r4
            r4 = r5
            goto L_0x00b9
        L_0x00c9:
            byte[] r4 = new byte[r2]     // Catch:{ Exception -> 0x0192 }
            r6.g = r4     // Catch:{ Exception -> 0x0192 }
            byte[] r4 = r6.g     // Catch:{ Exception -> 0x0192 }
            r5 = 0
            java.lang.System.arraycopy(r7, r3, r4, r5, r2)     // Catch:{ Exception -> 0x0192 }
            int r2 = r2 + r3
            int r2 = r2 + 1
            int r3 = r2 + 1
            byte r2 = r7[r2]     // Catch:{ Exception -> 0x0192 }
            r2 = r2 & 255(0xff, float:3.57E-43)
            r4 = r2 & 128(0x80, float:1.794E-43)
            if (r4 == 0) goto L_0x00f4
            r2 = r2 & 127(0x7f, float:1.78E-43)
            r4 = r2
            r2 = r1
        L_0x00e4:
            int r5 = r4 + -1
            if (r4 <= 0) goto L_0x00f4
            int r2 = r2 << 8
            int r4 = r3 + 1
            byte r3 = r7[r3]     // Catch:{ Exception -> 0x0192 }
            r3 = r3 & 255(0xff, float:3.57E-43)
            int r2 = r2 + r3
            r3 = r4
            r4 = r5
            goto L_0x00e4
        L_0x00f4:
            byte[] r4 = new byte[r2]     // Catch:{ Exception -> 0x0192 }
            r6.h = r4     // Catch:{ Exception -> 0x0192 }
            byte[] r4 = r6.h     // Catch:{ Exception -> 0x0192 }
            r5 = 0
            java.lang.System.arraycopy(r7, r3, r4, r5, r2)     // Catch:{ Exception -> 0x0192 }
            int r2 = r2 + r3
            int r2 = r2 + 1
            int r3 = r2 + 1
            byte r2 = r7[r2]     // Catch:{ Exception -> 0x0192 }
            r2 = r2 & 255(0xff, float:3.57E-43)
            r4 = r2 & 128(0x80, float:1.794E-43)
            if (r4 == 0) goto L_0x011f
            r2 = r2 & 127(0x7f, float:1.78E-43)
            r4 = r2
            r2 = r1
        L_0x010f:
            int r5 = r4 + -1
            if (r4 <= 0) goto L_0x011f
            int r2 = r2 << 8
            int r4 = r3 + 1
            byte r3 = r7[r3]     // Catch:{ Exception -> 0x0192 }
            r3 = r3 & 255(0xff, float:3.57E-43)
            int r2 = r2 + r3
            r3 = r4
            r4 = r5
            goto L_0x010f
        L_0x011f:
            byte[] r4 = new byte[r2]     // Catch:{ Exception -> 0x0192 }
            r6.i = r4     // Catch:{ Exception -> 0x0192 }
            byte[] r4 = r6.i     // Catch:{ Exception -> 0x0192 }
            r5 = 0
            java.lang.System.arraycopy(r7, r3, r4, r5, r2)     // Catch:{ Exception -> 0x0192 }
            int r2 = r2 + r3
            int r2 = r2 + 1
            int r3 = r2 + 1
            byte r2 = r7[r2]     // Catch:{ Exception -> 0x0192 }
            r2 = r2 & 255(0xff, float:3.57E-43)
            r4 = r2 & 128(0x80, float:1.794E-43)
            if (r4 == 0) goto L_0x014a
            r2 = r2 & 127(0x7f, float:1.78E-43)
            r4 = r2
            r2 = r1
        L_0x013a:
            int r5 = r4 + -1
            if (r4 <= 0) goto L_0x014a
            int r2 = r2 << 8
            int r4 = r3 + 1
            byte r3 = r7[r3]     // Catch:{ Exception -> 0x0192 }
            r3 = r3 & 255(0xff, float:3.57E-43)
            int r2 = r2 + r3
            r3 = r4
            r4 = r5
            goto L_0x013a
        L_0x014a:
            byte[] r4 = new byte[r2]     // Catch:{ Exception -> 0x0192 }
            r6.j = r4     // Catch:{ Exception -> 0x0192 }
            byte[] r4 = r6.j     // Catch:{ Exception -> 0x0192 }
            r5 = 0
            java.lang.System.arraycopy(r7, r3, r4, r5, r2)     // Catch:{ Exception -> 0x0192 }
            int r2 = r2 + r3
            int r2 = r2 + 1
            int r3 = r2 + 1
            byte r2 = r7[r2]     // Catch:{ Exception -> 0x0192 }
            r2 = r2 & 255(0xff, float:3.57E-43)
            r4 = r2 & 128(0x80, float:1.794E-43)
            if (r4 == 0) goto L_0x0175
            r2 = r2 & 127(0x7f, float:1.78E-43)
            r4 = r2
            r2 = r1
        L_0x0165:
            int r5 = r4 + -1
            if (r4 <= 0) goto L_0x0175
            int r2 = r2 << 8
            int r4 = r3 + 1
            byte r3 = r7[r3]     // Catch:{ Exception -> 0x0192 }
            r3 = r3 & 255(0xff, float:3.57E-43)
            int r2 = r2 + r3
            r3 = r4
            r4 = r5
            goto L_0x0165
        L_0x0175:
            byte[] r4 = new byte[r2]     // Catch:{ Exception -> 0x0192 }
            r6.k = r4     // Catch:{ Exception -> 0x0192 }
            byte[] r4 = r6.k     // Catch:{ Exception -> 0x0192 }
            r5 = 0
            java.lang.System.arraycopy(r7, r3, r4, r5, r2)     // Catch:{ Exception -> 0x0192 }
            byte[] r2 = r6.g     // Catch:{ Exception -> 0x0192 }
            if (r2 == 0) goto L_0x0045
            java.math.BigInteger r2 = new java.math.BigInteger     // Catch:{ Exception -> 0x0192 }
            byte[] r3 = r6.g     // Catch:{ Exception -> 0x0192 }
            r2.<init>(r3)     // Catch:{ Exception -> 0x0192 }
            int r2 = r2.bitLength()     // Catch:{ Exception -> 0x0192 }
            r6.l = r2     // Catch:{ Exception -> 0x0192 }
            goto L_0x0045
        L_0x0192:
            r0 = move-exception
            r0 = r1
            goto L_0x0045
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.rc.b(byte[]):boolean");
    }

    public final byte[] b() {
        byte[] b = super.b();
        if (b != null) {
            return b;
        }
        if (this.g == null) {
            return null;
        }
        return qa.a(new byte[][]{o, this.g, this.h, this.i, this.j}).b;
    }

    public final void d() {
        super.d();
        si.b(this.k);
    }
}
