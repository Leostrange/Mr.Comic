// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import java.util.Iterator;

final class b
    implements Iterator
{

    final d a;
    private final Object b[];
    private int c;
    private Object d;

    public final boolean hasNext()
    {
        return c < b.length;
    }

    public final Object next()
    {
        Object aobj[] = b;
        int i = c;
        c = i + 1;
        Object obj = aobj[i];
        d = obj;
        return obj;
    }

    public final void remove()
    {
        if (d == null)
        {
            throw new IllegalStateException();
        } else
        {
            a.move(d);
            d = null;
            return;
        }
    }

    public ng.Object(ct ct, Object aobj[])
    {
        a = ct;
        super();
        b = aobj;
    }
}
