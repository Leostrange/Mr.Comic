// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 


public static final class d
{

    protected final String a;
    protected String b;
    protected String c;
    protected String d;

    public final lang.String a(String s)
    {
        b = s;
        return this;
    }

    public final jl a()
    {
        return new jl(a, b, c, d);
    }

    public final lang.String b(String s)
    {
        c = s;
        return this;
    }

    protected >(String s)
    {
        if (s == null)
        {
            throw new IllegalArgumentException("Required value for 'name' is null");
        } else
        {
            a = s;
            b = null;
            c = null;
            d = null;
            return;
        }
    }
}
