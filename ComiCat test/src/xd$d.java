// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import java.util.Iterator;
import java.util.NoSuchElementException;

static final class >
    implements Iterator
{

    private static final wp a = new wp() {

        protected final Object a()
        {
            return new xd.d((byte)0);
        }

        protected final void b(Object obj)
        {
            obj = (xd.d)obj;
            xd.d.a(((xd.d) (obj)));
            xd.d.b(((xd.d) (obj)));
            xd.d.c(((xd.d) (obj)));
            xd.d.d(((xd.d) (obj)));
        }

    };
    private xd b;
    private d c;
    private d d;
    private d e;

    public static util.Iterator a(xd xd1)
    {
        tor tor = (tor)a.b();
        tor.b = xd1;
        tor.d = a(xd.j(xd1));
        tor.e = xd.a(xd1);
        return tor;
    }

    static xd a(e e1)
    {
        e1.b = null;
        return null;
    }

    static b b(b b1)
    {
        b1.c = null;
        return null;
    }

    static c c(c c1)
    {
        c1.d = null;
        return null;
    }

    static d d(d d1)
    {
        d1.e = null;
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
            d = a(d);
            return c(c);
        }
    }

    public final void remove()
    {
        if (c != null)
        {
            d = a(c);
            b.remove(c(c));
            c = null;
            return;
        } else
        {
            throw new IllegalStateException();
        }
    }


    private >()
    {
    }

    >(byte byte0)
    {
        this();
    }
}
