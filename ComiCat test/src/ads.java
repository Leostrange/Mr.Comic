// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.app.Activity;
import android.widget.Toast;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

public final class ads
{

    private static ku a = null;
    private static int b = 10000;

    private static List a()
    {
        ArrayList arraylist = new ArrayList();
        arraylist.add("https://www.googleapis.com/auth/drive");
        return arraylist;
    }

    public static void a(Activity activity)
    {
        Toast.makeText(activity, activity.getString(0x7f06024a, new Object[] {
            activity.getString(0x7f06027e)
        }), 1).show();
        act.b().a(-1, false);
    }

    public static void a(Activity activity, String s, int i)
    {
        Object obj;
        boolean flag;
        boolean flag1;
        flag1 = false;
        flag = false;
        if (a == null)
        {
            ku.a a1 = new ku.a(new ms(), new nc(), "917345885065-50qtjsg0j1k41c1rruubc8s0o22oraju.apps.googleusercontent.com", "avLwAxpxX69OLnGfAjsYGg59", a());
            a1.p = "offline";
            a = a1.a();
        }
        obj = a.a(s);
        ((kw) (obj)).e(s);
        ((kw) (obj)).f("http://localhost");
        ((kw) (obj)).c(a());
        obj = ((kw) (obj)).c();
        int j = ((flag) ? 1 : 0);
        if (obj == null) goto _L2; else goto _L1
_L1:
        String s1;
        Long long1;
        s = ((kq) (obj)).accessToken;
        s1 = ((kq) (obj)).refreshToken;
        long1 = ((kq) (obj)).expiresInSeconds;
        j = ((flag) ? 1 : 0);
        if (s == null) goto _L2; else goto _L3
_L3:
        j = ((flag) ? 1 : 0);
        if (s.length() <= 0) goto _L2; else goto _L4
_L4:
        (new StringBuilder("Tokens are: ")).append(s).append(", ").append(s1).append(", ").append(long1);
        if (i != -1) goto _L6; else goto _L5
_L5:
        obj = new aev();
        obj.b = "googledrive";
        obj.h = s;
        obj.g = s1;
        long l = ahc.b();
        obj.i = long1.longValue() * 1000L + l;
        s = (new adw(((aev) (obj)))).a();
        if (s == null) goto _L8; else goto _L7
_L7:
        s = ((oy) (s)).user.displayName;
_L9:
        boolean flag2;
        obj.f = s;
        obj.c = ((aev) (obj)).f;
        flag2 = aei.a().g.a(((aev) (obj)));
        if (!flag2)
        {
            break MISSING_BLOCK_LABEL_456;
        }
        act.b().a(((aev) (obj)).a, true);
        i = 1;
_L14:
        j = i;
_L2:
        if (j == 0)
        {
            activity.runOnUiThread(new Runnable(activity) {

                final Activity a;

                public final void run()
                {
                    ads.a(a);
                }

            
            {
                a = activity;
                super();
            }
            });
        }
        return;
_L8:
        s = "";
          goto _L9
_L6:
        obj = aei.a().g.a(i);
        j = ((flag) ? 1 : 0);
        if (obj == null) goto _L2; else goto _L10
_L10:
        obj.h = s;
        obj.g = s1;
        long l1 = ahc.b();
        obj.i = long1.longValue() * 1000L + l1;
        s = (new adw(((aev) (obj)))).a();
        if (s == null)
        {
            break MISSING_BLOCK_LABEL_431;
        }
        s = ((oy) (s)).user.displayName;
_L12:
        obj.f = s;
        obj.c = ((aev) (obj)).f;
        s = aei.a().g;
        j = ((flag) ? 1 : 0);
        if (!aew.c(((aev) (obj)))) goto _L2; else goto _L11
_L11:
        act.b().a(i, false);
        j = 1;
          goto _L2
        s = "";
          goto _L12
        s;
        j = ((flag1) ? 1 : 0);
_L13:
        s.printStackTrace();
          goto _L2
        s;
        j = 1;
          goto _L13
        i = 0;
          goto _L14
    }

    public static boolean a(aev aev1)
    {
        Object obj;
        (new StringBuilder("Checking expiry: ")).append(aev1.i).append(", against: ").append(ahc.b());
        if (ahc.b() <= aev1.i - (long)b)
        {
            break MISSING_BLOCK_LABEL_158;
        }
        obj = (new kx(new ms(), new nc(), aev1.g, "917345885065-50qtjsg0j1k41c1rruubc8s0o22oraju.apps.googleusercontent.com", "avLwAxpxX69OLnGfAjsYGg59")).c();
        if (obj == null)
        {
            break MISSING_BLOCK_LABEL_158;
        }
        String s;
        long l;
        try
        {
            s = ((kq) (obj)).accessToken;
            l = ((kq) (obj)).expiresInSeconds.longValue();
        }
        // Misplaced declaration of an exception variable
        catch (aev aev1)
        {
            aev1.printStackTrace();
            return false;
        }
        if (s == null)
        {
            break MISSING_BLOCK_LABEL_158;
        }
        if (s.length() > 0)
        {
            (new StringBuilder("New Tokens are: ")).append(s).append(", ").append(l);
            aev1.h = s;
            aev1.i = ahc.b() + l * 1000L;
            obj = aei.a().g;
            aew.c(aev1);
        }
        return true;
    }

}
