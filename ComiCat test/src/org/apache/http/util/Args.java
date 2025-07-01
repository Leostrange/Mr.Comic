// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.apache.http.util;

import java.util.Collection;

// Referenced classes of package org.apache.http.util:
//            TextUtils

public class Args
{

    public Args()
    {
    }

    public static void check(boolean flag, String s)
    {
        if (!flag)
        {
            throw new IllegalArgumentException(s);
        } else
        {
            return;
        }
    }

    public static void check(boolean flag, String s, Object obj)
    {
        if (!flag)
        {
            throw new IllegalArgumentException(String.format(s, new Object[] {
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
            throw new IllegalArgumentException(String.format(s, aobj));
        } else
        {
            return;
        }
    }

    public static CharSequence containsNoBlanks(CharSequence charsequence, String s)
    {
        if (charsequence == null)
        {
            throw new IllegalArgumentException((new StringBuilder()).append(s).append(" may not be null").toString());
        }
        if (TextUtils.containsBlanks(charsequence))
        {
            throw new IllegalArgumentException((new StringBuilder()).append(s).append(" may not contain blanks").toString());
        } else
        {
            return charsequence;
        }
    }

    public static CharSequence notBlank(CharSequence charsequence, String s)
    {
        if (charsequence == null)
        {
            throw new IllegalArgumentException((new StringBuilder()).append(s).append(" may not be null").toString());
        }
        if (TextUtils.isBlank(charsequence))
        {
            throw new IllegalArgumentException((new StringBuilder()).append(s).append(" may not be blank").toString());
        } else
        {
            return charsequence;
        }
    }

    public static CharSequence notEmpty(CharSequence charsequence, String s)
    {
        if (charsequence == null)
        {
            throw new IllegalArgumentException((new StringBuilder()).append(s).append(" may not be null").toString());
        }
        if (TextUtils.isEmpty(charsequence))
        {
            throw new IllegalArgumentException((new StringBuilder()).append(s).append(" may not be empty").toString());
        } else
        {
            return charsequence;
        }
    }

    public static Collection notEmpty(Collection collection, String s)
    {
        if (collection == null)
        {
            throw new IllegalArgumentException((new StringBuilder()).append(s).append(" may not be null").toString());
        }
        if (collection.isEmpty())
        {
            throw new IllegalArgumentException((new StringBuilder()).append(s).append(" may not be empty").toString());
        } else
        {
            return collection;
        }
    }

    public static int notNegative(int i, String s)
    {
        if (i < 0)
        {
            throw new IllegalArgumentException((new StringBuilder()).append(s).append(" may not be negative").toString());
        } else
        {
            return i;
        }
    }

    public static long notNegative(long l, String s)
    {
        if (l < 0L)
        {
            throw new IllegalArgumentException((new StringBuilder()).append(s).append(" may not be negative").toString());
        } else
        {
            return l;
        }
    }

    public static Object notNull(Object obj, String s)
    {
        if (obj == null)
        {
            throw new IllegalArgumentException((new StringBuilder()).append(s).append(" may not be null").toString());
        } else
        {
            return obj;
        }
    }

    public static int positive(int i, String s)
    {
        if (i <= 0)
        {
            throw new IllegalArgumentException((new StringBuilder()).append(s).append(" may not be negative or zero").toString());
        } else
        {
            return i;
        }
    }

    public static long positive(long l, String s)
    {
        if (l <= 0L)
        {
            throw new IllegalArgumentException((new StringBuilder()).append(s).append(" may not be negative or zero").toString());
        } else
        {
            return l;
        }
    }
}
