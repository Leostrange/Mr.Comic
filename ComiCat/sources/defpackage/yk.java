package defpackage;

import java.net.InetAddress;
import java.net.UnknownHostException;
import java.util.HashMap;

/* renamed from: yk  reason: default package */
/* compiled from: NbtAddress */
public final class yk {
    static final InetAddress[] a = xj.a("jcifs.netbios.wins", ",", new InetAddress[0]);
    static final yf b = new yf("0.0.0.0", 0, (String) null);
    static final yk c = new yk(b, 0, false, 0);
    static final byte[] d = {0, 0, 0, 0, 0, 0};
    static yk e;
    private static final yi q = new yi();
    private static final int r = xj.a("jcifs.netbios.cachePolicy", 30);
    private static int s = 0;
    private static final HashMap t = new HashMap();
    private static final HashMap u = new HashMap();
    public yf f;
    int g;
    int h;
    boolean i;
    boolean j;
    boolean k;
    boolean l;
    boolean m;
    boolean n;
    byte[] o;
    public String p;

    /* renamed from: yk$a */
    /* compiled from: NbtAddress */
    static final class a {
        yf a;
        yk b;
        long c;

        a(yf yfVar, yk ykVar, long j) {
            this.a = yfVar;
            this.b = ykVar;
            this.c = j;
        }
    }

    static {
        InetAddress inetAddress;
        String b2;
        t.put(b, new a(b, c, -1));
        InetAddress inetAddress2 = q.a;
        if (inetAddress2 == null) {
            try {
                inetAddress = InetAddress.getLocalHost();
            } catch (UnknownHostException e2) {
                try {
                    inetAddress = InetAddress.getByName("127.0.0.1");
                } catch (UnknownHostException e3) {
                }
            }
            b2 = xj.b("jcifs.netbios.hostname", (String) null);
            if (b2 == null || b2.length() == 0) {
                byte[] address = inetAddress.getAddress();
                b2 = "JCIFS" + (address[2] & 255) + "_" + (address[3] & 255) + "_" + abw.a((int) (Math.random() * 255.0d), 2);
            }
            yf yfVar = new yf(b2, 0, xj.b("jcifs.netbios.scope", (String) null));
            e = new yk(yfVar, inetAddress.hashCode(), false, 0, false, false, true, false, d);
            a(yfVar, e, -1);
        }
        inetAddress = inetAddress2;
        b2 = xj.b("jcifs.netbios.hostname", (String) null);
        byte[] address2 = inetAddress.getAddress();
        b2 = "JCIFS" + (address2[2] & 255) + "_" + (address2[3] & 255) + "_" + abw.a((int) (Math.random() * 255.0d), 2);
        yf yfVar2 = new yf(b2, 0, xj.b("jcifs.netbios.scope", (String) null));
        e = new yk(yfVar2, inetAddress.hashCode(), false, 0, false, false, true, false, d);
        a(yfVar2, e, -1);
    }

    yk(yf yfVar, int i2, boolean z, int i3) {
        this.f = yfVar;
        this.g = i2;
        this.i = z;
        this.h = i3;
    }

    yk(yf yfVar, int i2, boolean z, int i3, boolean z2, boolean z3, boolean z4, boolean z5, byte[] bArr) {
        this.f = yfVar;
        this.g = i2;
        this.i = z;
        this.h = i3;
        this.j = z2;
        this.k = z3;
        this.l = z4;
        this.m = z5;
        this.o = bArr;
        this.n = true;
    }

    public static yk a() {
        return e;
    }

    public static yk a(String str) {
        return a(str, 0, (String) null, (InetAddress) null);
    }

    public static yk a(String str, int i2, String str2, InetAddress inetAddress) {
        int i3;
        if (str == null || str.length() == 0) {
            return e;
        }
        if (!Character.isDigit(str.charAt(0))) {
            return a(new yf(str, i2, str2), inetAddress);
        }
        char[] charArray = str.toCharArray();
        int i4 = 0;
        int i5 = 0;
        for (int i6 = 0; i6 < charArray.length; i6 = i3 + 1) {
            char c2 = charArray[i6];
            if (c2 < '0' || c2 > '9') {
                return a(new yf(str, i2, str2), inetAddress);
            }
            char c3 = c2;
            i3 = i6;
            int i7 = 0;
            while (c3 != '.') {
                if (c3 >= '0' && c3 <= '9') {
                    i7 = ((i7 * 10) + c3) - 48;
                    i3++;
                    if (i3 >= charArray.length) {
                        break;
                    }
                    c3 = charArray[i3];
                } else {
                    return a(new yf(str, i2, str2), inetAddress);
                }
            }
            if (i7 > 255) {
                return a(new yf(str, i2, str2), inetAddress);
            }
            i5 = (i5 << 8) + i7;
            i4++;
        }
        return (i4 != 4 || str.endsWith(".")) ? a(new yf(str, i2, str2), inetAddress) : new yk(b, i5, false, 0);
    }

    private static yk a(yf yfVar) {
        yk ykVar;
        if (r == 0) {
            return null;
        }
        synchronized (t) {
            a aVar = (a) t.get(yfVar);
            if (aVar != null && aVar.c < System.currentTimeMillis() && aVar.c >= 0) {
                aVar = null;
            }
            ykVar = aVar != null ? aVar.b : null;
        }
        return ykVar;
    }

