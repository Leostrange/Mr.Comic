// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.app.Activity;
import android.view.Window;

public final class afl
{

    public Activity a;
    public boolean b;
    boolean c;

    public afl(Activity activity)
    {
        b = false;
        c = false;
        a = activity;
    }

    public static void a(Activity activity, int i)
    {
        android.view.WindowManager.LayoutParams layoutparams = activity.getWindow().getAttributes();
        layoutparams.screenBrightness = (float)i / 100F;
        activity.getWindow().setAttributes(layoutparams);
    }

    public final void a()
    {
        if (b)
        {
            c();
            b = false;
        }
    }

    public final void b()
    {
        android.content.ContentResolver contentresolver = a.getContentResolver();
        boolean flag;
        if (android.provider.Settings.System.getInt(contentresolver, "screen_brightness_mode", 0) != 0)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        c = flag;
        if (c)
        {
            android.provider.Settings.System.putInt(contentresolver, "screen_brightness_mode", 0);
        }
    }

    public final void c()
    {
        android.content.ContentResolver contentresolver = a.getContentResolver();
        if (c)
        {
            android.provider.Settings.System.putInt(contentresolver, "screen_brightness_mode", 1);
            c = false;
        }
    }
}
