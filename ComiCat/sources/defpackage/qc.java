package defpackage;

/* renamed from: qc  reason: default package */
/* compiled from: ChannelAgentForwarding */
final class qc extends qb {
    private final byte A = 5;
    private final byte B = 6;
    private final byte C = 7;
    private final byte D = 8;
    private final byte E = 9;
    private final byte F = 11;
    private final byte G = 12;
    private final byte H = 13;
    private final byte I = 14;
    private final byte J = 17;
    private final byte K = 18;
    private final byte L = 19;
    private final byte M = 30;
    private qa N = null;
    private qa O = null;
    private rl P = null;
    private qa Q = null;
    boolean v = true;
    private final byte w = 1;
    private final byte x = 2;
    private final byte y = 3;
    private final byte z = 4;

    qc() {
        this.e = 131072;
        this.f = 131072;
        this.g = 16384;
        this.d = si.a("auth-agent@openssh.com");
        this.N = new qa();
        this.N.h();
        this.Q = new qa();
        this.o = true;
    }

    /* access modifiers changed from: package-private */
    /* JADX WARNING: Code restructure failed: missing block: B:78:0x01af, code lost:
        if (r0.a(defpackage.si.a(r4)) != false) goto L_0x01b1;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final void a(byte[] r11, int r12, int r13) {
        /*
            r10 = this;
            r3 = 0
            r2 = 5
            r1 = 6
            r4 = 0
            rl r0 = r10.P
            if (r0 != 0) goto L_0x001a
            qa r0 = new qa
            int r5 = r10.i
            r0.<init>((int) r5)
            r10.O = r0
            rl r0 = new rl
            qa r5 = r10.O
            r0.<init>(r5)
            r10.P = r0
        L_0x001a:
            qa r0 = r10.N
            int r5 = r0.d
            if (r5 == 0) goto L_0x0037
            byte[] r5 = r0.b
            int r6 = r0.d
            byte[] r7 = r0.b
            int r8 = r0.c
            int r9 = r0.d
            int r8 = r8 - r9
            java.lang.System.arraycopy(r5, r6, r7, r4, r8)
            int r5 = r0.c
            int r6 = r0.d
            int r5 = r5 - r6
            r0.c = r5
            r0.d = r4
        L_0x0037:
            qa r0 = r10.N
            byte[] r0 = r0.b
            int r0 = r0.length
            qa r5 = r10.N
            int r5 = r5.c
            int r5 = r5 + r13
            if (r0 >= r5) goto L_0x005a
            qa r0 = r10.N
            int r0 = r0.d
            int r0 = r0 + r13
            byte[] r0 = new byte[r0]
            qa r5 = r10.N
            byte[] r5 = r5.b
            qa r6 = r10.N
            byte[] r6 = r6.b
            int r6 = r6.length
            java.lang.System.arraycopy(r5, r4, r0, r4, r6)
            qa r5 = r10.N
            r5.b = r0
        L_0x005a:
            qa r0 = r10.N
            r0.a(r11, r12, r13)
            qa r0 = r10.N
            int r0 = r0.b()
            qa r5 = r10.N
            int r5 = r5.a()
            if (r0 <= r5) goto L_0x0076
            qa r0 = r10.N
            int r1 = r0.d
            int r1 = r1 + -4
            r0.d = r1
        L_0x0075:
            return
        L_0x0076:
            qa r0 = r10.N
            int r5 = r0.e()
            ry r6 = r10.h()     // Catch:{ qy -> 0x00be }
            qv r0 = r6.l
            if (r0 != 0) goto L_0x00c9
            qw r0 = r6.u
            qv r0 = r0.a()
        L_0x008a:
            sh r6 = r6.k
            qa r7 = r10.Q
            r7.h()
            r7 = 11
            if (r5 != r7) goto L_0x0137
            qa r1 = r10.Q
            r2 = 12
            r1.a((byte) r2)
            java.util.Vector r3 = r0.a()
            monitor-enter(r3)
            r2 = r4
            r1 = r4
        L_0x00a3:
            int r0 = r3.size()     // Catch:{ all -> 0x0134 }
            if (r2 >= r0) goto L_0x00cc
            java.lang.Object r0 = r3.elementAt(r2)     // Catch:{ all -> 0x0134 }
            qt r0 = (defpackage.qt) r0     // Catch:{ all -> 0x0134 }
            qt r0 = (defpackage.qt) r0     // Catch:{ all -> 0x0134 }
            byte[] r0 = r0.a()     // Catch:{ all -> 0x0134 }
            if (r0 == 0) goto L_0x024a
            int r0 = r1 + 1
        L_0x00b9:
            int r1 = r2 + 1
            r2 = r1
            r1 = r0
            goto L_0x00a3
        L_0x00be:
            r0 = move-exception
            java.io.IOException r1 = new java.io.IOException
            java.lang.String r0 = r0.toString()
            r1.<init>(r0)
            throw r1
        L_0x00c9:
            qv r0 = r6.l
            goto L_0x008a
        L_0x00cc:
            qa r0 = r10.Q     // Catch:{ all -> 0x0134 }
            r0.a((int) r1)     // Catch:{ all -> 0x0134 }
        L_0x00d1:
            int r0 = r3.size()     // Catch:{ all -> 0x0134 }
            if (r4 >= r0) goto L_0x00f4
            java.lang.Object r0 = r3.elementAt(r4)     // Catch:{ all -> 0x0134 }
            qt r0 = (defpackage.qt) r0     // Catch:{ all -> 0x0134 }
            qt r0 = (defpackage.qt) r0     // Catch:{ all -> 0x0134 }
            byte[] r0 = r0.a()     // Catch:{ all -> 0x0134 }
            if (r0 == 0) goto L_0x00f1
            qa r1 = r10.Q     // Catch:{ all -> 0x0134 }
            r1.b((byte[]) r0)     // Catch:{ all -> 0x0134 }
            qa r0 = r10.Q     // Catch:{ all -> 0x0134 }
            byte[] r1 = defpackage.si.a     // Catch:{ all -> 0x0134 }
            r0.b((byte[]) r1)     // Catch:{ all -> 0x0134 }
        L_0x00f1:
            int r4 = r4 + 1
            goto L_0x00d1
        L_0x00f4:
            monitor-exit(r3)     // Catch:{ all -> 0x0134 }
        L_0x00f5:
            qa r0 = r10.Q
            int r0 = r0.a()
            byte[] r0 = new byte[r0]
            qa r1 = r10.Q
            int r2 = r0.length
            r1.a((byte[]) r0, (int) r2)
            rl r1 = r10.P
            r1.a()
            qa r1 = r10.O
            r2 = 94
            r1.a((byte) r2)
            qa r1 = r10.O
            int r2 = r10.c
            r1.a((int) r2)
            qa r1 = r10.O
            int r2 = r0.length
            int r2 = r2 + 4
            r1.a((int) r2)
            qa r1 = r10.O
            r1.b((byte[]) r0)
            ry r1 = r10.h()     // Catch:{ Exception -> 0x0131 }
            rl r2 = r10.P     // Catch:{ Exception -> 0x0131 }
            int r0 = r0.length     // Catch:{ Exception -> 0x0131 }
            int r0 = r0 + 4
            r1.a((defpackage.rl) r2, (defpackage.qb) r10, (int) r0)     // Catch:{ Exception -> 0x0131 }
            goto L_0x0075
        L_0x0131:
            r0 = move-exception
            goto L_0x0075
        L_0x0134:
            r0 = move-exception
            monitor-exit(r3)     // Catch:{ all -> 0x0134 }
            throw r0
        L_0x0137:
            r7 = 1
            if (r5 != r7) goto L_0x0146
            qa r0 = r10.Q
            r1 = 2
            r0.a((byte) r1)
            qa r0 = r10.Q
            r0.a((int) r4)
            goto L_0x00f5
        L_0x0146:
            r7 = 13
            if (r5 != r7) goto L_0x01de
            qa r1 = r10.N
            byte[] r2 = r1.g()
            qa r1 = r10.N
            byte[] r5 = r1.g()
            qa r1 = r10.N
            r1.b()
            java.util.Vector r7 = r0.a()
            monitor-enter(r7)
            r1 = r4
        L_0x0161:
            int r0 = r7.size()     // Catch:{ all -> 0x01cd }
            if (r1 >= r0) goto L_0x0247
            java.lang.Object r0 = r7.elementAt(r1)     // Catch:{ all -> 0x01cd }
            qt r0 = (defpackage.qt) r0     // Catch:{ all -> 0x01cd }
            qt r0 = (defpackage.qt) r0     // Catch:{ all -> 0x01cd }
            byte[] r4 = r0.a()     // Catch:{ all -> 0x01cd }
            if (r4 == 0) goto L_0x01c9
            byte[] r4 = r0.a()     // Catch:{ all -> 0x01cd }
            boolean r4 = defpackage.si.a((byte[]) r2, (byte[]) r4)     // Catch:{ all -> 0x01cd }
            if (r4 == 0) goto L_0x01c9
            boolean r4 = r0.c()     // Catch:{ all -> 0x01cd }
            if (r4 == 0) goto L_0x01b1
            if (r6 == 0) goto L_0x01c9
        L_0x0187:
            boolean r4 = r0.c()     // Catch:{ all -> 0x01cd }
            if (r4 == 0) goto L_0x01b1
            java.lang.StringBuilder r4 = new java.lang.StringBuilder     // Catch:{ all -> 0x01cd }
            java.lang.String r8 = "Passphrase for "
            r4.<init>(r8)     // Catch:{ all -> 0x01cd }
            java.lang.String r8 = r0.b()     // Catch:{ all -> 0x01cd }
            r4.append(r8)     // Catch:{ all -> 0x01cd }
            boolean r4 = r6.b()     // Catch:{ all -> 0x01cd }
            if (r4 == 0) goto L_0x01b1
            java.lang.String r4 = r6.a()     // Catch:{ all -> 0x01cd }
            if (r4 == 0) goto L_0x01b1
            byte[] r4 = defpackage.si.a((java.lang.String) r4)     // Catch:{ all -> 0x01cd }
            boolean r4 = r0.a(r4)     // Catch:{ qy -> 0x0241 }
            if (r4 == 0) goto L_0x0187
        L_0x01b1:
            boolean r4 = r0.c()     // Catch:{ all -> 0x01cd }
            if (r4 != 0) goto L_0x01c9
        L_0x01b7:
            monitor-exit(r7)     // Catch:{ all -> 0x01cd }
            if (r0 == 0) goto L_0x0244
            byte[] r0 = r0.b(r5)
        L_0x01be:
            if (r0 != 0) goto L_0x01d0
            qa r0 = r10.Q
            r1 = 30
            r0.a((byte) r1)
            goto L_0x00f5
        L_0x01c9:
            int r0 = r1 + 1
            r1 = r0
            goto L_0x0161
        L_0x01cd:
            r0 = move-exception
            monitor-exit(r7)     // Catch:{ all -> 0x01cd }
            throw r0
        L_0x01d0:
            qa r1 = r10.Q
            r2 = 14
            r1.a((byte) r2)
            qa r1 = r10.Q
            r1.b((byte[]) r0)
            goto L_0x00f5
        L_0x01de:
            r3 = 18
            if (r5 != r3) goto L_0x01f2
            qa r2 = r10.N
            byte[] r2 = r2.g()
            r0.b(r2)
            qa r0 = r10.Q
            r0.a((byte) r1)
            goto L_0x00f5
        L_0x01f2:
            r3 = 9
            if (r5 != r3) goto L_0x01fd
            qa r0 = r10.Q
            r0.a((byte) r1)
            goto L_0x00f5
        L_0x01fd:
            r3 = 19
            if (r5 != r3) goto L_0x020b
            r0.b()
            qa r0 = r10.Q
            r0.a((byte) r1)
            goto L_0x00f5
        L_0x020b:
            r3 = 17
            if (r5 != r3) goto L_0x022d
            qa r3 = r10.N
            int r3 = r3.a()
            byte[] r3 = new byte[r3]
            qa r4 = r10.N
            int r5 = r3.length
            r4.a((byte[]) r3, (int) r5)
            boolean r0 = r0.a(r3)
            qa r3 = r10.Q
            if (r0 == 0) goto L_0x022b
            r0 = r1
        L_0x0226:
            r3.a((byte) r0)
            goto L_0x00f5
        L_0x022b:
            r0 = r2
            goto L_0x0226
        L_0x022d:
            qa r0 = r10.N
            qa r1 = r10.N
            int r1 = r1.a()
            int r1 = r1 + -1
            r0.b((int) r1)
            qa r0 = r10.Q
            r0.a((byte) r2)
            goto L_0x00f5
        L_0x0241:
            r4 = move-exception
            goto L_0x01b1
        L_0x0244:
            r0 = r3
            goto L_0x01be
        L_0x0247:
            r0 = r3
            goto L_0x01b7
        L_0x024a:
            r0 = r1
            goto L_0x00b9
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.qc.a(byte[], int, int):void");
    }

    /* access modifiers changed from: package-private */
    public final void d() {
        super.d();
        e();
    }

    public final void run() {
        try {
            i();
        } catch (Exception e) {
            this.n = true;
            f();
        }
    }
}
