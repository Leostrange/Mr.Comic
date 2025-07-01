// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import java.nio.charset.Charset;

public abstract class ll
    implements ls
{

    ly a;
    private long b;

    protected ll(String s)
    {
        if (s == null)
        {
            s = null;
        } else
        {
            s = new ly(s);
        }
        this(((ly) (s)));
    }

    protected ll(ly ly1)
    {
        b = -1L;
        a = ly1;
    }

    public static long a(ls ls1)
    {
        if (!ls1.d())
        {
            return -1L;
        } else
        {
            return nx.a(ls1);
        }
    }

    public final long a()
    {
        if (b == -1L)
        {
            b = a(((ls) (this)));
        }
        return b;
    }

    protected final Charset b()
    {
        if (a == null || a.b() == null)
        {
            return np.a;
        } else
        {
            return a.b();
        }
    }

    public final String c()
    {
        if (a == null)
        {
            return null;
        } else
        {
            return a.a();
        }
    }

    public boolean d()
    {
        return true;
    }
}
