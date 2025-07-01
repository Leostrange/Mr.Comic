// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import java.util.Collection;
import java.util.Iterator;

public final class kv extends kg
{

    public String accessType;
    public String approvalPrompt;

    public kv(String s, String s1, String s2, Collection collection)
    {
        super(s, s1);
        e(s2);
        f(collection);
    }

    private kv e(Collection collection)
    {
        return (kv)super.a(collection);
    }

    private kv f(String s, Object obj)
    {
        return (kv)super.a(s, obj);
    }

    private kv f(Collection collection)
    {
        ni.a(collection.iterator().hasNext());
        return (kv)super.b(collection);
    }

    private kv h(String s)
    {
        return (kv)super.b(s);
    }

    public final volatile kg a()
    {
        return (kv)super.a();
    }

    public final kg a(String s)
    {
        return e(s);
    }

    public final kg a(String s, Object obj)
    {
        return f(s, obj);
    }

    public final kg a(Collection collection)
    {
        return e(collection);
    }

    public final kg b(String s)
    {
        return h(s);
    }

    public final kg b(Collection collection)
    {
        return f(collection);
    }

    public final ki b()
    {
        return (kv)super.a();
    }

    public final ki b(String s, Object obj)
    {
        return f(s, obj);
    }

    public final ki c(String s)
    {
        return h(s);
    }

    public final ki c(Collection collection)
    {
        return f(collection);
    }

    public final lr c()
    {
        return (kv)super.a();
    }

    public final lr c(String s, Object obj)
    {
        return f(s, obj);
    }

    public final Object clone()
    {
        return (kv)super.a();
    }

    public final ki d(String s)
    {
        return e(s);
    }

    public final ki d(Collection collection)
    {
        return e(collection);
    }

    public final nw d()
    {
        return (kv)super.a();
    }

    public final nw d(String s, Object obj)
    {
        return f(s, obj);
    }

    public final kv e(String s)
    {
        ni.a(s);
        return (kv)super.a(s);
    }
}
