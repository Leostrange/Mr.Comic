// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.dropbox.core.android;

import android.app.Activity;
import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.pm.ActivityInfo;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.net.Uri;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.util.Log;
import hm;
import hw;
import hx;
import java.security.SecureRandom;
import java.util.List;
import java.util.Locale;

public class AuthActivity extends Activity
{
    public static interface a
    {

        public abstract SecureRandom a();
    }


    public static Intent a = null;
    private static final String b = com/dropbox/core/android/AuthActivity.getName();
    private static a c = new a() {

        public final SecureRandom a()
        {
            return hx.a();
        }

    };
    private static final Object d = new Object();
    private static String e;
    private static String f = "www.dropbox.com";
    private static String g;
    private static String h;
    private static String i[];
    private static String j;
    private String k;
    private String l;
    private String m;
    private String n;
    private String o[];
    private String p;
    private String q;
    private boolean r;

    public AuthActivity()
    {
        q = null;
        r = false;
    }

    public static Intent a(Context context, String s, String s1, String s2)
    {
        a(s, s1, s2);
        return new Intent(context, com/dropbox/core/android/AuthActivity);
    }

    static void a()
    {
        a(null, null, null);
    }

    private void a(Intent intent)
    {
        a = intent;
        q = null;
        a(null, null, null);
        finish();
    }

    static void a(AuthActivity authactivity, String s)
    {
        Locale locale = Locale.getDefault();
        String s1;
        String s2;
        String s3;
        if (authactivity.o.length > 0)
        {
            s1 = authactivity.o[0];
        } else
        {
            s1 = "0";
        }
        s2 = authactivity.k;
        s3 = authactivity.m;
        authactivity.startActivity(new Intent("android.intent.action.VIEW", Uri.parse(hm.a(locale.toString(), authactivity.l, "1/connect", new String[] {
            "k", s2, "n", s1, "api", s3, "state", s
        }))));
    }

    private static void a(String s, String s1, String s2)
    {
        e = s;
        h = null;
        i = new String[0];
        j = null;
        if (s1 == null)
        {
            s1 = "www.dropbox.com";
        }
        f = s1;
        g = s2;
    }

    public static boolean a(Context context, String s)
    {
        Object obj = new Intent("android.intent.action.VIEW");
        s = (new StringBuilder("db-")).append(s).toString();
        ((Intent) (obj)).setData(Uri.parse((new StringBuilder()).append(s).append("://1/connect").toString()));
        obj = context.getPackageManager().queryIntentActivities(((Intent) (obj)), 0);
        if (obj == null || ((List) (obj)).size() == 0)
        {
            throw new IllegalStateException((new StringBuilder("URI scheme in your app's manifest is not set up correctly. You should have a ")).append(com/dropbox/core/android/AuthActivity.getName()).append(" with the scheme: ").append(s).toString());
        }
        if (((List) (obj)).size() > 1)
        {
            context = new android.app.AlertDialog.Builder(context);
            context.setTitle("Security alert");
            context.setMessage("Another app on your phone may be trying to pose as the app you are currently using. The malicious app can't access your account, but linking to Dropbox has been disabled as a precaution. Please contact support@dropbox.com.");
            context.setPositiveButton("OK", new android.content.DialogInterface.OnClickListener() {

                public final void onClick(DialogInterface dialoginterface, int i1)
                {
                    dialoginterface.dismiss();
                }

            });
            context.show();
            return false;
        }
        obj = (ResolveInfo)((List) (obj)).get(0);
        if (obj == null || ((ResolveInfo) (obj)).activityInfo == null || !context.getPackageName().equals(((ResolveInfo) (obj)).activityInfo.packageName))
        {
            throw new IllegalStateException((new StringBuilder("There must be a ")).append(com/dropbox/core/android/AuthActivity.getName()).append(" within your app's package registered for your URI scheme (").append(s).append("). However, it appears that an activity in a different package is registered for that scheme instead. If you have multiple apps that all want to use the same accesstoken pair, designate one of them to do authentication and have the other apps launch it and then retrieve the token pair from it.").toString());
        } else
        {
            return true;
        }
    }

    static String b()
    {
        return b;
    }

    static String b(AuthActivity authactivity, String s)
    {
        authactivity.q = s;
        return s;
    }

    private static a c()
    {
        a a1;
        synchronized (d)
        {
            a1 = c;
        }
        return a1;
        exception;
        obj;
        JVM INSTR monitorexit ;
        throw exception;
    }

    protected void onCreate(Bundle bundle)
    {
        k = e;
        l = f;
        m = g;
        n = h;
        o = i;
        p = j;
        if (bundle == null)
        {
            a = null;
            q = null;
        } else
        {
            q = bundle.getString("SIS_KEY_AUTH_STATE_NONCE");
        }
        setTheme(0x1030010);
        super.onCreate(bundle);
    }

