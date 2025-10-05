package defpackage;

import java.util.Arrays;

/* renamed from: ajl  reason: default package */
/* compiled from: CharsToNameCanonicalizer */
public final class ajl {
    static final ajl a = new ajl();
    protected ajl b;
    protected final boolean c;
    protected final boolean d;
    protected String[] e;
    protected a[] f;
    protected int g;
    protected int h;
    protected int i;
    protected int j;
    protected boolean k;
    private final int l;

    /* renamed from: ajl$a */
    /* compiled from: CharsToNameCanonicalizer */
    static final class a {
        final String a;
        final a b;
        final int c;

        public a(String str, a aVar) {
            this.a = str;
            this.b = aVar;
            this.c = aVar == null ? 1 : aVar.c + 1;
        }

        /* JADX WARNING: Removed duplicated region for block: B:4:0x000b A[LOOP:1: B:4:0x000b->B:7:0x0017, LOOP_START, PHI: r2 
          PHI: (r2v2 int) = (r2v1 int), (r2v4 int) binds: [B:3:0x000a, B:7:0x0017] A[DONT_GENERATE, DONT_INLINE]] */
        /* Code decompiled incorrectly, please refer to instructions dump. */
        public final java.lang.String a(char[] r6, int r7, int r8) {
            /*
                r5 = this;
                java.lang.String r1 = r5.a
                ajl$a r0 = r5.b
            L_0x0004:
                int r2 = r1.length()
                if (r2 != r8) goto L_0x001c
                r2 = 0
            L_0x000b:
                char r3 = r1.charAt(r2)
                int r4 = r7 + r2
                char r4 = r6[r4]
                if (r3 != r4) goto L_0x0019
                int r2 = r2 + 1
                if (r2 < r8) goto L_0x000b
            L_0x0019:
                if (r2 != r8) goto L_0x001c
            L_0x001b:
                return r1
            L_0x001c:
                if (r0 == 0) goto L_0x0023
                java.lang.String r1 = r0.a
                ajl$a r0 = r0.b
                goto L_0x0004
            L_0x0023:
                r1 = 0
                goto L_0x001b
            */
            throw new UnsupportedOperationException("Method not decompiled: defpackage.ajl.a.a(char[], int, int):java.lang.String");
        }
    }

    private ajl() {
        this.d = true;
        this.c = true;
        this.k = true;
        this.l = 0;
        this.j = 0;
        c();
    }

    private ajl(ajl ajl, boolean z, boolean z2, String[] strArr, a[] aVarArr, int i2, int i3, int i4) {
        this.b = ajl;
        this.d = z;
        this.c = z2;
        this.e = strArr;
        this.f = aVarArr;
        this.g = i2;
        this.l = i3;
        int length = strArr.length;
        this.h = length - (length >> 2);
        this.i = length - 1;
        this.j = i4;
        this.k = false;
    }

    private int a(int i2) {
        return ((i2 >>> 15) + i2) & this.i;
    }

    private int a(String str) {
        int length = str.length();
        int i2 = this.l;
        int i3 = 0;
        while (i3 < length) {
            i3++;
            i2 = str.charAt(i3) + (i2 * 33);
        }
        if (i2 == 0) {
            return 1;
        }
        return i2;
    }

    private int a(char[] cArr, int i2) {
        int i3 = this.l;
        int i4 = 0;
        while (i4 < i2) {
            i4++;
            i3 = cArr[i4] + (i3 * 33);
        }
        if (i3 == 0) {
            return 1;
        }
        return i3;
    }

    public static ajl a() {
        long currentTimeMillis = System.currentTimeMillis();
        int i2 = (int) currentTimeMillis;
        ajl ajl = a;
        return new ajl((ajl) null, true, true, ajl.e, ajl.f, ajl.g, ((((int) currentTimeMillis) >>> 32) + i2) | 1, ajl.j);
    }

    private void c() {
        this.e = new String[64];
        this.f = new a[32];
        this.i = 63;
        this.g = 0;
        this.j = 0;
        this.h = 48;
    }

