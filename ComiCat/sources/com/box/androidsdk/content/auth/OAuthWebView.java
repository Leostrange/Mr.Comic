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
import android.view.ViewGroup;
import android.webkit.HttpAuthHandler;
import android.webkit.SslErrorHandler;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import android.widget.EditText;
import android.widget.TextView;
import com.box.androidsdk.content.BoxConstants;
import com.box.androidsdk.content.auth.BoxAuthentication;
import com.box.androidsdk.content.models.BoxError;
import com.box.androidsdk.content.utils.SdkUtils;
import defpackage.hc;
import java.lang.ref.WeakReference;
import java.util.Date;
import java.util.Formatter;
import org.apache.http.protocol.HTTP;

public class OAuthWebView extends WebView {
    private static final String STATE = "state";
    private static final String URL_QUERY_LOGIN = "box_login";
    private String mBoxAccountEmail;
    private String state;

    public static class AuthFailure {
        public static final int TYPE_AUTHENTICATION_UNAUTHORIZED = 3;
        public static final int TYPE_GENERIC = -1;
        public static final int TYPE_URL_MISMATCH = 1;
        public static final int TYPE_USER_INTERACTION = 0;
        public static final int TYPE_WEB_ERROR = 2;
        public WebViewException mWebException;
        public String message;
        public int type;

        public AuthFailure(int i, String str) {
            this.type = i;
            this.message = str;
        }

        public AuthFailure(WebViewException webViewException) {
            this(2, (String) null);
            this.mWebException = webViewException;
        }
    }

    static class InvalidUrlException extends Exception {
        private static final long serialVersionUID = 1;

        private InvalidUrlException() {
        }
    }

    public static class OAuthWebViewClient extends WebViewClient {
        private static final int WEB_VIEW_TIMEOUT = 30000;
        private Handler mHandler = new Handler(Looper.getMainLooper());
        private OnPageFinishedListener mOnPageFinishedListener;
        private String mRedirectUrl;
        private WebViewTimeOutRunnable mTimeOutRunnable;
        /* access modifiers changed from: private */
        public WebEventListener mWebEventListener;
        /* access modifiers changed from: private */
        public boolean sslErrorDialogContinueButtonClicked;

        public interface WebEventListener {
            boolean onAuthFailure(AuthFailure authFailure);

            void onReceivedAuthCode(String str);

            void onReceivedAuthCode(String str, String str2);
        }

        class WebViewTimeOutRunnable implements Runnable {
            final String mFailingUrl;
            final WeakReference<WebView> mViewHolder;

            public WebViewTimeOutRunnable(WebView webView, String str) {
                this.mFailingUrl = str;
                this.mViewHolder = new WeakReference<>(webView);
            }

            public void run() {
                OAuthWebViewClient.this.onReceivedError((WebView) this.mViewHolder.get(), -8, "loading timed out", this.mFailingUrl);
            }
        }

        public OAuthWebViewClient(WebEventListener webEventListener, String str) {
            this.mWebEventListener = webEventListener;
            this.mRedirectUrl = str;
        }

        private String formatCertificateDate(Context context, Date date) {
            return date == null ? "" : DateFormat.getDateFormat(context).format(date);
        }

        private View getCertErrorView(Context context, SslCertificate sslCertificate) {
            View inflate = LayoutInflater.from(context).inflate(hc.d.ssl_certificate, (ViewGroup) null);
            SslCertificate.DName issuedTo = sslCertificate.getIssuedTo();
            if (issuedTo != null) {
                ((TextView) inflate.findViewById(hc.c.to_common)).setText(issuedTo.getCName());
                ((TextView) inflate.findViewById(hc.c.to_org)).setText(issuedTo.getOName());
                ((TextView) inflate.findViewById(hc.c.to_org_unit)).setText(issuedTo.getUName());
            }
            SslCertificate.DName issuedBy = sslCertificate.getIssuedBy();
            if (issuedBy != null) {
                ((TextView) inflate.findViewById(hc.c.by_common)).setText(issuedBy.getCName());
                ((TextView) inflate.findViewById(hc.c.by_org)).setText(issuedBy.getOName());
                ((TextView) inflate.findViewById(hc.c.by_org_unit)).setText(issuedBy.getUName());
            }
            ((TextView) inflate.findViewById(hc.c.issued_on)).setText(formatCertificateDate(context, sslCertificate.getValidNotBeforeDate()));
            ((TextView) inflate.findViewById(hc.c.expires_on)).setText(formatCertificateDate(context, sslCertificate.getValidNotAfterDate()));
            return inflate;
        }

