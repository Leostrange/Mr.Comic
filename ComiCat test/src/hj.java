// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 


public class hj extends Exception
{

    private final String a;

    public hj(String s, String s1)
    {
        super(s1);
        a = s;
    }

    public hj(String s, String s1, Throwable throwable)
    {
        super(s1, throwable);
        a = s;
    }

    public hj(String s, Throwable throwable)
    {
        this(null, s, throwable);
    }
}
