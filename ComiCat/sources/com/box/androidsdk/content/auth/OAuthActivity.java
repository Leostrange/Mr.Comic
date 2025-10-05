package com.box.androidsdk.content.auth;

import android.app.Activity;
import android.app.AlertDialog;
import android.app.Dialog;
import android.app.ProgressDialog;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.pm.ResolveInfo;
import android.content.res.Resources;
import android.os.Bundle;
import android.support.v4.app.FragmentTransaction;
import android.webkit.CookieManager;
import android.webkit.CookieSyncManager;
import android.webkit.WebView;
import android.widget.Toast;
import com.box.androidsdk.content.BoxConfig;
import com.box.androidsdk.content.BoxConstants;
import com.box.androidsdk.content.BoxException;
import com.box.androidsdk.content.auth.BoxAuthentication;
import com.box.androidsdk.content.auth.ChooseAuthenticationFragment;
import com.box.androidsdk.content.auth.OAuthWebView;
import com.box.androidsdk.content.models.BoxError;
import com.box.androidsdk.content.models.BoxSession;
import com.box.androidsdk.content.utils.SdkUtils;
import defpackage.hc;
import java.io.File;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.atomic.AtomicBoolean;
import org.apache.http.HttpHost;

public class OAuthActivity extends Activity implements ChooseAuthenticationFragment.OnAuthenticationChosen, OAuthWebView.OAuthWebViewClient.WebEventListener, OAuthWebView.OnPageFinishedListener {
    public static final String AUTH_CODE = "authcode";
    public static final String AUTH_INFO = "authinfo";
    public static final int AUTH_TYPE_APP = 1;
    public static final int AUTH_TYPE_WEBVIEW = 0;
    private static final String CHOOSE_AUTH_TAG = "choose_auth";
    public static final String EXTRA_DISABLE_ACCOUNT_CHOOSING = "disableAccountChoosing";
    public static final String EXTRA_SESSION = "session";
    public static final String EXTRA_USER_ID_RESTRICTION = "restrictToUserId";
    protected static final String IS_LOGGING_IN_VIA_BOX_APP = "loggingInViaBoxApp";
    protected static final String LOGIN_VIA_BOX_APP = "loginviaboxapp";
    public static final int REQUEST_BOX_APP_FOR_AUTH_CODE = 1;
    public static final String USER_ID = "userId";
    private static Dialog dialog;
    private AtomicBoolean apiCallStarted = new AtomicBoolean(false);
    private int authType = 0;
    /* access modifiers changed from: private */
    public boolean mAuthWasSuccessful = false;
    private String mClientId;
    private String mClientSecret;
    private BroadcastReceiver mConnectedReceiver = new BroadcastReceiver() {
        public void onReceive(Context context, Intent intent) {
            if (intent.getAction().equals("android.net.conn.CONNECTIVITY_CHANGE") && SdkUtils.isInternetAvailable(context) && OAuthActivity.this.isAuthErrored()) {
                OAuthActivity.this.startOAuth();
            }
        }
    };
    private String mDeviceId;
    private String mDeviceName;
    private boolean mIsLoggingInViaBoxApp;
    private String mRedirectUrl;
    /* access modifiers changed from: private */
    public BoxSession mSession;
    protected OAuthWebView.OAuthWebViewClient oauthClient;
    protected OAuthWebView oauthView;

    private void clearCachedAuthenticationData() {
        if (this.oauthView != null) {
            this.oauthView.clearCache(true);
            this.oauthView.clearFormData();
            this.oauthView.clearHistory();
        }
        CookieSyncManager.createInstance(this);
        CookieManager.getInstance().removeAllCookie();
        deleteDatabase("webview.db");
        deleteDatabase("webviewCache.db");
        File cacheDir = getCacheDir();
        SdkUtils.deleteFolderRecursive(cacheDir);
        cacheDir.mkdir();
    }

    public static Intent createOAuthActivityIntent(Context context, BoxSession boxSession, boolean z) {
        Intent createOAuthActivityIntent = createOAuthActivityIntent(context, boxSession.getClientId(), boxSession.getClientSecret(), boxSession.getRedirectUrl(), z);
        createOAuthActivityIntent.putExtra(EXTRA_SESSION, boxSession);
        if (!SdkUtils.isEmptyString(boxSession.getUserId())) {
            createOAuthActivityIntent.putExtra(EXTRA_USER_ID_RESTRICTION, boxSession.getUserId());
        }
        return createOAuthActivityIntent;
    }

