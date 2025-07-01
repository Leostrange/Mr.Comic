// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 


public final class wg extends Enum
{

    public static final wg a;
    public static final wg b;
    public static final wg c;
    public static final wg d;
    public static final wg e;
    public static final wg f;
    public static final wg g;
    public static final wg h;
    private static final wg j[];
    int i;

    private wg(String s, int k, int l)
    {
        super(s, k);
        i = l;
    }

    public static wg a(int k)
    {
        if (a.b(k))
        {
            return a;
        }
        if (b.b(k))
        {
            return b;
        }
        if (c.b(k))
        {
            return c;
        }
        if (d.b(k))
        {
            return d;
        }
        if (e.b(k))
        {
            return e;
        }
        if (f.b(k))
        {
            return f;
        }
        if (g.b(k))
        {
            return g;
        } else
        {
            return null;
        }
    }

    private boolean b(int k)
    {
        return i == k;
    }

    public static wg valueOf(String s)
    {
        return (wg)Enum.valueOf(wg, s);
    }

    public static wg[] values()
    {
        return (wg[])j.clone();
    }

    static 
    {
        a = new wg("VMSF_NONE", 0, 0);
        b = new wg("VMSF_E8", 1, 1);
        c = new wg("VMSF_E8E9", 2, 2);
        d = new wg("VMSF_ITANIUM", 3, 3);
        e = new wg("VMSF_RGB", 4, 4);
        f = new wg("VMSF_AUDIO", 5, 5);
        g = new wg("VMSF_DELTA", 6, 6);
        h = new wg("VMSF_UPCASE", 7, 7);
        j = (new wg[] {
            a, b, c, d, e, f, g, h
        });
    }
}
