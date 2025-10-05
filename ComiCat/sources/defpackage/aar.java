package defpackage;

import android.support.v4.app.FragmentTransaction;
import com.box.androidsdk.content.models.BoxUser;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.InetAddress;
import java.net.MalformedURLException;
import java.net.URL;
import java.net.URLConnection;
import java.net.UnknownHostException;
import java.util.ArrayList;
import java.util.HashMap;

/* renamed from: aar  reason: default package */
/* compiled from: SmbFile */
public class aar extends URLConnection implements aap {
    static final int a = ".".hashCode();
    static final int b = "..".hashCode();
    static abx c = abx.a();
    static long d = xj.a("jcifs.smb.client.attrExpirationPeriod", 5000);
    static boolean e = xj.a("jcifs.smb.client.ignoreCopyToException", true);
    protected static yx g = new yx();
    private yy A;
    int f;
    zl h;
    aay i;
    String j;
    int k;
    int l;
    boolean m;
    int n;
    xk[] o;
    int p;
    private String q;
    private String r;
    private long s;
    private long t;
    private long u;
    private long v;
    private long w;
    private boolean x;
    private int y;
    private zp z;

    static {
        try {
            Class.forName("xj");
        } catch (ClassNotFoundException e2) {
            e2.printStackTrace();
        }
    }

