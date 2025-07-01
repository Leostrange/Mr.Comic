// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.box.androidsdk.content.auth;

import android.app.AlertDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.net.Uri;
import android.net.http.SslCertificate;
import android.net.http.SslError;
import android.os.Handler;
import android.os.Looper;
import android.text.format.DateFormat;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.webkit.HttpAuthHandler;
import android.webkit.SslErrorHandler;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import android.widget.EditText;
import android.widget.TextView;
import com.box.androidsdk.content.utils.SdkUtils;
import java.lang.ref.WeakReference;
import java.util.Date;
import java.util.Formatter;

public class OAuthWebView extends WebView
{
    public static class AuthFailure
    {

        public static final int TYPE_AUTHENTICATION_UNAUTHORIZED = 3;
        public static final int TYPE_GENERIC = -1;
        public static final int TYPE_URL_MISMATCH = 1;
        public static final int TYPE_USER_INTERACTION = 0;
        public static final int TYPE_WEB_ERROR = 2;
        public WebViewException mWebException;
        public String message;
        public int type;

        public AuthFailure(int i, String s)
        {
            type = i;
            message = s;
        }

        public AuthFailure(WebViewException webviewexception)
        {
            this(2, null);
            mWebException = webviewexception;
        }
    }

    static class InvalidUrlException extends Exception
    {

        private static final long serialVersionUID = 1L;

        private InvalidUrlException()
        {
        }

    }

    public static class OAuthWebViewClient extends WebViewClient
    {

        private static final int WEB_VIEW_TIMEOUT = 30000;
        private Handler mHandler;
        private OnPageFinishedListener mOnPageFinishedListener;
        private String mRedirectUrl;
        private WebViewTimeOutRunnable mTimeOutRunnable;
        private WebEventListener mWebEventListener;
        private boolean sslErrorDialogContinueButtonClicked;

        private String formatCertificateDate(Context context, Date date)
        {
            if (date == null)
            {
                return "";
            } else
            {
                return DateFormat.getDateFormat(context).format(date);
            }
        }

        private View getCertErrorView(Context context, SslCertificate sslcertificate)
        {
            View view = LayoutInflater.from(context).inflate(hc.d.ssl_certificate, null);
            Object obj = sslcertificate.getIssuedTo();
            if (obj != null)
            {
                ((TextView)view.findViewById(hc.c.to_common)).setText(((android.net.http.SslCertificate.DName) (obj)).getCName());
                ((TextView)view.findViewById(hc.c.to_org)).setText(((android.net.http.SslCertificate.DName) (obj)).getOName());
                ((TextView)view.findViewById(hc.c.to_org_unit)).setText(((android.net.http.SslCertificate.DName) (obj)).getUName());
            }
            obj = sslcertificate.getIssuedBy();
            if (obj != null)
            {
                ((TextView)view.findViewById(hc.c.by_common)).setText(((android.net.http.SslCertificate.DName) (obj)).getCName());
                ((TextView)view.findViewById(hc.c.by_org)).setText(((android.net.http.SslCertificate.DName) (obj)).getOName());
                ((TextView)view.findViewById(hc.c.by_org_unit)).setText(((android.net.http.SslCertificate.DName) (obj)).getUName());
            }
            obj = formatCertificateDate(context, sslcertificate.getValidNotBeforeDate());
            ((TextView)view.findViewById(hc.c.issued_on)).setText(((CharSequence) (obj)));
            context = formatCertificateDate(context, sslcertificate.getValidNotAfterDate());
            ((TextView)view.findViewById(hc.c.expires_on)).setText(context);
            return view;
        }

        private Uri getURIfromURL(String s)
        {
label0:
            {
                Uri uri = Uri.parse(s);
                s = uri;
                if (SdkUtils.isEmptyString(mRedirectUrl))
                {
                    break label0;
                }
                Uri uri1 = Uri.parse(mRedirectUrl);
                if (uri1.getScheme() != null && uri1.getScheme().equals(uri.getScheme()))
                {
                    s = uri;
                    if (uri1.getAuthority().equals(uri.getAuthority()))
                    {
                        break label0;
                    }
                }
                s = null;
            }
            return s;
        }

        private String getValueFromURI(Uri uri, String s)
        {
            if (uri == null)
            {
                return null;
            }
            try
            {
                uri = uri.getQueryParameter(s);
            }
            // Misplaced declaration of an exception variable
            catch (Uri uri)
            {
                return null;
            }
            return uri;
        }

        public void destroy()
        {
            mWebEventListener = null;
        }

