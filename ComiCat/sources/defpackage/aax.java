package defpackage;

import android.support.v4.app.NotificationCompat;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.PrintStream;
import java.net.ConnectException;
import java.net.InetAddress;
import java.net.InetSocketAddress;
import java.net.NoRouteToHostException;
import java.net.Socket;
import java.util.HashMap;
import java.util.LinkedList;
import java.util.ListIterator;

/* renamed from: aax  reason: default package */
/* compiled from: SmbTransport */
public final class aax extends acc implements aap {
    static final byte[] a = new byte[65535];
    static final zv b = new zv();
    static abx c = abx.a();
    static HashMap d = null;
    String A = null;
    InetAddress e;
    int f;
    xk g;
    Socket h;
    int i;
    int j;
    OutputStream k;
    InputStream l;
    byte[] m = new byte[NotificationCompat.FLAG_GROUP_SUMMARY];
    zp n = new zp();
    long o = (System.currentTimeMillis() + ((long) av));
    LinkedList p = new LinkedList();
    zn q = null;
    LinkedList r = new LinkedList();
    a s = new a();
    int t = ap;
    int u = Y;
    int v = Z;
    int w = aa;
    int x = aq;
    int y = 0;
    boolean z = ab;

    /* renamed from: aax$a */
    /* compiled from: SmbTransport */
    class a {
        int a;
        int b;
        int c;
        int d;
        String e;
        int f;
        int g;
        boolean h;
        boolean i;
        boolean j;
        int k;
        int l;
        long m;
        int n;
        int o;
        byte[] p;
        byte[] q;

        a() {
        }
    }

    aax(xk xkVar, int i2, InetAddress inetAddress, int i3) {
        this.g = xkVar;
        this.i = i2;
        this.e = inetAddress;
        this.f = i3;
    }

    static synchronized aax a(xk xkVar, int i2) {
        aax a2;
        synchronized (aax.class) {
            a2 = a(xkVar, i2, W, X);
        }
        return a2;
    }

    static synchronized aax a(xk xkVar, int i2, InetAddress inetAddress, int i3) {
        aax aax;
        synchronized (aax.class) {
            synchronized (at) {
                if (au != 1) {
                    ListIterator listIterator = at.listIterator();
                    while (true) {
                        if (listIterator.hasNext()) {
                            aax = (aax) listIterator.next();
                            if (!((aax.A == null || xkVar.b().equalsIgnoreCase(aax.A)) && xkVar.equals(aax.g) && (i2 == 0 || i2 == aax.i || (i2 == 445 && aax.i == 139)) && ((inetAddress == aax.e || (inetAddress != null && inetAddress.equals(aax.e))) && i3 == aax.f)) || (au != 0 && aax.r.size() >= au)) {
                            }
                        }
                    }
                }
                aax = new aax(xkVar, i2, inetAddress, i3);
                at.add(0, aax);
                break;
            }
        }
        return aax;
    }

