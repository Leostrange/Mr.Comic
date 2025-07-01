// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package meanlabs.comicreader.cloud.onedrive;

import act;
import aei;
import aev;
import aew;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.text.TextUtils;
import android.widget.Toast;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Date;
import java.util.Locale;
import meanlabs.comicreader.ReaderActivity;
import org.json.JSONObject;
import sm;
import sn;
import so;
import sp;
import sr;
import st;
import sw;
import sy;
import sz;
import ta;
import tb;
import te;
import tf;
import tg;
import th;
import tq;

public class OneDriveAuthActivity extends ReaderActivity
    implements sy
{

    public static final String a[] = {
        "wl.signin", "wl.basic", "wl.offline_access", "wl.skydrive"
    };
    private sw b;

    public OneDriveAuthActivity()
    {
    }

    static void a(OneDriveAuthActivity onedriveauthactivity, ta ta1, String s)
    {
        int i = onedriveauthactivity.getIntent().getIntExtra("serviecid", -1);
        if (i != -1) goto _L2; else goto _L1
_L1:
        aev aev1 = new aev();
        aev1.b = "onedrive";
        aev1.h = ta1.a();
        aev1.d = ta1.b();
        aev1.e = ta1.e();
        aev1.g = ta1.d();
        aev1.i = ta1.c().getTime();
        aev1.f = s;
        aev1.c = aev1.f;
        if (aei.a().g.a(aev1))
        {
            act.b().a(aev1.a, true);
        } else
        {
            act.b().a(-1, false);
        }
_L4:
        onedriveauthactivity.finish();
        return;
_L2:
        aev aev2 = aei.a().g.a(i);
        if (aev2 != null)
        {
            aev2.h = ta1.a();
            aev2.d = ta1.b();
            aev2.e = ta1.e();
            aev2.g = ta1.d();
            aev2.i = ta1.c().getTime();
            aev2.f = s;
            aev2.c = aev2.f;
            ta1 = aei.a().g;
            if (aew.c(aev2))
            {
                act.b().a(i, false);
            }
        }
        if (true) goto _L4; else goto _L3
_L3:
    }

    public final void a()
    {
        Toast.makeText(getApplicationContext(), getString(0x7f06024a, new Object[] {
            getString(0x7f060286)
        }), 1).show();
        act.b().a(-1, false);
        finish();
    }

    public final void a(int i, ta ta1)
    {
        if (i == th.b)
        {
            Object obj = new sz(ta1);
            ta1 = new tg(ta1) {

                final ta a;
                final OneDriveAuthActivity b;

                public final void a(te te1)
                {
                    te1 = te1.a.getString("first_name");
                    if (te1 == null)
                    {
                        te1 = "";
                    }
_L2:
                    OneDriveAuthActivity.a(b, a, te1);
                    return;
                    Exception exception;
                    exception;
                    te1 = "";
                    exception.printStackTrace();
                    if (true) goto _L2; else goto _L1
_L1:
                }

                public final void a(tf tf1, te te1)
                {
                    tf1.printStackTrace();
                    OneDriveAuthActivity.a(b, a, "");
                }

            
            {
                b = OneDriveAuthActivity.this;
                a = ta1;
                super();
            }
            };
            sz.b("me");
            Object obj1 = new st(((sz) (obj)).c, ((sz) (obj)).b, "me");
            ((sz) (obj)).d.a();
            obj = sn.a(((sm) (obj1)));
            obj1 = new te.a(((sm) (obj1)).b(), ((sm) (obj1)).b);
            obj1.c = null;
            boolean flag = te.a.d;
            obj1.a = ((sn) (obj));
            ta1 = new sz.b(((te.a) (obj1)).a(), ta1);
            ((sn) (obj)).a.add(ta1);
            ((sn) (obj)).execute(new Void[0]);
            return;
        } else
        {
            act.b().a(-1, false);
            finish();
            return;
        }
    }

    public void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        b = new sw(this, "0000000048121DEB");
    }

    protected void onStart()
    {
        super.onStart();
        Object obj2 = b;
        Object obj = Arrays.asList(a);
        tb.a(this, "activity");
        Object obj1;
        boolean flag;
        if (this == null)
        {
            obj1 = sw.a;
        } else
        {
            obj1 = this;
        }
        if (((sw) (obj2)).c)
        {
            throw new IllegalStateException("Another login operation is already in progress.");
        }
        if (obj == null)
        {
            if (((sw) (obj2)).e == null)
            {
                obj = Arrays.asList(new String[0]);
            } else
            {
                obj = ((sw) (obj2)).e;
            }
        }
        if (((sw) (obj2)).f.f() || !((sw) (obj2)).f.a(((Iterable) (obj))))
        {
            flag = true;
        } else
        {
            flag = false;
        }
        if (!flag)
        {
            ((sy) (obj1)).a(th.b, ((sw) (obj2)).f);
            return;
        } else
        {
            obj = TextUtils.join(" ", ((Iterable) (obj)));
            String s = sp.a.e.toString();
            obj = new so(this, ((sw) (obj2)).d, ((sw) (obj2)).b, s, ((String) (obj)));
            ((so) (obj)).a(new sw.d(((sw) (obj2)), ((sy) (obj1))));
            ((so) (obj)).a(new sw.e(((sw) (obj2)), (byte)0));
            ((so) (obj)).a(new sw._cls2(((sw) (obj2))));
            obj2.c = true;
            obj1 = tq.a(((so) (obj)).a).a().a().toString().toLowerCase(Locale.US);
            obj2 = tj.d.a.toString().toLowerCase(Locale.US);
            s = Locale.getDefault().toString();
            (new so.a(((so) (obj)), sp.a.d.buildUpon().appendQueryParameter("client_id", ((so) (obj)).b).appendQueryParameter("scope", ((so) (obj)).d).appendQueryParameter("display", ((String) (obj1))).appendQueryParameter("response_type", ((String) (obj2))).appendQueryParameter("locale", s).appendQueryParameter("redirect_uri", ((so) (obj)).c).build())).show();
            return;
        }
    }

}
