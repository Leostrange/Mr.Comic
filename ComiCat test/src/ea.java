// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.content.Context;
import android.view.Menu;
import android.view.MenuItem;

public final class ea
{

    public static Menu a(Context context, p p)
    {
        if (android.os.Build.VERSION.SDK_INT >= 14)
        {
            return new eb(context, p);
        } else
        {
            throw new UnsupportedOperationException();
        }
    }

    public static MenuItem a(Context context, q q)
    {
        if (android.os.Build.VERSION.SDK_INT >= 16)
        {
            return new dw(context, q);
        }
        if (android.os.Build.VERSION.SDK_INT >= 14)
        {
            return new dv(context, q);
        } else
        {
            throw new UnsupportedOperationException();
        }
    }
}
