package defpackage;

import java.math.BigInteger;

/* renamed from: rf  reason: default package */
/* compiled from: KeyPairRSA */
public final class rf extends rb {
    private static final byte[] p = si.a("-----BEGIN RSA PRIVATE KEY-----");
    private static final byte[] q = si.a("-----END RSA PRIVATE KEY-----");
    private static final byte[] r = si.a("ssh-rsa");
    private byte[] g;
    private byte[] h;
    private byte[] i;
    private byte[] j;
    private byte[] k;
    private byte[] l;
    private byte[] m;
    private byte[] n;
    private int o;

    public rf(qw qwVar) {
        this(qwVar, (byte[]) null, (byte[]) null, (byte[]) null);
    }

    public rf(qw qwVar, byte[] bArr, byte[] bArr2, byte[] bArr3) {
        super(qwVar);
        this.o = 1024;
        this.g = bArr;
        this.h = bArr2;
        this.i = bArr3;
        if (bArr != null) {
            this.o = new BigInteger(bArr).bitLength();
        }
    }

    static rb a(qw qwVar, qa qaVar) {
        byte[][] a = qaVar.a(8, "invalid key format");
        rf rfVar = new rf(qwVar, a[1], a[2], a[3]);
        rfVar.n = a[4];
        rfVar.j = a[5];
        rfVar.k = a[6];
        rfVar.b = new String(a[7]);
        rfVar.a = 0;
        return rfVar;
    }

    private byte[] e() {
        if (this.l == null) {
            this.l = new BigInteger(this.i).mod(new BigInteger(this.j).subtract(BigInteger.ONE)).toByteArray();
        }
        return this.l;
    }

    private byte[] f() {
        if (this.m == null) {
            this.m = new BigInteger(this.i).mod(new BigInteger(this.k).subtract(BigInteger.ONE)).toByteArray();
        }
        return this.m;
    }

    /* access modifiers changed from: package-private */
    public final byte[] a() {
        int a = a(1) + 1 + 1 + 1 + a(this.g.length) + this.g.length + 1 + a(this.h.length) + this.h.length + 1 + a(this.i.length) + this.i.length + 1 + a(this.j.length) + this.j.length + 1 + a(this.k.length) + this.k.length + 1 + a(this.l.length) + this.l.length + 1 + a(this.m.length) + this.m.length + 1 + a(this.n.length) + this.n.length;
        byte[] bArr = new byte[(a(a) + 1 + a)];
        a(bArr, a(bArr, a(bArr, a(bArr, a(bArr, a(bArr, a(bArr, a(bArr, a(bArr, a(bArr, a), new byte[1]), this.g), this.h), this.i), this.j), this.k), this.l), this.m), this.n);
        return bArr;
    }