        public void onPageFinished(WebView webview, String s)
        {
            if (mTimeOutRunnable != null)
            {
                mHandler.removeCallbacks(mTimeOutRunnable);
            }
            super.onPageFinished(webview, s);
            if (mOnPageFinishedListener != null)
            {
                mOnPageFinishedListener.onPageFinished(webview, s);
            }
        }

        public void onPageStarted(WebView webview, String s, Bitmap bitmap)
        {
            Object obj;
            obj = getURIfromURL(s);
            bitmap = getValueFromURI(((Uri) (obj)), "code");
            if (!SdkUtils.isEmptyString(bitmap) && (webview instanceof OAuthWebView) && !SdkUtils.isEmptyString(((OAuthWebView)webview).getStateString()))
            {
                String s1 = ((Uri) (obj)).getQueryParameter("state");
                if (!((OAuthWebView)webview).getStateString().equals(s1))
                {
                    throw new InvalidUrlException();
                }
            }
              goto _L1
_L4:
            if (mTimeOutRunnable != null)
            {
                mHandler.removeCallbacks(mTimeOutRunnable);
            }
            mTimeOutRunnable = new WebViewTimeOutRunnable(webview, s);
            mHandler.postDelayed(mTimeOutRunnable, 30000L);
            return;
_L1:
            if (SdkUtils.isEmptyString(getValueFromURI(((Uri) (obj)), "error"))) goto _L3; else goto _L2
_L2:
            mWebEventListener.onAuthFailure(new AuthFailure(0, null));
              goto _L4
_L3:
            if (SdkUtils.isEmptyString(bitmap)) goto _L4; else goto _L5
_L5:
            obj = getValueFromURI(((Uri) (obj)), "base_domain");
label0:
            {
                if (obj == null)
                {
                    break label0;
                }
                try
                {
                    mWebEventListener.onReceivedAuthCode(bitmap, ((String) (obj)));
                }
                // Misplaced declaration of an exception variable
                catch (Bitmap bitmap)
                {
                    mWebEventListener.onAuthFailure(new AuthFailure(1, null));
                }
            }
              goto _L4
            mWebEventListener.onReceivedAuthCode(bitmap);
              goto _L4
        }

        public void onReceivedError(WebView webview, int i, String s, String s1)
        {
            if (mTimeOutRunnable != null)
            {
                mHandler.removeCallbacks(mTimeOutRunnable);
            }
            if (mWebEventListener.onAuthFailure(new AuthFailure(new WebViewException(i, s, s1))))
            {
                return;
            }
            i;
            JVM INSTR lookupswitch 3: default 84
        //                       -8: 201
        //                       -6: 94
        //                       -2: 94;
               goto _L1 _L2 _L3 _L3
_L1:
            super.onReceivedError(webview, i, s, s1);
            return;
_L3:
            if (!SdkUtils.isInternetAvailable(webview.getContext()))
            {
                String s2 = SdkUtils.getAssetFile(webview.getContext(), "offline.html");
                Formatter formatter = new Formatter();
                formatter.format(s2, new Object[] {
                    webview.getContext().getString(hc.e.boxsdk_no_offline_access), webview.getContext().getString(hc.e.boxsdk_no_offline_access_detail), webview.getContext().getString(hc.e.boxsdk_no_offline_access_todo)
                });
                webview.loadDataWithBaseURL(null, formatter.toString(), "text/html", "UTF-8", null);
                formatter.close();
                continue; /* Loop/switch isn't completed */
            }
_L2:
            String s3 = SdkUtils.getAssetFile(webview.getContext(), "offline.html");
            Formatter formatter1 = new Formatter();
            formatter1.format(s3, new Object[] {
                webview.getContext().getString(hc.e.boxsdk_unable_to_connect), webview.getContext().getString(hc.e.boxsdk_unable_to_connect_detail), webview.getContext().getString(hc.e.boxsdk_unable_to_connect_todo)
            });
            webview.loadDataWithBaseURL(null, formatter1.toString(), "text/html", "UTF-8", null);
            formatter1.close();
            if (true) goto _L1; else goto _L4
_L4:
        }

