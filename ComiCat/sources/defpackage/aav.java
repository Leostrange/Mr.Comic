package defpackage;

import java.net.InetAddress;
import java.util.Enumeration;
import java.util.Vector;

/* renamed from: aav  reason: default package */
/* compiled from: SmbSession */
public final class aav {
    static yk[] a = null;
    private static final String i = xj.b("jcifs.smb.client.logonShare", (String) null);
    private static final int j = xj.a("jcifs.netbios.lookupRespLimit", 3);
    private static final String k = xj.b("jcifs.smb.client.domain", (String) null);
    private static final String l = xj.b("jcifs.smb.client.username", (String) null);
    private static final int m = (xj.a("jcifs.netbios.cachePolicy", 600) * 60);
    int b;
    int c;
    Vector d;
    aax e = null;
    zl f;
    long g;
    String h = null;
    private xk n;
    private int o;
    private int p;
    private InetAddress q;

    aav(xk xkVar, int i2, InetAddress inetAddress, int i3, zl zlVar) {
        this.n = xkVar;
        this.o = i2;
        this.q = inetAddress;
        this.p = i3;
        this.f = zlVar;
        this.d = new Vector();
        this.b = 0;
    }

    /* access modifiers changed from: package-private */
    public final synchronized aax a() {
        if (this.e == null) {
            this.e = aax.a(this.n, this.o, this.q, this.p);
        }
        return this.e;
    }

