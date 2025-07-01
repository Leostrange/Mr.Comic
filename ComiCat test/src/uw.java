// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 


public final class uw extends Enum
{

    public static final uw a;
    public static final uw b;
    public static final uw c;
    public static final uw d;
    public static final uw e;
    public static final uw f;
    public static final uw g;
    public static final uw h;
    public static final uw i;
    public static final uw j;
    private static final uw l[];
    byte k;

    private uw(String s, int i1, byte byte0)
    {
        super(s, i1);
        k = byte0;
    }

    public static uw a(byte byte0)
    {
        if (b.b(byte0))
        {
            return b;
        }
        if (a.b(byte0))
        {
            return a;
        }
        if (c.b(byte0))
        {
            return c;
        }
        if (j.b(byte0))
        {
            return j;
        }
        if (i.b(byte0))
        {
            return i;
        }
        if (f.b(byte0))
        {
            return f;
        }
        if (h.b(byte0))
        {
            return h;
        }
        if (g.b(byte0))
        {
            return g;
        }
        if (b.b(byte0))
        {
            return b;
        }
        if (a.b(byte0))
        {
            return a;
        }
        if (c.b(byte0))
        {
            return c;
        }
        if (j.b(byte0))
        {
            return j;
        }
        if (d.b(byte0))
        {
            return d;
        }
        if (e.b(byte0))
        {
            return e;
        } else
        {
            return null;
        }
    }

    public static uw valueOf(String s)
    {
        return (uw)Enum.valueOf(uw, s);
    }

    public static uw[] values()
    {
        return (uw[])l.clone();
    }

    public final boolean b(byte byte0)
    {
        return k == byte0;
    }

    static 
    {
        a = new uw("MainHeader", 0, (byte)115);
        b = new uw("MarkHeader", 1, (byte)114);
        c = new uw("FileHeader", 2, (byte)116);
        d = new uw("CommHeader", 3, (byte)117);
        e = new uw("AvHeader", 4, (byte)118);
        f = new uw("SubHeader", 5, (byte)119);
        g = new uw("ProtectHeader", 6, (byte)120);
        h = new uw("SignHeader", 7, (byte)121);
        i = new uw("NewSubHeader", 8, (byte)122);
        j = new uw("EndArcHeader", 9, (byte)123);
        l = (new uw[] {
            a, b, c, d, e, f, g, h, i, j
        });
    }
}
