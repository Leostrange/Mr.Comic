package defpackage;

import defpackage.rb;
import java.math.BigInteger;
import java.util.Vector;

/* renamed from: re  reason: default package */
/* compiled from: KeyPairPKCS8 */
public final class re extends rb {
    private static final byte[] g = {42, -122, 72, -122, -9, 13, 1, 1, 1};
    private static final byte[] h = {42, -122, 72, -50, 56, 4, 1};
    private static final byte[] i = {42, -122, 72, -122, -9, 13, 1, 5, 13};
    private static final byte[] j = {42, -122, 72, -122, -9, 13, 1, 5, 12};
    private static final byte[] k = {96, -122, 72, 1, 101, 3, 4, 1, 2};
    private static final byte[] l = {96, -122, 72, 1, 101, 3, 4, 1, 22};
    private static final byte[] m = {96, -122, 72, 1, 101, 3, 4, 1, 42};
    private static final byte[] n = {42, -122, 72, -122, -9, 13, 1, 5, 3};
    private static final byte[] p = si.a("-----BEGIN DSA PRIVATE KEY-----");
    private static final byte[] q = si.a("-----END DSA PRIVATE KEY-----");
    private rb o = null;

    public re(qw qwVar) {
        super(qwVar);
    }

    private static ql d(byte[] bArr) {
        try {
            return (ql) Class.forName(qw.a(si.a(bArr, k) ? "aes128-cbc" : si.a(bArr, l) ? "aes192-cbc" : si.a(bArr, m) ? "aes256-cbc" : null)).newInstance();
        } catch (Exception e) {
            qw.b();
            return null;
        }
    }

    /* access modifiers changed from: package-private */
    public final byte[] a() {
        return null;
    }

    public final byte[] a(byte[] bArr) {
        return this.o.a(bArr);
    }

    /* access modifiers changed from: package-private */
    public final boolean b(byte[] bArr) {
        try {
            Vector vector = new Vector();
            rb.a[] b = new rb.a(this, bArr).b();
            rb.a aVar = b[1];
            rb.a aVar2 = b[2];
            rb.a[] b2 = aVar.b();
            byte[] a = b2[0].a();
            rb.a[] b3 = b2[1].b();
            if (b3.length > 0) {
                for (rb.a a2 : b3) {
                    vector.addElement(a2.a());
                }
            }
            byte[] a3 = aVar2.a();
            if (si.a(a, g)) {
                rf rfVar = new rf(this.c);
                rfVar.a((rb) this);
                if (rfVar.b(a3)) {
                    this.o = rfVar;
                }
            } else if (si.a(a, h)) {
                rb.a aVar3 = new rb.a(this, a3);
                if (vector.size() == 0) {
                    rb.a[] b4 = aVar3.b();
                    byte[] a4 = b4[1].a();
                    rb.a[] b5 = b4[0].b();
                    for (rb.a a5 : b5) {
                        vector.addElement(a5.a());
                    }
                    vector.addElement(a4);
                } else {
                    vector.addElement(aVar3.a());
                }
                byte[] bArr2 = (byte[]) vector.elementAt(0);
                byte[] bArr3 = (byte[]) vector.elementAt(1);
                byte[] bArr4 = (byte[]) vector.elementAt(2);
                byte[] bArr5 = (byte[]) vector.elementAt(3);
                byte[] a6 = new rc(this.c, bArr2, bArr3, bArr4, new BigInteger(bArr4).modPow(new BigInteger(bArr5), new BigInteger(bArr2)).toByteArray(), bArr5).a();
                rc rcVar = new rc(this.c);
                rcVar.a((rb) this);
                if (rcVar.b(a6)) {
                    this.o = rcVar;
                }
            }
            return this.o != null;
        } catch (rb.b e) {
            return false;
        } catch (Exception e2) {
            return false;
        }
    }

    public final byte[] b() {
        return this.o.b();
    }

