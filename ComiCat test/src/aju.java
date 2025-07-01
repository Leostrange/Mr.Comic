// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import java.util.Arrays;

public final class aju
    implements ain
{
    public static final class a
        implements aiq
    {

        public final void a(aif aif1, int i)
        {
            aif1.a(' ');
        }

        public final boolean a()
        {
            return true;
        }

        public a()
        {
        }
    }

    public static final class b
        implements aiq
    {

        static final String a;
        static final char b[];

        public final void a(aif aif1, int i)
        {
            aif1.c(a);
            if (i > 0)
            {
                for (i += i; i > 64; i -= b.length)
                {
                    aif1.a(b, 0, 64);
                }

                aif1.a(b, 0, i);
            }
        }

        public final boolean a()
        {
            return false;
        }

        static 
        {
            String s = null;
            String s1 = System.getProperty("line.separator");
            s = s1;
_L2:
            String s2 = s;
            if (s == null)
            {
                s2 = "\n";
            }
            a = s2;
            char ac[] = new char[64];
            b = ac;
            Arrays.fill(ac, ' ');
            return;
            Throwable throwable;
            throwable;
            if (true) goto _L2; else goto _L1
_L1:
        }

        public b()
        {
        }
    }


    protected aiq a;
    protected aiq b;
    protected boolean c;
    protected int d;

    public aju()
    {
        a = new a();
        b = new b();
        c = true;
        d = 0;
    }

    public final void a(aif aif1)
    {
        aif1.a(' ');
    }

    public final void a(aif aif1, int i)
    {
        if (!b.a())
        {
            d = d - 1;
        }
        if (i > 0)
        {
            b.a(aif1, d);
        } else
        {
            aif1.a(' ');
        }
        aif1.a('}');
    }

    public final void b(aif aif1)
    {
        aif1.a('{');
        if (!b.a())
        {
            d = d + 1;
        }
    }

    public final void b(aif aif1, int i)
    {
        if (!a.a())
        {
            d = d - 1;
        }
        if (i > 0)
        {
            a.a(aif1, d);
        } else
        {
            aif1.a(' ');
        }
        aif1.a(']');
    }

    public final void c(aif aif1)
    {
        aif1.a(',');
        b.a(aif1, d);
    }

    public final void d(aif aif1)
    {
        if (c)
        {
            aif1.c(" : ");
            return;
        } else
        {
            aif1.a(':');
            return;
        }
    }

    public final void e(aif aif1)
    {
        if (!a.a())
        {
            d = d + 1;
        }
        aif1.a('[');
    }

    public final void f(aif aif1)
    {
        aif1.a(',');
        a.a(aif1, d);
    }

    public final void g(aif aif1)
    {
        a.a(aif1, d);
    }

    public final void h(aif aif1)
    {
        b.a(aif1, d);
    }
}
