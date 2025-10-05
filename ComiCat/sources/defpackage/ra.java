package defpackage;

/* renamed from: ra  reason: default package */
/* compiled from: KeyExchange */
public abstract class ra {
    static String a = "diffie-hellman-group1-sha1";
    static String b = "ssh-rsa,ssh-dss";
    static String c = "blowfish-cbc";
    static String d = "blowfish-cbc";
    static String e = "hmac-md5";
    static String f = "hmac-md5";
    static String g = "";
    static String h = "";
    protected ry i = null;
    protected qp j = null;
    protected byte[] k = null;
    protected byte[] l = null;
    protected byte[] m = null;
    protected final int n = 0;
    protected final int o = 1;
    protected final int p = 2;
    int q = 0;
    String r = "";

    protected static String[] a(byte[] bArr, byte[] bArr2) {
        String[] strArr = new String[10];
        qa qaVar = new qa(bArr);
        qaVar.d = 17;
        qa qaVar2 = new qa(bArr2);
        qaVar2.d = 17;
        qw.b();
        int i2 = 0;
        while (true) {
            int i3 = i2;
            if (i3 < 10) {
                byte[] g2 = qaVar.g();
                byte[] g3 = qaVar2.g();
                int i4 = 0;
                int i5 = 0;
                while (true) {
                    if (i4 >= g3.length) {
                        break;
                    }
                    while (i4 < g3.length && g3[i4] != 44) {
                        i4++;
                    }
                    if (i5 == i4) {
                        return null;
                    }
                    String a2 = si.a(g3, i5, i4 - i5);
                    int i6 = 0;
                    int i7 = 0;
                    while (i6 < g2.length) {
                        while (i6 < g2.length && g2[i6] != 44) {
                            i6++;
                        }
                        if (i7 == i6) {
                            return null;
                        }
                        if (a2.equals(si.a(g2, i7, i6 - i7))) {
                            strArr[i3] = a2;
                            break;
                        }
                        i7 = i6 + 1;
                        i6 = i7;
                    }
                    i5 = i4 + 1;
                    i4 = i5;
                }
                if (i4 == 0) {
                    strArr[i3] = "";
                } else if (strArr[i3] == null) {
                    return null;
                }
                i2 = i3 + 1;
            } else {
                qw.b();
                return strArr;
            }
        }
    }

    public abstract boolean a();

    public abstract int b();

    public final String c() {
        qp qpVar;
        try {
            qpVar = (qp) Class.forName(this.i.b("md5")).newInstance();
        } catch (Exception e2) {
            System.err.println("getFingerPrint: " + e2);
            qpVar = null;
        }
        return si.a(qpVar);
    }

    /* access modifiers changed from: package-private */
    public final byte[] d() {
        return this.k;
    }

    /* access modifiers changed from: package-private */
    public final byte[] e() {
        return this.l;
    }

    /* access modifiers changed from: package-private */
    public final qp f() {
        return this.j;
    }

    /* access modifiers changed from: package-private */
    public final byte[] g() {
        return this.m;
    }
}
