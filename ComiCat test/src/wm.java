// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import java.util.NoSuchElementException;

public class wm extends wj
{
    static final class a extends wi
    {

        private final wp d;
        private final xf e = new xf();

        protected final void a(Object obj)
        {
            if (d.b)
            {
                d.b(obj);
            }
            e.add(obj);
        }

        protected final Object b()
        {
            if (e.isEmpty())
            {
                return d.a();
            }
            xf xf1 = e;
            if (xf1.b == 0)
            {
                throw new NoSuchElementException();
            } else
            {
                xf1.b = xf1.b - 1;
                Object aobj[] = xf1.a[xf1.b >> 10];
                Object obj = aobj[xf1.b & 0x3ff];
                aobj[xf1.b & 0x3ff] = null;
                return obj;
            }
        }

        public final String toString()
        {
            return (new StringBuilder("Heap allocator for ")).append(d.getClass()).toString();
        }

        public a(wp wp1)
        {
            d = wp1;
        }
    }


    private static final ThreadLocal e = new ThreadLocal() {

        protected final Object initialValue()
        {
            return new xd();
        }

    };
    private static final ThreadLocal f = new ThreadLocal() {

        protected final Object initialValue()
        {
            return new xf();
        }

    };

    public wm()
    {
    }

    protected final wi a(wp wp)
    {
        xd xd1 = (xd)e.get();
        a a2 = (a)xd1.get(wp);
        a a1 = a2;
        if (a2 == null)
        {
            a1 = new a(wp);
            xd1.put(wp, a1);
        }
        if (a1.a == null)
        {
            a1.a = Thread.currentThread();
            ((xf)f.get()).add(a1);
        }
        return a1;
    }

}