        public void onReceivedHttpAuthRequest(WebView webview, HttpAuthHandler httpauthhandler, final String textEntryView, String s)
        {
            textEntryView = LayoutInflater.from(webview.getContext()).inflate(hc.d.boxsdk_alert_dialog_text_entry, null);
            (new android.app.AlertDialog.Builder(webview.getContext())).setTitle(hc.e.boxsdk_alert_dialog_text_entry).setView(textEntryView).setPositiveButton(hc.e.boxsdk_alert_dialog_ok, httpauthhandler. new android.content.DialogInterface.OnClickListener() {

                final OAuthWebViewClient this$0;
                final HttpAuthHandler val$handler;
                final View val$textEntryView;

                public void onClick(DialogInterface dialoginterface, int i)
                {
                    dialoginterface = ((EditText)textEntryView.findViewById(hc.c.username_edit)).getText().toString();
                    String s = ((EditText)textEntryView.findViewById(hc.c.password_edit)).getText().toString();
                    handler.proceed(dialoginterface, s);
                }

            
            {
                this$0 = final_oauthwebviewclient;
                textEntryView = view;
                handler = HttpAuthHandler.this;
                super();
            }
            }).setNegativeButton(hc.e.boxsdk_alert_dialog_cancel, httpauthhandler. new android.content.DialogInterface.OnClickListener() {

                final OAuthWebViewClient this$0;
                final HttpAuthHandler val$handler;

                public void onClick(DialogInterface dialoginterface, int i)
                {
                    handler.cancel();
                    mWebEventListener.onAuthFailure(new AuthFailure(0, null));
                }

            
            {
                this$0 = final_oauthwebviewclient;
                handler = HttpAuthHandler.this;
                super();
            }
            }).create().show();
        }

        public void onReceivedSslError(final WebView view, SslErrorHandler sslerrorhandler, SslError sslerror)
        {
            Resources resources;
            StringBuilder stringbuilder;
            if (mTimeOutRunnable != null)
            {
                mHandler.removeCallbacks(mTimeOutRunnable);
            }
            resources = view.getContext().getResources();
            stringbuilder = new StringBuilder(resources.getString(hc.e.boxsdk_There_are_problems_with_the_security_certificate_for_this_site));
            stringbuilder.append(" ");
            sslerror.getPrimaryError();
            JVM INSTR tableswitch 0 5: default 96
        //                       0 270
        //                       1 244
        //                       2 257
        //                       3 283
        //                       4 229
        //                       5 296;
               goto _L1 _L2 _L3 _L4 _L5 _L6 _L7
_L1:
            String s = resources.getString(hc.e.boxsdk_ssl_error_warning_INVALID);
_L9:
            stringbuilder.append(s);
            stringbuilder.append(" ");
            stringbuilder.append(resources.getString(hc.e.boxsdk_ssl_should_not_proceed));
            sslErrorDialogContinueButtonClicked = false;
            sslerrorhandler = (new android.app.AlertDialog.Builder(view.getContext())).setTitle(hc.e.boxsdk_Security_Warning).setMessage(stringbuilder.toString()).setIcon(hc.b.boxsdk_dialog_warning).setNegativeButton(hc.e.boxsdk_Go_back, sslerrorhandler. new android.content.DialogInterface.OnClickListener() {

                final OAuthWebViewClient this$0;
                final SslErrorHandler val$handler;

                public void onClick(DialogInterface dialoginterface, int i)
                {
                    sslErrorDialogContinueButtonClicked = true;
                    handler.cancel();
                    mWebEventListener.onAuthFailure(new AuthFailure(0, null));
                }

            
            {
                this$0 = final_oauthwebviewclient;
                handler = SslErrorHandler.this;
                super();
            }
            });
            sslerrorhandler.setNeutralButton(hc.e.boxsdk_ssl_error_details, sslerror. new android.content.DialogInterface.OnClickListener() {

                final OAuthWebViewClient this$0;
                final SslError val$error;
                final WebView val$view;

                public void onClick(DialogInterface dialoginterface, int i)
                {
                    showCertDialog(view.getContext(), error);
                }

            
            {
                this$0 = final_oauthwebviewclient;
                view = webview;
                error = SslError.this;
                super();
            }
            });
            view = sslerrorhandler.create();
            view.setOnDismissListener(new android.content.DialogInterface.OnDismissListener() {

                final OAuthWebViewClient this$0;

                public void onDismiss(DialogInterface dialoginterface)
                {
                    if (!sslErrorDialogContinueButtonClicked)
                    {
                        mWebEventListener.onAuthFailure(new AuthFailure(0, null));
                    }
                }

            
            {
                this$0 = OAuthWebViewClient.this;
                super();
            }
            });
            view.show();
            return;
_L6:
            s = view.getResources().getString(hc.e.boxsdk_ssl_error_warning_DATE_INVALID);
            continue; /* Loop/switch isn't completed */
_L3:
            s = resources.getString(hc.e.boxsdk_ssl_error_warning_EXPIRED);
            continue; /* Loop/switch isn't completed */
_L4:
            s = resources.getString(hc.e.boxsdk_ssl_error_warning_ID_MISMATCH);
            continue; /* Loop/switch isn't completed */
_L2:
            s = resources.getString(hc.e.boxsdk_ssl_error_warning_NOT_YET_VALID);
            continue; /* Loop/switch isn't completed */
_L5:
            s = resources.getString(hc.e.boxsdk_ssl_error_warning_UNTRUSTED);
            continue; /* Loop/switch isn't completed */
_L7:
            s = resources.getString(hc.e.boxsdk_ssl_error_warning_INVALID);
            if (true) goto _L9; else goto _L8
_L8:
        }