    public static Intent createOAuthActivityIntent(Context context, String str, String str2, String str3, boolean z) {
        Intent intent = new Intent(context, OAuthActivity.class);
        intent.putExtra("client_id", str);
        intent.putExtra(BoxConstants.KEY_CLIENT_SECRET, str2);
        if (!SdkUtils.isEmptyString(str3)) {
            intent.putExtra(BoxConstants.KEY_REDIRECT_URL, str3);
        }
        intent.putExtra(LOGIN_VIA_BOX_APP, z);
        return intent;
    }

    private OAuthWebView.AuthFailure getAuthFailure(Exception exc) {
        String str;
        BoxError asBoxError;
        String string = getString(hc.e.boxsdk_Authentication_fail);
        if (exc != null) {
            Throwable cause = exc instanceof ExecutionException ? ((ExecutionException) exc).getCause() : exc;
            if (!(cause instanceof BoxException) || (asBoxError = ((BoxException) cause).getAsBoxError()) == null) {
                str = string + ":" + cause;
            } else {
                return new OAuthWebView.AuthFailure(3, ((((BoxException) cause).getResponseCode() == 403 || ((BoxException) cause).getResponseCode() == 401 || asBoxError.getError().equals("unauthorized_device")) ? string + ":" + getResources().getText(hc.e.boxsdk_Authentication_fail_forbidden) + "\n" : string + ":") + asBoxError.getErrorDescription());
            }
        } else {
            str = string;
        }
        return new OAuthWebView.AuthFailure(-1, str);
    }

    /* access modifiers changed from: protected */
    public OAuthWebView createOAuthView() {
        OAuthWebView oAuthWebView = (OAuthWebView) findViewById(getOAuthWebViewRId());
        oAuthWebView.setVisibility(0);
        oAuthWebView.getSettings().setJavaScriptEnabled(true);
        oAuthWebView.getSettings().setSaveFormData(false);
        oAuthWebView.getSettings().setSavePassword(false);
        return oAuthWebView;
    }

    /* access modifiers changed from: protected */
    public OAuthWebView.OAuthWebViewClient createOAuthWebViewClient() {
        return new OAuthWebView.OAuthWebViewClient(this, this.mRedirectUrl);
    }

    /* access modifiers changed from: protected */
    public synchronized void dismissSpinner() {
        if (dialog != null && dialog.isShowing()) {
            try {
                dialog.dismiss();
            } catch (IllegalArgumentException e) {
            }
            dialog = null;
        } else if (dialog != null) {
            dialog = null;
        }
    }

    /* access modifiers changed from: protected */
    public void dismissSpinnerAndFailAuthenticate(Exception exc) {
        final OAuthWebView.AuthFailure authFailure = getAuthFailure(exc);
        runOnUiThread(new Runnable() {
            public void run() {
                OAuthActivity.this.dismissSpinner();
                OAuthActivity.this.onAuthFailure(authFailure);
                OAuthActivity.this.setResult(0);
            }
        });
    }

    /* access modifiers changed from: protected */
    public void dismissSpinnerAndFinishAuthenticate(final BoxAuthentication.BoxAuthenticationInfo boxAuthenticationInfo) {
        runOnUiThread(new Runnable() {
            public void run() {
                OAuthActivity.this.dismissSpinner();
                Intent intent = new Intent();
                intent.putExtra(OAuthActivity.AUTH_INFO, boxAuthenticationInfo);
                OAuthActivity.this.setResult(-1, intent);
                boolean unused = OAuthActivity.this.mAuthWasSuccessful = true;
                OAuthActivity.this.finish();
            }
        });
    }

    public void finish() {
        clearCachedAuthenticationData();
        if (!this.mAuthWasSuccessful) {
            BoxAuthentication.getInstance().onAuthenticationFailure((BoxAuthentication.BoxAuthenticationInfo) null, (Exception) null);
        }
        super.finish();
    }