    private void a(int i2, zm zmVar) {
        String str;
        synchronized (this.m) {
            if (i2 == 139) {
                yf yfVar = new yf(this.g.a(), 32, (String) null);
                do {
                    this.h = new Socket();
                    if (this.e != null) {
                        this.h.bind(new InetSocketAddress(this.e, this.f));
                    }
                    this.h.connect(new InetSocketAddress(this.g.c(), 139), aw);
                    this.h.setSoTimeout(av);
                    this.k = this.h.getOutputStream();
                    this.l = this.h.getInputStream();
                    yo yoVar = new yo(yfVar, yk.b());
                    OutputStream outputStream = this.k;
                    byte[] bArr = this.m;
                    byte[] bArr2 = this.m;
                    yoVar.b = yoVar.a(bArr2);
                    bArr2[0] = (byte) yoVar.a;
                    if (yoVar.b > 65535) {
                        bArr2[1] = 1;
                    }
                    int i3 = yoVar.b;
                    bArr2[2] = (byte) ((i3 >> 8) & 255);
                    bArr2[3] = (byte) (i3 & 255);
                    outputStream.write(bArr, 0, yoVar.b + 4);
                    if (a(this.l, this.m, 0, 4) < 4) {
                        try {
                            this.h.close();
                        } catch (IOException e2) {
                        }
                        throw new aaq("EOF during NetBIOS session request");
                    }
                    switch (this.m[0] & 255) {
                        case -1:
                            b(true);
                            throw new yl(-1);
                        case 130:
                            if (abx.a >= 4) {
                                c.println("session established ok with " + this.g);
                                break;
                            }
                            break;
                        case 131:
                            int read = this.l.read() & 255;
                            switch (read) {
                                case NotificationCompat.FLAG_HIGH_PRIORITY /*128*/:
                                case 130:
                                    this.h.close();
                                    xk xkVar = this.g;
                                    if (xkVar.a instanceof yk) {
                                        str = ((yk) xkVar.a).e();
                                    } else if (xkVar.b != "*SMBSERVER     ") {
                                        xkVar.b = "*SMBSERVER     ";
                                        str = xkVar.b;
                                    } else {
                                        str = null;
                                    }
                                    yfVar.b = str;
                                    break;
                                default:
                                    b(true);
                                    throw new yl(read);
                            }
                        default:
                            b(true);
                            throw new yl(0);
                    }
                } while (str != null);
                throw new IOException("Failed to establish session with " + this.g);
            }
            if (i2 == 0) {
                i2 = 445;
            }
            this.h = new Socket();
            if (this.e != null) {
                this.h.bind(new InetSocketAddress(this.e, this.f));
            }
            this.h.connect(new InetSocketAddress(this.g.c(), i2), aw);
            this.h.setSoTimeout(av);
            this.k = this.h.getOutputStream();
            this.l = this.h.getInputStream();
            int i4 = this.j + 1;
            this.j = i4;
            if (i4 == 32000) {
                this.j = 1;
            }
            b.q = this.j;
            int a2 = b.a(this.m);
            abu.a(a2 & 65535, this.m);
            if (abx.a >= 4) {
                c.println(b);
                if (abx.a >= 6) {
                    abw.a((PrintStream) c, this.m, 4, a2);
                }
            }
            this.k.write(this.m, 0, a2 + 4);
            this.k.flush();
            if (c() == null) {
                throw new IOException("transport closed in negotiate");
            }
            short a3 = abu.a(this.m) & 65535;
            if (a3 < 33 || a3 + 4 > this.m.length) {
                throw new IOException("Invalid payload size: " + a3);
            }
            a(this.l, this.m, 36, a3 - 32);
            zmVar.b(this.m);
            if (abx.a >= 4) {
                c.println(zmVar);
                if (abx.a >= 6) {
                    abw.a((PrintStream) c, this.m, 4, a2);
                }
            }
        }
    }

    private void b(zm zmVar, zm zmVar2) {
        zmVar2.l = aaq.b(zmVar2.l);
        switch (zmVar2.l) {
            case -2147483643:
            case -1073741802:
            case 0:
                if (zmVar2.y) {
                    throw new aaq("Signature verification failed.");
                }
                return;
            case -1073741790:
            case -1073741718:
            case -1073741715:
            case -1073741714:
            case -1073741713:
            case -1073741712:
            case -1073741711:
            case -1073741710:
            case -1073741428:
            case -1073741260:
                throw new zo(zmVar2.l);
            case -1073741225:
                if (zmVar.z == null) {
                    throw new aaq(zmVar2.l);
                }
                yy a2 = a(zmVar.z, zmVar.A, 1);
                if (a2 == null) {
                    throw new aaq(zmVar2.l);
                }
                aar.g.a(zmVar.A, a2);
                throw a2;
            default:
                throw new aaq(zmVar2.l);
        }
    }

