// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 


public static final class c
{

    static final boolean b;
    final String a;
    private final String c;

    public final String toString()
    {
        boolean flag;
        if (c != null)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        if (flag)
        {
            return (new StringBuilder()).append(a).append("=").append(c).toString();
        } else
        {
            return a;
        }
    }

    static 
    {
        boolean flag;
        if (!tt.desiredAssertionStatus())
        {
            flag = true;
        } else
        {
            flag = false;
        }
        b = flag;
    }

    public >(String s)
    {
        if (!b && s == null)
        {
            throw new AssertionError();
        } else
        {
            a = s;
            c = null;
            return;
        }
    }

    public >(String s, String s1)
    {
        if (!b && s == null)
        {
            throw new AssertionError();
        }
        if (!b && s1 == null)
        {
            throw new AssertionError();
        } else
        {
            a = s;
            c = s1;
            return;
        }
    }
}
