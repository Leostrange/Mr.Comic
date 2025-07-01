// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import java.util.Collection;
import java.util.List;
import java.util.Map;

abstract class pj extends pk
    implements ps
{

    protected pj(Map map)
    {
        super(map);
    }

    abstract List a();

    public List a(Object obj)
    {
        return (List)super.b(obj);
    }

    public boolean a(Object obj, Object obj1)
    {
        return super.a(obj, obj1);
    }

    public final Collection b(Object obj)
    {
        return a(obj);
    }

    public Map b()
    {
        return super.b();
    }

    Collection c()
    {
        return a();
    }

    public boolean equals(Object obj)
    {
        return super.equals(obj);
    }
}
