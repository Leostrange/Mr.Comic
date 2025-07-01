// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import java.util.Iterator;
import java.util.Set;

public final class xe extends xa
    implements Set, wv
{

    private static final wp a = new wp() {

        public final Object a()
        {
            return new xe();
        }

    };
    private transient xd b;

    public xe()
    {
        this(new xd());
    }

    private xe(xd xd1)
    {
        b = xd1;
    }

    public final Object a(xa.a a1)
    {
        return ((xd.a)a1).getKey();
    }

    public final void a()
    {
        b.a();
    }

    public final boolean add(Object obj)
    {
        return b.put(obj, obj) == null;
    }

    public final void b(xa.a a1)
    {
        b.remove(((xd.a)a1).getKey());
    }

    public final xa.a c()
    {
        return b.a;
    }

    public final void clear()
    {
        b.clear();
    }

    public final boolean contains(Object obj)
    {
        return b.containsKey(obj);
    }

    public final xa.a d()
    {
        return b.b;
    }

    public final xb e()
    {
        return b.c;
    }

    public final Iterator iterator()
    {
        return b.keySet().iterator();
    }

    public final boolean remove(Object obj)
    {
        return b.remove(obj) != null;
    }

    public final int size()
    {
        return b.size();
    }

}
