// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.apache.http.util;


// Referenced classes of package org.apache.http.util:
//            TextUtils

public class Asserts
{

    public Asserts()
    {
    }

    public static void check(boolean flag, String s)
    {
        if (!flag)
        {
            throw new IllegalStateException(s);
        } else
        {
            return;
        }
    }

    public static void check(boolean flag, String s, Object obj)
    {
        if (!flag)
        {
            throw new IllegalStateException(String.format(s, new Object[] {
                obj
            }));
        } else
        {
            return;
        }
    }

    public static transient void check(boolean flag, String s, Object aobj[])
    {
        if (!flag)
        {
            throw new IllegalStateException(String.format(s, aobj));
        } else
        {
            return;
        }
    }

    public static void notBlank(CharSequence charsequence, String s)
    {
        if (TextUtils.isBlank(charsequence))
        {
            throw new IllegalStateException((new StringBuilder()).append(s).append(" is blank").toString());
        } else
        {
            return;
        }
    }

    public static void notEmpty(CharSequence charsequence, String s)
    {
        if (TextUtils.isEmpty(charsequence))
        {
            throw new IllegalStateException((new StringBuilder()).append(s).append(" is empty").toString());
        } else
        {
            return;
        }
    }

    public static void notNull(Object obj, String s)
    {
        if (obj == null)
        {
            throw new IllegalStateException((new StringBuilder()).append(s).append(" is null").toString());
        } else
        {
            return;
        }
    }
}