        private Uri getURIfromURL(String str) {
            Uri parse = Uri.parse(str);
            if (SdkUtils.isEmptyString(this.mRedirectUrl)) {
                return parse;
            }
            Uri parse2 = Uri.parse(this.mRedirectUrl);
            if (parse2.getScheme() == null || !parse2.getScheme().equals(parse.getScheme()) || !parse2.getAuthority().equals(parse.getAuthority())) {
                return null;
            }
            return parse;
        }

        private String getValueFromURI(Uri uri, String str) {
            if (uri == null) {
                return null;
            }
            try {
                return uri.getQueryParameter(str);
            } catch (Exception e) {
                return null;
            }
        }

        public void destroy() {
            this.mWebEventListener = null;
        }

        public void onPageFinished(WebView webView, String str) {
            if (this.mTimeOutRunnable != null) {
                this.mHandler.removeCallbacks(this.mTimeOutRunnable);
            }
            super.onPageFinished(webView, str);
            if (this.mOnPageFinishedListener != null) {
                this.mOnPageFinishedListener.onPageFinished(webView, str);
            }
        }

        public void onPageStarted(WebView webView, String str, Bitmap bitmap) {
            try {
                Uri uRIfromURL = getURIfromURL(str);
                String valueFromURI = getValueFromURI(uRIfromURL, BoxError.FIELD_CODE);
                if (!SdkUtils.isEmptyString(valueFromURI) && (webView instanceof OAuthWebView) && !SdkUtils.isEmptyString(((OAuthWebView) webView).getStateString())) {
                    if (!((OAuthWebView) webView).getStateString().equals(uRIfromURL.getQueryParameter(OAuthWebView.STATE))) {
                        throw new InvalidUrlException();
                    }
                }
                if (!SdkUtils.isEmptyString(getValueFromURI(uRIfromURL, "error"))) {
                    this.mWebEventListener.onAuthFailure(new AuthFailure(0, (String) null));
                } else if (!SdkUtils.isEmptyString(valueFromURI)) {
                    String valueFromURI2 = getValueFromURI(uRIfromURL, BoxAuthentication.BoxAuthenticationInfo.FIELD_BASE_DOMAIN);
                    if (valueFromURI2 != null) {
                        this.mWebEventListener.onReceivedAuthCode(valueFromURI, valueFromURI2);
                    } else {
                        this.mWebEventListener.onReceivedAuthCode(valueFromURI);
                    }
                }
            } catch (InvalidUrlException e) {
                this.mWebEventListener.onAuthFailure(new AuthFailure(1, (String) null));
            }
            if (this.mTimeOutRunnable != null) {
                this.mHandler.removeCallbacks(this.mTimeOutRunnable);
            }
            this.mTimeOutRunnable = new WebViewTimeOutRunnable(webView, str);
            this.mHandler.postDelayed(this.mTimeOutRunnable, 30000);
        }

