package defpackage;

import android.support.v4.app.NotificationCompat;

/* renamed from: rd  reason: default package */
/* compiled from: KeyPairECDSA */
public final class rd extends rb {
    private static byte[][] g = {new byte[]{6, 8, 42, -122, 72, -50, 61, 3, 1, 7}, new byte[]{6, 5, 43, -127, 4, 0, 34}, new byte[]{6, 5, 43, -127, 4, 0, 35}};
    private static String[] h = {"nistp256", "nistp384", "nistp521"};
    private static final byte[] n = si.a("-----BEGIN EC PRIVATE KEY-----");
    private static final byte[] o = si.a("-----END EC PRIVATE KEY-----");
    private byte[] i;
    private byte[] j;
    private byte[] k;
    private byte[] l;
    private int m;

    public rd(qw qwVar) {
        this(qwVar, (byte[]) null, (byte[]) null, (byte[]) null, (byte[]) null);
    }

    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    private rd(qw qwVar, byte[] bArr, byte[] bArr2, byte[] bArr3, byte[] bArr4) {
        super(qwVar);
        int i2 = NotificationCompat.FLAG_LOCAL_ONLY;
        this.i = si.a(h[0]);
        this.m = NotificationCompat.FLAG_LOCAL_ONLY;
        if (bArr != null) {
            this.i = bArr;
        }
        this.j = bArr2;
        this.k = bArr3;
        this.l = bArr4;
        if (bArr4 != null) {
            if (bArr4.length >= 64) {
                i2 = 521;
            } else if (bArr4.length >= 48) {
                i2 = 384;
            }
            this.m = i2;
        }
    }

    static rb a(qw qwVar, qa qaVar) {
        byte[][] a = qaVar.a(5, "invalid key format");
        byte[] bArr = a[1];
        byte[][] d = d(a[2]);
        rd rdVar = new rd(qwVar, bArr, d[0], d[1], a[3]);
        rdVar.b = new String(a[4]);
        rdVar.a = 0;
        return rdVar;
    }

    private static byte[][] d(byte[] bArr) {
        int i2 = 0;
        while (bArr[i2] != 4) {
            i2++;
        }
        int i3 = i2 + 1;
        byte[] bArr2 = new byte[((bArr.length - i3) / 2)];
        byte[] bArr3 = new byte[((bArr.length - i3) / 2)];
        System.arraycopy(bArr, i3, bArr2, 0, bArr2.length);
        System.arraycopy(bArr, i3 + bArr2.length, bArr3, 0, bArr3.length);
        return new byte[][]{bArr2, bArr3};
    }

    /* access modifiers changed from: package-private */
    public final byte[] a() {
        byte[] bArr = {1};
        byte[] bArr2 = g[this.j.length >= 64 ? 2 : this.j.length >= 48 ? (char) 1 : 0];
        byte[] bArr3 = this.j;
        byte[] bArr4 = this.k;
        byte[] bArr5 = new byte[(bArr3.length + 1 + bArr4.length)];
        bArr5[0] = 4;
        System.arraycopy(bArr3, 0, bArr5, 1, bArr3.length);
        System.arraycopy(bArr4, 0, bArr5, bArr3.length + 1, bArr4.length);
        int i2 = ((bArr5.length + 1) & NotificationCompat.FLAG_HIGH_PRIORITY) == 0 ? 3 : 4;
        byte[] bArr6 = new byte[(bArr5.length + i2)];
        System.arraycopy(bArr5, 0, bArr6, i2, bArr5.length);
        bArr6[0] = 3;
        if (i2 == 3) {
            bArr6[1] = (byte) (bArr5.length + 1);
        } else {
            bArr6[1] = -127;
            bArr6[2] = (byte) (bArr5.length + 1);
        }
        int a = a(1) + 1 + 1 + 1 + a(this.l.length) + this.l.length + 1 + a(bArr2.length) + bArr2.length + 1 + a(bArr6.length) + bArr6.length;
        byte[] bArr7 = new byte[(a(a) + 1 + a)];
        int a2 = a(bArr7, a(bArr7, a), bArr);
        byte[] bArr8 = this.l;
        bArr7[a2] = 4;
        int a3 = rb.a(bArr7, a2 + 1, bArr8.length);
        System.arraycopy(bArr8, 0, bArr7, a3, bArr8.length);
        a(bArr7, (byte) -95, a(bArr7, (byte) -96, a3 + bArr8.length, bArr2), bArr6);
        return bArr7;
    }