    /* JADX WARNING: Code restructure failed: missing block: B:8:0x001a, code lost:
        r0 = (defpackage.yk) b(r2);
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private static defpackage.yk a(defpackage.yf r2, java.net.InetAddress r3) {
        /*
            int r0 = r2.d
            r1 = 29
            if (r0 != r1) goto L_0x000c
            if (r3 != 0) goto L_0x000c
            yi r0 = q
            java.net.InetAddress r3 = r0.b
        L_0x000c:
            if (r3 == 0) goto L_0x003c
            int r0 = r3.hashCode()
        L_0x0012:
            r2.e = r0
            yk r0 = a((defpackage.yf) r2)
            if (r0 != 0) goto L_0x002e
            java.lang.Object r0 = b((defpackage.yf) r2)
            yk r0 = (defpackage.yk) r0
            if (r0 != 0) goto L_0x002e
            yi r1 = q     // Catch:{ UnknownHostException -> 0x003e }
            yk r0 = r1.a(r2, r3)     // Catch:{ UnknownHostException -> 0x003e }
            a((defpackage.yf) r2, (defpackage.yk) r0)
            c(r2)
        L_0x002e:
            yk r1 = c
            if (r0 != r1) goto L_0x0050
            java.net.UnknownHostException r0 = new java.net.UnknownHostException
            java.lang.String r1 = r2.toString()
            r0.<init>(r1)
            throw r0
        L_0x003c:
            r0 = 0
            goto L_0x0012
        L_0x003e:
            r1 = move-exception
            yk r0 = c     // Catch:{ all -> 0x0048 }
            a((defpackage.yf) r2, (defpackage.yk) r0)
            c(r2)
            goto L_0x002e
        L_0x0048:
            r1 = move-exception
            a((defpackage.yf) r2, (defpackage.yk) r0)
            c(r2)
            throw r1
        L_0x0050:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.yk.a(yf, java.net.InetAddress):yk");
    }

    private static void a(yf yfVar, yk ykVar) {
        if (r != 0) {
            long j2 = -1;
            if (r != -1) {
                j2 = System.currentTimeMillis() + ((long) (r * 1000));
            }
            a(yfVar, ykVar, j2);
        }
    }

    private static void a(yf yfVar, yk ykVar, long j2) {
        if (r != 0) {
            synchronized (t) {
                a aVar = (a) t.get(yfVar);
                if (aVar == null) {
                    t.put(yfVar, new a(yfVar, ykVar, j2));
                } else {
                    aVar.b = ykVar;
                    aVar.c = j2;
                }
            }
        }
    }

    public static boolean a(InetAddress inetAddress) {
        int i2 = 0;
        while (inetAddress != null && i2 < a.length) {
            if (inetAddress.hashCode() == a[i2].hashCode()) {
                return true;
            }
            i2++;
        }
        return false;
    }

    private static Object b(yf yfVar) {
        yk a2;
        synchronized (u) {
            if (!u.containsKey(yfVar)) {
                u.put(yfVar, yfVar);
                a2 = null;
            } else {
                while (u.containsKey(yfVar)) {
                    try {
                        u.wait();
                    } catch (InterruptedException e2) {
                    }
                }
                a2 = a(yfVar);
                if (a2 == null) {
                    synchronized (u) {
                        u.put(yfVar, yfVar);
                    }
                }
            }
        }
        return a2;
    }

    public static yf b() {
        return e.f;
    }

    public static yk b(String str) {
        return a(str, 1, (String) null, (InetAddress) null);
    }

    public static InetAddress c() {
        if (a.length == 0) {
            return null;
        }
        return a[s];
    }

    private static void c(yf yfVar) {
        synchronized (u) {
            u.remove(yfVar);
            u.notifyAll();
        }
    }

    static InetAddress d() {
        s = s + 1 < a.length ? s + 1 : 0;
        if (a.length == 0) {
            return null;
        }
        return a[s];
    }

    public final String e() {
        if (this.p == this.f.b) {
            this.p = "*SMBSERVER     ";
        } else {
            if (this.p == "*SMBSERVER     ") {
                try {
                    yk[] a2 = q.a(this);
                    if (this.f.d == 29) {
                        for (int i2 = 0; i2 < a2.length; i2++) {
                            if (a2[i2].f.d == 32) {
                                return a2[i2].f.b;
                            }
                        }
                        return null;
                    } else if (this.n) {
                        this.p = null;
                        return this.f.b;
                    }
                } catch (UnknownHostException e2) {
                }
            }
            this.p = null;
        }
        return this.p;
    }

    public final boolean equals(Object obj) {
        return obj != null && (obj instanceof yk) && ((yk) obj).g == this.g;
    }

    public final String f() {
        return this.f == b ? g() : this.f.b;
    }

    public final String g() {
        return ((this.g >>> 24) & 255) + "." + ((this.g >>> 16) & 255) + "." + ((this.g >>> 8) & 255) + "." + ((this.g >>> 0) & 255);
    }

    public final int hashCode() {
        return this.g;
    }

    public final String toString() {
        return this.f.toString() + "/" + g();
    }
}
