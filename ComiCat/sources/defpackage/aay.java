package defpackage;

/* renamed from: aay  reason: default package */
/* compiled from: SmbTree */
final class aay {
    private static int j;
    int a;
    int b;
    String c;
    String d = "?????";
    String e;
    aav f;
    boolean g;
    boolean h;
    int i;

    aay(aav aav, String str, String str2) {
        this.f = aav;
        this.c = str.toUpperCase();
        if (str2 != null && !str2.startsWith("??")) {
            this.d = str2;
        }
        this.e = this.d;
        this.a = 0;
    }

    /* access modifiers changed from: package-private */
    /* JADX WARNING: Code restructure failed: missing block: B:46:?, code lost:
        return;
     */
    /* JADX WARNING: No exception handlers in catch block: Catch:{  } */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final void a(defpackage.zm r6, defpackage.zm r7) {
        /*
            r5 = this;
            aav r1 = r5.f
            aax r2 = r1.a()
            monitor-enter(r2)
            if (r7 == 0) goto L_0x000c
            r1 = 0
            r7.u = r1     // Catch:{ all -> 0x0049 }
        L_0x000c:
            r5.b(r6, r7)     // Catch:{ all -> 0x0049 }
            if (r6 == 0) goto L_0x0017
            if (r7 == 0) goto L_0x0019
            boolean r1 = r7.u     // Catch:{ all -> 0x0049 }
            if (r1 == 0) goto L_0x0019
        L_0x0017:
            monitor-exit(r2)     // Catch:{ all -> 0x0049 }
        L_0x0018:
            return
        L_0x0019:
            java.lang.String r1 = r5.d     // Catch:{ all -> 0x0049 }
            java.lang.String r3 = "A:"
            boolean r1 = r1.equals(r3)     // Catch:{ all -> 0x0049 }
            if (r1 != 0) goto L_0x0074
            byte r1 = r6.g     // Catch:{ all -> 0x0049 }
            switch(r1) {
                case -94: goto L_0x0074;
                case 4: goto L_0x0074;
                case 37: goto L_0x004c;
                case 45: goto L_0x0074;
                case 46: goto L_0x0074;
                case 47: goto L_0x0074;
                case 50: goto L_0x004c;
                case 113: goto L_0x0074;
                default: goto L_0x0028;
            }     // Catch:{ all -> 0x0049 }
        L_0x0028:
            aaq r1 = new aaq     // Catch:{ all -> 0x0049 }
            java.lang.StringBuilder r3 = new java.lang.StringBuilder     // Catch:{ all -> 0x0049 }
            java.lang.String r4 = "Invalid operation for "
            r3.<init>(r4)     // Catch:{ all -> 0x0049 }
            java.lang.String r4 = r5.d     // Catch:{ all -> 0x0049 }
            java.lang.StringBuilder r3 = r3.append(r4)     // Catch:{ all -> 0x0049 }
            java.lang.String r4 = " service"
            java.lang.StringBuilder r3 = r3.append(r4)     // Catch:{ all -> 0x0049 }
            java.lang.StringBuilder r3 = r3.append(r6)     // Catch:{ all -> 0x0049 }
            java.lang.String r3 = r3.toString()     // Catch:{ all -> 0x0049 }
            r1.<init>((java.lang.String) r3)     // Catch:{ all -> 0x0049 }
            throw r1     // Catch:{ all -> 0x0049 }
        L_0x0049:
            r1 = move-exception
            monitor-exit(r2)     // Catch:{ all -> 0x0049 }
            throw r1
        L_0x004c:
            r0 = r6
            aag r0 = (defpackage.aag) r0     // Catch:{ all -> 0x0049 }
            r1 = r0
            byte r1 = r1.S     // Catch:{ all -> 0x0049 }
            r1 = r1 & 255(0xff, float:3.57E-43)
            switch(r1) {
                case 0: goto L_0x0074;
                case 16: goto L_0x0074;
                case 35: goto L_0x0074;
                case 38: goto L_0x0074;
                case 83: goto L_0x0074;
                case 84: goto L_0x0074;
                case 104: goto L_0x0074;
                case 215: goto L_0x0074;
                default: goto L_0x0057;
            }     // Catch:{ all -> 0x0049 }
        L_0x0057:
            aaq r1 = new aaq     // Catch:{ all -> 0x0049 }
            java.lang.StringBuilder r3 = new java.lang.StringBuilder     // Catch:{ all -> 0x0049 }
            java.lang.String r4 = "Invalid operation for "
            r3.<init>(r4)     // Catch:{ all -> 0x0049 }
            java.lang.String r4 = r5.d     // Catch:{ all -> 0x0049 }
            java.lang.StringBuilder r3 = r3.append(r4)     // Catch:{ all -> 0x0049 }
            java.lang.String r4 = " service"
            java.lang.StringBuilder r3 = r3.append(r4)     // Catch:{ all -> 0x0049 }
            java.lang.String r3 = r3.toString()     // Catch:{ all -> 0x0049 }
            r1.<init>((java.lang.String) r3)     // Catch:{ all -> 0x0049 }
            throw r1     // Catch:{ all -> 0x0049 }
        L_0x0074:
            int r1 = r5.b     // Catch:{ all -> 0x0049 }
            r6.n = r1     // Catch:{ all -> 0x0049 }
            boolean r1 = r5.g     // Catch:{ all -> 0x0049 }
            if (r1 == 0) goto L_0x00c1
            java.lang.String r1 = r5.d     // Catch:{ all -> 0x0049 }
            java.lang.String r3 = "IPC"
            boolean r1 = r1.equals(r3)     // Catch:{ all -> 0x0049 }
            if (r1 != 0) goto L_0x00c1
            java.lang.String r1 = r6.A     // Catch:{ all -> 0x0049 }
            if (r1 == 0) goto L_0x00c1
            java.lang.String r1 = r6.A     // Catch:{ all -> 0x0049 }
            int r1 = r1.length()     // Catch:{ all -> 0x0049 }
            if (r1 <= 0) goto L_0x00c1
            r1 = 4096(0x1000, float:5.74E-42)
            r6.m = r1     // Catch:{ all -> 0x0049 }
            java.lang.StringBuilder r1 = new java.lang.StringBuilder     // Catch:{ all -> 0x0049 }
            java.lang.String r3 = "\\"
            r1.<init>(r3)     // Catch:{ all -> 0x0049 }
            aav r3 = r5.f     // Catch:{ all -> 0x0049 }
            aax r3 = r3.a()     // Catch:{ all -> 0x0049 }
            java.lang.String r3 = r3.A     // Catch:{ all -> 0x0049 }
            java.lang.StringBuilder r1 = r1.append(r3)     // Catch:{ all -> 0x0049 }
            r3 = 92
            java.lang.StringBuilder r1 = r1.append(r3)     // Catch:{ all -> 0x0049 }
            java.lang.String r3 = r5.c     // Catch:{ all -> 0x0049 }
            java.lang.StringBuilder r1 = r1.append(r3)     // Catch:{ all -> 0x0049 }
            java.lang.String r3 = r6.A     // Catch:{ all -> 0x0049 }
            java.lang.StringBuilder r1 = r1.append(r3)     // Catch:{ all -> 0x0049 }
            java.lang.String r1 = r1.toString()     // Catch:{ all -> 0x0049 }
            r6.A = r1     // Catch:{ all -> 0x0049 }
        L_0x00c1:
            aav r1 = r5.f     // Catch:{ aaq -> 0x00c9 }
            r1.a((defpackage.zm) r6, (defpackage.zm) r7)     // Catch:{ aaq -> 0x00c9 }
            monitor-exit(r2)     // Catch:{ all -> 0x0049 }
            goto L_0x0018
        L_0x00c9:
            r1 = move-exception
            int r3 = r1.n     // Catch:{ all -> 0x0049 }
            r4 = -1073741623(0xffffffffc00000c9, float:-2.000048)
            if (r3 != r4) goto L_0x00d5
            r3 = 1
            r5.a(r3)     // Catch:{ all -> 0x0049 }
        L_0x00d5:
            throw r1     // Catch:{ all -> 0x0049 }
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.aay.a(zm, zm):void");
    }

    /* access modifiers changed from: package-private */
    /* JADX WARNING: No exception handlers in catch block: Catch:{  } */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final void a(boolean r5) {
        /*
            r4 = this;
            aav r0 = r4.f
            aax r1 = r0.a()
            monitor-enter(r1)
            int r0 = r4.a     // Catch:{ all -> 0x0032 }
            r2 = 2
            if (r0 == r2) goto L_0x000e
            monitor-exit(r1)     // Catch:{ all -> 0x0032 }
        L_0x000d:
            return
        L_0x000e:
            r0 = 3
            r4.a = r0     // Catch:{ all -> 0x0032 }
            if (r5 != 0) goto L_0x0020
            int r0 = r4.b     // Catch:{ all -> 0x0032 }
            if (r0 == 0) goto L_0x0020
            aak r0 = new aak     // Catch:{ aaq -> 0x0035 }
            r0.<init>()     // Catch:{ aaq -> 0x0035 }
            r2 = 0
            r4.a((defpackage.zm) r0, (defpackage.zm) r2)     // Catch:{ aaq -> 0x0035 }
        L_0x0020:
            r0 = 0
            r4.g = r0     // Catch:{ all -> 0x0032 }
            r0 = 0
            r4.h = r0     // Catch:{ all -> 0x0032 }
            r0 = 0
            r4.a = r0     // Catch:{ all -> 0x0032 }
            aav r0 = r4.f     // Catch:{ all -> 0x0032 }
            aax r0 = r0.e     // Catch:{ all -> 0x0032 }
            r0.notifyAll()     // Catch:{ all -> 0x0032 }
            monitor-exit(r1)     // Catch:{ all -> 0x0032 }
            goto L_0x000d
        L_0x0032:
            r0 = move-exception
            monitor-exit(r1)     // Catch:{ all -> 0x0032 }
            throw r0
        L_0x0035:
            r0 = move-exception
            aav r2 = r4.f     // Catch:{ all -> 0x0032 }
            aax r2 = r2.e     // Catch:{ all -> 0x0032 }
            abx r2 = defpackage.aax.c     // Catch:{ all -> 0x0032 }
            int r2 = defpackage.abx.a     // Catch:{ all -> 0x0032 }
            r3 = 1
            if (r2 <= r3) goto L_0x0020
            aav r2 = r4.f     // Catch:{ all -> 0x0032 }
            aax r2 = r2.e     // Catch:{ all -> 0x0032 }
            abx r2 = defpackage.aax.c     // Catch:{ all -> 0x0032 }
            r0.printStackTrace(r2)     // Catch:{ all -> 0x0032 }
            goto L_0x0020
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.aay.a(boolean):void");
    }

    /* access modifiers changed from: package-private */
    public final boolean a(String str, String str2) {
        return this.c.equalsIgnoreCase(str) && (str2 == null || str2.startsWith("??") || this.d.equalsIgnoreCase(str2));
    }

    /* access modifiers changed from: package-private */
    /* JADX WARNING: Code restructure failed: missing block: B:36:?, code lost:
        return;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final void b(defpackage.zm r7, defpackage.zm r8) {
        /*
            r6 = this;
            r3 = 2
            aav r0 = r6.f
            aax r1 = r0.a()
            monitor-enter(r1)
        L_0x0008:
            int r0 = r6.a     // Catch:{ all -> 0x002a }
            if (r0 == 0) goto L_0x002d
            int r0 = r6.a     // Catch:{ all -> 0x002a }
            if (r0 == r3) goto L_0x0015
            int r0 = r6.a     // Catch:{ all -> 0x002a }
            r2 = 3
            if (r0 != r2) goto L_0x0017
        L_0x0015:
            monitor-exit(r1)     // Catch:{ all -> 0x002a }
        L_0x0016:
            return
        L_0x0017:
            aav r0 = r6.f     // Catch:{ InterruptedException -> 0x001f }
            aax r0 = r0.e     // Catch:{ InterruptedException -> 0x001f }
            r0.wait()     // Catch:{ InterruptedException -> 0x001f }
            goto L_0x0008
        L_0x001f:
            r0 = move-exception
            aaq r2 = new aaq     // Catch:{ all -> 0x002a }
            java.lang.String r3 = r0.getMessage()     // Catch:{ all -> 0x002a }
            r2.<init>((java.lang.String) r3, (java.lang.Throwable) r0)     // Catch:{ all -> 0x002a }
            throw r2     // Catch:{ all -> 0x002a }
        L_0x002a:
            r0 = move-exception
            monitor-exit(r1)     // Catch:{ all -> 0x002a }
            throw r0
        L_0x002d:
            r0 = 1
            r6.a = r0     // Catch:{ all -> 0x002a }
            aav r0 = r6.f     // Catch:{ aaq -> 0x00b8 }
            aax r0 = r0.e     // Catch:{ aaq -> 0x00b8 }
            r0.a()     // Catch:{ aaq -> 0x00b8 }
            java.lang.StringBuilder r0 = new java.lang.StringBuilder     // Catch:{ aaq -> 0x00b8 }
            java.lang.String r2 = "\\\\"
            r0.<init>(r2)     // Catch:{ aaq -> 0x00b8 }
            aav r2 = r6.f     // Catch:{ aaq -> 0x00b8 }
            aax r2 = r2.e     // Catch:{ aaq -> 0x00b8 }
            java.lang.String r2 = r2.A     // Catch:{ aaq -> 0x00b8 }
            java.lang.StringBuilder r0 = r0.append(r2)     // Catch:{ aaq -> 0x00b8 }
            r2 = 92
            java.lang.StringBuilder r0 = r0.append(r2)     // Catch:{ aaq -> 0x00b8 }
            java.lang.String r2 = r6.c     // Catch:{ aaq -> 0x00b8 }
            java.lang.StringBuilder r0 = r0.append(r2)     // Catch:{ aaq -> 0x00b8 }
            java.lang.String r0 = r0.toString()     // Catch:{ aaq -> 0x00b8 }
            java.lang.String r2 = r6.e     // Catch:{ aaq -> 0x00b8 }
            r6.d = r2     // Catch:{ aaq -> 0x00b8 }
            aav r2 = r6.f     // Catch:{ aaq -> 0x00b8 }
            aax r2 = r2.e     // Catch:{ aaq -> 0x00b8 }
            abx r2 = defpackage.aax.c     // Catch:{ aaq -> 0x00b8 }
            int r2 = defpackage.abx.a     // Catch:{ aaq -> 0x00b8 }
            r3 = 4
            if (r2 < r3) goto L_0x008b
            aav r2 = r6.f     // Catch:{ aaq -> 0x00b8 }
            aax r2 = r2.e     // Catch:{ aaq -> 0x00b8 }
            abx r2 = defpackage.aax.c     // Catch:{ aaq -> 0x00b8 }
            java.lang.StringBuilder r3 = new java.lang.StringBuilder     // Catch:{ aaq -> 0x00b8 }
            java.lang.String r4 = "treeConnect: unc="
            r3.<init>(r4)     // Catch:{ aaq -> 0x00b8 }
            java.lang.StringBuilder r3 = r3.append(r0)     // Catch:{ aaq -> 0x00b8 }
            java.lang.String r4 = ",service="
            java.lang.StringBuilder r3 = r3.append(r4)     // Catch:{ aaq -> 0x00b8 }
            java.lang.String r4 = r6.d     // Catch:{ aaq -> 0x00b8 }
            java.lang.StringBuilder r3 = r3.append(r4)     // Catch:{ aaq -> 0x00b8 }
            java.lang.String r3 = r3.toString()     // Catch:{ aaq -> 0x00b8 }
            r2.println(r3)     // Catch:{ aaq -> 0x00b8 }
        L_0x008b:
            aaj r2 = new aaj     // Catch:{ aaq -> 0x00b8 }
            r2.<init>(r8)     // Catch:{ aaq -> 0x00b8 }
            aai r3 = new aai     // Catch:{ aaq -> 0x00b8 }
            aav r4 = r6.f     // Catch:{ aaq -> 0x00b8 }
            java.lang.String r5 = r6.d     // Catch:{ aaq -> 0x00b8 }
            r3.<init>(r4, r0, r5, r7)     // Catch:{ aaq -> 0x00b8 }
            aav r0 = r6.f     // Catch:{ aaq -> 0x00b8 }
            r0.a((defpackage.zm) r3, (defpackage.zm) r2)     // Catch:{ aaq -> 0x00b8 }
            int r0 = r2.n     // Catch:{ aaq -> 0x00b8 }
            r6.b = r0     // Catch:{ aaq -> 0x00b8 }
            java.lang.String r0 = r2.d     // Catch:{ aaq -> 0x00b8 }
            r6.d = r0     // Catch:{ aaq -> 0x00b8 }
            boolean r0 = r2.c     // Catch:{ aaq -> 0x00b8 }
            r6.g = r0     // Catch:{ aaq -> 0x00b8 }
            int r0 = j     // Catch:{ aaq -> 0x00b8 }
            int r2 = r0 + 1
            j = r2     // Catch:{ aaq -> 0x00b8 }
            r6.i = r0     // Catch:{ aaq -> 0x00b8 }
            r0 = 2
            r6.a = r0     // Catch:{ aaq -> 0x00b8 }
            monitor-exit(r1)     // Catch:{ all -> 0x002a }
            goto L_0x0016
        L_0x00b8:
            r0 = move-exception
            r2 = 1
            r6.a(r2)     // Catch:{ all -> 0x002a }
            r2 = 0
            r6.a = r2     // Catch:{ all -> 0x002a }
            throw r0     // Catch:{ all -> 0x002a }
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.aay.b(zm, zm):void");
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof aay)) {
            return false;
        }
        aay aay = (aay) obj;
        return a(aay.c, aay.d);
    }

    public final String toString() {
        return "SmbTree[share=" + this.c + ",service=" + this.d + ",tid=" + this.b + ",inDfs=" + this.g + ",inDomainDfs=" + this.h + ",connectionState=" + this.a + "]";
    }
}
