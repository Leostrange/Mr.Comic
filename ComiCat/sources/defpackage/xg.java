package defpackage;

import defpackage.xa;

/* renamed from: xg  reason: default package */
/* compiled from: Index */
public final class xg extends Number implements Comparable<xg>, wt, xa.a, xi {
    public static final xg a = new xg(0);
    public static final wr<Integer> b = new wr(new Integer(-(f - 1))) {
    };
    public static final wr<Integer> c = new wr(new Integer(h - 1)) {
    };
    static final wy d = new wy(xg.class) {
        public final Appendable a(Object obj, Appendable appendable) {
            return wz.a(((xg) obj).intValue(), appendable);
        }
    };
    /* access modifiers changed from: private */
    public static xg[] e;
    /* access modifiers changed from: private */
    public static int f = 2;
    /* access modifiers changed from: private */
    public static xg[] g;
    /* access modifiers changed from: private */
    public static int h = g.length;
    private static final wh i = wh.a();
    private static final Runnable k = new Runnable() {
        public final void run() {
            int d = xg.h + 32;
            for (int d2 = xg.h; d2 < d; d2++) {
                xg xgVar = new xg(d2, (byte) 0);
                if (xg.g.length <= d2) {
                    xg[] xgVarArr = new xg[(xg.g.length * 2)];
                    System.arraycopy(xg.g, 0, xgVarArr, 0, xg.g.length);
                    xg[] unused = xg.g = xgVarArr;
                }
                xg.g[d2] = xgVar;
            }
            int unused2 = xg.h = xg.h + 32;
        }
    };
    private static final Runnable l = new Runnable() {
        public final void run() {
            int f = xg.f + 32;
            for (int f2 = xg.f; f2 < f; f2++) {
                xg xgVar = new xg(-f2, (byte) 0);
                if (xg.e.length <= f2) {
                    xg[] xgVarArr = new xg[(xg.e.length * 2)];
                    System.arraycopy(xg.e, 0, xgVarArr, 0, xg.e.length);
                    xg[] unused = xg.e = xgVarArr;
                }
                xg.e[f2] = xgVar;
            }
            int unused2 = xg.f = xg.f + 32;
        }
    };
    private final int j;

    static {
        xg[] xgVarArr = new xg[32];
        e = xgVarArr;
        xgVarArr[0] = a;
        e[1] = new xg(-1);
        xg[] xgVarArr2 = new xg[32];
        g = xgVarArr2;
        xgVarArr2[0] = a;
        for (int i2 = 1; i2 < g.length; i2++) {
            g[i2] = new xg(i2);
        }
        new Object();
    }

    private xg(int i2) {
        this.j = i2;
    }

    /* synthetic */ xg(int i2, byte b2) {
        this(i2);
    }

    public static xg a(int i2) {
        if (i2 >= 0) {
            return i2 < h ? g[i2] : d(i2);
        }
        int i3 = -i2;
        return i3 < f ? e[i3] : e(i3);
    }

    private static synchronized xg d(int i2) {
        xg xgVar;
        synchronized (xg.class) {
            if (i2 < h) {
                xgVar = g[i2];
            } else {
                while (i2 >= h) {
                    wh.a(k);
                }
                xgVar = g[i2];
            }
        }
        return xgVar;
    }

    private static synchronized xg e(int i2) {
        xg xgVar;
        synchronized (xg.class) {
            if (i2 < f) {
                xgVar = e[i2];
            } else {
                while (i2 >= f) {
                    wh.a(l);
                }
                xgVar = e[i2];
            }
        }
        return xgVar;
    }

    public final xa.a a() {
        return a(this.j - 1);
    }

    public final ww b() {
        return wy.a(xg.class).a(this);
    }

    public final xa.a c() {
        return a(this.j + 1);
    }

    public final /* bridge */ /* synthetic */ int compareTo(Object obj) {
        return this.j - ((xg) obj).j;
    }

    public final double doubleValue() {
        return (double) intValue();
    }

    public final boolean equals(Object obj) {
        return this == obj;
    }

    public final float floatValue() {
        return (float) intValue();
    }

    public final int hashCode() {
        return this.j;
    }

    public final int intValue() {
        return this.j;
    }

    public final long longValue() {
        return (long) intValue();
    }

    public final String toString() {
        return wy.a(xg.class).b(this);
    }
}
