// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import java.util.Iterator;
import java.util.Set;

final class > extends xa
    implements Set
{

    final xd a;

    public final Object a(Set set)
    {
        return c((c)set);
    }

    public final void b(c c1)
    {
        a.remove(((lang.Object)c1).getKey());
    }

    public final y c()
    {
        return xd.j(a);
    }

    public final void clear()
    {
        a.clear();
    }

    public final boolean contains(Object obj)
    {
        return a.containsKey(obj);
    }

    public final Object d()
    {
        return xd.a(a);
    }

    public final xb e()
    {
        return xd.l(a);
    }

    public final Iterator iterator()
    {
        return a(a);
    }

    public final boolean remove(Object obj)
    {
        return a.remove(obj) != null;
    }

    public final int size()
    {
        return a.size();
    }

    private >(xd xd1)
    {
        a = xd1;
        super();
    }

    >(xd xd1, byte byte0)
    {
        this(xd1);
    }
}