    private void c(aca aca) {
        try {
            b(aca);
        } catch (IOException e2) {
            if (abx.a > 2) {
                e2.printStackTrace(c);
            }
            try {
                b(true);
            } catch (IOException e3) {
                e3.printStackTrace(c);
            }
            throw e2;
        }
    }

    /* access modifiers changed from: package-private */
    /* JADX WARNING: Code restructure failed: missing block: B:18:0x002b, code lost:
        if (av <= 0) goto L_0x005d;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:19:0x002d, code lost:
        r0 = r6.o;
        r2 = java.lang.System.currentTimeMillis();
     */
    /* JADX WARNING: Code restructure failed: missing block: B:20:0x0035, code lost:
        if (r0 >= r2) goto L_0x005d;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:21:0x0037, code lost:
        r6.o = ((long) av) + r2;
        r1 = r6.r.listIterator();
     */
    /* JADX WARNING: Code restructure failed: missing block: B:23:0x0047, code lost:
        if (r1.hasNext() == false) goto L_0x005d;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:24:0x0049, code lost:
        r0 = (defpackage.aav) r1.next();
     */
    /* JADX WARNING: Code restructure failed: missing block: B:25:0x0053, code lost:
        if (r0.g >= r2) goto L_0x0043;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:26:0x0055, code lost:
        r0.a(false);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:31:?, code lost:
        r0 = new defpackage.aav(r6.g, r6.i, r6.e, r6.f, r7);
        r0.e = r6;
        r6.r.add(r0);
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final synchronized defpackage.aav a(defpackage.zl r7) {
        /*
            r6 = this;
            r2 = 0
            monitor-enter(r6)
            java.util.LinkedList r0 = r6.r     // Catch:{ all -> 0x005a }
            java.util.ListIterator r3 = r0.listIterator()     // Catch:{ all -> 0x005a }
        L_0x0008:
            boolean r0 = r3.hasNext()     // Catch:{ all -> 0x005a }
            if (r0 == 0) goto L_0x0029
            java.lang.Object r0 = r3.next()     // Catch:{ all -> 0x005a }
            aav r0 = (defpackage.aav) r0     // Catch:{ all -> 0x005a }
            zl r1 = r0.f     // Catch:{ all -> 0x005a }
            if (r1 == r7) goto L_0x0020
            zl r1 = r0.f     // Catch:{ all -> 0x005a }
            boolean r1 = r1.equals(r7)     // Catch:{ all -> 0x005a }
            if (r1 == 0) goto L_0x0027
        L_0x0020:
            r1 = 1
        L_0x0021:
            if (r1 == 0) goto L_0x0008
            r0.f = r7     // Catch:{ all -> 0x005a }
        L_0x0025:
            monitor-exit(r6)
            return r0
        L_0x0027:
            r1 = r2
            goto L_0x0021
        L_0x0029:
            int r0 = av     // Catch:{ all -> 0x005a }
            if (r0 <= 0) goto L_0x005d
            long r0 = r6.o     // Catch:{ all -> 0x005a }
            long r2 = java.lang.System.currentTimeMillis()     // Catch:{ all -> 0x005a }
            int r0 = (r0 > r2 ? 1 : (r0 == r2 ? 0 : -1))
            if (r0 >= 0) goto L_0x005d
            int r0 = av     // Catch:{ all -> 0x005a }
            long r0 = (long) r0     // Catch:{ all -> 0x005a }
            long r0 = r0 + r2
            r6.o = r0     // Catch:{ all -> 0x005a }
            java.util.LinkedList r0 = r6.r     // Catch:{ all -> 0x005a }
            java.util.ListIterator r1 = r0.listIterator()     // Catch:{ all -> 0x005a }
        L_0x0043:
            boolean r0 = r1.hasNext()     // Catch:{ all -> 0x005a }
            if (r0 == 0) goto L_0x005d
            java.lang.Object r0 = r1.next()     // Catch:{ all -> 0x005a }
            aav r0 = (defpackage.aav) r0     // Catch:{ all -> 0x005a }
            long r4 = r0.g     // Catch:{ all -> 0x005a }
            int r4 = (r4 > r2 ? 1 : (r4 == r2 ? 0 : -1))
            if (r4 >= 0) goto L_0x0043
            r4 = 0
            r0.a(r4)     // Catch:{ all -> 0x005a }
            goto L_0x0043
        L_0x005a:
            r0 = move-exception
            monitor-exit(r6)
            throw r0
        L_0x005d:
            aav r0 = new aav     // Catch:{ all -> 0x005a }
            xk r1 = r6.g     // Catch:{ all -> 0x005a }
            int r2 = r6.i     // Catch:{ all -> 0x005a }
            java.net.InetAddress r3 = r6.e     // Catch:{ all -> 0x005a }
            int r4 = r6.f     // Catch:{ all -> 0x005a }
            r5 = r7
            r0.<init>(r1, r2, r3, r4, r5)     // Catch:{ all -> 0x005a }
            r0.e = r6     // Catch:{ all -> 0x005a }
            java.util.LinkedList r1 = r6.r     // Catch:{ all -> 0x005a }
            r1.add(r0)     // Catch:{ all -> 0x005a }
            goto L_0x0025
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.aax.a(zl):aav");
    }

    /* access modifiers changed from: package-private */
    public final yy a(zl zlVar, String str, int i2) {
        int i3;
        int i4;
        aay a2 = a(zlVar).a("IPC$", (String) null);
        abd abd = new abd();
        a2.a((zm) new abc(str), (zm) abd);
        if (abd.S == 0) {
            return null;
        }
        if (i2 == 0 || abd.S < i2) {
            i2 = abd.S;
        }
        yy yyVar = new yy();
        String[] strArr = new String[4];
        long currentTimeMillis = System.currentTimeMillis() + (yx.c * 1000);
        int i5 = 0;
        while (true) {
            yyVar.g = zlVar.m;
            yyVar.b = (long) abd.U[i5].i;
            yyVar.h = currentTimeMillis;
            if (str.equals("")) {
                yyVar.c = abd.U[i5].j.substring(1).toLowerCase();
            } else {
                String str2 = abd.U[i5].k;
                int i6 = 0;
                int length = str2.length();
                int i7 = 0;
                int i8 = 0;
                while (true) {
                    if (i8 == 3) {
                        strArr[3] = str2.substring(i6);
                        break;
                    }
                    if (i7 == length || str2.charAt(i7) == '\\') {
                        int i9 = i8 + 1;
                        strArr[i8] = str2.substring(i6, i7);
                        i3 = i7 + 1;
                        i4 = i9;
                    } else {
                        int i10 = i6;
                        i4 = i8;
                        i3 = i10;
                    }
                    int i11 = i7 + 1;
                    if (i7 >= length) {
                        while (i4 < 4) {
                            strArr[i4] = "";
                            i4++;
                        }
                    } else {
                        i7 = i11;
                        int i12 = i3;
                        i8 = i4;
                        i6 = i12;
                    }
                }
                yyVar.c = strArr[1];
                yyVar.d = strArr[2];
                yyVar.f = strArr[3];
            }
            yyVar.a = abd.a;
            i5++;
            if (i5 == i2) {
                return yyVar.i;
            }
            yy yyVar2 = new yy();
            yyVar2.i = yyVar.i;
            yyVar.i = yyVar2;
            yyVar = yyVar.i;
        }
    }

