// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import java.io.IOException;

public abstract class lj extends lf
{

    private final Object g = null;

    protected lj(li li1, String s, String s1, Class class1)
    {
        super(li1, s, s1, class1);
    }

    protected final IOException a(mc mc)
    {
        return la.a(e().c(), mc);
    }

    public le a()
    {
        return e();
    }

    public lf a(String s, Object obj)
    {
        return b(s, obj);
    }

    public lj b(String s, Object obj)
    {
        return (lj)super.a(s, obj);
    }

    public nw d(String s, Object obj)
    {
        return b(s, obj);
    }

    public li e()
    {
        return (li)super.a();
    }
}
