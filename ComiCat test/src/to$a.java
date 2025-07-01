// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.text.TextUtils;

public static final class g
{

    static final boolean e;
    String a;
    int b;
    String c;
    String d;
    private final String f;
    private final lang.String g;

    static String a(t t)
    {
        return t.f;
    }

    static String b(f f1)
    {
        return f1.a;
    }

    static a c(a a1)
    {
        return a1.g;
    }

    static String d(g g1)
    {
        return g1.c;
    }

    static int e(c c1)
    {
        return c1.b;
    }

    static String f(b b1)
    {
        return b1.d;
    }

    public final to a()
    {
        return new to(this, (byte)0);
    }

    static 
    {
        boolean flag;
        if (!to.desiredAssertionStatus())
        {
            flag = true;
        } else
        {
            flag = false;
        }
        e = flag;
    }

    public >(String s, String s1)
    {
        b = -1;
        if (!e && s == null)
        {
            throw new AssertionError();
        }
        if (!e && TextUtils.isEmpty(s))
        {
            throw new AssertionError();
        }
        if (!e && s1 == null)
        {
            throw new AssertionError();
        } else
        {
            f = s;
            g = s1;
            return;
        }
    }
}