    /* JADX WARNING: Code restructure failed: missing block: B:24:0x00ba, code lost:
        r0 = null;
     */
    /* JADX WARNING: Failed to process nested try/catch */
    /* JADX WARNING: Removed duplicated region for block: B:32:0x00d2 A[ExcHandler: b (e rb$b), Splitter:B:8:0x0016] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final boolean c(byte[] r8) {
        /*
            r7 = this;
            r1 = 1
            r2 = 0
            boolean r0 = r7.c()
            if (r0 != 0) goto L_0x000a
            r0 = r1
        L_0x0009:
            return r0
        L_0x000a:
            if (r8 != 0) goto L_0x0016
            boolean r0 = r7.c()
            if (r0 != 0) goto L_0x0014
            r0 = r1
            goto L_0x0009
        L_0x0014:
            r0 = r2
            goto L_0x0009
        L_0x0016:
            rb$a r0 = new rb$a     // Catch:{ b -> 0x00d2, Exception -> 0x00ce }
            byte[] r3 = r7.f     // Catch:{ b -> 0x00d2, Exception -> 0x00ce }
            r0.<init>(r7, r3)     // Catch:{ b -> 0x00d2, Exception -> 0x00ce }
            rb$a[] r0 = r0.b()     // Catch:{ b -> 0x00d2, Exception -> 0x00ce }
            r3 = 1
            r3 = r0[r3]     // Catch:{ b -> 0x00d2, Exception -> 0x00ce }
            byte[] r4 = r3.a()     // Catch:{ b -> 0x00d2, Exception -> 0x00ce }
            r3 = 0
            r0 = r0[r3]     // Catch:{ b -> 0x00d2, Exception -> 0x00ce }
            rb$a[] r0 = r0.b()     // Catch:{ b -> 0x00d2, Exception -> 0x00ce }
            r3 = 0
            r3 = r0[r3]     // Catch:{ b -> 0x00d2, Exception -> 0x00ce }
            byte[] r3 = r3.a()     // Catch:{ b -> 0x00d2, Exception -> 0x00ce }
            r5 = 1
            r0 = r0[r5]     // Catch:{ b -> 0x00d2, Exception -> 0x00ce }
            byte[] r5 = i     // Catch:{ b -> 0x00d2, Exception -> 0x00ce }
            boolean r5 = defpackage.si.a((byte[]) r3, (byte[]) r5)     // Catch:{ b -> 0x00d2, Exception -> 0x00ce }
            if (r5 == 0) goto L_0x008f
            rb$a[] r0 = r0.b()     // Catch:{ b -> 0x00d2, Exception -> 0x00ce }
            r3 = 0
            r3 = r0[r3]     // Catch:{ b -> 0x00d2, Exception -> 0x00ce }
            r5 = 1
            r0 = r0[r5]     // Catch:{ b -> 0x00d2, Exception -> 0x00ce }
            rb$a[] r3 = r3.b()     // Catch:{ b -> 0x00d2, Exception -> 0x00ce }
            r5 = 0
            r5 = r3[r5]     // Catch:{ b -> 0x00d2, Exception -> 0x00ce }
            r5.a()     // Catch:{ b -> 0x00d2, Exception -> 0x00ce }
            r5 = 1
            r3 = r3[r5]     // Catch:{ b -> 0x00d2, Exception -> 0x00ce }
            rb$a[] r3 = r3.b()     // Catch:{ b -> 0x00d2, Exception -> 0x00ce }
            r5 = 0
            r5 = r3[r5]     // Catch:{ b -> 0x00d2, Exception -> 0x00ce }
            r5.a()     // Catch:{ b -> 0x00d2, Exception -> 0x00ce }
            java.math.BigInteger r5 = new java.math.BigInteger     // Catch:{ b -> 0x00d2, Exception -> 0x00ce }
            r6 = 1
            r3 = r3[r6]     // Catch:{ b -> 0x00d2, Exception -> 0x00ce }
            byte[] r3 = r3.a()     // Catch:{ b -> 0x00d2, Exception -> 0x00ce }
            r5.<init>(r3)     // Catch:{ b -> 0x00d2, Exception -> 0x00ce }
            java.lang.String r3 = r5.toString()     // Catch:{ b -> 0x00d2, Exception -> 0x00ce }
            java.lang.Integer.parseInt(r3)     // Catch:{ b -> 0x00d2, Exception -> 0x00ce }
            rb$a[] r0 = r0.b()     // Catch:{ b -> 0x00d2, Exception -> 0x00ce }
            r3 = 0
            r3 = r0[r3]     // Catch:{ b -> 0x00d2, Exception -> 0x00ce }
            byte[] r3 = r3.a()     // Catch:{ b -> 0x00d2, Exception -> 0x00ce }
            r5 = 1
            r0 = r0[r5]     // Catch:{ b -> 0x00d2, Exception -> 0x00ce }
            r0.a()     // Catch:{ b -> 0x00d2, Exception -> 0x00ce }
            ql r0 = d(r3)     // Catch:{ b -> 0x00d2, Exception -> 0x00ce }
            if (r0 != 0) goto L_0x009d
            r0 = r2
            goto L_0x0009
        L_0x008f:
            byte[] r0 = n     // Catch:{ b -> 0x00d2, Exception -> 0x00ce }
            boolean r0 = defpackage.si.a((byte[]) r3, (byte[]) r0)     // Catch:{ b -> 0x00d2, Exception -> 0x00ce }
            if (r0 == 0) goto L_0x009a
            r0 = r2
            goto L_0x0009
        L_0x009a:
            r0 = r2
            goto L_0x0009
        L_0x009d:
            r3 = 0
            java.lang.String r0 = "pbkdf"
            java.lang.String r0 = defpackage.qw.a((java.lang.String) r0)     // Catch:{ Exception -> 0x00b9, b -> 0x00d2 }
            java.lang.Class r0 = java.lang.Class.forName(r0)     // Catch:{ Exception -> 0x00b9, b -> 0x00d2 }
            java.lang.Object r0 = r0.newInstance()     // Catch:{ Exception -> 0x00b9, b -> 0x00d2 }
            rk r0 = (defpackage.rk) r0     // Catch:{ Exception -> 0x00b9, b -> 0x00d2 }
            rk r0 = (defpackage.rk) r0     // Catch:{ Exception -> 0x00b9, b -> 0x00d2 }
            byte[] r0 = r0.a()     // Catch:{ Exception -> 0x00b9, b -> 0x00d2 }
        L_0x00b4:
            if (r0 != 0) goto L_0x00bc
            r0 = r2
            goto L_0x0009
        L_0x00b9:
            r0 = move-exception
            r0 = r3
            goto L_0x00b4
        L_0x00bc:
            defpackage.si.b((byte[]) r0)     // Catch:{ b -> 0x00d2, Exception -> 0x00ce }
            int r0 = r4.length     // Catch:{ b -> 0x00d2, Exception -> 0x00ce }
            byte[] r0 = new byte[r0]     // Catch:{ b -> 0x00d2, Exception -> 0x00ce }
            boolean r0 = r7.b(r0)     // Catch:{ b -> 0x00d2, Exception -> 0x00ce }
            if (r0 == 0) goto L_0x00cf
            r0 = 0
            r7.e = r0     // Catch:{ b -> 0x00d2, Exception -> 0x00ce }
            r0 = r1
            goto L_0x0009
        L_0x00ce:
            r0 = move-exception
        L_0x00cf:
            r0 = r2
            goto L_0x0009
        L_0x00d2:
            r0 = move-exception
            goto L_0x00cf
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.re.c(byte[]):boolean");
    }
}
