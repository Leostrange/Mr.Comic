// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import java.util.logging.Logger;

public abstract class le
{
    public static abstract class a
    {

        final mf a;
        lh b;
        mb c;
        final of d;
        String e;
        String f;
        String g;
        boolean h;
        boolean i;

        public a a(String s)
        {
            e = le.a(s);
            return this;
        }

        public a a(lh lh1)
        {
            b = lh1;
            return this;
        }

        public a b(String s)
        {
            f = le.b(s);
            return this;
        }

        public a c(String s)
        {
            g = s;
            return this;
        }

        protected a(mf mf1, String s, String s1, of of)
        {
            a = (mf)ni.a(mf1);
            d = of;
            a(s);
            b(s1);
            c = null;
        }
    }


    static final Logger a = Logger.getLogger(le.getName());
    public final ma b;
    public final String c;
    public final String d;
    final String e;
    private final lh f;
    private final of g;
    private boolean h;
    private boolean i;

    protected le(a a1)
    {
        f = a1.b;
        c = a(a1.e);
        d = b(a1.f);
        if (ol.a(a1.g))
        {
            a.warning("Application name is not set. Call Builder#setApplicationName.");
        }
        e = a1.g;
        ma ma;
        if (a1.c == null)
        {
            ma = a1.a.a(null);
        } else
        {
            ma = a1.a.a(a1.c);
        }
        b = ma;
        g = a1.d;
        h = a1.h;
        i = a1.i;
    }

    static String a(String s)
    {
        oh.a(s, "root URL cannot be null.");
        String s1 = s;
        if (!s.endsWith("/"))
        {
            s1 = (new StringBuilder()).append(s).append("/").toString();
        }
        return s1;
    }

    static String b(String s)
    {
        oh.a(s, "service path cannot be null");
        String s1;
        if (s.length() == 1)
        {
            oh.a("/".equals(s), "service path must equal \"/\" if it is of length 1.");
            s1 = "";
        } else
        {
            s1 = s;
            if (s.length() > 0)
            {
                String s2 = s;
                if (!s.endsWith("/"))
                {
                    s2 = (new StringBuilder()).append(s).append("/").toString();
                }
                s1 = s2;
                if (s2.startsWith("/"))
                {
                    return s2.substring(1);
                }
            }
        }
        return s1;
    }

    public final String a()
    {
        return (new StringBuilder()).append(c).append(d).toString();
    }

    public void a(lf lf)
    {
        if (f != null)
        {
            f.a(lf);
        }
    }

    public of b()
    {
        return g;
    }

}