    public final byte[] a(byte[] bArr) {
        try {
            return qa.a(new byte[][]{r, ((sd) Class.forName(qw.a("signature.rsa")).newInstance()).a()}).b;
        } catch (Exception e) {
            return null;
        }
    }

    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r2v8, resolved type: byte} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r2v9, resolved type: byte} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r4v59, resolved type: byte} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r4v60, resolved type: byte} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r4v62, resolved type: byte} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r2v117, resolved type: byte} */
    /* JADX WARNING: type inference failed for: r5v17, types: [int] */
    /* access modifiers changed from: package-private */
    /* JADX WARNING: Multi-variable type inference failed */
    /* JADX WARNING: Unknown variable types count: 1 */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final boolean b(byte[] r7) {
        /*
            r6 = this;
            r3 = 2
            r0 = 1
            r1 = 0
            int r2 = r6.a     // Catch:{ Exception -> 0x009a }
            if (r2 != r3) goto L_0x0035
            qa r2 = new qa     // Catch:{ Exception -> 0x009a }
            r2.<init>((byte[]) r7)     // Catch:{ Exception -> 0x009a }
            int r3 = r7.length     // Catch:{ Exception -> 0x009a }
            r2.b((int) r3)     // Catch:{ Exception -> 0x009a }
            r3 = 4
            java.lang.String r4 = ""
            byte[][] r2 = r2.a((int) r3, (java.lang.String) r4)     // Catch:{ qy -> 0x0032 }
            r3 = 0
            r3 = r2[r3]     // Catch:{ qy -> 0x0032 }
            r6.i = r3     // Catch:{ qy -> 0x0032 }
            r3 = 1
            r3 = r2[r3]     // Catch:{ qy -> 0x0032 }
            r6.j = r3     // Catch:{ qy -> 0x0032 }
            r3 = 2
            r3 = r2[r3]     // Catch:{ qy -> 0x0032 }
            r6.k = r3     // Catch:{ qy -> 0x0032 }
            r3 = 3
            r2 = r2[r3]     // Catch:{ qy -> 0x0032 }
            r6.n = r2     // Catch:{ qy -> 0x0032 }
            r6.e()     // Catch:{ Exception -> 0x009a }
            r6.f()     // Catch:{ Exception -> 0x009a }
        L_0x0031:
            return r0
        L_0x0032:
            r0 = move-exception
            r0 = r1
            goto L_0x0031
        L_0x0035:
            int r2 = r6.a     // Catch:{ Exception -> 0x009a }
            if (r2 != r0) goto L_0x009f
            r2 = 0
            byte r2 = r7[r2]     // Catch:{ Exception -> 0x009a }
            r3 = 48
            if (r2 == r3) goto L_0x009d
            qa r2 = new qa     // Catch:{ Exception -> 0x009a }
            r2.<init>((byte[]) r7)     // Catch:{ Exception -> 0x009a }
            byte[] r3 = r2.f()     // Catch:{ Exception -> 0x009a }
            r6.h = r3     // Catch:{ Exception -> 0x009a }
            byte[] r3 = r2.f()     // Catch:{ Exception -> 0x009a }
            r6.i = r3     // Catch:{ Exception -> 0x009a }
            byte[] r3 = r2.f()     // Catch:{ Exception -> 0x009a }
            r6.g = r3     // Catch:{ Exception -> 0x009a }
            r2.f()     // Catch:{ Exception -> 0x009a }
            byte[] r3 = r2.f()     // Catch:{ Exception -> 0x009a }
            r6.j = r3     // Catch:{ Exception -> 0x009a }
            byte[] r2 = r2.f()     // Catch:{ Exception -> 0x009a }
            r6.k = r2     // Catch:{ Exception -> 0x009a }
            byte[] r2 = r6.g     // Catch:{ Exception -> 0x009a }
            if (r2 == 0) goto L_0x0077
            java.math.BigInteger r2 = new java.math.BigInteger     // Catch:{ Exception -> 0x009a }
            byte[] r3 = r6.g     // Catch:{ Exception -> 0x009a }
            r2.<init>(r3)     // Catch:{ Exception -> 0x009a }
            int r2 = r2.bitLength()     // Catch:{ Exception -> 0x009a }
            r6.o = r2     // Catch:{ Exception -> 0x009a }
        L_0x0077:
            r6.e()     // Catch:{ Exception -> 0x009a }
            r6.f()     // Catch:{ Exception -> 0x009a }
            byte[] r2 = r6.n     // Catch:{ Exception -> 0x009a }
            if (r2 != 0) goto L_0x0031
            java.math.BigInteger r2 = new java.math.BigInteger     // Catch:{ Exception -> 0x009a }
            byte[] r3 = r6.k     // Catch:{ Exception -> 0x009a }
            r2.<init>(r3)     // Catch:{ Exception -> 0x009a }
            java.math.BigInteger r3 = new java.math.BigInteger     // Catch:{ Exception -> 0x009a }
            byte[] r4 = r6.j     // Catch:{ Exception -> 0x009a }
            r3.<init>(r4)     // Catch:{ Exception -> 0x009a }
            java.math.BigInteger r2 = r2.modInverse(r3)     // Catch:{ Exception -> 0x009a }
            byte[] r2 = r2.toByteArray()     // Catch:{ Exception -> 0x009a }
            r6.n = r2     // Catch:{ Exception -> 0x009a }
            goto L_0x0031
        L_0x009a:
            r0 = move-exception
            r0 = r1
            goto L_0x0031
        L_0x009d:
            r0 = r1
            goto L_0x0031
        L_0x009f:
            r2 = 1
            byte r2 = r7[r2]     // Catch:{ Exception -> 0x009a }
            r2 = r2 & 255(0xff, float:3.57E-43)
            r4 = r2 & 128(0x80, float:1.794E-43)
            if (r4 == 0) goto L_0x00b4
            r2 = r2 & 127(0x7f, float:1.78E-43)
            r4 = r2
            r2 = r3
        L_0x00ac:
            int r5 = r4 + -1
            if (r4 <= 0) goto L_0x00b5
            int r2 = r2 + 1
            r4 = r5
            goto L_0x00ac
        L_0x00b4:
            r2 = r3
        L_0x00b5:
            byte r4 = r7[r2]     // Catch:{ Exception -> 0x009a }
            if (r4 == r3) goto L_0x00bc
            r0 = r1
            goto L_0x0031
        L_0x00bc:
            int r2 = r2 + 1
            int r3 = r2 + 1
            byte r2 = r7[r2]     // Catch:{ Exception -> 0x009a }
            r2 = r2 & 255(0xff, float:3.57E-43)
            r4 = r2 & 128(0x80, float:1.794E-43)
            if (r4 == 0) goto L_0x00dc
            r2 = r2 & 127(0x7f, float:1.78E-43)
            r4 = r2
            r2 = r1
        L_0x00cc:
            int r5 = r4 + -1
            if (r4 <= 0) goto L_0x00dc
            int r2 = r2 << 8
            int r4 = r3 + 1
            byte r3 = r7[r3]     // Catch:{ Exception -> 0x009a }
            r3 = r3 & 255(0xff, float:3.57E-43)
            int r2 = r2 + r3
            r3 = r4
            r4 = r5
            goto L_0x00cc
        L_0x00dc:
            int r2 = r2 + r3
            int r2 = r2 + 1
            int r3 = r2 + 1
            byte r2 = r7[r2]     // Catch:{ Exception -> 0x009a }
            r2 = r2 & 255(0xff, float:3.57E-43)
            r4 = r2 & 128(0x80, float:1.794E-43)
            if (r4 == 0) goto L_0x00fd
            r2 = r2 & 127(0x7f, float:1.78E-43)
            r4 = r2
            r2 = r1
        L_0x00ed:
            int r5 = r4 + -1
            if (r4 <= 0) goto L_0x00fd
            int r2 = r2 << 8
            int r4 = r3 + 1
            byte r3 = r7[r3]     // Catch:{ Exception -> 0x009a }
            r3 = r3 & 255(0xff, float:3.57E-43)
            int r2 = r2 + r3
            r3 = r4
            r4 = r5
            goto L_0x00ed
        L_0x00fd:
            byte[] r4 = new byte[r2]     // Catch:{ Exception -> 0x009a }
            r6.g = r4     // Catch:{ Exception -> 0x009a }
            byte[] r4 = r6.g     // Catch:{ Exception -> 0x009a }
            r5 = 0
            java.lang.System.arraycopy(r7, r3, r4, r5, r2)     // Catch:{ Exception -> 0x009a }
            int r2 = r2 + r3
            int r2 = r2 + 1
            int r3 = r2 + 1
            byte r2 = r7[r2]     // Catch:{ Exception -> 0x009a }
            r2 = r2 & 255(0xff, float:3.57E-43)
            r4 = r2 & 128(0x80, float:1.794E-43)
            if (r4 == 0) goto L_0x0128
            r2 = r2 & 127(0x7f, float:1.78E-43)
            r4 = r2
            r2 = r1
        L_0x0118:
            int r5 = r4 + -1
            if (r4 <= 0) goto L_0x0128
            int r2 = r2 << 8
            int r4 = r3 + 1
            byte r3 = r7[r3]     // Catch:{ Exception -> 0x009a }
            r3 = r3 & 255(0xff, float:3.57E-43)
            int r2 = r2 + r3
            r3 = r4
            r4 = r5
            goto L_0x0118
        L_0x0128:
            byte[] r4 = new byte[r2]     // Catch:{ Exception -> 0x009a }
            r6.h = r4     // Catch:{ Exception -> 0x009a }
            byte[] r4 = r6.h     // Catch:{ Exception -> 0x009a }
            r5 = 0
            java.lang.System.arraycopy(r7, r3, r4, r5, r2)     // Catch:{ Exception -> 0x009a }
            int r2 = r2 + r3
            int r2 = r2 + 1
            int r3 = r2 + 1
            byte r2 = r7[r2]     // Catch:{ Exception -> 0x009a }
            r2 = r2 & 255(0xff, float:3.57E-43)
            r4 = r2 & 128(0x80, float:1.794E-43)
            if (r4 == 0) goto L_0x0153
            r2 = r2 & 127(0x7f, float:1.78E-43)
            r4 = r2
            r2 = r1
        L_0x0143:
            int r5 = r4 + -1
            if (r4 <= 0) goto L_0x0153
            int r2 = r2 << 8
            int r4 = r3 + 1
            byte r3 = r7[r3]     // Catch:{ Exception -> 0x009a }
            r3 = r3 & 255(0xff, float:3.57E-43)
            int r2 = r2 + r3
            r3 = r4
            r4 = r5
            goto L_0x0143
        L_0x0153:
            byte[] r4 = new byte[r2]     // Catch:{ Exception -> 0x009a }
            r6.i = r4     // Catch:{ Exception -> 0x009a }
            byte[] r4 = r6.i     // Catch:{ Exception -> 0x009a }
            r5 = 0
            java.lang.System.arraycopy(r7, r3, r4, r5, r2)     // Catch:{ Exception -> 0x009a }
            int r2 = r2 + r3
            int r2 = r2 + 1
            int r3 = r2 + 1
            byte r2 = r7[r2]     // Catch:{ Exception -> 0x009a }
            r2 = r2 & 255(0xff, float:3.57E-43)
            r4 = r2 & 128(0x80, float:1.794E-43)
            if (r4 == 0) goto L_0x017e
            r2 = r2 & 127(0x7f, float:1.78E-43)
            r4 = r2
            r2 = r1
        L_0x016e:
            int r5 = r4 + -1
            if (r4 <= 0) goto L_0x017e
            int r2 = r2 << 8
            int r4 = r3 + 1
            byte r3 = r7[r3]     // Catch:{ Exception -> 0x009a }
            r3 = r3 & 255(0xff, float:3.57E-43)
            int r2 = r2 + r3
            r3 = r4
            r4 = r5
            goto L_0x016e
        L_0x017e:
            byte[] r4 = new byte[r2]     // Catch:{ Exception -> 0x009a }
            r6.j = r4     // Catch:{ Exception -> 0x009a }
            byte[] r4 = r6.j     // Catch:{ Exception -> 0x009a }
            r5 = 0
            java.lang.System.arraycopy(r7, r3, r4, r5, r2)     // Catch:{ Exception -> 0x009a }
            int r2 = r2 + r3
            int r2 = r2 + 1
            int r3 = r2 + 1
            byte r2 = r7[r2]     // Catch:{ Exception -> 0x009a }
            r2 = r2 & 255(0xff, float:3.57E-43)
            r4 = r2 & 128(0x80, float:1.794E-43)
            if (r4 == 0) goto L_0x01a9
            r2 = r2 & 127(0x7f, float:1.78E-43)
            r4 = r2
            r2 = r1
        L_0x0199:
            int r5 = r4 + -1
            if (r4 <= 0) goto L_0x01a9
            int r2 = r2 << 8
            int r4 = r3 + 1
            byte r3 = r7[r3]     // Catch:{ Exception -> 0x009a }
            r3 = r3 & 255(0xff, float:3.57E-43)
            int r2 = r2 + r3
            r3 = r4
            r4 = r5
            goto L_0x0199
        L_0x01a9:
            byte[] r4 = new byte[r2]     // Catch:{ Exception -> 0x009a }
            r6.k = r4     // Catch:{ Exception -> 0x009a }
            byte[] r4 = r6.k     // Catch:{ Exception -> 0x009a }
            r5 = 0
            java.lang.System.arraycopy(r7, r3, r4, r5, r2)     // Catch:{ Exception -> 0x009a }
            int r2 = r2 + r3
            int r2 = r2 + 1
            int r3 = r2 + 1
            byte r2 = r7[r2]     // Catch:{ Exception -> 0x009a }
            r2 = r2 & 255(0xff, float:3.57E-43)
            r4 = r2 & 128(0x80, float:1.794E-43)
            if (r4 == 0) goto L_0x01d4
            r2 = r2 & 127(0x7f, float:1.78E-43)
            r4 = r2
            r2 = r1
        L_0x01c4:
            int r5 = r4 + -1
            if (r4 <= 0) goto L_0x01d4
            int r2 = r2 << 8
            int r4 = r3 + 1
            byte r3 = r7[r3]     // Catch:{ Exception -> 0x009a }
            r3 = r3 & 255(0xff, float:3.57E-43)
            int r2 = r2 + r3
            r3 = r4
            r4 = r5
            goto L_0x01c4
        L_0x01d4:
            byte[] r4 = new byte[r2]     // Catch:{ Exception -> 0x009a }
            r6.l = r4     // Catch:{ Exception -> 0x009a }
            byte[] r4 = r6.l     // Catch:{ Exception -> 0x009a }
            r5 = 0
            java.lang.System.arraycopy(r7, r3, r4, r5, r2)     // Catch:{ Exception -> 0x009a }
            int r2 = r2 + r3
            int r2 = r2 + 1
            int r3 = r2 + 1
            byte r2 = r7[r2]     // Catch:{ Exception -> 0x009a }
            r2 = r2 & 255(0xff, float:3.57E-43)
            r4 = r2 & 128(0x80, float:1.794E-43)
            if (r4 == 0) goto L_0x01ff
            r2 = r2 & 127(0x7f, float:1.78E-43)
            r4 = r2
            r2 = r1
        L_0x01ef:
            int r5 = r4 + -1
            if (r4 <= 0) goto L_0x01ff
            int r2 = r2 << 8
            int r4 = r3 + 1
            byte r3 = r7[r3]     // Catch:{ Exception -> 0x009a }
            r3 = r3 & 255(0xff, float:3.57E-43)
            int r2 = r2 + r3
            r3 = r4
            r4 = r5
            goto L_0x01ef
        L_0x01ff:
            byte[] r4 = new byte[r2]     // Catch:{ Exception -> 0x009a }
            r6.m = r4     // Catch:{ Exception -> 0x009a }
            byte[] r4 = r6.m     // Catch:{ Exception -> 0x009a }
            r5 = 0
            java.lang.System.arraycopy(r7, r3, r4, r5, r2)     // Catch:{ Exception -> 0x009a }
            int r2 = r2 + r3
            int r2 = r2 + 1
            int r3 = r2 + 1
            byte r2 = r7[r2]     // Catch:{ Exception -> 0x009a }
            r2 = r2 & 255(0xff, float:3.57E-43)
            r4 = r2 & 128(0x80, float:1.794E-43)
            if (r4 == 0) goto L_0x022a
            r2 = r2 & 127(0x7f, float:1.78E-43)
            r4 = r2
            r2 = r1
        L_0x021a:
            int r5 = r4 + -1
            if (r4 <= 0) goto L_0x022a
            int r2 = r2 << 8
            int r4 = r3 + 1
            byte r3 = r7[r3]     // Catch:{ Exception -> 0x009a }
            r3 = r3 & 255(0xff, float:3.57E-43)
            int r2 = r2 + r3
            r3 = r4
            r4 = r5
            goto L_0x021a
        L_0x022a:
            byte[] r4 = new byte[r2]     // Catch:{ Exception -> 0x009a }
            r6.n = r4     // Catch:{ Exception -> 0x009a }
            byte[] r4 = r6.n     // Catch:{ Exception -> 0x009a }
            r5 = 0
            java.lang.System.arraycopy(r7, r3, r4, r5, r2)     // Catch:{ Exception -> 0x009a }
            byte[] r2 = r6.g     // Catch:{ Exception -> 0x009a }
            if (r2 == 0) goto L_0x0031
            java.math.BigInteger r2 = new java.math.BigInteger     // Catch:{ Exception -> 0x009a }
            byte[] r3 = r6.g     // Catch:{ Exception -> 0x009a }
            r2.<init>(r3)     // Catch:{ Exception -> 0x009a }
            int r2 = r2.bitLength()     // Catch:{ Exception -> 0x009a }
            r6.o = r2     // Catch:{ Exception -> 0x009a }
            goto L_0x0031
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.rf.b(byte[]):boolean");
    }

    public final byte[] b() {
        byte[] b = super.b();
        if (b != null) {
            return b;
        }
        if (this.h == null) {
            return null;
        }
        return qa.a(new byte[][]{r, this.h, this.g}).b;
    }

    public final void d() {
        super.d();
        si.b(this.i);
    }
}
