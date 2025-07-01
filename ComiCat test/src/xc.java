// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import java.util.Iterator;
import java.util.NoSuchElementException;

final class xc
    implements Iterator
{

    private static final wp a = new wp() {

        protected final Object a()
        {
            return new xc((byte)0);
        }

        protected final void b(Object obj)
        {
            obj = (xc)obj;
            xc.a(((xc) (obj)));
            xc.b(((xc) (obj)));
            xc.c(((xc) (obj)));
            xc.d(((xc) (obj)));
        }

    };
    private xa b;
    private xa.a c;
    private xa.a d;
    private xa.a e;

    private xc()
    {
    }

    xc(byte byte0)
    {
        this();
    }

    static xa a(xc xc1)
    {
        xc1.b = null;
        return null;
    }

    public static xc a(xa xa1)
    {
        xc xc1 = (xc)a.b();
        xc1.b = xa1;
        xc1.d = xa1.c().c();
        xc1.e = xa1.d();
        return xc1;
    }

    static xa.a b(xc xc1)
    {
        xc1.c = null;
        return null;
    }

    static xa.a c(xc xc1)
    {
        xc1.d = null;
        return null;
    }

    static xa.a d(xc xc1)
    {
        xc1.e = null;
        return null;
    }

    public final boolean hasNext()
    {
        return d != e;
    }

    public final Object next()
    {
        if (d == e)
        {
            throw new NoSuchElementException();
        } else
        {
            c = d;
            d = d.c();
            return b.a(c);
        }
    }

    public final void remove()
    {
        if (c != null)
        {
            xa.a a1 = c.a();
            b.b(c);
            c = null;
            d = a1.c();
            return;
        } else
        {
            throw new IllegalStateException();
        }
    }

}