        public void onReceivedError(WebView webView, int i, String str, String str2) {
            if (this.mTimeOutRunnable != null) {
                this.mHandler.removeCallbacks(this.mTimeOutRunnable);
            }
            if (!this.mWebEventListener.onAuthFailure(new AuthFailure(new WebViewException(i, str, str2)))) {
                switch (i) {
                    case -6:
                    case -2:
                        if (!SdkUtils.isInternetAvailable(webView.getContext())) {
                            String assetFile = SdkUtils.getAssetFile(webView.getContext(), "offline.html");
                            Formatter formatter = new Formatter();
                            formatter.format(assetFile, new Object[]{webView.getContext().getString(hc.e.boxsdk_no_offline_access), webView.getContext().getString(hc.e.boxsdk_no_offline_access_detail), webView.getContext().getString(hc.e.boxsdk_no_offline_access_todo)});
                            webView.loadDataWithBaseURL((String) null, formatter.toString(), "text/html", HTTP.UTF_8, (String) null);
                            formatter.close();
                            break;
                        }
                    case -8:
                        String assetFile2 = SdkUtils.getAssetFile(webView.getContext(), "offline.html");
                        Formatter formatter2 = new Formatter();
                        formatter2.format(assetFile2, new Object[]{webView.getContext().getString(hc.e.boxsdk_unable_to_connect), webView.getContext().getString(hc.e.boxsdk_unable_to_connect_detail), webView.getContext().getString(hc.e.boxsdk_unable_to_connect_todo)});
                        webView.loadDataWithBaseURL((String) null, formatter2.toString(), "text/html", HTTP.UTF_8, (String) null);
                        formatter2.close();
                        break;
                }
                super.onReceivedError(webView, i, str, str2);
            }
        }

        public void onReceivedHttpAuthRequest(WebView webView, final HttpAuthHandler httpAuthHandler, String str, String str2) {
            final View inflate = LayoutInflater.from(webView.getContext()).inflate(hc.d.boxsdk_alert_dialog_text_entry, (ViewGroup) null);
            new AlertDialog.Builder(webView.getContext()).setTitle(hc.e.boxsdk_alert_dialog_text_entry).setView(inflate).setPositiveButton(hc.e.boxsdk_alert_dialog_ok, new DialogInterface.OnClickListener() {
                public void onClick(DialogInterface dialogInterface, int i) {
                    httpAuthHandler.proceed(((EditText) inflate.findViewById(hc.c.username_edit)).getText().toString(), ((EditText) inflate.findViewById(hc.c.password_edit)).getText().toString());
                }
            }).setNegativeButton(hc.e.boxsdk_alert_dialog_cancel, new DialogInterface.OnClickListener() {
                public void onClick(DialogInterface dialogInterface, int i) {
                    httpAuthHandler.cancel();
                    OAuthWebViewClient.this.mWebEventListener.onAuthFailure(new AuthFailure(0, (String) null));
                }
            }).create().show();
        }

