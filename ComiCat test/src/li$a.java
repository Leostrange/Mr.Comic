// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import java.util.Collections;

public static abstract class a extends a
{

    public lang.String a(String s)
    {
        return d(s);
    }

    public String a(lh lh)
    {
        return b(lh);
    }

    public lang.String b(String s)
    {
        return e(s);
    }

    public String b(lh lh)
    {
        return (g)super.a(lh);
    }

    public lang.String c(String s)
    {
        return f(s);
    }

    public lang.String d(String s)
    {
        return (lang.String)super.a(s);
    }

    public lang.String e(String s)
    {
        return (lang.String)super.b(s);
    }

    public lang.String f(String s)
    {
        return (lang.String)super.c(s);
    }

    protected >(mf mf, mv mv, String s, String s1)
    {
        mv = new <init>(mv);
        mv.b = Collections.emptySet();
        super(mf, s, s1, mv.a());
    }
}