    /* access modifiers changed from: protected */
    public Intent getBoxAuthApp() {
        Intent intent = new Intent(BoxConstants.REQUEST_BOX_APP_FOR_AUTH_INTENT_ACTION);
        List<ResolveInfo> queryIntentActivities = getPackageManager().queryIntentActivities(intent, 65600);
        if (queryIntentActivities == null || queryIntentActivities.size() <= 0) {
            return null;
        }
        String string = getResources().getString(hc.e.boxsdk_box_app_signature);
        for (ResolveInfo next : queryIntentActivities) {
            try {
                if (string.equals(getPackageManager().getPackageInfo(next.activityInfo.packageName, 64).signatures[0].toCharsString())) {
                    intent.setPackage(next.activityInfo.packageName);
                    Map<String, BoxAuthentication.BoxAuthenticationInfo> storedAuthInfo = BoxAuthentication.getInstance().getStoredAuthInfo(this);
                    if (storedAuthInfo != null && storedAuthInfo.size() > 0) {
                        ArrayList arrayList = new ArrayList(storedAuthInfo.size());
                        for (Map.Entry next2 : storedAuthInfo.entrySet()) {
                            if (((BoxAuthentication.BoxAuthenticationInfo) next2.getValue()).getUser() != null) {
                                arrayList.add(((BoxAuthentication.BoxAuthenticationInfo) next2.getValue()).getUser().toJson());
                            }
                        }
                        if (arrayList.size() > 0) {
                            intent.putStringArrayListExtra(BoxConstants.KEY_BOX_USERS, arrayList);
                        }
                    }
                    return intent;
                }
            } catch (Exception e) {
            }
        }
        return null;
    }

    /* access modifiers changed from: protected */
    public int getContentView() {
        return hc.d.boxsdk_activity_oauth;
    }

    /* access modifiers changed from: protected */
    public int getOAuthWebViewRId() {
        return hc.c.oauthview;
    }

    /* access modifiers changed from: package-private */
    public boolean isAuthErrored() {
        if (this.mIsLoggingInViaBoxApp) {
            return false;
        }
        return this.oauthView == null || this.oauthView.getUrl() == null || !this.oauthView.getUrl().startsWith(HttpHost.DEFAULT_SCHEME_NAME);
    }

    /* access modifiers changed from: protected */
    public void onActivityResult(int i, int i2, Intent intent) {
        if (-1 == i2 && 1 == i) {
            String stringExtra = intent.getStringExtra(USER_ID);
            String stringExtra2 = intent.getStringExtra(AUTH_CODE);
            if (SdkUtils.isBlank(stringExtra2) && !SdkUtils.isBlank(stringExtra)) {
                BoxAuthentication.BoxAuthenticationInfo boxAuthenticationInfo = BoxAuthentication.getInstance().getStoredAuthInfo(this).get(stringExtra);
                if (boxAuthenticationInfo != null) {
                    onAuthenticationChosen(boxAuthenticationInfo);
                } else {
                    onAuthFailure(new OAuthWebView.AuthFailure(0, ""));
                }
            } else if (!SdkUtils.isBlank(stringExtra2)) {
                startMakingOAuthAPICall(stringExtra2, (String) null);
            }
        } else if (i2 == 0) {
            finish();
        }
    }

    public boolean onAuthFailure(OAuthWebView.AuthFailure authFailure) {
        if (authFailure.type != 2) {
            if (!SdkUtils.isEmptyString(authFailure.message)) {
                switch (authFailure.type) {
                    case 1:
                        Resources resources = getResources();
                        Toast.makeText(this, String.format("%s\n%s: %s", new Object[]{resources.getString(hc.e.boxsdk_Authentication_fail), resources.getString(hc.e.boxsdk_details), resources.getString(hc.e.boxsdk_Authentication_fail_url_mismatch)}), 1).show();
                        break;
                    case 3:
                        new AlertDialog.Builder(this).setTitle(hc.e.boxsdk_Authentication_fail).setMessage(hc.e.boxsdk_Authentication_fail_forbidden).setPositiveButton(hc.e.boxsdk_button_ok, new DialogInterface.OnClickListener() {
                            public void onClick(DialogInterface dialogInterface, int i) {
                                dialogInterface.dismiss();
                                OAuthActivity.this.finish();
                            }
                        }).create().show();
                        return true;
                }
            }
            Toast.makeText(this, hc.e.boxsdk_Authentication_fail, 1).show();
        } else if (authFailure.mWebException.getErrorCode() == -6 || authFailure.mWebException.getErrorCode() == -2 || authFailure.mWebException.getErrorCode() == -8) {
            return false;
        } else {
            Resources resources2 = getResources();
            Toast.makeText(this, String.format("%s\n%s: %s", new Object[]{resources2.getString(hc.e.boxsdk_Authentication_fail), resources2.getString(hc.e.boxsdk_details), authFailure.mWebException.getErrorCode() + " " + authFailure.mWebException.getDescription()}), 1).show();
        }
        finish();
        return true;
    }

