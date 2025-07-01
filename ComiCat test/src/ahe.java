// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.app.Activity;

public final class ahe
{

    public int a;
    public int b;
    public boolean c;
    public Activity d;

    public ahe(Activity activity, boolean flag)
    {
        b = (int)aei.a().d.a("app-version", 0L);
        a = agv.e();
        d = activity;
        c = flag;
        aei.a().d.a("app-version", String.valueOf(a));
    }
}
