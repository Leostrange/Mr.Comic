// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.text.TextUtils;

public final class tb
{

    static final boolean a;

    private tb()
    {
        throw new AssertionError("Non-instantiable class");
    }

    public static void a(Object obj, String s)
    {
        if (!a && TextUtils.isEmpty(s))
        {
            throw new AssertionError();
        }
        if (obj == null)
        {
            throw new NullPointerException(String.format("Input parameter '%1$s' is invalid. '%1$s' cannot be null.", new Object[] {
                s
            }));
        } else
        {
            return;
        }
    }

    public static void a(String s, String s1)
    {
        if (!a && TextUtils.isEmpty(s1))
        {
            throw new AssertionError();
        }
        a(s, s1);
        if (TextUtils.isEmpty(s))
        {
            throw new IllegalArgumentException(String.format("Input parameter '%1$s' is invalid. '%1$s' cannot be empty.", new Object[] {
                s1
            }));
        } else
        {
            return;
        }
    }

    static 
    {
        boolean flag;
        if (!tb.desiredAssertionStatus())
        {
            flag = true;
        } else
        {
            flag = false;
        }
        a = flag;
    }
}
