// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.res.Resources;
import android.content.res.TypedArray;

public final class dg
{

    public Context a;

    private dg(Context context)
    {
        a = context;
    }

    public static dg a(Context context)
    {
        return new dg(context);
    }

    public final boolean a()
    {
        if (a.getApplicationInfo().targetSdkVersion >= 16)
        {
            return a.getResources().getBoolean(cv.b.abc_action_bar_embed_tabs);
        } else
        {
            return a.getResources().getBoolean(cv.b.abc_action_bar_embed_tabs_pre_jb);
        }
    }

    public final int b()
    {
        TypedArray typedarray = a.obtainStyledAttributes(null, cv.k.ActionBar, cv.a.actionBarStyle, 0);
        int j = typedarray.getLayoutDimension(cv.k.ActionBar_height, 0);
        Resources resources = a.getResources();
        int i = j;
        if (!a())
        {
            i = Math.min(j, resources.getDimensionPixelSize(cv.d.abc_action_bar_stacked_max_height));
        }
        typedarray.recycle();
        return i;
    }

    public final int c()
    {
        return a.getResources().getDimensionPixelSize(cv.d.abc_action_bar_stacked_tab_max_width);
    }
}
