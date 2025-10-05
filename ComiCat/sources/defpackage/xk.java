package defpackage;

import java.io.IOException;
import java.net.InetAddress;
import java.net.UnknownHostException;
import java.util.StringTokenizer;

/* renamed from: xk  reason: default package */
/* compiled from: UniAddress */
public final class xk {
    private static int[] c;
    private static InetAddress d;
    private static abx e = abx.a();
    public Object a;
    public String b;

    /* renamed from: xk$a */
    /* compiled from: UniAddress */
    static class a extends Thread {
        b a;
        String b;
        String c;
        int d;
        yk e = null;
        InetAddress f;
        UnknownHostException g;

        a(b bVar, String str, int i, InetAddress inetAddress) {
            super("JCIFS-QueryThread: " + str);
            this.a = bVar;
            this.b = str;
            this.d = i;
            this.c = null;
            this.f = inetAddress;
        }

        /* JADX WARNING: No exception handlers in catch block: Catch:{  } */
        /* Code decompiled incorrectly, please refer to instructions dump. */
        public final void run() {
            /*
                r4 = this;
                java.lang.String r0 = r4.b     // Catch:{ UnknownHostException -> 0x0023, Exception -> 0x003b }
                int r1 = r4.d     // Catch:{ UnknownHostException -> 0x0023, Exception -> 0x003b }
                java.lang.String r2 = r4.c     // Catch:{ UnknownHostException -> 0x0023, Exception -> 0x003b }
                java.net.InetAddress r3 = r4.f     // Catch:{ UnknownHostException -> 0x0023, Exception -> 0x003b }
                yk r0 = defpackage.yk.a(r0, r1, r2, r3)     // Catch:{ UnknownHostException -> 0x0023, Exception -> 0x003b }
                r4.e = r0     // Catch:{ UnknownHostException -> 0x0023, Exception -> 0x003b }
                xk$b r1 = r4.a
                monitor-enter(r1)
                xk$b r0 = r4.a     // Catch:{ all -> 0x0020 }
                int r2 = r0.a     // Catch:{ all -> 0x0020 }
                int r2 = r2 + -1
                r0.a = r2     // Catch:{ all -> 0x0020 }
                xk$b r0 = r4.a     // Catch:{ all -> 0x0020 }
                r0.notify()     // Catch:{ all -> 0x0020 }
                monitor-exit(r1)     // Catch:{ all -> 0x0020 }
            L_0x001f:
                return
            L_0x0020:
                r0 = move-exception
                monitor-exit(r1)     // Catch:{ all -> 0x0020 }
                throw r0
            L_0x0023:
                r0 = move-exception
                r4.g = r0     // Catch:{ all -> 0x005c }
                xk$b r1 = r4.a
                monitor-enter(r1)
                xk$b r0 = r4.a     // Catch:{ all -> 0x0038 }
                int r2 = r0.a     // Catch:{ all -> 0x0038 }
                int r2 = r2 + -1
                r0.a = r2     // Catch:{ all -> 0x0038 }
                xk$b r0 = r4.a     // Catch:{ all -> 0x0038 }
                r0.notify()     // Catch:{ all -> 0x0038 }
                monitor-exit(r1)     // Catch:{ all -> 0x0038 }
                goto L_0x001f
            L_0x0038:
                r0 = move-exception
                monitor-exit(r1)     // Catch:{ all -> 0x0038 }
                throw r0
            L_0x003b:
                r0 = move-exception
                java.net.UnknownHostException r1 = new java.net.UnknownHostException     // Catch:{ all -> 0x005c }
                java.lang.String r0 = r0.getMessage()     // Catch:{ all -> 0x005c }
                r1.<init>(r0)     // Catch:{ all -> 0x005c }
                r4.g = r1     // Catch:{ all -> 0x005c }
                xk$b r1 = r4.a
                monitor-enter(r1)
                xk$b r0 = r4.a     // Catch:{ all -> 0x0059 }
                int r2 = r0.a     // Catch:{ all -> 0x0059 }
                int r2 = r2 + -1
                r0.a = r2     // Catch:{ all -> 0x0059 }
                xk$b r0 = r4.a     // Catch:{ all -> 0x0059 }
                r0.notify()     // Catch:{ all -> 0x0059 }
                monitor-exit(r1)     // Catch:{ all -> 0x0059 }
                goto L_0x001f
            L_0x0059:
                r0 = move-exception
                monitor-exit(r1)     // Catch:{ all -> 0x0059 }
                throw r0
            L_0x005c:
                r0 = move-exception
                xk$b r1 = r4.a
                monitor-enter(r1)
                xk$b r2 = r4.a     // Catch:{ all -> 0x006f }
                int r3 = r2.a     // Catch:{ all -> 0x006f }
                int r3 = r3 + -1
                r2.a = r3     // Catch:{ all -> 0x006f }
                xk$b r2 = r4.a     // Catch:{ all -> 0x006f }
                r2.notify()     // Catch:{ all -> 0x006f }
                monitor-exit(r1)     // Catch:{ all -> 0x006f }
                throw r0
            L_0x006f:
                r0 = move-exception
                monitor-exit(r1)     // Catch:{ all -> 0x006f }
                throw r0
            */
            throw new UnsupportedOperationException("Method not decompiled: defpackage.xk.a.run():void");
        }
    }