    public final byte[] a(byte[] bArr) {
        try {
            return qa.a(new byte[][]{si.a("ecdsa-sha2-" + new String(this.i)), ((sc) Class.forName(qw.a("signature.ecdsa")).newInstance()).a()}).b;
        } catch (Exception e) {
            return null;
        }
    }

    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r2v10, resolved type: byte} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r2v11, resolved type: byte} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r4v23, resolved type: byte} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r4v24, resolved type: byte} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r4v26, resolved type: byte} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r2v67, resolved type: byte} */
    /* JADX WARNING: type inference failed for: r5v12, types: [int] */
    /* access modifiers changed from: package-private */
    /* JADX WARNING: Multi-variable type inference failed */
    /* JADX WARNING: Unknown variable types count: 1 */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final boolean b(byte[] r8) {
        /*
            r7 = this;
            r6 = 48
            r3 = 2
            r1 = 1
            r0 = 0
            int r2 = r7.a     // Catch:{ Exception -> 0x010e }
            if (r2 != r1) goto L_0x000a
        L_0x0009:
            return r0
        L_0x000a:
            int r2 = r7.a     // Catch:{ Exception -> 0x010e }
            if (r2 == r3) goto L_0x0009
            r2 = 0
            byte r2 = r8[r2]     // Catch:{ Exception -> 0x010e }
            if (r2 != r6) goto L_0x0009
            r2 = 1
            byte r2 = r8[r2]     // Catch:{ Exception -> 0x010e }
            r2 = r2 & 255(0xff, float:3.57E-43)
            r4 = r2 & 128(0x80, float:1.794E-43)
            if (r4 == 0) goto L_0x0028
            r2 = r2 & 127(0x7f, float:1.78E-43)
            r4 = r2
            r2 = r3
        L_0x0020:
            int r5 = r4 + -1
            if (r4 <= 0) goto L_0x0029
            int r2 = r2 + 1
            r4 = r5
            goto L_0x0020
        L_0x0028:
            r2 = r3
        L_0x0029:
            byte r4 = r8[r2]     // Catch:{ Exception -> 0x010e }
            if (r4 != r3) goto L_0x0009
            int r2 = r2 + 1
            int r3 = r2 + 1
            byte r2 = r8[r2]     // Catch:{ Exception -> 0x010e }
            r2 = r2 & 255(0xff, float:3.57E-43)
            r4 = r2 & 128(0x80, float:1.794E-43)
            if (r4 == 0) goto L_0x004d
            r2 = r2 & 127(0x7f, float:1.78E-43)
            r4 = r2
            r2 = r0
        L_0x003d:
            int r5 = r4 + -1
            if (r4 <= 0) goto L_0x004d
            int r2 = r2 << 8
            int r4 = r3 + 1
            byte r3 = r8[r3]     // Catch:{ Exception -> 0x010e }
            r3 = r3 & 255(0xff, float:3.57E-43)
            int r2 = r2 + r3
            r3 = r4
            r4 = r5
            goto L_0x003d
        L_0x004d:
            int r2 = r2 + r3
            int r2 = r2 + 1
            int r3 = r2 + 1
            byte r2 = r8[r2]     // Catch:{ Exception -> 0x010e }
            r2 = r2 & 255(0xff, float:3.57E-43)
            r4 = r2 & 128(0x80, float:1.794E-43)
            if (r4 == 0) goto L_0x006e
            r2 = r2 & 127(0x7f, float:1.78E-43)
            r4 = r2
            r2 = r0
        L_0x005e:
            int r5 = r4 + -1
            if (r4 <= 0) goto L_0x006e
            int r2 = r2 << 8
            int r4 = r3 + 1
            byte r3 = r8[r3]     // Catch:{ Exception -> 0x010e }
            r3 = r3 & 255(0xff, float:3.57E-43)
            int r2 = r2 + r3
            r3 = r4
            r4 = r5
            goto L_0x005e
        L_0x006e:
            byte[] r4 = new byte[r2]     // Catch:{ Exception -> 0x010e }
            r7.l = r4     // Catch:{ Exception -> 0x010e }
            byte[] r4 = r7.l     // Catch:{ Exception -> 0x010e }
            r5 = 0
            java.lang.System.arraycopy(r8, r3, r4, r5, r2)     // Catch:{ Exception -> 0x010e }
            int r2 = r2 + r3
            int r2 = r2 + 1
            int r3 = r2 + 1
            byte r2 = r8[r2]     // Catch:{ Exception -> 0x010e }
            r2 = r2 & 255(0xff, float:3.57E-43)
            r4 = r2 & 128(0x80, float:1.794E-43)
            if (r4 == 0) goto L_0x0099
            r2 = r2 & 127(0x7f, float:1.78E-43)
            r4 = r2
            r2 = r0
        L_0x0089:
            int r5 = r4 + -1
            if (r4 <= 0) goto L_0x0099
            int r2 = r2 << 8
            int r4 = r3 + 1
            byte r3 = r8[r3]     // Catch:{ Exception -> 0x010e }
            r3 = r3 & 255(0xff, float:3.57E-43)
            int r2 = r2 + r3
            r3 = r4
            r4 = r5
            goto L_0x0089
        L_0x0099:
            byte[] r4 = new byte[r2]     // Catch:{ Exception -> 0x010e }
            r5 = 0
            java.lang.System.arraycopy(r8, r3, r4, r5, r2)     // Catch:{ Exception -> 0x010e }
            int r3 = r3 + r2
            r2 = r0
        L_0x00a1:
            byte[][] r5 = g     // Catch:{ Exception -> 0x010e }
            int r5 = r5.length     // Catch:{ Exception -> 0x010e }
            if (r2 >= r5) goto L_0x00ba
            byte[][] r5 = g     // Catch:{ Exception -> 0x010e }
            r5 = r5[r2]     // Catch:{ Exception -> 0x010e }
            boolean r5 = defpackage.si.a((byte[]) r5, (byte[]) r4)     // Catch:{ Exception -> 0x010e }
            if (r5 == 0) goto L_0x00da
            java.lang.String[] r4 = h     // Catch:{ Exception -> 0x010e }
            r2 = r4[r2]     // Catch:{ Exception -> 0x010e }
            byte[] r2 = defpackage.si.a((java.lang.String) r2)     // Catch:{ Exception -> 0x010e }
            r7.i = r2     // Catch:{ Exception -> 0x010e }
        L_0x00ba:
            int r2 = r3 + 1
            int r3 = r2 + 1
            byte r2 = r8[r2]     // Catch:{ Exception -> 0x010e }
            r2 = r2 & 255(0xff, float:3.57E-43)
            r4 = r2 & 128(0x80, float:1.794E-43)
            if (r4 == 0) goto L_0x00dd
            r2 = r2 & 127(0x7f, float:1.78E-43)
            r4 = r2
            r2 = r0
        L_0x00ca:
            int r5 = r4 + -1
            if (r4 <= 0) goto L_0x00dd
            int r2 = r2 << 8
            int r4 = r3 + 1
            byte r3 = r8[r3]     // Catch:{ Exception -> 0x010e }
            r3 = r3 & 255(0xff, float:3.57E-43)
            int r2 = r2 + r3
            r3 = r4
            r4 = r5
            goto L_0x00ca
        L_0x00da:
            int r2 = r2 + 1
            goto L_0x00a1
        L_0x00dd:
            byte[] r4 = new byte[r2]     // Catch:{ Exception -> 0x010e }
            r5 = 0
            java.lang.System.arraycopy(r8, r3, r4, r5, r2)     // Catch:{ Exception -> 0x010e }
            byte[][] r2 = d(r4)     // Catch:{ Exception -> 0x010e }
            r3 = 0
            r3 = r2[r3]     // Catch:{ Exception -> 0x010e }
            r7.j = r3     // Catch:{ Exception -> 0x010e }
            r3 = 1
            r2 = r2[r3]     // Catch:{ Exception -> 0x010e }
            r7.k = r2     // Catch:{ Exception -> 0x010e }
            byte[] r2 = r7.l     // Catch:{ Exception -> 0x010e }
            if (r2 == 0) goto L_0x0100
            byte[] r2 = r7.l     // Catch:{ Exception -> 0x010e }
            int r2 = r2.length     // Catch:{ Exception -> 0x010e }
            r3 = 64
            if (r2 < r3) goto L_0x0103
            r2 = 521(0x209, float:7.3E-43)
        L_0x00fe:
            r7.m = r2     // Catch:{ Exception -> 0x010e }
        L_0x0100:
            r0 = r1
            goto L_0x0009
        L_0x0103:
            byte[] r2 = r7.l     // Catch:{ Exception -> 0x010e }
            int r2 = r2.length     // Catch:{ Exception -> 0x010e }
            if (r2 < r6) goto L_0x010b
            r2 = 384(0x180, float:5.38E-43)
            goto L_0x00fe
        L_0x010b:
            r2 = 256(0x100, float:3.59E-43)
            goto L_0x00fe
        L_0x010e:
            r1 = move-exception
            goto L_0x0009
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.rd.b(byte[]):boolean");
    }

    public final byte[] b() {
        byte[] b = super.b();
        if (b != null) {
            return b;
        }
        if (this.j == null) {
            return null;
        }
        byte[][] bArr = {si.a("ecdsa-sha2-" + new String(this.i)), this.i, new byte[(this.j.length + 1 + this.k.length)]};
        bArr[2][0] = 4;
        System.arraycopy(this.j, 0, bArr[2], 1, this.j.length);
        System.arraycopy(this.k, 0, bArr[2], this.j.length + 1, this.k.length);
        return qa.a(bArr).b;
    }

    public final void d() {
        super.d();
        si.b(this.l);
    }
}
