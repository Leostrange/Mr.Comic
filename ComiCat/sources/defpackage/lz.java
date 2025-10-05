package defpackage;

/* renamed from: lz  reason: default package */
/* compiled from: HttpRequest */
public final class lz {
    public lv a;
    public lw b = new lw();
    public lw c = new lw();
    int d = 16384;
    boolean e = true;
    public ls f;
    public final mf g;
    public String h;
    public lr i;
    public mg j;
    public lx k;
    public me l;
    public of m;
    public lt n;
    public boolean o = true;
    private int p = 10;
    private boolean q = true;
    private int r = 20000;
    private int s = 20000;
    @Deprecated
    private ln t;
    private boolean u = true;
    @Deprecated
    private boolean v = false;
    private boolean w;
    private oi x = oi.a;

    lz(mf mfVar) {
        this.g = mfVar;
        a((String) null);
    }

    public final lz a(String str) {
        ni.a(str == null || ly.b(str));
        this.h = str;
        return this;
    }

    public final lz a(lr lrVar) {
        this.i = (lr) ni.a(lrVar);
        return this;
    }

    /* JADX WARNING: Removed duplicated region for block: B:102:0x02e3  */
    /* JADX WARNING: Removed duplicated region for block: B:125:0x0343  */
    /* JADX WARNING: Removed duplicated region for block: B:140:0x036f  */
    /* JADX WARNING: Removed duplicated region for block: B:142:0x0373  */
    /* JADX WARNING: Removed duplicated region for block: B:162:0x03a3 A[LOOP:0: B:4:0x001e->B:162:0x03a3, LOOP_END] */
    /* JADX WARNING: Removed duplicated region for block: B:165:0x03ae  */
    /* JADX WARNING: Removed duplicated region for block: B:168:0x02bd A[SYNTHETIC] */
    /* JADX WARNING: Removed duplicated region for block: B:16:0x0060  */
    /* JADX WARNING: Removed duplicated region for block: B:24:0x00c1  */
    /* JADX WARNING: Removed duplicated region for block: B:28:0x00db  */
    /* JADX WARNING: Removed duplicated region for block: B:33:0x00f2  */
    /* JADX WARNING: Removed duplicated region for block: B:35:0x00f6  */
    /* JADX WARNING: Removed duplicated region for block: B:57:0x01ce  */
    /* JADX WARNING: Removed duplicated region for block: B:72:0x021b A[SYNTHETIC, Splitter:B:72:0x021b] */
    /* JADX WARNING: Removed duplicated region for block: B:90:0x02b0 A[Catch:{ all -> 0x0375 }] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final defpackage.mc a() {
        /*
            r21 = this;
            r0 = r21
            int r2 = r0.p
            if (r2 < 0) goto L_0x02c0
            r2 = 1
        L_0x0007:
            defpackage.ni.a((boolean) r2)
            r0 = r21
            int r3 = r0.p
            r2 = 0
            r0 = r21
            java.lang.String r4 = r0.h
            defpackage.ni.a(r4)
            r0 = r21
            lr r4 = r0.i
            defpackage.ni.a(r4)
            r6 = r3
        L_0x001e:
            if (r2 == 0) goto L_0x0023
            r2.c()
        L_0x0023:
            r8 = 0
            r7 = 0
            r0 = r21
            lv r2 = r0.a
            if (r2 == 0) goto L_0x0034
            r0 = r21
            lv r2 = r0.a
            r0 = r21
            r2.b(r0)
        L_0x0034:
            r0 = r21
            lr r2 = r0.i
            java.lang.String r14 = r2.e()
            r0 = r21
            mf r2 = r0.g
            r0 = r21
            java.lang.String r3 = r0.h
            mi r15 = r2.a(r3, r14)
            java.util.logging.Logger r16 = defpackage.mf.a
            r0 = r21
            boolean r2 = r0.e
            if (r2 == 0) goto L_0x02c3
            java.util.logging.Level r2 = java.util.logging.Level.CONFIG
            r0 = r16
            boolean r2 = r0.isLoggable(r2)
            if (r2 == 0) goto L_0x02c3
            r2 = 1
            r13 = r2
        L_0x005c:
            r3 = 0
            r2 = 0
            if (r13 == 0) goto L_0x03ae
            java.lang.StringBuilder r3 = new java.lang.StringBuilder
            r3.<init>()
            java.lang.String r4 = "-------------- REQUEST  --------------"
            java.lang.StringBuilder r4 = r3.append(r4)
            java.lang.String r5 = defpackage.ok.a
            r4.append(r5)
            r0 = r21
            java.lang.String r4 = r0.h
            java.lang.StringBuilder r4 = r3.append(r4)
            r5 = 32
            java.lang.StringBuilder r4 = r4.append(r5)
            java.lang.StringBuilder r4 = r4.append(r14)
            java.lang.String r5 = defpackage.ok.a
            r4.append(r5)
            r0 = r21
            boolean r4 = r0.q
            if (r4 == 0) goto L_0x03aa
            java.lang.StringBuilder r2 = new java.lang.StringBuilder
            java.lang.String r4 = "curl -v --compressed"
            r2.<init>(r4)
            r0 = r21
            java.lang.String r4 = r0.h
            java.lang.String r5 = "GET"
            boolean r4 = r4.equals(r5)
            if (r4 != 0) goto L_0x00ad
            java.lang.String r4 = " -X "
            java.lang.StringBuilder r4 = r2.append(r4)
            r0 = r21
            java.lang.String r5 = r0.h
            r4.append(r5)
        L_0x00ad:
            r4 = r3
            r3 = r2
        L_0x00af:
            r0 = r21
            lw r2 = r0.b
            java.util.List<java.lang.String> r2 = r2.userAgent
            java.lang.Object r2 = defpackage.lw.a(r2)
            java.lang.String r2 = (java.lang.String) r2
            r0 = r21
            boolean r5 = r0.w
            if (r5 != 0) goto L_0x00cc
            if (r2 != 0) goto L_0x02c7
            r0 = r21
            lw r5 = r0.b
            java.lang.String r9 = "Google-HTTP-Java-Client/1.22.0 (gzip)"
            r5.e(r9)
        L_0x00cc:
            r0 = r21
            lw r5 = r0.b
            r0 = r16
            defpackage.lw.a(r5, r4, r3, r0, r15)
            r0 = r21
            boolean r5 = r0.w
            if (r5 != 0) goto L_0x00e2
            r0 = r21
            lw r5 = r0.b
            r5.e(r2)
        L_0x00e2:
            r0 = r21
            ls r5 = r0.f
            if (r5 == 0) goto L_0x00f2
            r0 = r21
            ls r2 = r0.f
            boolean r2 = r2.d()
            if (r2 == 0) goto L_0x02e3
        L_0x00f2:
            r2 = 1
            r12 = r2
        L_0x00f4:
            if (r5 == 0) goto L_0x01cc
            r0 = r21
            ls r2 = r0.f
            java.lang.String r17 = r2.c()
            if (r13 == 0) goto L_0x03a7
            od r2 = new od
            java.util.logging.Logger r9 = defpackage.mf.a
            java.util.logging.Level r10 = java.util.logging.Level.CONFIG
            r0 = r21
            int r11 = r0.d
            r2.<init>(r5, r9, r10, r11)
        L_0x010d:
            r0 = r21
            lt r5 = r0.n
            if (r5 != 0) goto L_0x02e7
            r5 = 0
            r0 = r21
            ls r9 = r0.f
            long r10 = r9.a()
            r20 = r5
            r5 = r2
            r2 = r20
        L_0x0121:
            if (r13 == 0) goto L_0x01bb
            if (r17 == 0) goto L_0x015f
            java.lang.StringBuilder r9 = new java.lang.StringBuilder
            java.lang.String r18 = "Content-Type: "
            r0 = r18
            r9.<init>(r0)
            r0 = r17
            java.lang.StringBuilder r9 = r9.append(r0)
            java.lang.String r9 = r9.toString()
            java.lang.StringBuilder r18 = r4.append(r9)
            java.lang.String r19 = defpackage.ok.a
            r18.append(r19)
            if (r3 == 0) goto L_0x015f
            java.lang.StringBuilder r18 = new java.lang.StringBuilder
            java.lang.String r19 = " -H '"
            r18.<init>(r19)
            r0 = r18
            java.lang.StringBuilder r9 = r0.append(r9)
            java.lang.String r18 = "'"
            r0 = r18
            java.lang.StringBuilder r9 = r9.append(r0)
            java.lang.String r9 = r9.toString()
            r3.append(r9)
        L_0x015f:
            if (r2 == 0) goto L_0x0199
            java.lang.StringBuilder r9 = new java.lang.StringBuilder
            java.lang.String r18 = "Content-Encoding: "
            r0 = r18
            r9.<init>(r0)
            java.lang.StringBuilder r9 = r9.append(r2)
            java.lang.String r9 = r9.toString()
            java.lang.StringBuilder r18 = r4.append(r9)
            java.lang.String r19 = defpackage.ok.a
            r18.append(r19)
            if (r3 == 0) goto L_0x0199
            java.lang.StringBuilder r18 = new java.lang.StringBuilder
            java.lang.String r19 = " -H '"
            r18.<init>(r19)
            r0 = r18
            java.lang.StringBuilder r9 = r0.append(r9)
            java.lang.String r18 = "'"
            r0 = r18
            java.lang.StringBuilder r9 = r9.append(r0)
            java.lang.String r9 = r9.toString()
            r3.append(r9)
        L_0x0199:
            r18 = 0
            int r9 = (r10 > r18 ? 1 : (r10 == r18 ? 0 : -1))
            if (r9 < 0) goto L_0x01bb
            java.lang.StringBuilder r9 = new java.lang.StringBuilder
            java.lang.String r18 = "Content-Length: "
            r0 = r18
            r9.<init>(r0)
            java.lang.StringBuilder r9 = r9.append(r10)
            java.lang.String r9 = r9.toString()
            java.lang.StringBuilder r9 = r4.append(r9)
            java.lang.String r18 = defpackage.ok.a
            r0 = r18
            r9.append(r0)
        L_0x01bb:
            if (r3 == 0) goto L_0x01c2
            java.lang.String r9 = " -d '@-'"
            r3.append(r9)
        L_0x01c2:
            r0 = r17
            r15.c = r0
            r15.b = r2
            r15.a = r10
            r15.d = r5
        L_0x01cc:
            if (r13 == 0) goto L_0x01fe
            java.lang.String r2 = r4.toString()
            r0 = r16
            r0.config(r2)
            if (r3 == 0) goto L_0x01fe
            java.lang.String r2 = " -- '"
            r3.append(r2)
            java.lang.String r2 = "'"
            java.lang.String r4 = "'\"'\"'"
            java.lang.String r2 = r14.replaceAll(r2, r4)
            r3.append(r2)
            java.lang.String r2 = "'"
            r3.append(r2)
            if (r5 == 0) goto L_0x01f5
            java.lang.String r2 = " << $$$"
            r3.append(r2)
        L_0x01f5:
            java.lang.String r2 = r3.toString()
            r0 = r16
            r0.config(r2)
        L_0x01fe:
            if (r12 == 0) goto L_0x0308
            if (r6 <= 0) goto L_0x0308
            r2 = 1
        L_0x0203:
            r0 = r21
            int r3 = r0.r
            r0 = r21
            int r4 = r0.s
            r15.a((int) r3, (int) r4)
            mj r5 = r15.a()     // Catch:{ IOException -> 0x0316 }
            mc r4 = new mc     // Catch:{ all -> 0x030b }
            r0 = r21
            r4.<init>(r0, r5)     // Catch:{ all -> 0x030b }
        L_0x0219:
            if (r4 == 0) goto L_0x036d
            boolean r3 = r4.a()     // Catch:{ all -> 0x0375 }
            if (r3 != 0) goto L_0x036d
            r3 = 0
            r0 = r21
            mg r5 = r0.j     // Catch:{ all -> 0x0375 }
            if (r5 == 0) goto L_0x0232
            r0 = r21
            mg r3 = r0.j     // Catch:{ all -> 0x0375 }
            r0 = r21
            boolean r3 = r3.a(r0, r4, r2)     // Catch:{ all -> 0x0375 }
        L_0x0232:
            if (r3 != 0) goto L_0x02b1
            int r8 = r4.c     // Catch:{ all -> 0x0375 }
            lz r5 = r4.e     // Catch:{ all -> 0x0375 }
            lw r5 = r5.c     // Catch:{ all -> 0x0375 }
            java.lang.String r9 = r5.a()     // Catch:{ all -> 0x0375 }
            r0 = r21
            boolean r5 = r0.u     // Catch:{ all -> 0x0375 }
            if (r5 == 0) goto L_0x0340
            switch(r8) {
                case 301: goto L_0x033d;
                case 302: goto L_0x033d;
                case 303: goto L_0x033d;
                case 304: goto L_0x0247;
                case 305: goto L_0x0247;
                case 306: goto L_0x0247;
                case 307: goto L_0x033d;
                default: goto L_0x0247;
            }     // Catch:{ all -> 0x0375 }
        L_0x0247:
            r5 = 0
        L_0x0248:
            if (r5 == 0) goto L_0x0340
            if (r9 == 0) goto L_0x0340
            lr r5 = new lr     // Catch:{ all -> 0x0375 }
            r0 = r21
            lr r10 = r0.i     // Catch:{ all -> 0x0375 }
            java.net.URL r9 = r10.f(r9)     // Catch:{ all -> 0x0375 }
            r5.<init>((java.net.URL) r9)     // Catch:{ all -> 0x0375 }
            r0 = r21
            r0.a((defpackage.lr) r5)     // Catch:{ all -> 0x0375 }
            r5 = 303(0x12f, float:4.25E-43)
            if (r8 != r5) goto L_0x026e
            java.lang.String r5 = "GET"
            r0 = r21
            r0.a((java.lang.String) r5)     // Catch:{ all -> 0x0375 }
            r5 = 0
            r0 = r21
            r0.f = r5     // Catch:{ all -> 0x0375 }
        L_0x026e:
            r0 = r21
            lw r5 = r0.b     // Catch:{ all -> 0x0375 }
            r8 = 0
            r5.a((java.lang.String) r8)     // Catch:{ all -> 0x0375 }
            r0 = r21
            lw r5 = r0.b     // Catch:{ all -> 0x0375 }
            r8 = 0
            java.util.List r8 = defpackage.lw.a(r8)     // Catch:{ all -> 0x0375 }
            r5.ifMatch = r8     // Catch:{ all -> 0x0375 }
            r0 = r21
            lw r5 = r0.b     // Catch:{ all -> 0x0375 }
            r8 = 0
            java.util.List r8 = defpackage.lw.a(r8)     // Catch:{ all -> 0x0375 }
            r5.ifNoneMatch = r8     // Catch:{ all -> 0x0375 }
            r0 = r21
            lw r5 = r0.b     // Catch:{ all -> 0x0375 }
            r8 = 0
            java.util.List r8 = defpackage.lw.a(r8)     // Catch:{ all -> 0x0375 }
            r5.ifModifiedSince = r8     // Catch:{ all -> 0x0375 }
            r0 = r21
            lw r5 = r0.b     // Catch:{ all -> 0x0375 }
            r8 = 0
            java.util.List r8 = defpackage.lw.a(r8)     // Catch:{ all -> 0x0375 }
            r5.ifUnmodifiedSince = r8     // Catch:{ all -> 0x0375 }
            r0 = r21
            lw r5 = r0.b     // Catch:{ all -> 0x0375 }
            r8 = 0
            java.util.List r8 = defpackage.lw.a(r8)     // Catch:{ all -> 0x0375 }
            r5.ifRange = r8     // Catch:{ all -> 0x0375 }
            r5 = 1
        L_0x02ae:
            if (r5 == 0) goto L_0x0343
            r3 = 1
        L_0x02b1:
            r2 = r2 & r3
            if (r2 == 0) goto L_0x02b7
            r4.c()     // Catch:{ all -> 0x0375 }
        L_0x02b7:
            int r3 = r6 + -1
            if (r4 == 0) goto L_0x02bb
        L_0x02bb:
            if (r2 != 0) goto L_0x03a3
            if (r4 != 0) goto L_0x037c
            throw r7
        L_0x02c0:
            r2 = 0
            goto L_0x0007
        L_0x02c3:
            r2 = 0
            r13 = r2
            goto L_0x005c
        L_0x02c7:
            r0 = r21
            lw r5 = r0.b
            java.lang.StringBuilder r9 = new java.lang.StringBuilder
            r9.<init>()
            java.lang.StringBuilder r9 = r9.append(r2)
            java.lang.String r10 = " Google-HTTP-Java-Client/1.22.0 (gzip)"
            java.lang.StringBuilder r9 = r9.append(r10)
            java.lang.String r9 = r9.toString()
            r5.e(r9)
            goto L_0x00cc
        L_0x02e3:
            r2 = 0
            r12 = r2
            goto L_0x00f4
        L_0x02e7:
            r0 = r21
            lt r5 = r0.n
            java.lang.String r5 = r5.a()
            lu r9 = new lu
            r0 = r21
            lt r10 = r0.n
            r9.<init>(r2, r10)
            if (r12 == 0) goto L_0x0302
            long r10 = defpackage.nx.a(r9)
            r2 = r5
            r5 = r9
            goto L_0x0121
        L_0x0302:
            r10 = -1
            r2 = r5
            r5 = r9
            goto L_0x0121
        L_0x0308:
            r2 = 0
            goto L_0x0203
        L_0x030b:
            r3 = move-exception
            java.io.InputStream r4 = r5.a()     // Catch:{ IOException -> 0x0316 }
            if (r4 == 0) goto L_0x0315
            r4.close()     // Catch:{ IOException -> 0x0316 }
        L_0x0315:
            throw r3     // Catch:{ IOException -> 0x0316 }
        L_0x0316:
            r3 = move-exception
            r0 = r21
            boolean r4 = r0.v
            if (r4 != 0) goto L_0x0330
            r0 = r21
            lx r4 = r0.k
            if (r4 == 0) goto L_0x032f
            r0 = r21
            lx r4 = r0.k
            r0 = r21
            boolean r4 = r4.a(r0, r2)
            if (r4 != 0) goto L_0x0330
        L_0x032f:
            throw r3
        L_0x0330:
            java.util.logging.Level r4 = java.util.logging.Level.WARNING
            java.lang.String r5 = "exception thrown while executing request"
            r0 = r16
            r0.log(r4, r5, r3)
            r7 = r3
            r4 = r8
            goto L_0x0219
        L_0x033d:
            r5 = 1
            goto L_0x0248
        L_0x0340:
            r5 = 0
            goto L_0x02ae
        L_0x0343:
            if (r2 == 0) goto L_0x02b1
            r0 = r21
            ln r5 = r0.t     // Catch:{ all -> 0x0375 }
            if (r5 == 0) goto L_0x02b1
            r0 = r21
            ln r5 = r0.t     // Catch:{ all -> 0x0375 }
            boolean r5 = r5.a()     // Catch:{ all -> 0x0375 }
            if (r5 == 0) goto L_0x02b1
            r0 = r21
            ln r5 = r0.t     // Catch:{ all -> 0x0375 }
            long r8 = r5.b()     // Catch:{ all -> 0x0375 }
            r10 = -1
            int r5 = (r8 > r10 ? 1 : (r8 == r10 ? 0 : -1))
            if (r5 == 0) goto L_0x02b1
            r0 = r21
            oi r3 = r0.x     // Catch:{ InterruptedException -> 0x03a1 }
            r3.a(r8)     // Catch:{ InterruptedException -> 0x03a1 }
        L_0x036a:
            r3 = 1
            goto L_0x02b1
        L_0x036d:
            if (r4 != 0) goto L_0x0373
            r3 = 1
        L_0x0370:
            r2 = r2 & r3
            goto L_0x02b7
        L_0x0373:
            r3 = 0
            goto L_0x0370
        L_0x0375:
            r2 = move-exception
            if (r4 == 0) goto L_0x037b
            r4.d()
        L_0x037b:
            throw r2
        L_0x037c:
            r0 = r21
            me r2 = r0.l
            if (r2 == 0) goto L_0x0389
            r0 = r21
            me r2 = r0.l
            r2.a(r4)
        L_0x0389:
            r0 = r21
            boolean r2 = r0.o
            if (r2 == 0) goto L_0x03a0
            boolean r2 = r4.a()
            if (r2 != 0) goto L_0x03a0
            md r2 = new md     // Catch:{ all -> 0x039b }
            r2.<init>((defpackage.mc) r4)     // Catch:{ all -> 0x039b }
            throw r2     // Catch:{ all -> 0x039b }
        L_0x039b:
            r2 = move-exception
            r4.d()
            throw r2
        L_0x03a0:
            return r4
        L_0x03a1:
            r3 = move-exception
            goto L_0x036a
        L_0x03a3:
            r2 = r4
            r6 = r3
            goto L_0x001e
        L_0x03a7:
            r2 = r5
            goto L_0x010d
        L_0x03aa:
            r4 = r3
            r3 = r2
            goto L_0x00af
        L_0x03ae:
            r4 = r3
            r3 = r2
            goto L_0x00af
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.lz.a():mc");
    }
}
