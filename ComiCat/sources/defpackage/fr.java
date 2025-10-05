package defpackage;

import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.graphics.Bitmap;
import android.net.Uri;
import android.net.http.SslError;
import android.os.Bundle;
import android.support.v4.app.NotificationCompat;
import android.util.AttributeSet;
import android.view.KeyEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.AlphaAnimation;
import android.view.animation.Animation;
import android.view.animation.Transformation;
import android.webkit.SslErrorHandler;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import android.widget.RelativeLayout;
import com.amazon.identity.auth.device.AuthError;
import defpackage.fx;
import java.util.UUID;
import org.apache.http.HttpStatus;

/* renamed from: fr  reason: default package */
/* compiled from: MAPAuthzDialog */
class fr extends Dialog implements DialogInterface.OnCancelListener {
    /* access modifiers changed from: private */
    public static final String a = fr.class.getName();
    /* access modifiers changed from: private */
    public static final String m = (fr.class.getName() + ".Client");
    private final String b;
    /* access modifiers changed from: private */
    public final fw c;
    /* access modifiers changed from: private */
    public final UUID d;
    /* access modifiers changed from: private */
    public final String[] e;
    private WebView f;
    private RelativeLayout g;
    private LinearLayout h;
    private RelativeLayout i;
    private ProgressBar j;
    /* access modifiers changed from: private */
    public boolean k;
    private boolean l;

    /* renamed from: fr$a */
    /* compiled from: MAPAuthzDialog */
    class a extends WebViewClient {
        public a() {
        }

        private boolean a() {
            Context context = fr.this.getContext();
            try {
                ApplicationInfo applicationInfo = context.getPackageManager().getApplicationInfo(context.getPackageName(), NotificationCompat.FLAG_HIGH_PRIORITY);
                return applicationInfo.metaData != null && applicationInfo.metaData.getString("host.type").equals("development");
            } catch (PackageManager.NameNotFoundException e) {
                return false;
            }
        }

        public final void onPageFinished(WebView webView, String str) {
            gz.a(fr.m, "onPageFinished", "url=" + str);
            super.onPageFinished(webView, str);
            if (!fr.this.k) {
                fr.this.a(false);
            }
        }

        public final void onPageStarted(WebView webView, String str, Bitmap bitmap) {
            gz.a(fr.m, "onPageStarted", "url=" + str);
            super.onPageStarted(webView, str, bitmap);
            if (!fr.this.k) {
                fr.this.a(true);
            }
        }

        public final void onReceivedError(WebView webView, int i, String str, String str2) {
            gz.c(fr.m, "onReceivedError=" + i + " desc=" + str);
        }

        public final void onReceivedSslError(WebView webView, SslErrorHandler sslErrorHandler, SslError sslError) {
            gz.c(fr.m, "onReceivedSslError");
            if (a()) {
                gz.a(fr.m, "Hitting devo");
                sslErrorHandler.proceed();
                return;
            }
            super.onReceivedSslError(webView, sslErrorHandler, sslError);
            sslErrorHandler.cancel();
            fr.this.dismiss();
            fr.this.c.a(new AuthError("SSL Error", AuthError.b.ERROR_WEBVIEW_SSL));
        }

        public final boolean shouldOverrideUrlLoading(WebView webView, String str) {
            gz.a(fr.m, "shouldOverrideUrlLoading", "url=" + str);
            if (str != null && str.startsWith("amzn://")) {
                gz.c(fr.a, "Processing redirectUrl");
                if (!fr.this.k) {
                    fr.this.a(false);
                }
                fr.this.dismiss();
                try {
                    gw.a(fr.this.getContext(), new gw("at-main", "", ".amazon.com"), str);
                } catch (AuthError e) {
                    gz.c(fr.m, "Unable to clear cookies : " + e.getMessage());
                }
                try {
                    new fp();
                    Bundle a2 = fp.a(str, fr.this.d.toString(), fr.this.e);
                    if (a2.containsKey(fx.a.CAUSE_ID.o)) {
                        fr.this.c.b(a2);
                        return true;
                    }
                    fr.this.c.a(a2);
                    return true;
                } catch (AuthError e2) {
                    fr.this.c.a(e2);
                    return true;
                }
            } else if (ha.a(str)) {
                return false;
            } else {
                gz.a(fr.a, "URL clicked - override", "url=" + str);
                webView.getContext().startActivity(new Intent("android.intent.action.VIEW", Uri.parse(str)));
                return true;
            }
        }
    }

