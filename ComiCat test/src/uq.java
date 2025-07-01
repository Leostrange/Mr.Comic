// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 


public final class uq extends Enum
{

    public static final uq a;
    public static final uq b;
    public static final uq c;
    public static final uq d;
    public static final uq e;
    public static final uq f;
    private static final uq h[];
    private byte g;

    private uq(String s, int i, byte byte0)
    {
        super(s, i);
        g = byte0;
    }

    public static uq a(byte byte0)
    {
        if (a.b(byte0))
        {
            return a;
        }
        if (b.b(byte0))
        {
            return b;
        }
        if (c.b(byte0))
        {
            return c;
        }
        if (d.b(byte0))
        {
            return d;
        }
        if (e.b(byte0))
        {
            return e;
        }
        if (f.b(byte0))
        {
            return f;
        } else
        {
            return null;
        }
    }

    private boolean b(byte byte0)
    {
        return g == byte0;
    }

    public static uq valueOf(String s)
    {
        return (uq)Enum.valueOf(uq, s);
    }

    public static uq[] values()
    {
        return (uq[])h.clone();
    }

    static 
    {
        a = new uq("msdos", 0, (byte)0);
        b = new uq("os2", 1, (byte)1);
        c = new uq("win32", 2, (byte)2);
        d = new uq("unix", 3, (byte)3);
        e = new uq("macos", 4, (byte)4);
        f = new uq("beos", 5, (byte)5);
        h = (new uq[] {
            a, b, c, d, e, f
        });
    }
}
