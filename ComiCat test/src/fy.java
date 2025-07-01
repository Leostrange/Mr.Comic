// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.content.ContentValues;
import android.content.Context;

public abstract class fy
{

    public long a;

    public fy()
    {
        a = -1L;
    }

    protected static boolean a(Object obj, Object obj1)
    {
        if (obj != null && obj1 != null)
        {
            return obj.equals(obj1);
        } else
        {
            return false;
        }
    }

    public final long a(Context context)
    {
        return c(context).a(this);
    }

    public abstract ContentValues a();

    public final boolean b(Context context)
    {
        boolean flag = c(context).b(a);
        if (flag)
        {
            a = -1L;
        }
        return flag;
    }

    public abstract gc c(Context context);

    public String toString()
    {
        return (new StringBuilder("rowid = ")).append(a).append("|").append(a().toString()).toString();
    }
}
