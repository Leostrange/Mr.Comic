// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 


public final class xg extends Number
    implements Comparable, wt, xa.a, xi
{

    public static final xg a;
    public static final wr b;
    public static final wr c;
    static final wy d = new wy(xg) {

        public final Appendable a(Object obj, Appendable appendable)
        {
            return wz.a(((xg)obj).intValue(), appendable);
        }

    };
    private static xg e[];
    private static int f;
    private static xg g[];
    private static int h;
    private static final wh i = wh.a();
    private static final Runnable k = new Runnable() {

        public final void run()
        {
            int j1 = xg.d();
            for (int k1 = xg.d(); j1 < k1 + 32; j1++)
            {
                xg xg1 = new xg(j1, (byte)0);
                if (xg.e().length <= j1)
                {
                    xg axg1[] = new xg[xg.e().length * 2];
                    System.arraycopy(xg.e(), 0, axg1, 0, xg.e().length);
                    xg.a(axg1);
                }
                xg.e()[j1] = xg1;
            }

            xg.b(xg.d() + 32);
        }

    };
    private static final Runnable l = new Runnable() {

        public final void run()
        {
            int j1 = xg.f();
            for (int k1 = xg.f(); j1 < k1 + 32; j1++)
            {
                xg xg1 = new xg(-j1, (byte)0);
                if (xg.g().length <= j1)
                {
                    xg axg1[] = new xg[xg.g().length * 2];
                    System.arraycopy(xg.g(), 0, axg1, 0, xg.g().length);
                    xg.b(axg1);
                }
                xg.g()[j1] = xg1;
            }

            xg.c(xg.f() + 32);
        }

    };
    private final int j;

    private xg(int i1)
    {
        j = i1;
    }

    xg(int i1, byte byte0)
    {
        this(i1);
    }

    public static xg a(int i1)
    {
        if (i1 >= 0)
        {
            if (i1 < h)
            {
                return g[i1];
            } else
            {
                return d(i1);
            }
        }
        i1 = -i1;
        if (i1 < f)
        {
            return e[i1];
        } else
        {
            return e(i1);
        }
    }

    static xg[] a(xg axg[])
    {
        g = axg;
        return axg;
    }

    static int b(int i1)
    {
        h = i1;
        return i1;
    }

    static xg[] b(xg axg[])
    {
        e = axg;
        return axg;
    }

    static int c(int i1)
    {
        f = i1;
        return i1;
    }

    static int d()
    {
        return h;
    }

    private static xg d(int i1)
    {
        xg;
        JVM INSTR monitorenter ;
        if (i1 >= h) goto _L2; else goto _L1
_L1:
        Object obj = g[i1];
_L3:
        xg;
        JVM INSTR monitorexit ;
        return ((xg) (obj));
_L2:
        while (i1 >= h) 
        {
            wh.a(k);
        }
        break MISSING_BLOCK_LABEL_43;
        obj;
        throw obj;
        obj = g[i1];
          goto _L3
    }

    private static xg e(int i1)
    {
        xg;
        JVM INSTR monitorenter ;
        if (i1 >= f) goto _L2; else goto _L1
_L1:
        Object obj = e[i1];
_L3:
        xg;
        JVM INSTR monitorexit ;
        return ((xg) (obj));
_L2:
        while (i1 >= f) 
        {
            wh.a(l);
        }
        break MISSING_BLOCK_LABEL_43;
        obj;
        throw obj;
        obj = e[i1];
          goto _L3
    }

    static xg[] e()
    {
        return g;
    }

    static int f()
    {
        return f;
    }

    static xg[] g()
    {
        return e;
    }

    public final xa.a a()
    {
        return a(j - 1);
    }

    public final ww b()
    {
        return wy.a(xg).a(this);
    }

    public final xa.a c()
    {
        return a(j + 1);
    }

    public final volatile int compareTo(Object obj)
    {
        obj = (xg)obj;
        return j - ((xg) (obj)).j;
    }

    public final double doubleValue()
    {
        return (double)intValue();
    }

    public final boolean equals(Object obj)
    {
        return this == obj;
    }

    public final float floatValue()
    {
        return (float)intValue();
    }

    public final int hashCode()
    {
        return j;
    }

    public final int intValue()
    {
        return j;
    }

    public final long longValue()
    {
        return (long)intValue();
    }

    public final String toString()
    {
        return wy.a(xg).b(this);
    }

    static 
    {
        int i1 = 1;
        a = new xg(0);
        xg axg[] = new xg[32];
        e = axg;
        axg[0] = a;
        e[1] = new xg(-1);
        f = 2;
        b = new wr(new Integer(-(f - 1))) {

        };
        axg = new xg[32];
        g = axg;
        axg[0] = a;
        for (; i1 < g.length; i1++)
        {
            g[i1] = new xg(i1);
        }

        h = g.length;
        c = new wr(new Integer(h - 1)) {

        };
        new Object();
    }
}
