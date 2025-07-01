// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.net.Uri;

public final class sp extends Enum
{

    public static final sp a;
    static final boolean h;
    private static final sp i[];
    Uri b;
    String c;
    public Uri d;
    public Uri e;
    Uri f;
    Uri g;

    private sp(String s)
    {
        super(s, 0);
        b = Uri.parse("https://apis.live.net/v5.0");
        c = "5.0";
        d = Uri.parse("https://login.live.com/oauth20_authorize.srf");
        e = Uri.parse("https://login.live.com/oauth20_desktop.srf");
        f = Uri.parse("https://login.live.com/oauth20_logout.srf");
        g = Uri.parse("https://login.live.com/oauth20_token.srf");
    }

    public static sp valueOf(String s)
    {
        return (sp)Enum.valueOf(sp, s);
    }

    public static sp[] values()
    {
        return (sp[])i.clone();
    }

    static 
    {
        boolean flag;
        if (!sp.desiredAssertionStatus())
        {
            flag = true;
        } else
        {
            flag = false;
        }
        h = flag;
        a = new sp("INSTANCE");
        i = (new sp[] {
            a
        });
    }
}