        public void setOnPageFinishedListener(OnPageFinishedListener onpagefinishedlistener)
        {
            mOnPageFinishedListener = onpagefinishedlistener;
        }

        protected void showCertDialog(Context context, SslError sslerror)
        {
            (new android.app.AlertDialog.Builder(context)).setTitle(hc.e.boxsdk_Security_Warning).setView(getCertErrorView(context, sslerror.getCertificate())).create().show();
        }




/*
        static boolean access$202(OAuthWebViewClient oauthwebviewclient, boolean flag)
        {
            oauthwebviewclient.sslErrorDialogContinueButtonClicked = flag;
            return flag;
        }

*/

        public OAuthWebViewClient(WebEventListener webeventlistener, String s)
        {
            mHandler = new Handler(Looper.getMainLooper());
            mWebEventListener = webeventlistener;
            mRedirectUrl = s;
        }
    }

    public static interface OAuthWebViewClient.WebEventListener
    {

        public abstract boolean onAuthFailure(AuthFailure authfailure);

        public abstract void onReceivedAuthCode(String s);

        public abstract void onReceivedAuthCode(String s, String s1);
    }

    class OAuthWebViewClient.WebViewTimeOutRunnable
        implements Runnable
    {

        final String mFailingUrl;
        final WeakReference mViewHolder;
        final OAuthWebViewClient this$0;

        public void run()
        {
            onReceivedError((WebView)mViewHolder.get(), -8, "loading timed out", mFailingUrl);
        }

        public OAuthWebViewClient.WebViewTimeOutRunnable(WebView webview, String s)
        {
            this$0 = OAuthWebViewClient.this;
            super();
            mFailingUrl = s;
            mViewHolder = new WeakReference(webview);
        }
    }

    public static interface OnPageFinishedListener
    {

        public abstract void onPageFinished(WebView webview, String s);
    }

    public static class WebViewException extends Exception
    {

        private final String mDescription;
        private final int mErrorCode;
        private final String mFailingUrl;

        public String getDescription()
        {
            return mDescription;
        }

        public int getErrorCode()
        {
            return mErrorCode;
        }

        public String getFailingUrl()
        {
            return mFailingUrl;
        }

        public WebViewException(int i, String s, String s1)
        {
            mErrorCode = i;
            mDescription = s;
            mFailingUrl = s1;
        }
    }


    private static final String STATE = "state";
    private static final String URL_QUERY_LOGIN = "box_login";
    private String mBoxAccountEmail;
    private String state;

    public OAuthWebView(Context context, AttributeSet attributeset)
    {
        super(context, attributeset);
    }

    public void authenticate(android.net.Uri.Builder builder)
    {
        state = SdkUtils.generateStateToken();
        builder.appendQueryParameter("state", state);
        loadUrl(builder.build().toString());
    }

    public void authenticate(String s, String s1)
    {
        authenticate(buildUrl(s, s1));
    }

    protected android.net.Uri.Builder buildUrl(String s, String s1)
    {
        android.net.Uri.Builder builder = new android.net.Uri.Builder();
        builder.scheme("https");
        builder.authority("account.box.com");
        builder.appendPath("api");
        builder.appendPath("oauth2");
        builder.appendPath("authorize");
        builder.appendQueryParameter("response_type", "code");
        builder.appendQueryParameter("client_id", s);
        builder.appendQueryParameter("redirect_uri", s1);
        if (mBoxAccountEmail != null)
        {
            builder.appendQueryParameter("box_login", mBoxAccountEmail);
        }
        return builder;
    }

    public String getStateString()
    {
        return state;
    }

    public void setBoxAccountEmail(String s)
    {
        mBoxAccountEmail = s;
    }
}