    private void d() {
        int length = this.e.length;
        int i2 = length + length;
        if (i2 > 65536) {
            this.g = 0;
            Arrays.fill(this.e, (Object) null);
            Arrays.fill(this.f, (Object) null);
            this.k = true;
            return;
        }
        String[] strArr = this.e;
        a[] aVarArr = this.f;
        this.e = new String[i2];
        this.f = new a[(i2 >> 1)];
        this.i = i2 - 1;
        this.h = i2 - (i2 >> 2);
        int i3 = 0;
        int i4 = 0;
        for (int i5 = 0; i5 < length; i5++) {
            String str = strArr[i5];
            if (str != null) {
                i4++;
                int a2 = a(a(str));
                if (this.e[a2] == null) {
                    this.e[a2] = str;
                } else {
                    int i6 = a2 >> 1;
                    a aVar = new a(str, this.f[i6]);
                    this.f[i6] = aVar;
                    i3 = Math.max(i3, aVar.c);
                }
            }
        }
        int i7 = length >> 1;
        int i8 = i4;
        for (int i9 = 0; i9 < i7; i9++) {
            a aVar2 = aVarArr[i9];
            while (aVar2 != null) {
                int i10 = i8 + 1;
                String str2 = aVar2.a;
                int a3 = a(a(str2));
                if (this.e[a3] == null) {
                    this.e[a3] = str2;
                } else {
                    int i11 = a3 >> 1;
                    a aVar3 = new a(str2, this.f[i11]);
                    this.f[i11] = aVar3;
                    i3 = Math.max(i3, aVar3.c);
                }
                aVar2 = aVar2.b;
                i8 = i10;
            }
        }
        this.j = i3;
        if (i8 != this.g) {
            throw new Error("Internal error on SymbolTable.rehash(): had " + this.g + " entries; now have " + i8 + ".");
        }
    }

