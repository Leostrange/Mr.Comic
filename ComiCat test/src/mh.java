// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import java.io.InputStream;

public final class mh extends lm
{

    public long c;
    public boolean d;
    private final InputStream e;

    public mh(String s, InputStream inputstream)
    {
        super(s);
        c = -1L;
        e = (InputStream)ni.a(inputstream);
    }

    public final long a()
    {
        return c;
    }

    public final volatile lm a(String s)
    {
        return (mh)super.a(s);
    }

    public final lm a(boolean flag)
    {
        return b(flag);
    }

    public final InputStream b()
    {
        return e;
    }

    public final mh b(boolean flag)
    {
        return (mh)super.a(flag);
    }

    public final boolean d()
    {
        return d;
    }
}