    public final void a() {
        try {
            super.a((long) as);
        } catch (acd e2) {
            throw new aaq("Failed to connect: " + this.g, (Throwable) e2);
        }
    }

    /* access modifiers changed from: protected */
    public final void a(aca aca) {
        int i2 = this.j + 1;
        this.j = i2;
        if (i2 == 32000) {
            this.j = 1;
        }
        ((zm) aca).q = this.j;
    }

    /* access modifiers changed from: protected */
    public final void a(acb acb) {
        boolean z2 = false;
        zm zmVar = (zm) acb;
        zmVar.t = this.z;
        if ((this.x & Integer.MIN_VALUE) == Integer.MIN_VALUE) {
            z2 = true;
        }
        zmVar.v = z2;
        synchronized (a) {
            System.arraycopy(this.m, 0, a, 0, 36);
            short a2 = 65535 & abu.a(a);
            if (a2 < 33 || a2 + 4 > this.w) {
                throw new IOException("Invalid payload size: " + a2);
            }
            int b2 = abu.b(a, 9) & -1;
            if (zmVar.g == 46 && (b2 == 0 || b2 == -2147483643)) {
                aad aad = (aad) zmVar;
                a(this.l, a, 36, 27);
                zmVar.b(a);
                int i2 = aad.E - 59;
                if (aad.s > 0 && i2 > 0 && i2 < 4) {
                    a(this.l, a, 63, i2);
                }
                if (aad.D > 0) {
                    a(this.l, aad.b, aad.c, aad.D);
                }
            } else {
                a(this.l, a, 36, a2 - 32);
                zmVar.b(a);
                if (zmVar instanceof aah) {
                    ((aah) zmVar).nextElement();
                }
            }
            if (this.q != null && zmVar.l == 0) {
                this.q.a(a, zmVar);
            }
            if (abx.a >= 4) {
                c.println(acb);
                if (abx.a >= 6) {
                    abw.a((PrintStream) c, a, 4, (int) a2);
                }
            }
        }
    }

