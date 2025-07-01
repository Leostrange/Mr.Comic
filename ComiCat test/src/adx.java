// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.app.Activity;
import android.content.Intent;
import android.widget.Toast;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import meanlabs.comicreader.cloud.googledrive.GoogleNonWebViewAuthActivity;

public final class adx
{

    private static ku a = null;
    private static int b = 10000;

    private static ku a()
    {
        if (a == null)
        {
            ku.a a1 = new ku.a(new ms(), new nc(), "917345885065-50qtjsg0j1k41c1rruubc8s0o22oraju.apps.googleusercontent.com", "avLwAxpxX69OLnGfAjsYGg59", b());
            a1.p = "offline";
            a = a1.a();
        }
        return a;
    }

    public static void a(Activity activity)
    {
        Toast.makeText(activity, activity.getString(0x7f06024a, new Object[] {
            activity.getString(0x7f06027e)
        }), 1).show();
        act.b().a(-1, false);
    }

    public static void a(Activity activity, int i)
    {
        Object obj = a();
        Object obj1 = new kv(((kf) (obj)).f, ((kf) (obj)).e, "", ((kf) (obj)).h);
        obj1.accessType = ((ku) (obj)).j;
        obj1.approvalPrompt = ((ku) (obj)).i;
        ((kv) (obj1)).e("com.googleusercontent.apps.917345885065-50qtjsg0j1k41c1rruubc8s0o22oraju:/localhost");
        obj = ((kv) (obj1)).e();
        obj1 = new Intent(activity, meanlabs/comicreader/cloud/googledrive/GoogleNonWebViewAuthActivity);
        ((Intent) (obj1)).putExtra("authurl", ((String) (obj)));
        ((Intent) (obj1)).putExtra("serviecid", i);
        activity.startActivity(((Intent) (obj1)));
    }

    public static void a(Activity activity, String s, int i)
    {
        Object obj;
        boolean flag;
        boolean flag1;
        boolean flag2;
        flag2 = false;
        flag = false;
        flag1 = true;
        obj = a().a(s);
        ((kw) (obj)).e(s);
        ((kw) (obj)).f("com.googleusercontent.apps.917345885065-50qtjsg0j1k41c1rruubc8s0o22oraju:/localhost");
        ((kw) (obj)).c(b());
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
        boolean flag3;
        obj.f = s;
        obj.c = ((aev) (obj)).f;
        flag3 = aei.a().g.a(((aev) (obj)));
        if (!flag3)
        {
            break MISSING_BLOCK_LABEL_412;
        }
        act.b().a(((aev) (obj)).a, true);
        i = ((flag1) ? 1 : 0);
_L14:
        j = i;
_L2:
        if (j == 0)
        {
            activity.runOnUiThread(new Runnable(activity) {

                final Activity a;

                public final void run()
                {
                    adx.a(a);
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
            break MISSING_BLOCK_LABEL_387;
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
        j = ((flag2) ? 1 : 0);
_L13:
        s.printStackTrace();
          goto _L2
        s;
        j = 1;
          goto _L13
        i = 0;
          goto _L14
    }

    private static List b()
    {
        ArrayList arraylist = new ArrayList();
        arraylist.add("https://www.googleapis.com/auth/drive");
        return arraylist;
    }

}
