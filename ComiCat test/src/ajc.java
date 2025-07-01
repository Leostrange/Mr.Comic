// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 


public final class ajc
{

    protected final Object a;
    protected aic b;
    protected final boolean c;
    protected final ajr d;
    protected byte e[];
    protected byte f[];
    protected char g[];
    protected char h[];
    protected char i[];

    public ajc(ajr ajr1, Object obj, boolean flag)
    {
        e = null;
        f = null;
        g = null;
        h = null;
        i = null;
        d = ajr1;
        a = obj;
        c = flag;
    }

    public final Object a()
    {
        return a;
    }

    public final void a(aic aic)
    {
        b = aic;
    }

    public final void a(byte abyte0[])
    {
        if (abyte0 != null)
        {
            if (abyte0 != e)
            {
                throw new IllegalArgumentException("Trying to release buffer not owned by the context");
            }
            e = null;
            d.a(ajr.a.a, abyte0);
        }
    }

    public final void a(char ac[])
    {
        if (ac != null)
        {
            if (ac != g)
            {
                throw new IllegalArgumentException("Trying to release buffer not owned by the context");
            }
            g = null;
            d.a(ajr.b.a, ac);
        }
    }

    public final aic b()
    {
        return b;
    }

    public final void b(byte abyte0[])
    {
        if (abyte0 != null)
        {
            if (abyte0 != f)
            {
                throw new IllegalArgumentException("Trying to release buffer not owned by the context");
            }
            f = null;
            d.a(ajr.a.b, abyte0);
        }
    }

    public final void b(char ac[])
    {
        if (ac != null)
        {
            if (ac != h)
            {
                throw new IllegalArgumentException("Trying to release buffer not owned by the context");
            }
            h = null;
            d.a(ajr.b.b, ac);
        }
    }

    public final void c(char ac[])
    {
        if (ac != null)
        {
            if (ac != i)
            {
                throw new IllegalArgumentException("Trying to release buffer not owned by the context");
            }
            i = null;
            d.a(ajr.b.d, ac);
        }
    }

    public final boolean c()
    {
        return c;
    }

    public final ajw d()
    {
        return new ajw(d);
    }

    public final byte[] e()
    {
        if (e != null)
        {
            throw new IllegalStateException("Trying to call allocReadIOBuffer() second time");
        } else
        {
            e = d.a(ajr.a.a);
            return e;
        }
    }

    public final byte[] f()
    {
        if (f != null)
        {
            throw new IllegalStateException("Trying to call allocWriteEncodingBuffer() second time");
        } else
        {
            f = d.a(ajr.a.b);
            return f;
        }
    }

    public final char[] g()
    {
        if (g != null)
        {
            throw new IllegalStateException("Trying to call allocTokenBuffer() second time");
        } else
        {
            g = d.a(ajr.b.a);
            return g;
        }
    }

    public final char[] h()
    {
        if (h != null)
        {
            throw new IllegalStateException("Trying to call allocConcatBuffer() second time");
        } else
        {
            h = d.a(ajr.b.b);
            return h;
        }
    }
}