    /* renamed from: xk$b */
    /* compiled from: UniAddress */
    static class b {
        int a = 2;

        b() {
        }
    }

    static {
        String a2 = xj.a("jcifs.resolveOrder");
        InetAddress c2 = yk.c();
        try {
            d = xj.a("jcifs.netbios.baddr", InetAddress.getByName("255.255.255.255"));
        } catch (UnknownHostException e2) {
        }
        if (a2 != null && a2.length() != 0) {
            int[] iArr = new int[4];
            StringTokenizer stringTokenizer = new StringTokenizer(a2, ",");
            int i = 0;
            while (stringTokenizer.hasMoreTokens()) {
                String trim = stringTokenizer.nextToken().trim();
                if (trim.equalsIgnoreCase("LMHOSTS")) {
                    iArr[i] = 3;
                    i++;
                } else if (trim.equalsIgnoreCase("WINS")) {
                    if (c2 != null) {
                        iArr[i] = 0;
                        i++;
                    } else if (abx.a > 1) {
                        e.println("UniAddress resolveOrder specifies WINS however the jcifs.netbios.wins property has not been set");
                    }
                } else if (trim.equalsIgnoreCase("BCAST")) {
                    iArr[i] = 1;
                    i++;
                } else if (trim.equalsIgnoreCase("DNS")) {
                    iArr[i] = 2;
                    i++;
                } else if (abx.a > 1) {
                    e.println("unknown resolver method: " + trim);
                }
            }
            c = new int[i];
            System.arraycopy(iArr, 0, c, 0, i);
        } else if (c2 == null) {
            int[] iArr2 = new int[3];
            c = iArr2;
            iArr2[0] = 3;
            c[1] = 2;
            c[2] = 1;
        } else {
            int[] iArr3 = new int[4];
            c = iArr3;
            iArr3[0] = 3;
            c[1] = 0;
            c[2] = 2;
            c[3] = 1;
        }
    }

    public xk(Object obj) {
        if (obj == null) {
            throw new IllegalArgumentException();
        }
        this.a = obj;
    }

    public static xk a(String str) {
        return a(str, false)[0];
    }

    private static yk a(String str, InetAddress inetAddress) {
        b bVar = new b();
        a aVar = new a(bVar, str, yk.a(inetAddress) ? 27 : 29, inetAddress);
        a aVar2 = new a(bVar, str, 32, inetAddress);
        aVar.setDaemon(true);
        aVar2.setDaemon(true);
        try {
            synchronized (bVar) {
                aVar.start();
                aVar2.start();
                while (bVar.a > 0 && aVar.e == null && aVar2.e == null) {
                    bVar.wait();
                }
            }
            if (aVar.e != null) {
                return aVar.e;
            }
            if (aVar2.e != null) {
                return aVar2.e;
            }
            throw aVar.g;
        } catch (InterruptedException e2) {
            throw new UnknownHostException(str);
        }
    }