    /*  JADX ERROR: IndexOutOfBoundsException in pass: RegionMakerVisitor
        java.lang.IndexOutOfBoundsException: Index: 0, Size: 0
        	at java.util.ArrayList.rangeCheck(ArrayList.java:659)
        	at java.util.ArrayList.get(ArrayList.java:435)
        	at jadx.core.dex.nodes.InsnNode.getArg(InsnNode.java:101)
        	at jadx.core.dex.visitors.regions.RegionMaker.traverseMonitorExits(RegionMaker.java:611)
        	at jadx.core.dex.visitors.regions.RegionMaker.traverseMonitorExits(RegionMaker.java:619)
        	at jadx.core.dex.visitors.regions.RegionMaker.traverseMonitorExits(RegionMaker.java:619)
        	at jadx.core.dex.visitors.regions.RegionMaker.traverseMonitorExits(RegionMaker.java:619)
        	at jadx.core.dex.visitors.regions.RegionMaker.processMonitorEnter(RegionMaker.java:561)
        	at jadx.core.dex.visitors.regions.RegionMaker.traverse(RegionMaker.java:133)
        	at jadx.core.dex.visitors.regions.RegionMaker.makeRegion(RegionMaker.java:86)
        	at jadx.core.dex.visitors.regions.RegionMaker.processMonitorEnter(RegionMaker.java:598)
        	at jadx.core.dex.visitors.regions.RegionMaker.traverse(RegionMaker.java:133)
        	at jadx.core.dex.visitors.regions.RegionMaker.makeRegion(RegionMaker.java:86)
        	at jadx.core.dex.visitors.regions.RegionMakerVisitor.visit(RegionMakerVisitor.java:49)
        */
    public final synchronized defpackage.ajl a(boolean r10, boolean r11) {
        /*
            r9 = this;
            monitor-enter(r9)
            monitor-enter(r9)     // Catch:{ all -> 0x001a }
            java.lang.String[] r4 = r9.e     // Catch:{ all -> 0x0017 }
            ajl$a[] r5 = r9.f     // Catch:{ all -> 0x0017 }
            int r6 = r9.g     // Catch:{ all -> 0x0017 }
            int r7 = r9.l     // Catch:{ all -> 0x0017 }
            int r8 = r9.j     // Catch:{ all -> 0x0017 }
            monitor-exit(r9)     // Catch:{ all -> 0x0017 }
            ajl r0 = new ajl     // Catch:{ all -> 0x001a }
            r1 = r9
            r2 = r10
            r3 = r11
            r0.<init>(r1, r2, r3, r4, r5, r6, r7, r8)     // Catch:{ all -> 0x001a }
            monitor-exit(r9)
            return r0
        L_0x0017:
            r0 = move-exception
            monitor-exit(r9)     // Catch:{ all -> 0x0017 }
            throw r0     // Catch:{ all -> 0x001a }
        L_0x001a:
            r0 = move-exception
            monitor-exit(r9)
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.ajl.a(boolean, boolean):ajl");
    }

    /* JADX WARNING: Removed duplicated region for block: B:11:0x0021 A[LOOP:0: B:11:0x0021->B:14:0x002d, LOOP_START, PHI: r0 
      PHI: (r0v22 int) = (r0v21 int), (r0v24 int) binds: [B:10:0x0020, B:14:0x002d] A[DONT_GENERATE, DONT_INLINE]] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final java.lang.String a(char[] r7, int r8, int r9, int r10) {
        /*
            r6 = this;
            r1 = 0
            if (r9 > 0) goto L_0x0006
            java.lang.String r1 = ""
        L_0x0005:
            return r1
        L_0x0006:
            boolean r0 = r6.d
            if (r0 != 0) goto L_0x0010
            java.lang.String r1 = new java.lang.String
            r1.<init>(r7, r8, r9)
            goto L_0x0005
        L_0x0010:
            int r2 = r6.a((int) r10)
            java.lang.String[] r0 = r6.e
            r3 = r0[r2]
            if (r3 == 0) goto L_0x0043
            int r0 = r3.length()
            if (r0 != r9) goto L_0x0033
            r0 = r1
        L_0x0021:
            char r4 = r3.charAt(r0)
            int r5 = r8 + r0
            char r5 = r7[r5]
            if (r4 != r5) goto L_0x002f
            int r0 = r0 + 1
            if (r0 < r9) goto L_0x0021
        L_0x002f:
            if (r0 != r9) goto L_0x0033
            r1 = r3
            goto L_0x0005
        L_0x0033:
            ajl$a[] r0 = r6.f
            int r3 = r2 >> 1
            r0 = r0[r3]
            if (r0 == 0) goto L_0x0043
            java.lang.String r0 = r0.a(r7, r8, r9)
            if (r0 == 0) goto L_0x0043
            r1 = r0
            goto L_0x0005
        L_0x0043:
            boolean r0 = r6.k
            if (r0 != 0) goto L_0x0083
            java.lang.String[] r0 = r6.e
            int r3 = r0.length
            java.lang.String[] r4 = new java.lang.String[r3]
            r6.e = r4
            java.lang.String[] r4 = r6.e
            java.lang.System.arraycopy(r0, r1, r4, r1, r3)
            ajl$a[] r0 = r6.f
            int r3 = r0.length
            ajl$a[] r4 = new defpackage.ajl.a[r3]
            r6.f = r4
            ajl$a[] r4 = r6.f
            java.lang.System.arraycopy(r0, r1, r4, r1, r3)
            r0 = 1
            r6.k = r0
            r0 = r2
        L_0x0063:
            java.lang.String r1 = new java.lang.String
            r1.<init>(r7, r8, r9)
            boolean r2 = r6.c
            if (r2 == 0) goto L_0x0072
            ajv r2 = defpackage.ajv.a
            java.lang.String r1 = r2.a(r1)
        L_0x0072:
            int r2 = r6.g
            int r2 = r2 + 1
            r6.g = r2
            java.lang.String[] r2 = r6.e
            r2 = r2[r0]
            if (r2 != 0) goto L_0x0095
            java.lang.String[] r2 = r6.e
            r2[r0] = r1
            goto L_0x0005
        L_0x0083:
            int r0 = r6.g
            int r1 = r6.h
            if (r0 < r1) goto L_0x00d1
            r6.d()
            int r0 = r6.a((char[]) r7, (int) r9)
            int r0 = r6.a((int) r0)
            goto L_0x0063
        L_0x0095:
            int r0 = r0 >> 1
            ajl$a r2 = new ajl$a
            ajl$a[] r3 = r6.f
            r3 = r3[r0]
            r2.<init>(r1, r3)
            ajl$a[] r3 = r6.f
            r3[r0] = r2
            int r0 = r2.c
            int r2 = r6.j
            int r0 = java.lang.Math.max(r0, r2)
            r6.j = r0
            int r0 = r6.j
            r2 = 255(0xff, float:3.57E-43)
            if (r0 <= r2) goto L_0x0005
            java.lang.IllegalStateException r0 = new java.lang.IllegalStateException
            java.lang.StringBuilder r1 = new java.lang.StringBuilder
            java.lang.String r2 = "Longest collision chain in symbol table (of size "
            r1.<init>(r2)
            int r2 = r6.g
            java.lang.StringBuilder r1 = r1.append(r2)
            java.lang.String r2 = ") now exceeds maximum, 255 -- suspect a DoS attack based on hash collisions"
            java.lang.StringBuilder r1 = r1.append(r2)
            java.lang.String r1 = r1.toString()
            r0.<init>(r1)
            throw r0
        L_0x00d1:
            r0 = r2
            goto L_0x0063
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.ajl.a(char[], int, int, int):java.lang.String");
    }

    public final void b() {
        if (this.k && this.b != null) {
            ajl ajl = this.b;
            if (this.g > 12000 || this.j > 63) {
                synchronized (ajl) {
                    ajl.c();
                    ajl.k = false;
                }
            } else if (this.g > ajl.g) {
                synchronized (ajl) {
                    ajl.e = this.e;
                    ajl.f = this.f;
                    ajl.g = this.g;
                    ajl.h = this.h;
                    ajl.i = this.i;
                    ajl.j = this.j;
                    ajl.k = false;
                }
            }
            this.k = false;
        }
    }
}
