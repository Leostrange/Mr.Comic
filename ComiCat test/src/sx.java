// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 


public class sx extends Exception
{

    static final boolean a;
    private final String b;
    private final String c;

    sx(String s)
    {
        super(s);
        b = "";
        c = "";
    }

    sx(String s, String s1, String s2)
    {
        super(s1);
        if (!a && s == null)
        {
            throw new AssertionError();
        } else
        {
            b = s;
            c = s2;
            return;
        }
    }

    sx(String s, Throwable throwable)
    {
        super(s, throwable);
        b = "";
        c = "";
    }

    static 
    {
        boolean flag;
        if (!sx.desiredAssertionStatus())
        {
            flag = true;
        } else
        {
            flag = false;
        }
        a = flag;
    }
}