    public void onAuthenticationChosen(BoxAuthentication.BoxAuthenticationInfo boxAuthenticationInfo) {
        if (boxAuthenticationInfo != null) {
            BoxAuthentication.getInstance().onAuthenticated(boxAuthenticationInfo, this);
            dismissSpinnerAndFinishAuthenticate(boxAuthenticationInfo);
        }
    }

    public void onBackPressed() {
        if (getFragmentManager().findFragmentByTag(CHOOSE_AUTH_TAG) != null) {
            finish();
        } else {
            super.onBackPressed();
        }
    }

    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        Intent intent = getIntent();
        if (BoxConfig.IS_FLAG_SECURE) {
            getWindow().addFlags(FragmentTransaction.TRANSIT_EXIT_MASK);
        }
        setContentView(getContentView());
        registerReceiver(this.mConnectedReceiver, new IntentFilter("android.net.conn.CONNECTIVITY_CHANGE"));
        this.mClientId = intent.getStringExtra("client_id");
        this.mClientSecret = intent.getStringExtra(BoxConstants.KEY_CLIENT_SECRET);
        this.mDeviceId = intent.getStringExtra(BoxConstants.KEY_BOX_DEVICE_ID);
        this.mDeviceName = intent.getStringExtra(BoxConstants.KEY_BOX_DEVICE_NAME);
        this.mRedirectUrl = intent.getStringExtra(BoxConstants.KEY_REDIRECT_URL);
        this.authType = intent.getBooleanExtra(LOGIN_VIA_BOX_APP, false) ? 1 : 0;
        this.apiCallStarted.getAndSet(false);
        this.mSession = (BoxSession) intent.getSerializableExtra(EXTRA_SESSION);
        if (bundle != null) {
            this.mIsLoggingInViaBoxApp = bundle.getBoolean(IS_LOGGING_IN_VIA_BOX_APP);
        }
        if (this.mSession != null) {
            this.mSession.setApplicationContext(getApplicationContext());
            return;
        }
        this.mSession = new BoxSession(this, (String) null, this.mClientId, this.mClientSecret, this.mRedirectUrl);
        this.mSession.setDeviceId(this.mDeviceId);
        this.mSession.setDeviceName(this.mDeviceName);
    }

    public void onDestroy() {
        unregisterReceiver(this.mConnectedReceiver);
        this.apiCallStarted.set(false);
        dismissSpinner();
        super.onDestroy();
    }

    public void onDifferentAuthenticationChosen() {
        if (getFragmentManager().findFragmentByTag(CHOOSE_AUTH_TAG) != null) {
            getFragmentManager().popBackStack();
        }
    }

    public void onPageFinished(WebView webView, String str) {
        dismissSpinner();
    }

    public void onReceivedAuthCode(String str) {
        onReceivedAuthCode(str, (String) null);
    }

    public void onReceivedAuthCode(String str, String str2) {
        if (this.authType == 0) {
            this.oauthView.setVisibility(4);
        }
        startMakingOAuthAPICall(str, str2);
    }

    /* access modifiers changed from: protected */
    public void onResume() {
        super.onResume();
        if (isAuthErrored()) {
            startOAuth();
        }
    }

    /* access modifiers changed from: protected */
    public void onSaveInstanceState(Bundle bundle) {
        bundle.putBoolean(IS_LOGGING_IN_VIA_BOX_APP, this.mIsLoggingInViaBoxApp);
        super.onSaveInstanceState(bundle);
    }

    /* access modifiers changed from: protected */
    public Dialog showDialogWhileWaitingForAuthenticationAPICall() {
        return ProgressDialog.show(this, getText(hc.e.boxsdk_Authenticating), getText(hc.e.boxsdk_Please_wait));
    }

    /* access modifiers changed from: protected */
    public synchronized void showSpinner() {
        try {
            if (dialog == null) {
                dialog = showDialogWhileWaitingForAuthenticationAPICall();
            } else if (dialog.isShowing()) {
            }
        } catch (Exception e) {
            dialog = null;
        }
        return;
    }

    /* access modifiers changed from: protected */
    public void startMakingOAuthAPICall(final String str, String str2) {
        if (!this.apiCallStarted.getAndSet(true)) {
            showSpinner();
            this.mSession.getAuthInfo().setBaseDomain(str2);
            new Thread() {
                public void run() {
                    try {
                        BoxAuthentication.BoxAuthenticationInfo boxAuthenticationInfo = BoxAuthentication.getInstance().create(OAuthActivity.this.mSession, str).get();
                        String stringExtra = OAuthActivity.this.getIntent().getStringExtra(OAuthActivity.EXTRA_USER_ID_RESTRICTION);
                        if (SdkUtils.isEmptyString(stringExtra) || boxAuthenticationInfo.getUser().getId().equals(stringExtra)) {
                            OAuthActivity.this.dismissSpinnerAndFinishAuthenticate(boxAuthenticationInfo);
                            return;
                        }
                        throw new RuntimeException("Unexpected user logged in. Expected " + stringExtra + " received " + boxAuthenticationInfo.getUser().getId());
                    } catch (Exception e) {
                        e.printStackTrace();
                        OAuthActivity.this.dismissSpinnerAndFailAuthenticate(e);
                    }
                }
            }.start();
        }
    }

    /* access modifiers changed from: protected */
    public void startOAuth() {
        if (this.authType != 1 && !getIntent().getBooleanExtra(EXTRA_DISABLE_ACCOUNT_CHOOSING, false) && getFragmentManager().findFragmentByTag(CHOOSE_AUTH_TAG) == null) {
            Map<String, BoxAuthentication.BoxAuthenticationInfo> storedAuthInfo = BoxAuthentication.getInstance().getStoredAuthInfo(this);
            if (SdkUtils.isEmptyString(getIntent().getStringExtra(EXTRA_USER_ID_RESTRICTION)) && storedAuthInfo != null && storedAuthInfo.size() > 0) {
                android.app.FragmentTransaction beginTransaction = getFragmentManager().beginTransaction();
                beginTransaction.replace(hc.c.oauth_container, ChooseAuthenticationFragment.createAuthenticationActivity(this), CHOOSE_AUTH_TAG);
                beginTransaction.addToBackStack(CHOOSE_AUTH_TAG);
                beginTransaction.commit();
            }
        }
        switch (this.authType) {
            case 0:
                break;
            case 1:
                Intent boxAuthApp = getBoxAuthApp();
                if (boxAuthApp != null) {
                    boxAuthApp.putExtra("client_id", this.mClientId);
                    boxAuthApp.putExtra(BoxConstants.KEY_REDIRECT_URL, this.mRedirectUrl);
                    if (!SdkUtils.isEmptyString(getIntent().getStringExtra(EXTRA_USER_ID_RESTRICTION))) {
                        boxAuthApp.putExtra(EXTRA_USER_ID_RESTRICTION, getIntent().getStringExtra(EXTRA_USER_ID_RESTRICTION));
                    }
                    this.mIsLoggingInViaBoxApp = true;
                    startActivityForResult(boxAuthApp, 1);
                    return;
                }
                break;
            default:
                return;
        }
        showSpinner();
        this.oauthView = createOAuthView();
        this.oauthClient = createOAuthWebViewClient();
        this.oauthClient.setOnPageFinishedListener(this);
        this.oauthView.setWebViewClient(this.oauthClient);
        if (this.mSession.getBoxAccountEmail() != null) {
            this.oauthView.setBoxAccountEmail(this.mSession.getBoxAccountEmail());
        }
        this.oauthView.authenticate(this.mClientId, this.mRedirectUrl);
    }
}
