// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 


public final class hl
{

    final String a;
    final String b;
    final hy c;
    public final int d;

    public hl(String s)
    {
        this(s, (byte)0);
    }

    private hl(String s, byte byte0)
    {
        this(s, ((hy) (ia.c)), (byte)0);
    }

    private hl(String s, hy hy)
    {
        if (s == null)
        {
            throw new NullPointerException("clientIdentifier");
        }
        if (hy == null)
        {
            throw new NullPointerException("httpRequestor");
        } else
        {
            a = s;
            b = null;
            c = hy;
            d = 0;
            return;
        }
    }

    private hl(String s, hy hy, byte byte0)
    {
        this(s, hy);
    }
}
