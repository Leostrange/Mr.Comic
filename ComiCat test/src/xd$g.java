// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import java.util.Iterator;

final class > extends xa
{

    final xd a;

    public final Object a(> >)
    {
        return b((b)>);
    }

    public final void b(b b1)
    {
        a.remove(((lang.Object)b1).getKey());
    }

    public final y c()
    {
        return xd.j(a);
    }

    public final void clear()
    {
        a.clear();
    }

    public final ear d()
    {
        return xd.a(a);
    }

    public final xb e()
    {
        return xd.k(a);
    }

    public final Iterator iterator()
    {
        return a(a);
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