    /* access modifiers changed from: package-private */
    /* JADX WARNING: Code restructure failed: missing block: B:12:?, code lost:
        r0 = new defpackage.aay(r3, r4, r5);
        r3.d.addElement(r0);
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final synchronized defpackage.aay a(java.lang.String r4, java.lang.String r5) {
        /*
            r3 = this;
            monitor-enter(r3)
            if (r4 != 0) goto L_0x0005
            java.lang.String r4 = "IPC$"
        L_0x0005:
            java.util.Vector r0 = r3.d     // Catch:{ all -> 0x002a }
            java.util.Enumeration r1 = r0.elements()     // Catch:{ all -> 0x002a }
        L_0x000b:
            boolean r0 = r1.hasMoreElements()     // Catch:{ all -> 0x002a }
            if (r0 == 0) goto L_0x001f
            java.lang.Object r0 = r1.nextElement()     // Catch:{ all -> 0x002a }
            aay r0 = (defpackage.aay) r0     // Catch:{ all -> 0x002a }
            boolean r2 = r0.a((java.lang.String) r4, (java.lang.String) r5)     // Catch:{ all -> 0x002a }
            if (r2 == 0) goto L_0x000b
        L_0x001d:
            monitor-exit(r3)
            return r0
        L_0x001f:
            aay r0 = new aay     // Catch:{ all -> 0x002a }
            r0.<init>(r3, r4, r5)     // Catch:{ all -> 0x002a }
            java.util.Vector r1 = r3.d     // Catch:{ all -> 0x002a }
            r1.addElement(r0)     // Catch:{ all -> 0x002a }
            goto L_0x001d
        L_0x002a:
            r0 = move-exception
            monitor-exit(r3)
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.aav.a(java.lang.String, java.lang.String):aay");
    }

    /* access modifiers changed from: package-private */
    /* JADX WARNING: Code restructure failed: missing block: B:101:0x0177, code lost:
        if ((r14.e.t & 4) == 0) goto L_0x019e;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:102:0x0179, code lost:
        r3 = true;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:103:0x017a, code lost:
        r3 = new defpackage.zk(r14.f, r3);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:104:0x0182, code lost:
        r2 = defpackage.aax.c;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:105:0x0187, code lost:
        if (defpackage.abx.a < 4) goto L_0x018e;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:106:0x0189, code lost:
        defpackage.aax.c.println(r3);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:108:0x0190, code lost:
        if (r3.d == false) goto L_0x01a0;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:109:0x0192, code lost:
        r14.h = r3.g;
        r14.b = 2;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:110:0x0199, code lost:
        r2 = 0;
        r7 = r3;
        r3 = r8;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:111:0x019e, code lost:
        r3 = false;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:113:?, code lost:
        r8 = r3.a(r8);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:114:0x01a4, code lost:
        if (r8 == null) goto L_0x0271;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:116:?, code lost:
        r11 = new defpackage.aae(r14, (defpackage.zm) null, r8);
        r8 = new defpackage.aaf((defpackage.zm) null);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:117:0x01ba, code lost:
        if (r14.e.b(r14.f) == false) goto L_0x01c8;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:118:0x01bc, code lost:
        r2 = r3.f;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:119:0x01be, code lost:
        if (r2 == null) goto L_0x01c8;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:120:0x01c0, code lost:
        r11.B = new defpackage.zn(r2, true);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:121:0x01c8, code lost:
        r11.p = r14.c;
        r14.c = 0;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:123:?, code lost:
        r14.e.a((defpackage.zm) r11, (defpackage.zm) r8);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:131:0x01ed, code lost:
        r2 = move-exception;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:133:?, code lost:
        r14.e.b(true);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:136:?, code lost:
        r14.c = 0;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:137:0x01f7, code lost:
        throw r2;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:138:0x01f8, code lost:
        r2 = move-exception;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:139:0x01f9, code lost:
        throw r2;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:140:0x01fa, code lost:
        r2 = move-exception;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:142:?, code lost:
        r14.e.b(true);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:143:0x0201, code lost:
        r6 = r2;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:145:0x0204, code lost:
        r6 = r2;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:175:0x026e, code lost:
        r2 = e;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:176:0x0271, code lost:
        r2 = r7;
        r7 = r3;
        r3 = r8;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:39:?, code lost:
        r14.b = 1;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:41:?, code lost:
        r14.e.a();
        r7 = defpackage.aax.c;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:42:0x0060, code lost:
        if (defpackage.abx.a < 4) goto L_0x0088;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:43:0x0062, code lost:
        defpackage.aax.c.println("sessionSetup: accountName=" + r14.f.i + ",primaryDomain=" + r14.f.h);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:44:0x0088, code lost:
        r14.c = 0;
        r7 = 10;
        r8 = r3;
        r3 = null;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:45:0x008e, code lost:
        switch(r7) {
            case 10: goto L_0x00b6;
            case 20: goto L_0x016f;
            default: goto L_0x0091;
        };
     */
    /* JADX WARNING: Code restructure failed: missing block: B:47:0x00a5, code lost:
        throw new defpackage.aaq("Unexpected session setup state: " + r7);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:48:0x00a6, code lost:
        r2 = move-exception;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:51:?, code lost:
        a(true);
        r14.b = 0;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:52:0x00ae, code lost:
        throw r2;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:53:0x00af, code lost:
        r2 = move-exception;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:55:?, code lost:
        r14.e.notifyAll();
     */
    /* JADX WARNING: Code restructure failed: missing block: B:56:0x00b5, code lost:
        throw r2;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:59:0x00ba, code lost:
        if (r14.f == defpackage.zl.d) goto L_0x00d5;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:61:0x00c4, code lost:
        if (r14.e.a(Integer.MIN_VALUE) == false) goto L_0x00d5;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:62:0x00c6, code lost:
        r2 = 20;
        r7 = r3;
        r3 = r8;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:68:?, code lost:
        r7 = new defpackage.aae(r14, r15, r14.f);
        r11 = new defpackage.aaf(r16);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:69:0x00eb, code lost:
        if (r14.e.b(r14.f) == false) goto L_0x010d;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:71:0x00f1, code lost:
        if (r14.f.m == false) goto L_0x013e;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:73:0x00f7, code lost:
        if (defpackage.zl.c == "") goto L_0x013e;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:74:0x00f9, code lost:
        r14.e.a(defpackage.zl.g).a(i, (java.lang.String) null).b((defpackage.zm) null, (defpackage.zm) null);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:75:0x010d, code lost:
        r7.z = r14.f;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:77:?, code lost:
        r14.e.a((defpackage.zm) r7, (defpackage.zm) r11);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:78:0x0116, code lost:
        r2 = r6;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:90:0x013e, code lost:
        r7.B = new defpackage.zn(r14.f.c(r14.e.s.p), false);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:91:0x0153, code lost:
        r2 = move-exception;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:92:0x0154, code lost:
        throw r2;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:99:0x016f, code lost:
        if (r3 != null) goto L_0x0182;
     */
    /* JADX WARNING: Removed duplicated region for block: B:157:0x0222 A[Catch:{ aaq -> 0x025f }] */
    /* JADX WARNING: Removed duplicated region for block: B:177:0x0276 A[LOOP:1: B:45:0x008e->B:177:0x0276, LOOP_END] */
    /* JADX WARNING: Removed duplicated region for block: B:19:0x0034  */
    /* JADX WARNING: Removed duplicated region for block: B:64:0x00cd A[SYNTHETIC, Splitter:B:64:0x00cd] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final void a(defpackage.zm r15, defpackage.zm r16) {
        /*
            r14 = this;
            r12 = 2
            r4 = 1
            r6 = 0
            r5 = 0
            aax r9 = r14.a()
            monitor-enter(r9)
            if (r16 == 0) goto L_0x0010
            r2 = 0
            r0 = r16
            r0.u = r2     // Catch:{ all -> 0x0050 }
        L_0x0010:
            long r2 = java.lang.System.currentTimeMillis()     // Catch:{ all -> 0x0050 }
            int r7 = defpackage.aax.av     // Catch:{ all -> 0x0050 }
            long r10 = (long) r7     // Catch:{ all -> 0x0050 }
            long r2 = r2 + r10
            r14.g = r2     // Catch:{ all -> 0x0050 }
            aax r10 = r14.a()     // Catch:{ all -> 0x0050 }
            monitor-enter(r10)     // Catch:{ all -> 0x0050 }
            r2 = 0
            byte[] r3 = new byte[r2]     // Catch:{ all -> 0x004d }
            r2 = 10
        L_0x0024:
            int r7 = r14.b     // Catch:{ all -> 0x004d }
            if (r7 == 0) goto L_0x0053
            int r7 = r14.b     // Catch:{ all -> 0x004d }
            if (r7 == r12) goto L_0x0031
            int r7 = r14.b     // Catch:{ all -> 0x004d }
            r8 = 3
            if (r7 != r8) goto L_0x003c
        L_0x0031:
            monitor-exit(r10)     // Catch:{ all -> 0x004d }
        L_0x0032:
            if (r16 == 0) goto L_0x021e
            r0 = r16
            boolean r2 = r0.u     // Catch:{ all -> 0x0050 }
            if (r2 == 0) goto L_0x021e
            monitor-exit(r9)     // Catch:{ all -> 0x0050 }
        L_0x003b:
            return
        L_0x003c:
            aax r7 = r14.e     // Catch:{ InterruptedException -> 0x0042 }
            r7.wait()     // Catch:{ InterruptedException -> 0x0042 }
            goto L_0x0024
        L_0x0042:
            r2 = move-exception
            aaq r3 = new aaq     // Catch:{ all -> 0x004d }
            java.lang.String r4 = r2.getMessage()     // Catch:{ all -> 0x004d }
            r3.<init>((java.lang.String) r4, (java.lang.Throwable) r2)     // Catch:{ all -> 0x004d }
            throw r3     // Catch:{ all -> 0x004d }
        L_0x004d:
            r2 = move-exception
            monitor-exit(r10)     // Catch:{ all -> 0x004d }
            throw r2     // Catch:{ all -> 0x0050 }
        L_0x0050:
            r2 = move-exception
            monitor-exit(r9)     // Catch:{ all -> 0x0050 }
            throw r2
        L_0x0053:
            r7 = 1
            r14.b = r7     // Catch:{ all -> 0x004d }
            aax r7 = r14.e     // Catch:{ aaq -> 0x00a6 }
            r7.a()     // Catch:{ aaq -> 0x00a6 }
            abx r7 = defpackage.aax.c     // Catch:{ aaq -> 0x00a6 }
            int r7 = defpackage.abx.a     // Catch:{ aaq -> 0x00a6 }
            r8 = 4
            if (r7 < r8) goto L_0x0088
            abx r7 = defpackage.aax.c     // Catch:{ aaq -> 0x00a6 }
            java.lang.StringBuilder r8 = new java.lang.StringBuilder     // Catch:{ aaq -> 0x00a6 }
            java.lang.String r11 = "sessionSetup: accountName="
            r8.<init>(r11)     // Catch:{ aaq -> 0x00a6 }
            zl r11 = r14.f     // Catch:{ aaq -> 0x00a6 }
            java.lang.String r11 = r11.i     // Catch:{ aaq -> 0x00a6 }
            java.lang.StringBuilder r8 = r8.append(r11)     // Catch:{ aaq -> 0x00a6 }
            java.lang.String r11 = ",primaryDomain="
            java.lang.StringBuilder r8 = r8.append(r11)     // Catch:{ aaq -> 0x00a6 }
            zl r11 = r14.f     // Catch:{ aaq -> 0x00a6 }
            java.lang.String r11 = r11.h     // Catch:{ aaq -> 0x00a6 }
            java.lang.StringBuilder r8 = r8.append(r11)     // Catch:{ aaq -> 0x00a6 }
            java.lang.String r8 = r8.toString()     // Catch:{ aaq -> 0x00a6 }
            r7.println(r8)     // Catch:{ aaq -> 0x00a6 }
        L_0x0088:
            r7 = 0
            r14.c = r7     // Catch:{ aaq -> 0x00a6 }
            r7 = r2
            r8 = r3
            r3 = r6
        L_0x008e:
            switch(r7) {
                case 10: goto L_0x00b6;
                case 20: goto L_0x016f;
                default: goto L_0x0091;
            }     // Catch:{ aaq -> 0x00a6 }
        L_0x0091:
            aaq r2 = new aaq     // Catch:{ aaq -> 0x00a6 }
            java.lang.StringBuilder r3 = new java.lang.StringBuilder     // Catch:{ aaq -> 0x00a6 }
            java.lang.String r4 = "Unexpected session setup state: "
            r3.<init>(r4)     // Catch:{ aaq -> 0x00a6 }
            java.lang.StringBuilder r3 = r3.append(r7)     // Catch:{ aaq -> 0x00a6 }
            java.lang.String r3 = r3.toString()     // Catch:{ aaq -> 0x00a6 }
            r2.<init>((java.lang.String) r3)     // Catch:{ aaq -> 0x00a6 }
            throw r2     // Catch:{ aaq -> 0x00a6 }
        L_0x00a6:
            r2 = move-exception
            r3 = 1
            r14.a(r3)     // Catch:{ all -> 0x00af }
            r3 = 0
            r14.b = r3     // Catch:{ all -> 0x00af }
            throw r2     // Catch:{ all -> 0x00af }
        L_0x00af:
            r2 = move-exception
            aax r3 = r14.e     // Catch:{ all -> 0x004d }
            r3.notifyAll()     // Catch:{ all -> 0x004d }
            throw r2     // Catch:{ all -> 0x004d }
        L_0x00b6:
            zl r2 = r14.f     // Catch:{ aaq -> 0x00a6 }
            zl r7 = defpackage.zl.d     // Catch:{ aaq -> 0x00a6 }
            if (r2 == r7) goto L_0x00d5
            aax r2 = r14.e     // Catch:{ aaq -> 0x00a6 }
            r7 = -2147483648(0xffffffff80000000, float:-0.0)
            boolean r2 = r2.a((int) r7)     // Catch:{ aaq -> 0x00a6 }
            if (r2 == 0) goto L_0x00d5
            r7 = 20
            r2 = r7
            r7 = r3
            r3 = r8
        L_0x00cb:
            if (r2 != 0) goto L_0x0276
            aax r2 = r14.e     // Catch:{ all -> 0x004d }
            r2.notifyAll()     // Catch:{ all -> 0x004d }
            monitor-exit(r10)     // Catch:{ all -> 0x004d }
            goto L_0x0032
        L_0x00d5:
            aae r7 = new aae     // Catch:{ aaq -> 0x00a6 }
            zl r2 = r14.f     // Catch:{ aaq -> 0x00a6 }
            r7.<init>(r14, r15, r2)     // Catch:{ aaq -> 0x00a6 }
            aaf r11 = new aaf     // Catch:{ aaq -> 0x00a6 }
            r0 = r16
            r11.<init>(r0)     // Catch:{ aaq -> 0x00a6 }
            aax r2 = r14.e     // Catch:{ aaq -> 0x00a6 }
            zl r12 = r14.f     // Catch:{ aaq -> 0x00a6 }
            boolean r2 = r2.b((defpackage.zl) r12)     // Catch:{ aaq -> 0x00a6 }
            if (r2 == 0) goto L_0x010d
            zl r2 = r14.f     // Catch:{ aaq -> 0x00a6 }
            boolean r2 = r2.m     // Catch:{ aaq -> 0x00a6 }
            if (r2 == 0) goto L_0x013e
            java.lang.String r2 = defpackage.zl.c     // Catch:{ aaq -> 0x00a6 }
            java.lang.String r12 = ""
            if (r2 == r12) goto L_0x013e
            aax r2 = r14.e     // Catch:{ aaq -> 0x00a6 }
            zl r12 = defpackage.zl.g     // Catch:{ aaq -> 0x00a6 }
            aav r2 = r2.a((defpackage.zl) r12)     // Catch:{ aaq -> 0x00a6 }
            java.lang.String r12 = i     // Catch:{ aaq -> 0x00a6 }
            r13 = 0
            aay r2 = r2.a((java.lang.String) r12, (java.lang.String) r13)     // Catch:{ aaq -> 0x00a6 }
            r12 = 0
            r13 = 0
            r2.b(r12, r13)     // Catch:{ aaq -> 0x00a6 }
        L_0x010d:
            zl r2 = r14.f     // Catch:{ aaq -> 0x00a6 }
            r7.z = r2     // Catch:{ aaq -> 0x00a6 }
            aax r2 = r14.e     // Catch:{ zo -> 0x0153, aaq -> 0x026e }
            r2.a((defpackage.zm) r7, (defpackage.zm) r11)     // Catch:{ zo -> 0x0153, aaq -> 0x026e }
            r2 = r6
        L_0x0117:
            boolean r6 = r11.b     // Catch:{ aaq -> 0x00a6 }
            if (r6 == 0) goto L_0x0155
            java.lang.String r6 = "GUEST"
            zl r12 = r14.f     // Catch:{ aaq -> 0x00a6 }
            java.lang.String r12 = r12.i     // Catch:{ aaq -> 0x00a6 }
            boolean r6 = r6.equalsIgnoreCase(r12)     // Catch:{ aaq -> 0x00a6 }
            if (r6 != 0) goto L_0x0155
            aax r6 = r14.e     // Catch:{ aaq -> 0x00a6 }
            aax$a r6 = r6.s     // Catch:{ aaq -> 0x00a6 }
            int r6 = r6.g     // Catch:{ aaq -> 0x00a6 }
            if (r6 == 0) goto L_0x0155
            zl r6 = r14.f     // Catch:{ aaq -> 0x00a6 }
            zl r12 = defpackage.zl.d     // Catch:{ aaq -> 0x00a6 }
            if (r6 == r12) goto L_0x0155
            zo r2 = new zo     // Catch:{ aaq -> 0x00a6 }
            r3 = -1073741715(0xffffffffc000006d, float:-2.000026)
            r2.<init>(r3)     // Catch:{ aaq -> 0x00a6 }
            throw r2     // Catch:{ aaq -> 0x00a6 }
        L_0x013e:
            zl r2 = r14.f     // Catch:{ aaq -> 0x00a6 }
            aax r12 = r14.e     // Catch:{ aaq -> 0x00a6 }
            aax$a r12 = r12.s     // Catch:{ aaq -> 0x00a6 }
            byte[] r12 = r12.p     // Catch:{ aaq -> 0x00a6 }
            byte[] r2 = r2.c(r12)     // Catch:{ aaq -> 0x00a6 }
            zn r12 = new zn     // Catch:{ aaq -> 0x00a6 }
            r13 = 0
            r12.<init>(r2, r13)     // Catch:{ aaq -> 0x00a6 }
            r7.B = r12     // Catch:{ aaq -> 0x00a6 }
            goto L_0x010d
        L_0x0153:
            r2 = move-exception
            throw r2     // Catch:{ aaq -> 0x00a6 }
        L_0x0155:
            if (r2 == 0) goto L_0x0158
            throw r2     // Catch:{ aaq -> 0x00a6 }
        L_0x0158:
            int r6 = r11.p     // Catch:{ aaq -> 0x00a6 }
            r14.c = r6     // Catch:{ aaq -> 0x00a6 }
            zn r6 = r7.B     // Catch:{ aaq -> 0x00a6 }
            if (r6 == 0) goto L_0x0166
            aax r6 = r14.e     // Catch:{ aaq -> 0x00a6 }
            zn r7 = r7.B     // Catch:{ aaq -> 0x00a6 }
            r6.q = r7     // Catch:{ aaq -> 0x00a6 }
        L_0x0166:
            r6 = 2
            r14.b = r6     // Catch:{ aaq -> 0x00a6 }
            r6 = r2
            r7 = r3
            r2 = r5
            r3 = r8
            goto L_0x00cb
        L_0x016f:
            if (r3 != 0) goto L_0x0182
            aax r2 = r14.e     // Catch:{ aaq -> 0x00a6 }
            int r2 = r2.t     // Catch:{ aaq -> 0x00a6 }
            r2 = r2 & 4
            if (r2 == 0) goto L_0x019e
            r3 = r4
        L_0x017a:
            zk r2 = new zk     // Catch:{ aaq -> 0x00a6 }
            zl r11 = r14.f     // Catch:{ aaq -> 0x00a6 }
            r2.<init>(r11, r3)     // Catch:{ aaq -> 0x00a6 }
            r3 = r2
        L_0x0182:
            abx r2 = defpackage.aax.c     // Catch:{ aaq -> 0x00a6 }
            int r2 = defpackage.abx.a     // Catch:{ aaq -> 0x00a6 }
            r11 = 4
            if (r2 < r11) goto L_0x018e
            abx r2 = defpackage.aax.c     // Catch:{ aaq -> 0x00a6 }
            r2.println(r3)     // Catch:{ aaq -> 0x00a6 }
        L_0x018e:
            boolean r2 = r3.d     // Catch:{ aaq -> 0x00a6 }
            if (r2 == 0) goto L_0x01a0
            java.lang.String r2 = r3.g     // Catch:{ aaq -> 0x00a6 }
            r14.h = r2     // Catch:{ aaq -> 0x00a6 }
            r2 = 2
            r14.b = r2     // Catch:{ aaq -> 0x00a6 }
            r2 = r5
            r7 = r3
            r3 = r8
            goto L_0x00cb
        L_0x019e:
            r3 = r5
            goto L_0x017a
        L_0x01a0:
            byte[] r8 = r3.a(r8)     // Catch:{ aaq -> 0x01ed }
            if (r8 == 0) goto L_0x0271
            aae r11 = new aae     // Catch:{ aaq -> 0x00a6 }
            r2 = 0
            r11.<init>(r14, r2, r8)     // Catch:{ aaq -> 0x00a6 }
            aaf r8 = new aaf     // Catch:{ aaq -> 0x00a6 }
            r2 = 0
            r8.<init>(r2)     // Catch:{ aaq -> 0x00a6 }
            aax r2 = r14.e     // Catch:{ aaq -> 0x00a6 }
            zl r12 = r14.f     // Catch:{ aaq -> 0x00a6 }
            boolean r2 = r2.b((defpackage.zl) r12)     // Catch:{ aaq -> 0x00a6 }
            if (r2 == 0) goto L_0x01c8
            byte[] r2 = r3.f     // Catch:{ aaq -> 0x00a6 }
            if (r2 == 0) goto L_0x01c8
            zn r12 = new zn     // Catch:{ aaq -> 0x00a6 }
            r13 = 1
            r12.<init>(r2, r13)     // Catch:{ aaq -> 0x00a6 }
            r11.B = r12     // Catch:{ aaq -> 0x00a6 }
        L_0x01c8:
            int r2 = r14.c     // Catch:{ aaq -> 0x00a6 }
            r11.p = r2     // Catch:{ aaq -> 0x00a6 }
            r2 = 0
            r14.c = r2     // Catch:{ aaq -> 0x00a6 }
            aax r2 = r14.e     // Catch:{ zo -> 0x01f8, aaq -> 0x01fa }
            r2.a((defpackage.zm) r11, (defpackage.zm) r8)     // Catch:{ zo -> 0x01f8, aaq -> 0x01fa }
        L_0x01d4:
            boolean r2 = r8.b     // Catch:{ aaq -> 0x00a6 }
            if (r2 == 0) goto L_0x0206
            java.lang.String r2 = "GUEST"
            zl r12 = r14.f     // Catch:{ aaq -> 0x00a6 }
            java.lang.String r12 = r12.i     // Catch:{ aaq -> 0x00a6 }
            boolean r2 = r2.equalsIgnoreCase(r12)     // Catch:{ aaq -> 0x00a6 }
            if (r2 != 0) goto L_0x0206
            zo r2 = new zo     // Catch:{ aaq -> 0x00a6 }
            r3 = -1073741715(0xffffffffc000006d, float:-2.000026)
            r2.<init>(r3)     // Catch:{ aaq -> 0x00a6 }
            throw r2     // Catch:{ aaq -> 0x00a6 }
        L_0x01ed:
            r2 = move-exception
            aax r3 = r14.e     // Catch:{ IOException -> 0x026c }
            r4 = 1
            r3.b((boolean) r4)     // Catch:{ IOException -> 0x026c }
        L_0x01f4:
            r3 = 0
            r14.c = r3     // Catch:{ aaq -> 0x00a6 }
            throw r2     // Catch:{ aaq -> 0x00a6 }
        L_0x01f8:
            r2 = move-exception
            throw r2     // Catch:{ aaq -> 0x00a6 }
        L_0x01fa:
            r2 = move-exception
            aax r6 = r14.e     // Catch:{ Exception -> 0x0203 }
            r12 = 1
            r6.b((boolean) r12)     // Catch:{ Exception -> 0x0203 }
            r6 = r2
            goto L_0x01d4
        L_0x0203:
            r6 = move-exception
            r6 = r2
            goto L_0x01d4
        L_0x0206:
            if (r6 == 0) goto L_0x0209
            throw r6     // Catch:{ aaq -> 0x00a6 }
        L_0x0209:
            int r2 = r8.p     // Catch:{ aaq -> 0x00a6 }
            r14.c = r2     // Catch:{ aaq -> 0x00a6 }
            zn r2 = r11.B     // Catch:{ aaq -> 0x00a6 }
            if (r2 == 0) goto L_0x0217
            aax r2 = r14.e     // Catch:{ aaq -> 0x00a6 }
            zn r11 = r11.B     // Catch:{ aaq -> 0x00a6 }
            r2.q = r11     // Catch:{ aaq -> 0x00a6 }
        L_0x0217:
            byte[] r8 = r8.c     // Catch:{ aaq -> 0x00a6 }
            r2 = r7
            r7 = r3
            r3 = r8
            goto L_0x00cb
        L_0x021e:
            boolean r2 = r15 instanceof defpackage.aai     // Catch:{ all -> 0x0050 }
            if (r2 == 0) goto L_0x024d
            r0 = r15
            aai r0 = (defpackage.aai) r0     // Catch:{ all -> 0x0050 }
            r2 = r0
            java.lang.String r3 = r14.h     // Catch:{ all -> 0x0050 }
            if (r3 == 0) goto L_0x024d
            java.lang.String r3 = r2.b     // Catch:{ all -> 0x0050 }
            java.lang.String r4 = "\\IPC$"
            boolean r3 = r3.endsWith(r4)     // Catch:{ all -> 0x0050 }
            if (r3 == 0) goto L_0x024d
            java.lang.StringBuilder r3 = new java.lang.StringBuilder     // Catch:{ all -> 0x0050 }
            java.lang.String r4 = "\\\\"
            r3.<init>(r4)     // Catch:{ all -> 0x0050 }
            java.lang.String r4 = r14.h     // Catch:{ all -> 0x0050 }
            java.lang.StringBuilder r3 = r3.append(r4)     // Catch:{ all -> 0x0050 }
            java.lang.String r4 = "\\IPC$"
            java.lang.StringBuilder r3 = r3.append(r4)     // Catch:{ all -> 0x0050 }
            java.lang.String r3 = r3.toString()     // Catch:{ all -> 0x0050 }
            r2.b = r3     // Catch:{ all -> 0x0050 }
        L_0x024d:
            int r2 = r14.c     // Catch:{ all -> 0x0050 }
            r15.p = r2     // Catch:{ all -> 0x0050 }
            zl r2 = r14.f     // Catch:{ all -> 0x0050 }
            r15.z = r2     // Catch:{ all -> 0x0050 }
            aax r2 = r14.e     // Catch:{ aaq -> 0x025f }
            r0 = r16
            r2.a((defpackage.zm) r15, (defpackage.zm) r0)     // Catch:{ aaq -> 0x025f }
            monitor-exit(r9)     // Catch:{ all -> 0x0050 }
            goto L_0x003b
        L_0x025f:
            r2 = move-exception
            boolean r3 = r15 instanceof defpackage.aai     // Catch:{ all -> 0x0050 }
            if (r3 == 0) goto L_0x0268
            r3 = 1
            r14.a(r3)     // Catch:{ all -> 0x0050 }
        L_0x0268:
            r3 = 0
            r15.B = r3     // Catch:{ all -> 0x0050 }
            throw r2     // Catch:{ all -> 0x0050 }
        L_0x026c:
            r3 = move-exception
            goto L_0x01f4
        L_0x026e:
            r2 = move-exception
            goto L_0x0117
        L_0x0271:
            r2 = r7
            r7 = r3
            r3 = r8
            goto L_0x00cb
        L_0x0276:
            r8 = r3
            r3 = r7
            r7 = r2
            goto L_0x008e
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.aav.a(zm, zm):void");
    }

    /* access modifiers changed from: package-private */
    public final void a(boolean z) {
        synchronized (a()) {
            if (this.b == 2) {
                this.b = 3;
                this.h = null;
                Enumeration elements = this.d.elements();
                while (elements.hasMoreElements()) {
                    ((aay) elements.nextElement()).a(z);
                }
                if (!z) {
                    if (this.e.s.g != 0) {
                        zs zsVar = new zs();
                        zsVar.p = this.c;
                        try {
                            this.e.a((zm) zsVar, (zm) null);
                        } catch (aaq e2) {
                        }
                        this.c = 0;
                    }
                }
                this.b = 0;
                this.e.notifyAll();
            }
        }
    }

    public final String toString() {
        return "SmbSession[accountName=" + this.f.i + ",primaryDomain=" + this.f.h + ",uid=" + this.c + ",connectionState=" + this.b + "]";
    }
}
