// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.net.http.SslError;
import android.os.Bundle;
import android.util.DisplayMetrics;
import android.view.KeyEvent;
import android.view.View;
import android.view.animation.AlphaAnimation;
import android.view.animation.Animation;
import android.view.animation.Transformation;
import android.webkit.SslErrorHandler;
import android.webkit.WebSettings;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import android.widget.RelativeLayout;
import com.amazon.identity.auth.device.AuthError;
import java.util.UUID;

class fr extends Dialog
    implements android.content.DialogInterface.OnCancelListener
{
    final class a extends WebViewClient
    {

        final fr a;

        private boolean a()
        {
            boolean flag1 = false;
            Object obj = a.getContext();
            String s = ((Context) (obj)).getPackageName();
            boolean flag;
            boolean flag2;
            try
            {
                obj = ((Context) (obj)).getPackageManager().getApplicationInfo(s, 128);
            }
            catch (android.content.pm.PackageManager.NameNotFoundException namenotfoundexception)
            {
                return false;
            }
            flag = flag1;
            if (((ApplicationInfo) (obj)).metaData == null)
            {
                break MISSING_BLOCK_LABEL_64;
            }
            flag2 = ((ApplicationInfo) (obj)).metaData.getString("host.type").equals("development");
            flag = flag1;
            if (flag2)
            {
                flag = true;
            }
            return flag;
        }

        public final void onPageFinished(WebView webview, String s)
        {
            gz.a(fr.a(), "onPageFinished", (new StringBuilder("url=")).append(s).toString());
            super.onPageFinished(webview, s);
            if (!fr.a(a))
            {
                fr.a(a, false);
            }
        }

        public final void onPageStarted(WebView webview, String s, Bitmap bitmap)
        {
            gz.a(fr.a(), "onPageStarted", (new StringBuilder("url=")).append(s).toString());
            super.onPageStarted(webview, s, bitmap);
            if (!fr.a(a))
            {
                fr.a(a, true);
            }
        }

        public final void onReceivedError(WebView webview, int i1, String s, String s1)
        {
            gz.c(fr.a(), (new StringBuilder("onReceivedError=")).append(i1).append(" desc=").append(s).toString());
        }

        public final void onReceivedSslError(WebView webview, SslErrorHandler sslerrorhandler, SslError sslerror)
        {
            gz.c(fr.a(), "onReceivedSslError");
            if (a())
            {
                gz.a(fr.a(), "Hitting devo");
                sslerrorhandler.proceed();
                return;
            } else
            {
                super.onReceivedSslError(webview, sslerrorhandler, sslerror);
                sslerrorhandler.cancel();
                a.dismiss();
                fr.d(a).a(new AuthError("SSL Error", com.amazon.identity.auth.device.AuthError.b.f));
                return;
            }
        }

        public final boolean shouldOverrideUrlLoading(WebView webview, String s)
        {
            gz.a(fr.a(), "shouldOverrideUrlLoading", (new StringBuilder("url=")).append(s).toString());
            if (s == null || !s.startsWith("amzn://"))
            {
                break MISSING_BLOCK_LABEL_217;
            }
            gz.c(fr.b(), "Processing redirectUrl");
            if (!fr.a(a))
            {
                fr.a(a, false);
            }
            a.dismiss();
            webview = a.getContext();
            try
            {
                gw.a(webview, new gw("at-main", "", ".amazon.com"), s);
            }
            // Misplaced declaration of an exception variable
            catch (WebView webview)
            {
                gz.c(fr.a(), (new StringBuilder("Unable to clear cookies : ")).append(webview.getMessage()).toString());
            }
            new fp();
            webview = fp.a(s, fr.b(a).toString(), fr.c(a));
            if (!webview.containsKey(fx.a.f.o))
            {
                break MISSING_BLOCK_LABEL_186;
            }
            fr.d(a).b(webview);
            return true;
            try
            {
                fr.d(a).a(webview);
            }
            // Misplaced declaration of an exception variable
            catch (WebView webview)
            {
                fr.d(a).a(webview);
                return true;
            }
            return true;
            if (!ha.a(s))
            {
                gz.a(fr.b(), "URL clicked - override", (new StringBuilder("url=")).append(s).toString());
                s = new Intent("android.intent.action.VIEW", Uri.parse(s));
                webview.getContext().startActivity(s);
                return true;
            } else
            {
                return false;
            }
        }

        public a()
        {
            a = fr.this;
            super();
        }
    }

    final class b extends Animation
    {

        final fr a;
        private final View b;
        private final int c;
        private final boolean d;

        protected final void applyTransformation(float f1, Transformation transformation)
        {
            super.applyTransformation(f1, transformation);
            if (f1 < 1.0F)
            {
                if (d)
                {
                    b.getLayoutParams().height = (int)((float)c * f1);
                } else
                {
                    b.getLayoutParams().height = c - (int)((float)c * f1);
                }
                b.requestLayout();
                return;
            }
            if (d)
            {
                b.getLayoutParams().height = c;
                b.requestLayout();
                return;
            } else
            {
                b.getLayoutParams().height = 0;
                b.setVisibility(8);
                b.requestLayout();
                b.getLayoutParams().height = c;
                return;
            }
        }

        public b(View view, boolean flag)
        {
            a = fr.this;
            super();
            setDuration(600L);
            b = view;
            c = b.getLayoutParams().height;
            d = flag;
            if (d)
            {
                b.setVisibility(0);
                b.getLayoutParams().height = 0;
            }
        }
    }


    private static final String a = fr.getName();
    private static final String m = (new StringBuilder()).append(fr.getName()).append(".Client").toString();
    private final String b;
    private final fw c;
    private final UUID d;
    private final String e[];
    private WebView f;
    private RelativeLayout g;
    private LinearLayout h;
    private RelativeLayout i;
    private ProgressBar j;
    private boolean k;
    private boolean l;

    static String a()
    {
        return m;
    }

    static void a(fr fr1, boolean flag)
    {
        fr1.a(flag);
    }

    private void a(boolean flag)
    {
        if (l != flag)
        {
            b b1 = new b(i, flag);
            g.startAnimation(b1);
            l = flag;
        }
    }

    static boolean a(fr fr1)
    {
        return fr1.k;
    }

    static String b()
    {
        return a;
    }

    static UUID b(fr fr1)
    {
        return fr1.d;
    }

    static String[] c(fr fr1)
    {
        return fr1.e;
    }

    static fw d(fr fr1)
    {
        return fr1.c;
    }

    public void dismiss()
    {
        if (f != null)
        {
            f.stopLoading();
        }
        if (!k)
        {
            a(false);
            super.dismiss();
        }
    }

    public void onAttachedToWindow()
    {
        k = false;
        super.onAttachedToWindow();
    }

    public void onCancel(DialogInterface dialoginterface)
    {
        gz.c(a, "Spinner in webview cancelled");
        if (f == null || !f.canGoBack())
        {
            gz.c(a, "Dismissing Dialog");
            c.b(gr.a());
            dismiss();
            return;
        } else
        {
            f.goBack();
            gz.c(a, "Stop Loading");
            return;
        }
    }

    protected void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        gz.c(a, "OnCreate Oauth Dialog");
        j = new ProgressBar(getContext(), null, 0x1010078);
        j.setIndeterminate(true);
        j.getIndeterminateDrawable().setAlpha(150);
        super.onCreate(bundle);
        gz.c(a, "ONCreate MAP Authz Dialog");
        requestWindowFeature(1);
        gz.c(a, "Setting up webview");
        g = new RelativeLayout(getContext());
        i = new RelativeLayout(getContext());
        bundle = new android.widget.RelativeLayout.LayoutParams(-1, (int)(getContext().getResources().getDisplayMetrics().density * 30F));
        i.setLayoutParams(bundle);
        i.setVisibility(8);
        bundle = new android.widget.RelativeLayout.LayoutParams(200, -2);
        bundle.addRule(13);
        j.setLayoutParams(bundle);
        i.addView(j);
        bundle = new AlphaAnimation(0.6F, 0.6F);
        bundle.setFillAfter(true);
        j.startAnimation(bundle);
        h = new LinearLayout(getContext());
        bundle = new android.view.ViewGroup.LayoutParams(-1, -1);
        h.setLayoutParams(bundle);
        f = new WebView(getContext());
        f.setVerticalScrollBarEnabled(false);
        f.setHorizontalScrollBarEnabled(false);
        f.setWebViewClient(new a());
        f.getSettings().setJavaScriptEnabled(true);
        f.loadUrl(b);
        f.setLayoutParams(new android.view.ViewGroup.LayoutParams(-1, -1));
        f.setVisibility(0);
        f.getSettings().setSavePassword(false);
        h.addView(f);
        g.addView(h);
        g.addView(i);
        setContentView(g, new android.view.ViewGroup.LayoutParams(-1, -1));
    }

    public void onDetachedFromWindow()
    {
        k = true;
        super.onDetachedFromWindow();
    }

    public boolean onKeyDown(int i1, KeyEvent keyevent)
    {
        gz.c(a, "OnKeyDown");
        if (i1 == 4)
        {
            gz.c(a, "KeyEvent.KEYCODE_BACK");
            if (!k)
            {
                a(false);
            }
            if (f != null && f.canGoBack())
            {
                gz.c(a, "Going back in webview");
                f.goBack();
                return true;
            }
            gz.c(a, "onKeyDown Dismissing webview");
            c.b(gr.a());
            dismiss();
        }
        return super.onKeyDown(i1, keyevent);
    }

}