        public void onReceivedSslError(final WebView webView, final SslErrorHandler sslErrorHandler, final SslError sslError) {
            String string;
            if (this.mTimeOutRunnable != null) {
                this.mHandler.removeCallbacks(this.mTimeOutRunnable);
            }
            Resources resources = webView.getContext().getResources();
            StringBuilder sb = new StringBuilder(resources.getString(hc.e.boxsdk_There_are_problems_with_the_security_certificate_for_this_site));
            sb.append(" ");
            switch (sslError.getPrimaryError()) {
                case 0:
                    string = resources.getString(hc.e.boxsdk_ssl_error_warning_NOT_YET_VALID);
                    break;
                case 1:
                    string = resources.getString(hc.e.boxsdk_ssl_error_warning_EXPIRED);
                    break;
                case 2:
                    string = resources.getString(hc.e.boxsdk_ssl_error_warning_ID_MISMATCH);
                    break;
                case 3:
                    string = resources.getString(hc.e.boxsdk_ssl_error_warning_UNTRUSTED);
                    break;
                case 4:
                    string = webView.getResources().getString(hc.e.boxsdk_ssl_error_warning_DATE_INVALID);
                    break;
                case 5:
                    string = resources.getString(hc.e.boxsdk_ssl_error_warning_INVALID);
                    break;
                default:
                    string = resources.getString(hc.e.boxsdk_ssl_error_warning_INVALID);
                    break;
            }
            sb.append(string);
            sb.append(" ");
            sb.append(resources.getString(hc.e.boxsdk_ssl_should_not_proceed));
            this.sslErrorDialogContinueButtonClicked = false;
            AlertDialog.Builder negativeButton = new AlertDialog.Builder(webView.getContext()).setTitle(hc.e.boxsdk_Security_Warning).setMessage(sb.toString()).setIcon(hc.b.boxsdk_dialog_warning).setNegativeButton(hc.e.boxsdk_Go_back, new DialogInterface.OnClickListener() {
                public void onClick(DialogInterface dialogInterface, int i) {
                    boolean unused = OAuthWebViewClient.this.sslErrorDialogContinueButtonClicked = true;
                    sslErrorHandler.cancel();
                    OAuthWebViewClient.this.mWebEventListener.onAuthFailure(new AuthFailure(0, (String) null));
                }
            });
            negativeButton.setNeutralButton(hc.e.boxsdk_ssl_error_details, new DialogInterface.OnClickListener() {
                public void onClick(DialogInterface dialogInterface, int i) {
                    OAuthWebViewClient.this.showCertDialog(webView.getContext(), sslError);
                }
            });
            AlertDialog create = negativeButton.create();
            create.setOnDismissListener(new DialogInterface.OnDismissListener() {
                public void onDismiss(DialogInterface dialogInterface) {
                    if (!OAuthWebViewClient.this.sslErrorDialogContinueButtonClicked) {
                        OAuthWebViewClient.this.mWebEventListener.onAuthFailure(new AuthFailure(0, (String) null));
                    }
                }
            });
            create.show();
        }

        public void setOnPageFinishedListener(OnPageFinishedListener onPageFinishedListener) {
            this.mOnPageFinishedListener = onPageFinishedListener;
        }

        /* access modifiers changed from: protected */
        public void showCertDialog(Context context, SslError sslError) {
            new AlertDialog.Builder(context).setTitle(hc.e.boxsdk_Security_Warning).setView(getCertErrorView(context, sslError.getCertificate())).create().show();
        }
    }

    public interface OnPageFinishedListener {
        void onPageFinished(WebView webView, String str);
    }

    public static class WebViewException extends Exception {
        private final String mDescription;
        private final int mErrorCode;
        private final String mFailingUrl;

        public WebViewException(int i, String str, String str2) {
            this.mErrorCode = i;
            this.mDescription = str;
            this.mFailingUrl = str2;
        }

        public String getDescription() {
            return this.mDescription;
        }

        public int getErrorCode() {
            return this.mErrorCode;
        }

        public String getFailingUrl() {
            return this.mFailingUrl;
        }
    }

    public OAuthWebView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public void authenticate(Uri.Builder builder) {
        this.state = SdkUtils.generateStateToken();
        builder.appendQueryParameter(STATE, this.state);
        loadUrl(builder.build().toString());
    }

    public void authenticate(String str, String str2) {
        authenticate(buildUrl(str, str2));
    }

    /* access modifiers changed from: protected */
    public Uri.Builder buildUrl(String str, String str2) {
        Uri.Builder builder = new Uri.Builder();
        builder.scheme("https");
        builder.authority("account.box.com");
        builder.appendPath("api");
        builder.appendPath("oauth2");
        builder.appendPath("authorize");
        builder.appendQueryParameter("response_type", BoxError.FIELD_CODE);
        builder.appendQueryParameter("client_id", str);
        builder.appendQueryParameter(BoxConstants.KEY_REDIRECT_URL, str2);
        if (this.mBoxAccountEmail != null) {
            builder.appendQueryParameter(URL_QUERY_LOGIN, this.mBoxAccountEmail);
        }
        return builder;
    }

    public String getStateString() {
        return this.state;
    }

    public void setBoxAccountEmail(String str) {
        this.mBoxAccountEmail = str;
    }
}
