// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 


public final class rz extends Exception
{

    public int a;
    private Throwable b;

    public rz(String s)
    {
        super(s);
        b = null;
        a = 4;
    }

    public final Throwable getCause()
    {
        return b;
    }

    public final String toString()
    {
        return (new StringBuilder()).append(a).append(": ").append(getMessage()).toString();
    }
}
