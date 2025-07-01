// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.text.TextUtils;
import java.io.InputStream;

public static final class d
{

    static final boolean a;
    private sn b;
    private final String c;
    private final String d;
    private InputStream e;
    private Object f;

    static sn a(t t)
    {
        return t.b;
    }

    static String b(b b1)
    {
        return b1.c;
    }

    static String c(c c1)
    {
        return c1.d;
    }

    static InputStream d(d d1)
    {
        return d1.e;
    }

    static Object e(e e1)
    {
        return e1.f;
    }

    static 
    {
        boolean flag;
        if (!tc.desiredAssertionStatus())
        {
            flag = true;
        } else
        {
            flag = false;
        }
        a = flag;
    }

    public >(String s, String s1)
    {
        if (!a && TextUtils.isEmpty(s))
        {
            throw new AssertionError();
        }
        if (!a && TextUtils.isEmpty(s1))
        {
            throw new AssertionError();
        } else
        {
            c = s;
            d = s1;
            return;
        }
    }
}