    /* renamed from: fr$b */
    /* compiled from: MAPAuthzDialog */
    class b extends Animation {
        private final View b;
        private final int c = this.b.getLayoutParams().height;
        private final boolean d;

        public b(View view, boolean z) {
            setDuration(600);
            this.b = view;
            this.d = z;
            if (this.d) {
                this.b.setVisibility(0);
                this.b.getLayoutParams().height = 0;
            }
        }

        /* access modifiers changed from: protected */
        public final void applyTransformation(float f, Transformation transformation) {
            super.applyTransformation(f, transformation);
            if (f < 1.0f) {
                if (this.d) {
                    this.b.getLayoutParams().height = (int) (((float) this.c) * f);
                } else {
                    this.b.getLayoutParams().height = this.c - ((int) (((float) this.c) * f));
                }
                this.b.requestLayout();
            } else if (this.d) {
                this.b.getLayoutParams().height = this.c;
                this.b.requestLayout();
            } else {
                this.b.getLayoutParams().height = 0;
                this.b.setVisibility(8);
                this.b.requestLayout();
                this.b.getLayoutParams().height = this.c;
            }
        }
    }

    /* access modifiers changed from: private */
    public void a(boolean z) {
        if (this.l != z) {
            this.g.startAnimation(new b(this.i, z));
            this.l = z;
        }
    }

    public void dismiss() {
        if (this.f != null) {
            this.f.stopLoading();
        }
        if (!this.k) {
            a(false);
            super.dismiss();
        }
    }

    public void onAttachedToWindow() {
        this.k = false;
        super.onAttachedToWindow();
    }

    public void onCancel(DialogInterface dialogInterface) {
        gz.c(a, "Spinner in webview cancelled");
        if (this.f == null || !this.f.canGoBack()) {
            gz.c(a, "Dismissing Dialog");
            this.c.b(gr.a());
            dismiss();
            return;
        }
        this.f.goBack();
        gz.c(a, "Stop Loading");
    }

    /* access modifiers changed from: protected */
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        gz.c(a, "OnCreate Oauth Dialog");
        this.j = new ProgressBar(getContext(), (AttributeSet) null, 16842872);
        this.j.setIndeterminate(true);
        this.j.getIndeterminateDrawable().setAlpha(150);
        super.onCreate(bundle);
        gz.c(a, "ONCreate MAP Authz Dialog");
        requestWindowFeature(1);
        gz.c(a, "Setting up webview");
        this.g = new RelativeLayout(getContext());
        this.i = new RelativeLayout(getContext());
        this.i.setLayoutParams(new RelativeLayout.LayoutParams(-1, (int) (getContext().getResources().getDisplayMetrics().density * 30.0f)));
        this.i.setVisibility(8);
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(HttpStatus.SC_OK, -2);
        layoutParams.addRule(13);
        this.j.setLayoutParams(layoutParams);
        this.i.addView(this.j);
        AlphaAnimation alphaAnimation = new AlphaAnimation(0.6f, 0.6f);
        alphaAnimation.setFillAfter(true);
        this.j.startAnimation(alphaAnimation);
        this.h = new LinearLayout(getContext());
        this.h.setLayoutParams(new ViewGroup.LayoutParams(-1, -1));
        this.f = new WebView(getContext());
        this.f.setVerticalScrollBarEnabled(false);
        this.f.setHorizontalScrollBarEnabled(false);
        this.f.setWebViewClient(new a());
        this.f.getSettings().setJavaScriptEnabled(true);
        this.f.loadUrl(this.b);
        this.f.setLayoutParams(new ViewGroup.LayoutParams(-1, -1));
        this.f.setVisibility(0);
        this.f.getSettings().setSavePassword(false);
        this.h.addView(this.f);
        this.g.addView(this.h);
        this.g.addView(this.i);
        setContentView(this.g, new ViewGroup.LayoutParams(-1, -1));
    }

    public void onDetachedFromWindow() {
        this.k = true;
        super.onDetachedFromWindow();
    }

    public boolean onKeyDown(int i2, KeyEvent keyEvent) {
        gz.c(a, "OnKeyDown");
        if (i2 == 4) {
            gz.c(a, "KeyEvent.KEYCODE_BACK");
            if (!this.k) {
                a(false);
            }
            if (this.f == null || !this.f.canGoBack()) {
                gz.c(a, "onKeyDown Dismissing webview");
                this.c.b(gr.a());
                dismiss();
            } else {
                gz.c(a, "Going back in webview");
                this.f.goBack();
                return true;
            }
        }
        return super.onKeyDown(i2, keyEvent);
    }
}
