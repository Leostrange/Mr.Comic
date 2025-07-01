// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import java.util.Collection;
import java.util.Collections;

public class kg extends ki
{

    public kg(String s, String s1)
    {
        super(s, s1, Collections.singleton("code"));
    }

    public kg a()
    {
        return (kg)super.b();
    }

    public kg a(String s)
    {
        return (kg)super.d(s);
    }

    public kg a(String s, Object obj)
    {
        return (kg)super.b(s, obj);
    }

    public kg a(Collection collection)
    {
        return (kg)super.d(collection);
    }

    public kg b(String s)
    {
        return (kg)super.c(s);
    }

    public kg b(Collection collection)
    {
        return (kg)super.c(collection);
    }

    public ki b()
    {
        return a();
    }

    public ki b(String s, Object obj)
    {
        return a(s, obj);
    }

    public ki c(String s)
    {
        return b(s);
    }

    public ki c(Collection collection)
    {
        return b(collection);
    }

    public lr c()
    {
        return a();
    }

    public lr c(String s, Object obj)
    {
        return a(s, obj);
    }

    public Object clone()
    {
        return a();
    }

    public ki d(String s)
    {
        return a(s);
    }

    public ki d(Collection collection)
    {
        return a(collection);
    }

    public nw d()
    {
        return a();
    }

    public nw d(String s, Object obj)
    {
        return a(s, obj);
    }
}