    protected void onNewIntent(Intent intent)
    {
        Object obj;
        Object obj1;
        Object obj2;
        Object obj4 = null;
        if (q == null)
        {
            a(null);
            return;
        }
        if (intent.hasExtra("ACCESS_TOKEN"))
        {
            obj2 = intent.getStringExtra("ACCESS_TOKEN");
            obj1 = intent.getStringExtra("ACCESS_SECRET");
            obj = intent.getStringExtra("UID");
            intent = intent.getStringExtra("AUTH_STATE");
            break MISSING_BLOCK_LABEL_59;
        }
        obj2 = intent.getData();
        if (obj2 == null || !"/connect".equals(((Uri) (obj2)).getPath())) goto _L2; else goto _L1
_L1:
        obj1 = ((Uri) (obj2)).getQueryParameter("oauth_token");
        try
        {
            obj = ((Uri) (obj2)).getQueryParameter("oauth_token_secret");
        }
        // Misplaced declaration of an exception variable
        catch (Intent intent)
        {
            intent = null;
            obj = null;
            continue; /* Loop/switch isn't completed */
        }
        try
        {
            intent = ((Uri) (obj2)).getQueryParameter("uid");
        }
        // Misplaced declaration of an exception variable
        catch (Intent intent)
        {
            intent = null;
            continue; /* Loop/switch isn't completed */
        }
        obj3 = ((Uri) (obj2)).getQueryParameter("state");
        obj2 = obj1;
        obj1 = obj;
        obj = intent;
        intent = ((Intent) (obj3));
        continue; /* Loop/switch isn't completed */
        intent;
        intent = null;
        obj = null;
        obj1 = null;
_L3:
        obj2 = obj1;
        obj1 = obj;
        obj = intent;
        intent = null;
        continue; /* Loop/switch isn't completed */
_L5:
        Object obj3 = obj4;
        if (obj2 != null)
        {
            obj3 = obj4;
            if (!((String) (obj2)).equals(""))
            {
                obj3 = obj4;
                if (obj1 != null)
                {
                    obj3 = obj4;
                    if (!((String) (obj1)).equals(""))
                    {
                        obj3 = obj4;
                        if (obj != null)
                        {
                            obj3 = obj4;
                            if (!((String) (obj)).equals(""))
                            {
                                obj3 = obj4;
                                if (intent != null)
                                {
                                    obj3 = obj4;
                                    if (!intent.equals(""))
                                    {
                                        if (!q.equals(intent))
                                        {
                                            a(null);
                                            return;
                                        }
                                        obj3 = new Intent();
                                        ((Intent) (obj3)).putExtra("ACCESS_TOKEN", ((String) (obj2)));
                                        ((Intent) (obj3)).putExtra("ACCESS_SECRET", ((String) (obj1)));
                                        ((Intent) (obj3)).putExtra("UID", ((String) (obj)));
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
        a(((Intent) (obj3)));
        return;
        obj2;
        if (true) goto _L3; else goto _L2
_L2:
        intent = null;
        obj = null;
        obj1 = null;
        obj2 = null;
        if (true) goto _L5; else goto _L4
_L4:
    }

    protected void onResume()
    {
        super.onResume();
        if (isFinishing())
        {
            return;
        }
        if (q != null || k == null)
        {
            a(null);
            return;
        }
        a = null;
        if (r)
        {
            Log.w(b, "onResume called again before Handler run");
            return;
        }
        byte abyte0[] = new byte[16];
        Object obj = c();
        if (obj != null)
        {
            obj = ((a) (obj)).a();
        } else
        {
            obj = new SecureRandom();
        }
        ((SecureRandom) (obj)).nextBytes(abyte0);
        obj = new StringBuilder();
        ((StringBuilder) (obj)).append("oauth2:");
        for (int i1 = 0; i1 < 16; i1++)
        {
            ((StringBuilder) (obj)).append(String.format("%02x", new Object[] {
                Integer.valueOf(abyte0[i1] & 0xff)
            }));
        }

        obj = ((StringBuilder) (obj)).toString();
        Intent intent = new Intent("com.dropbox.android.AUTHENTICATE_V2");
        intent.setPackage("com.dropbox.android");
        intent.putExtra("CONSUMER_KEY", k);
        intent.putExtra("CONSUMER_SIG", "");
        intent.putExtra("DESIRED_UID", n);
        intent.putExtra("ALREADY_AUTHED_UIDS", o);
        intent.putExtra("SESSION_ID", p);
        intent.putExtra("CALLING_PACKAGE", getPackageName());
        intent.putExtra("CALLING_CLASS", getClass().getName());
        intent.putExtra("AUTH_STATE", ((String) (obj)));
        (new Handler(Looper.getMainLooper())).post(new Runnable(intent, ((String) (obj))) {

            final Intent a;
            final String b;
            final AuthActivity c;

            public final void run()
            {
                AuthActivity.b();
                if (hw.a(c, a) == null) goto _L2; else goto _L1
_L1:
                c.startActivity(a);
_L4:
                AuthActivity.b(c, b);
                AuthActivity.a();
                return;
_L2:
                try
                {
                    AuthActivity.a(c, b);
                }
                catch (ActivityNotFoundException activitynotfoundexception)
                {
                    Log.e(AuthActivity.b(), "Could not launch intent. User may have restricted profile", activitynotfoundexception);
                    c.finish();
                    return;
                }
                if (true) goto _L4; else goto _L3
_L3:
            }

            
            {
                c = AuthActivity.this;
                a = intent;
                b = s;
                super();
            }
        });
        r = true;
    }

    protected void onSaveInstanceState(Bundle bundle)
    {
        super.onSaveInstanceState(bundle);
        bundle.putString("SIS_KEY_AUTH_STATE_NONCE", q);
    }

}
