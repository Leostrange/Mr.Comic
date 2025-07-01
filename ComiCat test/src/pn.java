// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;

public final class pn extends pj
{

    transient int a;

    private pn()
    {
        super(new HashMap());
        a = 3;
    }

    public static pn h()
    {
        return new pn();
    }

    final List a()
    {
        return new ArrayList(a);
    }

    public final volatile List a(Object obj)
    {
        return super.a(obj);
    }

    public final volatile boolean a(Object obj, Object obj1)
    {
        return super.a(obj, obj1);
    }

    public final volatile Map b()
    {
        return super.b();
    }

    final Collection c()
    {
        return a();
    }

    public final volatile void d()
    {
        super.d();
    }

    public final volatile boolean equals(Object obj)
    {
        return super.equals(obj);
    }

    public final volatile Set g()
    {
        return super.g();
    }

    public final volatile int hashCode()
    {
        return super.hashCode();
    }

    public final volatile String toString()
    {
        return super.toString();
    }
}
