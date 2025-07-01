// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import java.io.IOException;

public abstract class lf extends nw
{

    protected final le a;
    protected final String b;
    protected lc c;
    protected lb d;
    private final String g;
    private final ls h = null;
    private lw i;
    private lw j;
    private int k;
    private String l;
    private boolean m;
    private Class n;

    protected lf(le le1, String s, String s1, Class class1)
    {
        i = new lw();
        k = -1;
        n = (Class)ni.a(class1);
        a = (le)ni.a(le1);
        g = (String)ni.a(s);
        b = (String)ni.a(s1);
        le1 = le1.e;
        if (le1 != null)
        {
            i.e((new StringBuilder()).append(le1).append(" Google-API-Java-Client").toString());
            return;
        } else
        {
            i.e("Google-API-Java-Client");
            return;
        }
    }

    private lz e()
    {
        Object obj;
        boolean flag;
        if (c == null)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        ni.a(flag);
        ni.a(true);
        obj = g;
        obj = a().b.a(((String) (obj)), b(), h);
        (new kt()).b(((lz) (obj)));
        obj.m = a().b();
        if (h == null && (g.equals("POST") || g.equals("PUT") || g.equals("PATCH")))
        {
            obj.f = new lp();
        }
        ((lz) (obj)).b.putAll(i);
        if (!m)
        {
            obj.n = new lq();
        }
        obj.l = new me(((lz) (obj)).l, ((lz) (obj))) {

            final me a;
            final lz b;
            final lf c;

            public final void a(mc mc1)
            {
                if (a != null)
                {
                    a.a(mc1);
                }
                if (!mc1.a() && b.o)
                {
                    throw c.a(mc1);
                } else
                {
                    return;
                }
            }

            
            {
                c = lf.this;
                a = me1;
                b = lz1;
                super();
            }
        };
        return ((lz) (obj));
    }

    public IOException a(mc mc1)
    {
        return new md(mc1);
    }

    public le a()
    {
        return a;
    }

    public lf a(String s, Object obj)
    {
        return (lf)super.d(s, obj);
    }

    public lr b()
    {
        return new lr(ml.a(a.a(), b, this));
    }

    public final Object c()
    {
        Object obj1;
        if (c == null)
        {
            obj1 = e().a();
        } else
        {
            Object obj = b();
            boolean flag1 = a().b.a(g, ((lr) (obj)), h).o;
            obj1 = c;
            obj1.b = i;
            obj1.e = m;
            boolean flag;
            if (((lc) (obj1)).a == lc.a.a)
            {
                flag = true;
            } else
            {
                flag = false;
            }
            ni.a(flag);
            if (((lc) (obj1)).c)
            {
                obj = ((lc) (obj1)).a(((lr) (obj)));
            } else
            {
                obj = ((lc) (obj1)).b(((lr) (obj)));
            }
            ((mc) (obj)).e.m = a().b();
            obj1 = obj;
            if (flag1)
            {
                obj1 = obj;
                if (!((mc) (obj)).a())
                {
                    throw a(((mc) (obj)));
                }
            }
        }
        j = ((mc) (obj1)).e.c;
        k = ((mc) (obj1)).c;
        l = ((mc) (obj1)).d;
        return ((mc) (obj1)).a(n);
    }

    public nw d(String s, Object obj)
    {
        return a(s, obj);
    }
}
