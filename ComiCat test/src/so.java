// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.app.Activity;
import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.SharedPreferences;
import android.net.Uri;
import android.os.Bundle;
import android.text.TextUtils;
import android.webkit.CookieManager;
import android.webkit.CookieSyncManager;
import android.webkit.WebSettings;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import java.util.Arrays;
import java.util.Comparator;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;
import org.apache.http.client.HttpClient;

public class so
    implements tl
{
    public final class a extends Dialog
        implements android.content.DialogInterface.OnCancelListener
    {

        static final boolean a;
        final so b;
        private final Uri c;

        public final void onCancel(DialogInterface dialoginterface)
        {
            dialoginterface = new sx("The user cancelled the login operation.");
            b.a(dialoginterface);
        }

        protected final void onCreate(Bundle bundle)
        {
            super.onCreate(bundle);
            setOnCancelListener(this);
            bundle = new FrameLayout(getContext());
            LinearLayout linearlayout = new LinearLayout(getContext());
            WebView webview = new WebView(getContext());
            webview.setWebViewClient(new a(this));
            webview.getSettings().setJavaScriptEnabled(true);
            webview.loadUrl(c.toString());
            webview.setLayoutParams(new android.view.ViewGroup.LayoutParams(-1, -1));
            webview.setVisibility(0);
            linearlayout.addView(webview);
            linearlayout.setVisibility(0);
            bundle.addView(linearlayout);
            bundle.setVisibility(0);
            bundle.forceLayout();
            linearlayout.forceLayout();
            addContentView(bundle, new android.view.ViewGroup.LayoutParams(-1, -1));
        }

        static 
        {
            boolean flag;
            if (!so.desiredAssertionStatus())
            {
                flag = true;
            } else
            {
                flag = false;
            }
            a = flag;
        }

        public a(Uri uri)
        {
            b = so.this;
            super(so.a(so.this), 0x1030010);
            setOwnerActivity(so.a(so.this));
            if (!a && uri == null)
            {
                throw new AssertionError();
            } else
            {
                c = uri;
                return;
            }
        }
    }

    final class a.a extends WebViewClient
    {

        final a a;
        private final CookieManager b = CookieManager.getInstance();
        private final Set c = new HashSet();

        public final void onPageFinished(WebView webview, String s)
        {
            webview = Uri.parse(s);
            if (webview.getHost().equals(sp.a.f.getHost()))
            {
                s = b.getCookie(s);
                if (!TextUtils.isEmpty(s))
                {
                    s = TextUtils.split(s, "; ");
                    int j = s.length;
                    for (int i = 0; i < j; i++)
                    {
                        String s1 = s[i];
                        s1 = s1.substring(0, s1.indexOf("="));
                        c.add(s1);
                    }

                }
            }
            s = sp.a.e;
            b b1 = b.a;
            boolean flag;
            if (b.a(webview, s) == 0)
            {
                flag = true;
            } else
            {
                flag = false;
            }
            if (!flag)
            {
                return;
            } else
            {
                s = a.getContext().getSharedPreferences("com.microsoft.live", 0);
                String as[] = TextUtils.split(s.getString("cookies", ""), ",");
                c.addAll(Arrays.asList(as));
                s = s.edit();
                s.putString("cookies", TextUtils.join(",", c));
                s.commit();
                c.clear();
                so.a(a.b, webview);
                a.dismiss();
                return;
            }
        }

        public final void onReceivedError(WebView webview, int i, String s, String s1)
        {
            so.a(a.b, "", s, s1);
            a.dismiss();
        }

        public a.a(a a1)
        {
            a = a1;
            super();
            CookieSyncManager.createInstance(a1.getContext());
        }
    }

    static final class b extends Enum
        implements Comparator
    {

        public static final b a;
        static final boolean b;
        private static final b c[];

        public static int a(Uri uri, Uri uri1)
        {
            String s = uri.getScheme();
            String s1 = uri.getAuthority();
            uri = uri.getPath();
            String s2 = uri1.getScheme();
            String s3 = uri1.getAuthority();
            uri1 = uri1.getPath();
            for (int i = 0; i < 3; i++)
            {
                int j = (new String[] {
                    s, s1, uri
                })[i].compareTo((new String[] {
                    s2, s3, uri1
                })[i]);
                if (j != 0)
                {
                    return j;
                }
            }

            return 0;
        }

        public static b valueOf(String s)
        {
            return (b)Enum.valueOf(so$b, s);
        }

        public static b[] values()
        {
            return (b[])c.clone();
        }

        public final int compare(Object obj, Object obj1)
        {
            return a((Uri)obj, (Uri)obj1);
        }

        static 
        {
            boolean flag;
            if (!so.desiredAssertionStatus())
            {
                flag = true;
            } else
            {
                flag = false;
            }
            b = flag;
            a = new b("INSTANCE");
            c = (new b[] {
                a
            });
        }

        private b(String s)
        {
            super(s, 0);
        }
    }


    static final boolean e;
    public final Activity a;
    public final String b;
    public final String c;
    public final String d;
    private final HttpClient f;
    private final sq g;

    public so(Activity activity, HttpClient httpclient, String s, String s1, String s2)
    {
        if (!e && activity == null)
        {
            throw new AssertionError();
        }
        if (!e && httpclient == null)
        {
            throw new AssertionError();
        }
        if (!e && TextUtils.isEmpty(s))
        {
            throw new AssertionError();
        }
        if (!e && TextUtils.isEmpty(s1))
        {
            throw new AssertionError();
        }
        if (!e && TextUtils.isEmpty(s2))
        {
            throw new AssertionError();
        } else
        {
            a = activity;
            f = httpclient;
            b = s;
            c = s1;
            g = new sq();
            d = s2;
            return;
        }
    }

    static Activity a(so so1)
    {
        return so1.a;
    }

    private void a()
    {
        a(new sx("An error occured while communicating with the server during the operation. Please try again later."));
    }

    private void a(String s, String s1, String s2)
    {
        a(new sx(s, s1, s2));
    }

    static void a(so so1, Uri uri)
    {
        boolean flag4 = true;
        boolean flag;
        boolean flag1;
        boolean flag3;
        if (uri.getFragment() != null)
        {
            flag1 = true;
        } else
        {
            flag1 = false;
        }
        if (uri.getQuery() != null)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        if (!flag1 && !flag)
        {
            flag3 = true;
        } else
        {
            flag3 = false;
        }
        if (flag3)
        {
            so1.a();
            return;
        }
        if (flag1)
        {
            String as[] = TextUtils.split(uri.getFragment(), "&");
            HashMap hashmap = new HashMap();
            int j = as.length;
            for (int i = 0; i < j; i++)
            {
                String s2 = as[i];
                int k = s2.indexOf("=");
                hashmap.put(s2.substring(0, k), s2.substring(k + 1));
            }

            boolean flag2;
            if (hashmap.containsKey("access_token") && hashmap.containsKey("token_type"))
            {
                flag2 = flag4;
            } else
            {
                flag2 = false;
            }
            if (flag2)
            {
                try
                {
                    uri = to.a(hashmap);
                }
                // Misplaced declaration of an exception variable
                catch (Uri uri)
                {
                    so1.a(((sx) (uri)));
                    return;
                }
                so1.a(((tm) (uri)));
                return;
            }
            String s1 = (String)hashmap.get("error");
            if (s1 != null)
            {
                so1.a(s1, (String)hashmap.get("error_description"), (String)hashmap.get("error_uri"));
                return;
            }
        }
        if (flag)
        {
            String s = uri.getQueryParameter("code");
            if (s != null)
            {
                if (!e && TextUtils.isEmpty(s))
                {
                    throw new AssertionError();
                } else
                {
                    uri = new ts(new sl(so1.f, so1.b, so1.c, s));
                    ((ts) (uri)).a.a(so1);
                    uri.execute(new Void[0]);
                    return;
                }
            }
            s = uri.getQueryParameter("error");
            if (s != null)
            {
                so1.a(s, uri.getQueryParameter("error_description"), uri.getQueryParameter("error_uri"));
                return;
            }
        }
        so1.a();
    }

    static void a(so so1, String s, String s1, String s2)
    {
        so1.a(s, s1, s2);
    }

    public final void a(sx sx1)
    {
        g.a(sx1);
    }

    public final void a(tl tl1)
    {
        g.a(tl1);
    }

    public final void a(tm tm)
    {
        g.a(tm);
    }

    static 
    {
        boolean flag;
        if (!so.desiredAssertionStatus())
        {
            flag = true;
        } else
        {
            flag = false;
        }
        e = flag;
    }
}
