// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 


public static final class d
{

    static final boolean c;
    String a;
    String b;
    private final lang.String d;

    static t a(t t)
    {
        return t.d;
    }

    static String b(d d1)
    {
        return d1.a;
    }

    static String c(a a1)
    {
        return a1.b;
    }

    static 
    {
        boolean flag;
        if (!tk.desiredAssertionStatus())
        {
            flag = true;
        } else
        {
            flag = false;
        }
        c = flag;
    }

    public >(g g)
    {
        if (!c && g == null)
        {
            throw new AssertionError();
        } else
        {
            d = g;
            return;
        }
    }
}