    /* JADX WARNING: Illegal instructions before constructor call */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private aar(defpackage.aar r6, java.lang.String r7, int r8, int r9, long r10, long r12, long r14) {
        /*
            r5 = this;
            int r0 = r6.l
            r1 = 2
            if (r0 == r1) goto L_0x0011
            java.net.URL r0 = r6.url
            java.lang.String r0 = r0.getHost()
            int r0 = r0.length()
            if (r0 != 0) goto L_0x007b
        L_0x0011:
            r0 = 2
            r6.l = r0
            r0 = 1
        L_0x0015:
            if (r0 == 0) goto L_0x00a8
            java.net.URL r0 = new java.net.URL
            r1 = 0
            java.lang.StringBuilder r2 = new java.lang.StringBuilder
            java.lang.String r3 = "smb://"
            r2.<init>(r3)
            java.lang.StringBuilder r2 = r2.append(r7)
            java.lang.String r3 = "/"
            java.lang.StringBuilder r2 = r2.append(r3)
            java.lang.String r2 = r2.toString()
            java.net.URLStreamHandler r3 = defpackage.zb.a
            r0.<init>(r1, r2, r3)
        L_0x0034:
            r5.<init>((java.net.URL) r0)
            zl r0 = r6.h
            r5.h = r0
            java.lang.String r0 = r6.r
            if (r0 == 0) goto L_0x0047
            aay r0 = r6.i
            r5.i = r0
            yy r0 = r6.A
            r5.A = r0
        L_0x0047:
            int r0 = r7.length()
            int r0 = r0 + -1
            char r1 = r7.charAt(r0)
            r2 = 47
            if (r1 != r2) goto L_0x005a
            r1 = 0
            java.lang.String r7 = r7.substring(r1, r0)
        L_0x005a:
            java.lang.String r0 = r6.r
            if (r0 != 0) goto L_0x00cc
            java.lang.String r0 = "\\"
            r5.j = r0
        L_0x0062:
            r5.l = r8
            r5.f = r9
            r5.s = r10
            r5.t = r12
            r5.v = r14
            r0 = 1
            r5.x = r0
            long r0 = java.lang.System.currentTimeMillis()
            long r2 = d
            long r0 = r0 + r2
            r5.w = r0
            r5.u = r0
            return
        L_0x007b:
            r6.q()
            java.lang.String r0 = r6.r
            if (r0 != 0) goto L_0x00a5
            xk r0 = r6.l()
            java.lang.Object r1 = r0.a
            boolean r1 = r1 instanceof defpackage.yk
            if (r1 == 0) goto L_0x00a2
            java.lang.Object r0 = r0.a
            yk r0 = (defpackage.yk) r0
            yf r0 = r0.f
            int r0 = r0.d
            r1 = 29
            if (r0 == r1) goto L_0x009c
            r1 = 27
            if (r0 != r1) goto L_0x00a2
        L_0x009c:
            r0 = 2
            r6.l = r0
            r0 = 1
            goto L_0x0015
        L_0x00a2:
            r0 = 4
            r6.l = r0
        L_0x00a5:
            r0 = 0
            goto L_0x0015
        L_0x00a8:
            java.net.URL r1 = new java.net.URL
            java.net.URL r2 = r6.url
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r0.<init>()
            java.lang.StringBuilder r3 = r0.append(r7)
            r0 = r9 & 16
            if (r0 <= 0) goto L_0x00c9
            java.lang.String r0 = "/"
        L_0x00bb:
            java.lang.StringBuilder r0 = r3.append(r0)
            java.lang.String r0 = r0.toString()
            r1.<init>(r2, r0)
            r0 = r1
            goto L_0x0034
        L_0x00c9:
            java.lang.String r0 = ""
            goto L_0x00bb
        L_0x00cc:
            java.lang.String r0 = r6.j
            java.lang.String r1 = "\\"
            boolean r0 = r0.equals(r1)
            if (r0 == 0) goto L_0x00e9
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            java.lang.String r1 = "\\"
            r0.<init>(r1)
            java.lang.StringBuilder r0 = r0.append(r7)
            java.lang.String r0 = r0.toString()
            r5.j = r0
            goto L_0x0062
        L_0x00e9:
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r0.<init>()
            java.lang.String r1 = r6.j
            java.lang.StringBuilder r0 = r0.append(r1)
            r1 = 92
            java.lang.StringBuilder r0 = r0.append(r1)
            java.lang.StringBuilder r0 = r0.append(r7)
            java.lang.String r0 = r0.toString()
            r5.j = r0
            goto L_0x0062
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.aar.<init>(aar, java.lang.String, int, int, long, long, long):void");
    }

    public aar(String str) {
        this(new URL((URL) null, str, zb.a));
    }

    public aar(String str, zl zlVar) {
        this(new URL((URL) null, str, zb.a), zlVar);
    }

    public aar(URL url) {
        this(url, new zl(url.getUserInfo()));
    }

    private aar(URL url, zl zlVar) {
        super(url);
        this.y = 7;
        this.z = null;
        this.A = null;
        this.i = null;
        this.h = zlVar == null ? new zl(url.getUserInfo()) : zlVar;
        q();
    }

    private static String a(String str, String str2) {
        int i2 = 0;
        char[] charArray = str.toCharArray();
        int i3 = 0;
        for (int i4 = 0; i4 < charArray.length; i4++) {
            char c2 = charArray[i4];
            if (c2 == '&') {
                if (i2 <= i3 || !new String(charArray, i3, i2 - i3).equalsIgnoreCase(str2)) {
                    i3 = i4 + 1;
                } else {
                    int i5 = i2 + 1;
                    return new String(charArray, i5, i4 - i5);
                }
            } else if (c2 == '=') {
                i2 = i4;
            }
        }
        if (i2 <= i3 || !new String(charArray, i3, i2 - i3).equalsIgnoreCase(str2)) {
            return null;
        }
        int i6 = i2 + 1;
        return new String(charArray, i6, charArray.length - i6);
    }

    private zc a(String str, int i2) {
        a();
        if (abx.a >= 3) {
            c.println("queryPath: " + str);
        }
        if (this.i.f.e.a(16)) {
            abh abh = new abh(i2);
            a((zm) new abg(str, i2), (zm) abh);
            return abh.a;
        }
        aab aab = new aab(((long) (this.i.f.e.s.n * 1000)) * 60);
        a((zm) new aaa(str), (zm) aab);
        return aab;
    }

    private void a(ArrayList arrayList) {
        za[] zaVarArr;
        boolean z2 = true;
        String path = this.url.getPath();
        if (path.lastIndexOf(47) != path.length() - 1) {
            throw new aaq(this.url.toString() + " directory must end with '/'");
        } else if (s() != 4) {
            throw new aaq("The requested list operations is invalid: " + this.url.toString());
        } else {
            HashMap hashMap = new HashMap();
            yx yxVar = g;
            String r2 = r();
            HashMap a2 = yxVar.a(this.h);
            if (a2 == null || a2.get(r2.toLowerCase()) == null) {
                z2 = false;
            }
            if (z2) {
                try {
                    za[] u2 = u();
                    for (za zaVar : u2) {
                        if (!hashMap.containsKey(zaVar)) {
                            hashMap.put(zaVar, zaVar);
                        }
                    }
                } catch (IOException e2) {
                    if (abx.a >= 4) {
                        e2.printStackTrace(c);
                    }
                }
            }
            xk m2 = m();
            IOException e3 = null;
            loop1:
            while (m2 != null) {
                try {
                    o();
                    zaVarArr = v();
                } catch (IOException e4) {
                    if (abx.a >= 3) {
                        e4.printStackTrace(c);
                    }
                    zf zfVar = new zf();
                    zg zgVar = new zg();
                    a((zm) zfVar, (zm) zgVar);
                    if (zgVar.P != 0) {
                        throw new aaq(zgVar.P, true);
                    }
                    zaVarArr = zgVar.R;
                } catch (IOException e5) {
                    e3 = e5;
                    if (abx.a >= 3) {
                        e3.printStackTrace(c);
                    }
                    m2 = n();
                }
                for (za zaVar2 : zaVarArr) {
                    if (!hashMap.containsKey(zaVar2)) {
                        hashMap.put(zaVar2, zaVar2);
                    }
                }
                break loop1;
            }
            if (e3 == null || !hashMap.isEmpty()) {
                for (za zaVar3 : hashMap.keySet()) {
                    String a3 = zaVar3.a();
                    if (a3.length() > 0) {
                        arrayList.add(new aar(this, a3, zaVar3.b(), 17, 0, 0, 0));
                    }
                }
            } else if (!(e3 instanceof aaq)) {
                throw new aaq(this.url.toString(), (Throwable) e3);
            } else {
                throw ((aaq) e3);
            }
        }
    }

    private int b(int i2, int i3) {
        a();
        if (abx.a >= 3) {
            c.println("open0: " + this.j);
        }
        if (this.i.f.e.a(16)) {
            zu zuVar = new zu();
            zt ztVar = new zt(this.j, i2, i3, this.y);
            if (this instanceof aau) {
                ztVar.b |= 22;
                ztVar.c |= 131072;
                zuVar.N = true;
            }
            a((zm) ztVar, (zm) zuVar);
            int i4 = zuVar.c;
            this.f = zuVar.D & 32767;
            this.u = System.currentTimeMillis() + d;
            this.x = true;
            return i4;
        }
        zz zzVar = new zz();
        a((zm) new zy(this.j, i3, i2), (zm) zzVar);
        return zzVar.b;
    }

    private void b(ArrayList arrayList, String str) {
        int hashCode;
        String q2 = q();
        String path = this.url.getPath();
        if (path.lastIndexOf(47) != path.length() - 1) {
            throw new aaq(this.url.toString() + " directory must end with '/'");
        }
        aaz aaz = new aaz(q2, str);
        aba aba = new aba();
        if (abx.a >= 3) {
            c.println("doFindFirstNext: " + aaz.A);
        }
        a((zm) aaz, (zm) aba);
        int i2 = aba.a;
        abb abb = new abb(i2, aba.aB, aba.aA);
        aba.L = 2;
        while (true) {
            for (int i3 = 0; i3 < aba.Q; i3++) {
                za zaVar = aba.R[i3];
                String a2 = zaVar.a();
                if ((a2.length() >= 3 || (!((hashCode = a2.hashCode()) == a || hashCode == b) || (!a2.equals(".") && !a2.equals("..")))) && a2.length() > 0) {
                    ArrayList arrayList2 = arrayList;
                    arrayList2.add(new aar(this, a2, 1, zaVar.c(), zaVar.d(), zaVar.e(), zaVar.f()));
                }
            }
            if (aba.S || aba.Q == 0) {
                try {
                    a((zm) new zr(i2), (zm) k());
                    return;
                } catch (aaq e2) {
                    if (abx.a >= 4) {
                        e2.printStackTrace(c);
                        return;
                    }
                    return;
                }
            } else {
                abb.a(aba.aB, aba.aA);
                aba.e();
                a((zm) abb, (zm) aba);
            }
        }
    }

    private zp k() {
        if (this.z == null) {
            this.z = new zp();
        }
        return this.z;
    }

    private xk l() {
        return this.p == 0 ? m() : this.o[this.p - 1];
    }

    private xk m() {
        this.p = 0;
        String host = this.url.getHost();
        String path = this.url.getPath();
        String query = this.url.getQuery();
        if (query != null) {
            String a2 = a(query, "server");
            if (a2 == null || a2.length() <= 0) {
                String a3 = a(query, BoxUser.FIELD_ADDRESS);
                if (a3 != null && a3.length() > 0) {
                    byte[] address = InetAddress.getByName(a3).getAddress();
                    this.o = new xk[1];
                    this.o[0] = new xk(InetAddress.getByAddress(host, address));
                    return n();
                }
            } else {
                this.o = new xk[1];
                this.o[0] = xk.a(a2);
                return n();
            }
        }
        if (host.length() == 0) {
            try {
                yk b2 = yk.b("\u0001\u0002__MSBROWSE__\u0002");
                this.o = new xk[1];
                this.o[0] = xk.a(b2.g());
            } catch (UnknownHostException e2) {
                zl.a();
                if (zl.a.equals("?")) {
                    throw e2;
                }
                this.o = xk.a(zl.a, true);
            }
        } else if (path.length() == 0 || path.equals("/")) {
            this.o = xk.a(host, true);
        } else {
            this.o = xk.a(host, false);
        }
        return n();
    }

    private xk n() {
        if (this.p >= this.o.length) {
            return null;
        }
        xk[] xkVarArr = this.o;
        int i2 = this.p;
        this.p = i2 + 1;
        return xkVarArr[i2];
    }

    private void o() {
        aax a2;
        boolean z2 = true;
        xk l2 = l();
        if (this.i != null) {
            a2 = this.i.f.e;
        } else {
            a2 = aax.a(l2, this.url.getPort());
            this.i = a2.a(this.h).a(this.r, (String) null);
        }
        this.i.h = g.a(this.A != null ? this.A.c : r(), this.i.c, (String) null, this.h) != null;
        if (this.i.h) {
            this.i.a = 2;
        }
        try {
            if (abx.a >= 3) {
                c.println("doConnect: " + l2);
            }
            this.i.b((zm) null, (zm) null);
        } catch (zo e2) {
            if (this.r == null) {
                this.i = a2.a(zl.e).a((String) null, (String) null);
                this.i.b((zm) null, (zm) null);
                return;
            }
            zj.a(this.url.toString(), e2);
            if (abx.a > 0) {
                if (this.p >= this.o.length) {
                    z2 = false;
                }
                if (z2) {
                    e2.printStackTrace(c);
                }
            }
            throw e2;
        }
    }

    private boolean p() {
        return this.i != null && this.i.a == 2;
    }

    /* JADX WARNING: Code restructure failed: missing block: B:38:0x0074, code lost:
        if (r7[r4] != '/') goto L_0x0077;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:39:0x0076, code lost:
        r0 = 1;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:40:0x0077, code lost:
        r8[r2] = r7[r4];
        r2 = r2 + 1;
        r3 = r4;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:5:0x0021, code lost:
        r3 = r4;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:6:0x0022, code lost:
        r4 = r3 + 1;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private java.lang.String q() {
        /*
            r13 = this;
            r5 = 0
            r12 = 46
            r6 = 0
            r11 = 47
            r1 = 1
            java.lang.String r0 = r13.j
            if (r0 != 0) goto L_0x009f
            java.net.URL r0 = r13.url
            java.lang.String r0 = r0.getPath()
            char[] r7 = r0.toCharArray()
            int r0 = r7.length
            char[] r8 = new char[r0]
            int r9 = r7.length
            r0 = r6
            r2 = r6
            r4 = r6
        L_0x001c:
            if (r4 >= r9) goto L_0x0080
            switch(r0) {
                case 0: goto L_0x0025;
                case 1: goto L_0x0035;
                case 2: goto L_0x0072;
                default: goto L_0x0021;
            }
        L_0x0021:
            r3 = r4
        L_0x0022:
            int r4 = r3 + 1
            goto L_0x001c
        L_0x0025:
            char r0 = r7[r4]
            if (r0 == r11) goto L_0x002b
            r0 = r5
        L_0x002a:
            return r0
        L_0x002b:
            int r0 = r2 + 1
            char r3 = r7[r4]
            r8[r2] = r3
            r2 = r0
            r3 = r4
            r0 = r1
            goto L_0x0022
        L_0x0035:
            char r3 = r7[r4]
            if (r3 == r11) goto L_0x0021
            char r3 = r7[r4]
            if (r3 != r12) goto L_0x004a
            int r3 = r4 + 1
            if (r3 >= r9) goto L_0x0047
            int r3 = r4 + 1
            char r3 = r7[r3]
            if (r3 != r11) goto L_0x004a
        L_0x0047:
            int r3 = r4 + 1
            goto L_0x0022
        L_0x004a:
            int r3 = r4 + 1
            if (r3 >= r9) goto L_0x0071
            char r3 = r7[r4]
            if (r3 != r12) goto L_0x0071
            int r3 = r4 + 1
            char r3 = r7[r3]
            if (r3 != r12) goto L_0x0071
            int r3 = r4 + 2
            if (r3 >= r9) goto L_0x0062
            int r3 = r4 + 2
            char r3 = r7[r3]
            if (r3 != r11) goto L_0x0071
        L_0x0062:
            int r3 = r4 + 2
            if (r2 == r1) goto L_0x0022
        L_0x0066:
            int r2 = r2 + -1
            if (r2 <= r1) goto L_0x0022
            int r4 = r2 + -1
            char r4 = r8[r4]
            if (r4 != r11) goto L_0x0066
            goto L_0x0022
        L_0x0071:
            r0 = 2
        L_0x0072:
            char r3 = r7[r4]
            if (r3 != r11) goto L_0x0077
            r0 = r1
        L_0x0077:
            int r3 = r2 + 1
            char r10 = r7[r4]
            r8[r2] = r10
            r2 = r3
            r3 = r4
            goto L_0x0022
        L_0x0080:
            java.lang.String r0 = new java.lang.String
            r0.<init>(r8, r6, r2)
            r13.q = r0
            if (r2 <= r1) goto L_0x00d3
            int r0 = r2 + -1
            java.lang.String r2 = r13.q
            int r2 = r2.indexOf(r11, r1)
            if (r2 >= 0) goto L_0x00a2
            java.lang.String r0 = r13.q
            java.lang.String r0 = r0.substring(r1)
            r13.r = r0
            java.lang.String r0 = "\\"
            r13.j = r0
        L_0x009f:
            java.lang.String r0 = r13.j
            goto L_0x002a
        L_0x00a2:
            if (r2 != r0) goto L_0x00b1
            java.lang.String r0 = r13.q
            java.lang.String r0 = r0.substring(r1, r2)
            r13.r = r0
            java.lang.String r0 = "\\"
            r13.j = r0
            goto L_0x009f
        L_0x00b1:
            java.lang.String r3 = r13.q
            java.lang.String r1 = r3.substring(r1, r2)
            r13.r = r1
            java.lang.String r1 = r13.q
            char r3 = r8[r0]
            if (r3 != r11) goto L_0x00d0
        L_0x00bf:
            java.lang.String r0 = r1.substring(r2, r0)
            r13.j = r0
            java.lang.String r0 = r13.j
            r1 = 92
            java.lang.String r0 = r0.replace(r11, r1)
            r13.j = r0
            goto L_0x009f
        L_0x00d0:
            int r0 = r0 + 1
            goto L_0x00bf
        L_0x00d3:
            r13.r = r5
            java.lang.String r0 = "\\"
            r13.j = r0
            goto L_0x009f
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.aar.q():java.lang.String");
    }

    private String r() {
        String host = this.url.getHost();
        if (host.length() == 0) {
            return null;
        }
        return host;
    }

    private int s() {
        int i2;
        if (this.l == 0) {
            if (q().length() > 1) {
                this.l = 1;
            } else if (this.r != null) {
                a();
                if (this.r.equals("IPC$")) {
                    this.l = 16;
                } else if (this.i.d.equals("LPT1:")) {
                    this.l = 32;
                } else if (this.i.d.equals("COMM")) {
                    this.l = 64;
                } else {
                    this.l = 8;
                }
            } else if (this.url.getAuthority() == null || this.url.getAuthority().length() == 0) {
                this.l = 2;
            } else {
                try {
                    xk l2 = l();
                    if (!(l2.a instanceof yk) || !((i2 = ((yk) l2.a).f.d) == 29 || i2 == 27)) {
                        this.l = 4;
                    } else {
                        this.l = 2;
                        return this.l;
                    }
                } catch (UnknownHostException e2) {
                    throw new aaq(this.url.toString(), (Throwable) e2);
                }
            }
        }
        return this.l;
    }

    private long t() {
        if (q().length() <= 1) {
            return 0;
        }
        f();
        return this.t;
    }

    private za[] u() {
        xq a2 = xq.a("ncacn_np:" + l().c() + "[\\PIPE\\netdfs]", this.h);
        try {
            xv xvVar = new xv(r());
            a2.a(xvVar);
            if (xvVar.a != 0) {
                throw new aaq(xvVar.a, true);
            }
            za[] d2 = xvVar.d();
            try {
            } catch (IOException e2) {
                if (abx.a >= 4) {
                    e2.printStackTrace(c);
                }
            }
            return d2;
        } finally {
            try {
                a2.a();
            } catch (IOException e3) {
                if (abx.a >= 4) {
                    e3.printStackTrace(c);
                }
            }
        }
    }

    private za[] v() {
        xw xwVar = new xw(this.url.getHost());
        xq a2 = xq.a("ncacn_np:" + l().c() + "[\\PIPE\\srvsvc]", this.h);
        try {
            a2.a(xwVar);
            if (xwVar.a != 0) {
                throw new aaq(xwVar.a, true);
            }
            za[] d2 = xwVar.d();
            try {
            } catch (IOException e2) {
                if (abx.a >= 4) {
                    e2.printStackTrace(c);
                }
            }
            return d2;
        } finally {
            try {
                a2.a();
            } catch (IOException e3) {
                if (abx.a >= 4) {
                    e3.printStackTrace(c);
                }
            }
        }
    }

    /* access modifiers changed from: package-private */
    public final void a() {
        try {
            connect();
        } catch (UnknownHostException e2) {
            throw new aaq("Failed to connect to server", (Throwable) e2);
        } catch (aaq e3) {
            throw e3;
        } catch (IOException e4) {
            throw new aaq("Failed to connect to server", (Throwable) e4);
        }
    }

    /* access modifiers changed from: package-private */
    public final void a(int i2, int i3) {
        if (!b()) {
            this.k = b(i2, i3);
            this.m = true;
            this.n = this.i.i;
        }
    }

    public final void a(ArrayList arrayList, String str) {
        zd zdVar;
        ze zeVar;
        boolean z2;
        try {
            if (this.url.getHost().length() == 0 || s() == 2) {
                int s2 = this.url.getHost().length() == 0 ? 0 : s();
                if (s2 == 0) {
                    a();
                    zd zdVar2 = new zd(this.i.f.e.s.e, Integer.MIN_VALUE);
                    zeVar = new ze();
                    zdVar = zdVar2;
                } else if (s2 == 2) {
                    zd zdVar3 = new zd(this.url.getHost(), -1);
                    zeVar = new ze();
                    zdVar = zdVar3;
                } else {
                    throw new aaq("The requested list operations is invalid: " + this.url.toString());
                }
                do {
                    a((zm) zdVar, (zm) zeVar);
                    if (zeVar.P == 0 || zeVar.P == 234) {
                        z2 = zeVar.P == 234;
                        int i2 = z2 ? zeVar.Q - 1 : zeVar.Q;
                        for (int i3 = 0; i3 < i2; i3++) {
                            za zaVar = zeVar.R[i3];
                            String a2 = zaVar.a();
                            if (a2.length() > 0) {
                                arrayList.add(new aar(this, a2, zaVar.b(), 17, 0, 0, 0));
                            }
                        }
                        if (s() == 2) {
                            zdVar.S = -41;
                            zdVar.a(0, zeVar.a);
                            zeVar.e();
                        } else {
                            return;
                        }
                    } else {
                        throw new aaq(zeVar.P, true);
                    }
                } while (z2);
            } else if (this.r == null) {
                a(arrayList);
            } else {
                b(arrayList, str);
            }
        } catch (UnknownHostException e2) {
            throw new aaq(this.url.toString(), (Throwable) e2);
        } catch (MalformedURLException e3) {
            throw new aaq(this.url.toString(), (Throwable) e3);
        }
    }

    /* access modifiers changed from: package-private */
    public final void a(zm zmVar, zm zmVar2) {
        String str;
        aaq aaq;
        yy yyVar;
        while (true) {
            if (!(zmVar instanceof zq)) {
                a();
                yy a2 = g.a(this.i.f.e.A, this.i.c, this.j, this.h);
                if (a2 != null) {
                    if (zmVar != null) {
                        switch (zmVar.g) {
                            case 37:
                            case 50:
                                switch (((aag) zmVar).S & 255) {
                                    case 16:
                                        str = null;
                                        break;
                                    default:
                                        str = "A:";
                                        break;
                                }
                            default:
                                str = "A:";
                                break;
                        }
                    } else {
                        str = null;
                    }
                    yy yyVar2 = a2;
                    while (true) {
                        try {
                            if (abx.a >= 2) {
                                c.println("DFS redirect: " + yyVar2);
                            }
                            aax a3 = aax.a(xk.a(yyVar2.c), this.url.getPort());
                            a3.a();
                            this.i = a3.a(this.h).a(yyVar2.d, str);
                            if (!(yyVar2 == a2 || yyVar2.k == null)) {
                                yyVar2.j.put(yyVar2.k, yyVar2);
                            }
                            aaq = null;
                            yyVar = yyVar2;
                        } catch (IOException e2) {
                            aaq = e2 instanceof aaq ? (aaq) e2 : new aaq(yyVar2.c, (Throwable) e2);
                            yy yyVar3 = yyVar2.i;
                            if (yyVar3 == a2) {
                                yyVar = yyVar3;
                            } else {
                                yyVar2 = yyVar3;
                            }
                        }
                    }
                    if (aaq != null) {
                        throw aaq;
                    }
                    if (abx.a >= 3) {
                        c.println(yyVar);
                    }
                    this.A = yyVar;
                    if (yyVar.a < 0) {
                        yyVar.a = 0;
                    } else if (yyVar.a > this.j.length()) {
                        yyVar.a = this.j.length();
                    }
                    String substring = this.j.substring(yyVar.a);
                    if (substring.equals("")) {
                        substring = "\\";
                    }
                    if (!yyVar.f.equals("")) {
                        substring = "\\" + yyVar.f + substring;
                    }
                    this.j = substring;
                    if (zmVar != null && zmVar.A != null && zmVar.A.endsWith("\\") && !substring.endsWith("\\")) {
                        substring = substring + "\\";
                    }
                    if (zmVar != null) {
                        zmVar.A = substring;
                        zmVar.m |= FragmentTransaction.TRANSIT_ENTER_MASK;
                    }
                } else if (this.i.h && !(zmVar instanceof zi) && !(zmVar instanceof zq) && !(zmVar instanceof zr)) {
                    throw new aaq(-1073741275, false);
                } else if (zmVar != null) {
                    zmVar.m &= -4097;
                }
            }
            try {
                this.i.a(zmVar, zmVar2);
                return;
            } catch (yy e3) {
                if (e3.g) {
                    throw e3;
                }
                zmVar.e();
            }
        }
    }

    public final boolean b() {
        return this.m && p() && this.n == this.i.i;
    }

    /* access modifiers changed from: package-private */
    public final void c() {
        if (b()) {
            int i2 = this.k;
            if (abx.a >= 3) {
                c.println("close: " + i2);
            }
            a((zm) new zq(i2), (zm) k());
            this.m = false;
        }
    }

    public void connect() {
        if (p() && this.i.f.e.A == null) {
            this.i.a(true);
        }
        if (!p()) {
            q();
            m();
            while (true) {
                try {
                    o();
                    return;
                } catch (zo e2) {
                    throw e2;
                } catch (aaq e3) {
                    if (n() == null) {
                        throw e3;
                    } else if (abx.a >= 3) {
                        e3.printStackTrace(c);
                    }
                }
            }
        }
    }

    public final String d() {
        q();
        if (this.q.length() <= 1) {
            return this.r != null ? this.r + '/' : this.url.getHost().length() > 0 ? this.url.getHost() + '/' : "smb://";
        }
        int length = this.q.length() - 2;
        while (this.q.charAt(length) != '/') {
            length--;
        }
        return this.q.substring(length + 1);
    }

    public final String e() {
        return this.url.toString();
    }

    public boolean equals(Object obj) {
        boolean equalsIgnoreCase;
        boolean z2 = true;
        if (obj instanceof aar) {
            aar aar = (aar) obj;
            if (this == aar) {
                return true;
            }
            String path = this.url.getPath();
            String path2 = aar.url.getPath();
            int lastIndexOf = path.lastIndexOf(47);
            int lastIndexOf2 = path2.lastIndexOf(47);
            int length = path.length() - lastIndexOf;
            int length2 = path2.length() - lastIndexOf2;
            if ((length <= 1 || path.charAt(lastIndexOf + 1) != '.') && ((length2 <= 1 || path2.charAt(lastIndexOf2 + 1) != '.') && (length != length2 || !path.regionMatches(true, lastIndexOf, path2, lastIndexOf2, length)))) {
                z2 = false;
            }
            if (z2) {
                q();
                aar.q();
                if (this.q.equalsIgnoreCase(aar.q)) {
                    try {
                        equalsIgnoreCase = l().equals(aar.l());
                    } catch (UnknownHostException e2) {
                        equalsIgnoreCase = r().equalsIgnoreCase(aar.r());
                    }
                    return equalsIgnoreCase;
                }
            }
        }
        return false;
    }

    public final boolean f() {
        if (this.u > System.currentTimeMillis()) {
            return this.x;
        }
        this.f = 17;
        this.s = 0;
        this.t = 0;
        this.x = false;
        try {
            if (this.url.getHost().length() != 0) {
                if (this.r == null) {
                    if (s() == 2) {
                        xk.b(this.url.getHost());
                    } else {
                        xk.a(this.url.getHost()).b();
                    }
                } else if (q().length() == 1 || this.r.equalsIgnoreCase("IPC$")) {
                    a();
                } else {
                    zc a2 = a(q(), 257);
                    this.f = a2.a();
                    this.s = a2.b();
                    this.t = a2.c();
                }
            }
            this.x = true;
        } catch (UnknownHostException e2) {
        } catch (aaq e3) {
            switch (e3.n) {
                case -1073741809:
                case -1073741773:
                case -1073741772:
                case -1073741766:
                    break;
                default:
                    throw e3;
            }
        }
        this.u = System.currentTimeMillis() + d;
        return this.x;
    }

    public final boolean g() {
        if (s() == 16) {
            return true;
        }
        return f();
    }

    public int getContentLength() {
        try {
            return (int) (j() & 4294967295L);
        } catch (aaq e2) {
            return 0;
        }
    }

    public long getDate() {
        try {
            return t();
        } catch (aaq e2) {
            return 0;
        }
    }

    public InputStream getInputStream() {
        return new aas(this);
    }

    public long getLastModified() {
        try {
            return t();
        } catch (aaq e2) {
            return 0;
        }
    }

    public OutputStream getOutputStream() {
        return new aat(this);
    }

    public final boolean h() {
        if (q().length() == 1) {
            return true;
        }
        if (!f()) {
            return false;
        }
        return (this.f & 16) == 16;
    }

    public int hashCode() {
        int hashCode;
        try {
            hashCode = l().hashCode();
        } catch (UnknownHostException e2) {
            hashCode = r().toUpperCase().hashCode();
        }
        q();
        return hashCode + this.q.toUpperCase().hashCode();
    }

    public final boolean i() {
        if (this.r == null) {
            return false;
        }
        if (q().length() == 1) {
            return this.r.endsWith("$");
        }
        f();
        return (this.f & 2) == 2;
    }

    public final long j() {
        if (this.w > System.currentTimeMillis()) {
            return this.v;
        }
        if (s() == 8) {
            abf abf = new abf();
            a((zm) new abe(), (zm) abf);
            this.v = abf.a.a();
        } else if (q().length() <= 1 || this.l == 16) {
            this.v = 0;
        } else {
            this.v = a(q(), 258).d();
        }
        this.w = System.currentTimeMillis() + d;
        return this.v;
    }

    public String toString() {
        return this.url.toString();
    }
}
