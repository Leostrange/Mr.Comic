// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import java.util.Iterator;

abstract class px
    implements Iterator
{

    final Iterator b;

    px(Iterator iterator)
    {
        b = (Iterator)pg.a(iterator);
    }

    abstract Object a(Object obj);

    public final boolean hasNext()
    {
        return b.hasNext();
    }

    public final Object next()
    {
        return a(b.next());
    }

    public final void remove()
    {
        b.remove();
    }
}