    /* access modifiers changed from: package-private */
    /* JADX WARNING: No exception handlers in catch block: Catch:{  } */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final void a(defpackage.zm r9, defpackage.zm r10) {
        /*
            r8 = this;
            r8.a()
            int r2 = r9.m
            int r3 = r8.t
            r2 = r2 | r3
            r9.m = r2
            boolean r2 = r8.z
            r9.t = r2
            r9.C = r10
            zn r2 = r9.B
            if (r2 != 0) goto L_0x0018
            zn r2 = r8.q
            r9.B = r2
        L_0x0018:
            if (r10 != 0) goto L_0x001e
            r8.c(r9)     // Catch:{ aaq -> 0x00cb, IOException -> 0x00f8 }
        L_0x001d:
            return
        L_0x001e:
            boolean r2 = r9 instanceof defpackage.aag     // Catch:{ aaq -> 0x00cb, IOException -> 0x00f8 }
            if (r2 == 0) goto L_0x00ed
            byte r2 = r9.g     // Catch:{ aaq -> 0x00cb, IOException -> 0x00f8 }
            r10.g = r2     // Catch:{ aaq -> 0x00cb, IOException -> 0x00f8 }
            r0 = r9
            aag r0 = (defpackage.aag) r0     // Catch:{ aaq -> 0x00cb, IOException -> 0x00f8 }
            r2 = r0
            r0 = r10
            aah r0 = (defpackage.aah) r0     // Catch:{ aaq -> 0x00cb, IOException -> 0x00f8 }
            r3 = r0
            int r4 = r8.v     // Catch:{ aaq -> 0x00cb, IOException -> 0x00f8 }
            r2.U = r4     // Catch:{ aaq -> 0x00cb, IOException -> 0x00f8 }
            r3.e()     // Catch:{ aaq -> 0x00cb, IOException -> 0x00f8 }
            defpackage.yw.a(r2, r3)     // Catch:{ all -> 0x00bf }
            r2.nextElement()     // Catch:{ all -> 0x00bf }
            boolean r4 = r2.hasMoreElements()     // Catch:{ all -> 0x00bf }
            if (r4 == 0) goto L_0x00cd
            zp r4 = new zp     // Catch:{ all -> 0x00bf }
            r4.<init>()     // Catch:{ all -> 0x00bf }
            int r5 = as     // Catch:{ all -> 0x00bf }
            long r6 = (long) r5     // Catch:{ all -> 0x00bf }
            super.a(r2, r4, r6)     // Catch:{ all -> 0x00bf }
            int r5 = r4.l     // Catch:{ all -> 0x00bf }
            if (r5 == 0) goto L_0x0053
            r8.b(r2, r4)     // Catch:{ all -> 0x00bf }
        L_0x0053:
            r2.nextElement()     // Catch:{ all -> 0x00bf }
        L_0x0056:
            monitor-enter(r8)     // Catch:{ all -> 0x00bf }
            r4 = 0
            r10.u = r4     // Catch:{ all -> 0x00bc }
            r4 = 0
            r3.b_ = r4     // Catch:{ all -> 0x00bc }
            java.util.HashMap r4 = r8.H     // Catch:{ InterruptedException -> 0x00ae }
            r4.put(r2, r3)     // Catch:{ InterruptedException -> 0x00ae }
        L_0x0062:
            r8.c(r2)     // Catch:{ InterruptedException -> 0x00ae }
            boolean r4 = r2.hasMoreElements()     // Catch:{ InterruptedException -> 0x00ae }
            if (r4 == 0) goto L_0x0071
            java.lang.Object r4 = r2.nextElement()     // Catch:{ InterruptedException -> 0x00ae }
            if (r4 != 0) goto L_0x0062
        L_0x0071:
            int r4 = as     // Catch:{ InterruptedException -> 0x00ae }
            long r4 = (long) r4     // Catch:{ InterruptedException -> 0x00ae }
            long r6 = java.lang.System.currentTimeMillis()     // Catch:{ InterruptedException -> 0x00ae }
            long r6 = r6 + r4
            r3.a_ = r6     // Catch:{ InterruptedException -> 0x00ae }
        L_0x007b:
            boolean r6 = r3.hasMoreElements()     // Catch:{ InterruptedException -> 0x00ae }
            if (r6 == 0) goto L_0x00d1
            r8.wait(r4)     // Catch:{ InterruptedException -> 0x00ae }
            long r4 = r3.a_     // Catch:{ InterruptedException -> 0x00ae }
            long r6 = java.lang.System.currentTimeMillis()     // Catch:{ InterruptedException -> 0x00ae }
            long r4 = r4 - r6
            r6 = 0
            int r6 = (r4 > r6 ? 1 : (r4 == r6 ? 0 : -1))
            if (r6 > 0) goto L_0x007b
            acd r4 = new acd     // Catch:{ InterruptedException -> 0x00ae }
            java.lang.StringBuilder r5 = new java.lang.StringBuilder     // Catch:{ InterruptedException -> 0x00ae }
            r5.<init>()     // Catch:{ InterruptedException -> 0x00ae }
            java.lang.StringBuilder r5 = r5.append(r8)     // Catch:{ InterruptedException -> 0x00ae }
            java.lang.String r6 = " timedout waiting for response to "
            java.lang.StringBuilder r5 = r5.append(r6)     // Catch:{ InterruptedException -> 0x00ae }
            java.lang.StringBuilder r5 = r5.append(r2)     // Catch:{ InterruptedException -> 0x00ae }
            java.lang.String r5 = r5.toString()     // Catch:{ InterruptedException -> 0x00ae }
            r4.<init>((java.lang.String) r5)     // Catch:{ InterruptedException -> 0x00ae }
            throw r4     // Catch:{ InterruptedException -> 0x00ae }
        L_0x00ae:
            r4 = move-exception
            acd r5 = new acd     // Catch:{ all -> 0x00b5 }
            r5.<init>((java.lang.Throwable) r4)     // Catch:{ all -> 0x00b5 }
            throw r5     // Catch:{ all -> 0x00b5 }
        L_0x00b5:
            r4 = move-exception
            java.util.HashMap r5 = r8.H     // Catch:{ all -> 0x00bc }
            r5.remove(r2)     // Catch:{ all -> 0x00bc }
            throw r4     // Catch:{ all -> 0x00bc }
        L_0x00bc:
            r4 = move-exception
            monitor-exit(r8)     // Catch:{ all -> 0x00bc }
            throw r4     // Catch:{ all -> 0x00bf }
        L_0x00bf:
            r4 = move-exception
            byte[] r2 = r2.V     // Catch:{ aaq -> 0x00cb, IOException -> 0x00f8 }
            defpackage.yw.a(r2)     // Catch:{ aaq -> 0x00cb, IOException -> 0x00f8 }
            byte[] r2 = r3.O     // Catch:{ aaq -> 0x00cb, IOException -> 0x00f8 }
            defpackage.yw.a(r2)     // Catch:{ aaq -> 0x00cb, IOException -> 0x00f8 }
            throw r4     // Catch:{ aaq -> 0x00cb, IOException -> 0x00f8 }
        L_0x00cb:
            r2 = move-exception
            throw r2
        L_0x00cd:
            r8.a((defpackage.aca) r2)     // Catch:{ all -> 0x00bf }
            goto L_0x0056
        L_0x00d1:
            int r4 = r10.l     // Catch:{ InterruptedException -> 0x00ae }
            if (r4 == 0) goto L_0x00d8
            r8.b(r2, r3)     // Catch:{ InterruptedException -> 0x00ae }
        L_0x00d8:
            java.util.HashMap r4 = r8.H     // Catch:{ all -> 0x00bc }
            r4.remove(r2)     // Catch:{ all -> 0x00bc }
            monitor-exit(r8)     // Catch:{ all -> 0x00bc }
            byte[] r2 = r2.V     // Catch:{ aaq -> 0x00cb, IOException -> 0x00f8 }
            defpackage.yw.a(r2)     // Catch:{ aaq -> 0x00cb, IOException -> 0x00f8 }
            byte[] r2 = r3.O     // Catch:{ aaq -> 0x00cb, IOException -> 0x00f8 }
            defpackage.yw.a(r2)     // Catch:{ aaq -> 0x00cb, IOException -> 0x00f8 }
        L_0x00e8:
            r8.b(r9, r10)
            goto L_0x001d
        L_0x00ed:
            byte r2 = r9.g     // Catch:{ aaq -> 0x00cb, IOException -> 0x00f8 }
            r10.g = r2     // Catch:{ aaq -> 0x00cb, IOException -> 0x00f8 }
            int r2 = as     // Catch:{ aaq -> 0x00cb, IOException -> 0x00f8 }
            long r2 = (long) r2     // Catch:{ aaq -> 0x00cb, IOException -> 0x00f8 }
            super.a(r9, r10, r2)     // Catch:{ aaq -> 0x00cb, IOException -> 0x00f8 }
            goto L_0x00e8
        L_0x00f8:
            r2 = move-exception
            aaq r3 = new aaq
            java.lang.String r4 = r2.getMessage()
            r3.<init>((java.lang.String) r4, (java.lang.Throwable) r2)
            throw r3
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.aax.a(zm, zm):void");
    }

    /* access modifiers changed from: protected */
    public final void a(boolean z2) {
        ListIterator listIterator = this.r.listIterator();
        while (listIterator.hasNext()) {
            try {
                ((aav) listIterator.next()).a(z2);
            } finally {
                this.q = null;
                this.h = null;
                this.A = null;
            }
        }
        this.h.shutdownOutput();
        this.k.close();
        this.l.close();
        this.h.close();
    }

    /* access modifiers changed from: package-private */
    public final boolean a(int i2) {
        try {
            a((long) as);
            return (this.x & i2) == i2;
        } catch (IOException e2) {
            throw new aaq(e2.getMessage(), (Throwable) e2);
        }
    }

    /* access modifiers changed from: protected */
    public final void b() {
        int i2 = 445;
        zw zwVar = new zw(this.s);
        try {
            a(this.i, (zm) zwVar);
        } catch (ConnectException e2) {
            if (this.i == 0 || this.i == 445) {
                i2 = 139;
            }
            this.i = i2;
            a(this.i, (zm) zwVar);
        } catch (NoRouteToHostException e3) {
            if (this.i == 0 || this.i == 445) {
                i2 = 139;
            }
            this.i = i2;
            a(this.i, (zm) zwVar);
        }
        if (zwVar.a > 10) {
            throw new aaq("This client does not support the negotiated dialect.");
        } else if ((this.s.d & Integer.MIN_VALUE) == Integer.MIN_VALUE || this.s.o == 8 || ai != 0) {
            this.A = this.g.b();
            if (this.s.j || (this.s.i && ae)) {
                this.t |= 4;
            } else {
                this.t &= 65531;
            }
            this.u = Math.min(this.u, this.s.a);
            if (this.u <= 0) {
                this.u = 1;
            }
            this.v = Math.min(this.v, this.s.b);
            this.x &= this.s.d;
            if ((this.s.d & Integer.MIN_VALUE) == Integer.MIN_VALUE) {
                this.x |= Integer.MIN_VALUE;
            }
            if ((this.x & 4) != 0) {
                return;
            }
            if (ac) {
                this.x |= 4;
                return;
            }
            this.z = false;
            this.t &= 32767;
        } else {
            throw new aaq("Unexpected encryption key length: " + this.s.o);
        }
    }

    /* access modifiers changed from: protected */
    public final void b(aca aca) {
        synchronized (a) {
            zm zmVar = (zm) aca;
            int a2 = zmVar.a(a);
            abu.a(65535 & a2, a);
            if (abx.a >= 4) {
                zm zmVar2 = zmVar;
                do {
                    c.println(zmVar2);
                    if (!(zmVar2 instanceof yv) || (zmVar2 = ((yv) zmVar2).a) == null) {
                    }
                    c.println(zmVar2);
                    break;
                } while ((zmVar2 = ((yv) zmVar2).a) == null);
                if (abx.a >= 6) {
                    abw.a((PrintStream) c, a, 4, a2);
                }
            }
            this.k.write(a, 0, a2 + 4);
        }
    }

    /* access modifiers changed from: package-private */
    public final boolean b(zl zlVar) {
        return (this.t & 4) != 0 && this.q == null && zlVar != zl.e && !zl.e.equals(zlVar);
    }

    /* access modifiers changed from: protected */
    public final aca c() {
        while (a(this.l, this.m, 0, 4) >= 4) {
            if (this.m[0] != -123) {
                if (a(this.l, this.m, 4, 32) < 32) {
                    return null;
                }
                if (abx.a >= 4) {
                    c.println("New data read: " + this);
                    abw.a((PrintStream) c, this.m, 4, 32);
                }
                while (true) {
                    if (this.m[0] == 0 && this.m[1] == 0 && this.m[4] == -1 && this.m[5] == 83 && this.m[6] == 77 && this.m[7] == 66) {
                        this.n.q = abu.a(this.m, 34) & 65535;
                        return this.n;
                    }
                    for (int i2 = 0; i2 < 35; i2++) {
                        this.m[i2] = this.m[i2 + 1];
                    }
                    int read = this.l.read();
                    if (read == -1) {
                        return null;
                    }
                    this.m[35] = (byte) read;
                }
            }
        }
        return null;
    }

    /* access modifiers changed from: protected */
    public final void d() {
        short a2 = abu.a(this.m) & 65535;
        if (a2 < 33 || a2 + 4 > this.w) {
            this.l.skip((long) this.l.available());
        } else {
            this.l.skip((long) (a2 - 32));
        }
    }

    public final String toString() {
        return super.toString() + "[" + this.g + ":" + this.i + "]";
    }
}
