// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 


public class qy extends Exception
{

    private Throwable a;

    public qy()
    {
        a = null;
    }

    public qy(String s)
    {
        super(s);
        a = null;
    }

    public qy(String s, Throwable throwable)
    {
        super(s);
        a = null;
        a = throwable;
    }

    public Throwable getCause()
    {
        return a;
    }
}