    public static xk[] a(String str, boolean z) {
        int i;
        yk a2;
        if (str == null || str.length() == 0) {
            throw new UnknownHostException();
        } else if (c(str)) {
            return new xk[]{new xk(yk.a(str))};
        } else {
            i = 0;
            while (i < c.length) {
                try {
                    switch (c[i]) {
                        case 0:
                            if (str != "\u0001\u0002__MSBROWSE__\u0002" && str.length() <= 15) {
                                if (!z) {
                                    a2 = yk.a(str, 32, (String) null, yk.c());
                                    break;
                                } else {
                                    a2 = a(str, yk.c());
                                    break;
                                }
                            }
                        case 1:
                            if (str.length() <= 15) {
                                if (!z) {
                                    a2 = yk.a(str, 32, (String) null, d);
                                    break;
                                } else {
                                    a2 = a(str, d);
                                    break;
                                }
                            } else {
                                continue;
                            }
                        case 2:
                            if (d(str)) {
                                throw new UnknownHostException(str);
                            }
                            InetAddress[] allByName = InetAddress.getAllByName(str);
                            xk[] xkVarArr = new xk[allByName.length];
                            for (int i2 = 0; i2 < allByName.length; i2++) {
                                xkVarArr[i2] = new xk(allByName[i2]);
                            }
                            return xkVarArr;
                        case 3:
                            yk a3 = ye.a(str);
                            if (a3 != null) {
                                a2 = a3;
                                break;
                            } else {
                                continue;
                            }
                        default:
                            throw new UnknownHostException(str);
                    }
                    return new xk[]{new xk(a2)};
                } catch (IOException e2) {
                }
            }
            throw new UnknownHostException(str);
        }
        i++;
    }

    public static xk b(String str) {
        return a(str, true)[0];
    }

    private static boolean c(String str) {
        if (!Character.isDigit(str.charAt(0))) {
            return false;
        }
        int length = str.length();
        char[] charArray = str.toCharArray();
        int i = 0;
        int i2 = 0;
        while (i2 < length) {
            int i3 = i2 + 1;
            if (!Character.isDigit(charArray[i2])) {
                return false;
            }
            if (i3 == length && i == 3) {
                return true;
            }
            if (i3 >= length || charArray[i3] != '.') {
                i2 = i3;
            } else {
                i++;
                i2 = i3 + 1;
            }
        }
        return false;
    }

    private static boolean d(String str) {
        for (int i = 0; i < str.length(); i++) {
            if (!Character.isDigit(str.charAt(i))) {
                return false;
            }
        }
        return true;
    }

    public final String a() {
        int i = 0;
        if (this.a instanceof yk) {
            yk ykVar = (yk) this.a;
            ykVar.p = ykVar.f.b;
            if (Character.isDigit(ykVar.p.charAt(0))) {
                int length = ykVar.p.length();
                char[] charArray = ykVar.p.toCharArray();
                int i2 = 0;
                while (true) {
                    if (i2 >= length) {
                        break;
                    }
                    int i3 = i2 + 1;
                    if (Character.isDigit(charArray[i2])) {
                        if (i3 == length && i == 3) {
                            break;
                        } else if (i3 >= length || charArray[i3] != '.') {
                            i2 = i3;
                        } else {
                            i++;
                            i2 = i3 + 1;
                        }
                    } else {
                        break;
                    }
                }
                ykVar.p = "*SMBSERVER     ";
            } else {
                switch (ykVar.f.d) {
                    case 27:
                    case 28:
                    case 29:
                        break;
                }
                ykVar.p = "*SMBSERVER     ";
            }
            return ykVar.p;
        }
        this.b = ((InetAddress) this.a).getHostName();
        if (c(this.b)) {
            this.b = "*SMBSERVER     ";
        } else {
            int indexOf = this.b.indexOf(46);
            if (indexOf > 1 && indexOf < 15) {
                this.b = this.b.substring(0, indexOf).toUpperCase();
            } else if (this.b.length() > 15) {
                this.b = "*SMBSERVER     ";
            } else {
                this.b = this.b.toUpperCase();
            }
        }
        return this.b;
    }

    public final String b() {
        return this.a instanceof yk ? ((yk) this.a).f() : ((InetAddress) this.a).getHostName();
    }

    public final String c() {
        return this.a instanceof yk ? ((yk) this.a).g() : ((InetAddress) this.a).getHostAddress();
    }

    public final boolean equals(Object obj) {
        return (obj instanceof xk) && this.a.equals(((xk) obj).a);
    }

    public final int hashCode() {
        return this.a.hashCode();
    }

    public final String toString() {
        return this.a.toString();
    }
}
