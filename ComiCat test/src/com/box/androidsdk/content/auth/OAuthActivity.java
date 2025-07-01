// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.box.androidsdk.content.auth;

import android.app.Activity;
import android.app.AlertDialog;
import android.app.Dialog;
import android.app.FragmentManager;
import android.app.FragmentTransaction;
import android.app.ProgressDialog;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.pm.ActivityInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.content.pm.Signature;
import android.content.res.Resources;
import android.os.Bundle;
import android.view.Window;
import android.webkit.CookieManager;
import android.webkit.CookieSyncManager;
import android.webkit.WebSettings;
import android.webkit.WebView;
import android.widget.Toast;
import com.box.androidsdk.content.BoxConfig;
import com.box.androidsdk.content.BoxException;
import com.box.androidsdk.content.models.BoxError;
import com.box.androidsdk.content.models.BoxSession;
import com.box.androidsdk.content.models.BoxUser;
import com.box.androidsdk.content.utils.SdkUtils;
import java.io.File;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.FutureTask;
import java.util.concurrent.atomic.AtomicBoolean;

// Referenced classes of package com.box.androidsdk.content.auth:
//            OAuthWebView, BoxAuthentication, ChooseAuthenticationFragment

public class OAuthActivity extends Activity
    implements ChooseAuthenticationFragment.OnAuthenticationChosen, OAuthWebView.OAuthWebViewClient.WebEventListener, OAuthWebView.OnPageFinishedListener
{

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
    private AtomicBoolean apiCallStarted;
    private int authType;
    private boolean mAuthWasSuccessful;
    private String mClientId;
    private String mClientSecret;
    private BroadcastReceiver mConnectedReceiver;
    private String mDeviceId;
    private String mDeviceName;
    private boolean mIsLoggingInViaBoxApp;
    private String mRedirectUrl;
    private BoxSession mSession;
    protected OAuthWebView.OAuthWebViewClient oauthClient;
    protected OAuthWebView oauthView;

    public OAuthActivity()
    {
        mAuthWasSuccessful = false;
        authType = 0;
        apiCallStarted = new AtomicBoolean(false);
        mConnectedReceiver = new BroadcastReceiver() {

            final OAuthActivity this$0;

            public void onReceive(Context context, Intent intent)
            {
                if (intent.getAction().equals("android.net.conn.CONNECTIVITY_CHANGE") && SdkUtils.isInternetAvailable(context) && isAuthErrored())
                {
                    startOAuth();
                }
            }

            
            {
                this$0 = OAuthActivity.this;
                super();
            }
        };
    }

    private void clearCachedAuthenticationData()
    {
        if (oauthView != null)
        {
            oauthView.clearCache(true);
            oauthView.clearFormData();
            oauthView.clearHistory();
        }
        CookieSyncManager.createInstance(this);
        CookieManager.getInstance().removeAllCookie();
        deleteDatabase("webview.db");
        deleteDatabase("webviewCache.db");
        File file = getCacheDir();
        SdkUtils.deleteFolderRecursive(file);
        file.mkdir();
    }

    public static Intent createOAuthActivityIntent(Context context, BoxSession boxsession, boolean flag)
    {
        context = createOAuthActivityIntent(context, boxsession.getClientId(), boxsession.getClientSecret(), boxsession.getRedirectUrl(), flag);
        context.putExtra("session", boxsession);
        if (!SdkUtils.isEmptyString(boxsession.getUserId()))
        {
            context.putExtra("restrictToUserId", boxsession.getUserId());
        }
        return context;
    }

    public static Intent createOAuthActivityIntent(Context context, String s, String s1, String s2, boolean flag)
    {
        context = new Intent(context, com/box/androidsdk/content/auth/OAuthActivity);
        context.putExtra("client_id", s);
        context.putExtra("client_secret", s1);
        if (!SdkUtils.isEmptyString(s2))
        {
            context.putExtra("redirect_uri", s2);
        }
        context.putExtra("loginviaboxapp", flag);
        return context;
    }

    private OAuthWebView.AuthFailure getAuthFailure(Exception exception)
    {
        String s = getString(hc.e.boxsdk_Authentication_fail);
        if (exception != null)
        {
            if (exception instanceof ExecutionException)
            {
                exception = ((ExecutionException)exception).getCause();
            }
            if (exception instanceof BoxException)
            {
                BoxError boxerror = ((BoxException)exception).getAsBoxError();
                if (boxerror != null)
                {
                    if (((BoxException)exception).getResponseCode() == 403 || ((BoxException)exception).getResponseCode() == 401 || boxerror.getError().equals("unauthorized_device"))
                    {
                        exception = (new StringBuilder()).append(s).append(":").append(getResources().getText(hc.e.boxsdk_Authentication_fail_forbidden)).append("\n").toString();
                    } else
                    {
                        exception = (new StringBuilder()).append(s).append(":").toString();
                    }
                    return new OAuthWebView.AuthFailure(3, (new StringBuilder()).append(exception).append(boxerror.getErrorDescription()).toString());
                }
            }
            exception = (new StringBuilder()).append(s).append(":").append(exception).toString();
        } else
        {
            exception = s;
        }
        return new OAuthWebView.AuthFailure(-1, exception);
    }

    protected OAuthWebView createOAuthView()
    {
        OAuthWebView oauthwebview = (OAuthWebView)findViewById(getOAuthWebViewRId());
        oauthwebview.setVisibility(0);
        oauthwebview.getSettings().setJavaScriptEnabled(true);
        oauthwebview.getSettings().setSaveFormData(false);
        oauthwebview.getSettings().setSavePassword(false);
        return oauthwebview;
    }

    protected OAuthWebView.OAuthWebViewClient createOAuthWebViewClient()
    {
        return new OAuthWebView.OAuthWebViewClient(this, mRedirectUrl);
    }

    protected void dismissSpinner()
    {
        this;
        JVM INSTR monitorenter ;
        if (dialog == null) goto _L2; else goto _L1
_L1:
        boolean flag = dialog.isShowing();
        if (!flag) goto _L2; else goto _L3
_L3:
        Exception exception;
        try
        {
            dialog.dismiss();
        }
        catch (IllegalArgumentException illegalargumentexception) { }
        dialog = null;
_L5:
        this;
        JVM INSTR monitorexit ;
        return;
_L2:
        if (dialog != null)
        {
            dialog = null;
        }
        if (true) goto _L5; else goto _L4
_L4:
        exception;
        throw exception;
    }

    protected void dismissSpinnerAndFailAuthenticate(Exception exception)
    {
        runOnUiThread(new Runnable() {

            final OAuthActivity this$0;
            final OAuthWebView.AuthFailure val$authFailure;

            public void run()
            {
                dismissSpinner();
                onAuthFailure(authFailure);
                setResult(0);
            }

            
            {
                this$0 = OAuthActivity.this;
                authFailure = authfailure;
                super();
            }
        });
    }

    protected void dismissSpinnerAndFinishAuthenticate(final BoxAuthentication.BoxAuthenticationInfo auth)
    {
        runOnUiThread(new Runnable() {

            final OAuthActivity this$0;
            final BoxAuthentication.BoxAuthenticationInfo val$auth;

            public void run()
            {
                dismissSpinner();
                Intent intent = new Intent();
                intent.putExtra("authinfo", auth);
                setResult(-1, intent);
                mAuthWasSuccessful = true;
                finish();
            }

            
            {
                this$0 = OAuthActivity.this;
                auth = boxauthenticationinfo;
                super();
            }
        });
    }

    public void finish()
    {
        clearCachedAuthenticationData();
        if (!mAuthWasSuccessful)
        {
            BoxAuthentication.getInstance().onAuthenticationFailure(null, null);
        }
        super.finish();
    }

    protected Intent getBoxAuthApp()
    {
        Intent intent;
        String s;
        Object obj;
        intent = new Intent("com.box.android.action.AUTHENTICATE_VIA_BOX_APP");
        obj = getPackageManager().queryIntentActivities(intent, 0x10040);
        if (obj == null || ((List) (obj)).size() <= 0)
        {
            return null;
        }
        s = getResources().getString(hc.e.boxsdk_box_app_signature);
        obj = ((List) (obj)).iterator();
_L2:
        Object obj1;
        if (!((Iterator) (obj)).hasNext())
        {
            break MISSING_BLOCK_LABEL_258;
        }
        obj1 = (ResolveInfo)((Iterator) (obj)).next();
        Object obj2;
        if (!s.equals(getPackageManager().getPackageInfo(((ResolveInfo) (obj1)).activityInfo.packageName, 64).signatures[0].toCharsString()))
        {
            continue; /* Loop/switch isn't completed */
        }
        intent.setPackage(((ResolveInfo) (obj1)).activityInfo.packageName);
        obj2 = BoxAuthentication.getInstance().getStoredAuthInfo(this);
        if (obj2 == null)
        {
            break MISSING_BLOCK_LABEL_256;
        }
        if (((Map) (obj2)).size() <= 0)
        {
            break MISSING_BLOCK_LABEL_256;
        }
        obj1 = new ArrayList(((Map) (obj2)).size());
        obj2 = ((Map) (obj2)).entrySet().iterator();
        do
        {
            if (!((Iterator) (obj2)).hasNext())
            {
                break;
            }
            java.util.Map.Entry entry = (java.util.Map.Entry)((Iterator) (obj2)).next();
            if (((BoxAuthentication.BoxAuthenticationInfo)entry.getValue()).getUser() != null)
            {
                ((ArrayList) (obj1)).add(((BoxAuthentication.BoxAuthenticationInfo)entry.getValue()).getUser().toJson());
            }
        } while (true);
        if (((ArrayList) (obj1)).size() > 0)
        {
            intent.putStringArrayListExtra("boxusers", ((ArrayList) (obj1)));
        }
        return intent;
        return null;
        Exception exception;
        exception;
        if (true) goto _L2; else goto _L1
_L1:
    }

    protected int getContentView()
    {
        return hc.d.boxsdk_activity_oauth;
    }

    protected int getOAuthWebViewRId()
    {
        return hc.c.oauthview;
    }

    boolean isAuthErrored()
    {
        while (mIsLoggingInViaBoxApp || oauthView != null && oauthView.getUrl() != null && oauthView.getUrl().startsWith("http")) 
        {
            return false;
        }
        return true;
    }

    protected void onActivityResult(int i, int j, Intent intent)
    {
        if (-1 != j || 1 != i) goto _L2; else goto _L1
_L1:
        String s;
        s = intent.getStringExtra("userId");
        intent = intent.getStringExtra("authcode");
        if (!SdkUtils.isBlank(intent) || SdkUtils.isBlank(s)) goto _L4; else goto _L3
_L3:
        intent = (BoxAuthentication.BoxAuthenticationInfo)BoxAuthentication.getInstance().getStoredAuthInfo(this).get(s);
        if (intent == null) goto _L6; else goto _L5
_L5:
        onAuthenticationChosen(intent);
_L8:
        return;
_L6:
        onAuthFailure(new OAuthWebView.AuthFailure(0, ""));
        return;
_L4:
        if (!SdkUtils.isBlank(intent))
        {
            startMakingOAuthAPICall(intent, null);
            return;
        }
        continue; /* Loop/switch isn't completed */
_L2:
        if (j == 0)
        {
            finish();
            return;
        }
        if (true) goto _L8; else goto _L7
_L7:
    }

    public boolean onAuthFailure(OAuthWebView.AuthFailure authfailure)
    {
        if (authfailure.type != 2) goto _L2; else goto _L1
_L1:
        if (authfailure.mWebException.getErrorCode() == -6 || authfailure.mWebException.getErrorCode() == -2 || authfailure.mWebException.getErrorCode() == -8)
        {
            return false;
        }
        Resources resources = getResources();
        Toast.makeText(this, String.format("%s\n%s: %s", new Object[] {
            resources.getString(hc.e.boxsdk_Authentication_fail), resources.getString(hc.e.boxsdk_details), (new StringBuilder()).append(authfailure.mWebException.getErrorCode()).append(" ").append(authfailure.mWebException.getDescription()).toString()
        }), 1).show();
_L8:
        finish();
        return true;
_L2:
        if (SdkUtils.isEmptyString(authfailure.message)) goto _L4; else goto _L3
_L3:
        authfailure.type;
        JVM INSTR tableswitch 1 3: default 176
    //                   1 190
    //                   2 176
    //                   3 246;
           goto _L4 _L5 _L4 _L6
_L4:
        Toast.makeText(this, hc.e.boxsdk_Authentication_fail, 1).show();
        continue; /* Loop/switch isn't completed */
_L5:
        authfailure = getResources();
        Toast.makeText(this, String.format("%s\n%s: %s", new Object[] {
            authfailure.getString(hc.e.boxsdk_Authentication_fail), authfailure.getString(hc.e.boxsdk_details), authfailure.getString(hc.e.boxsdk_Authentication_fail_url_mismatch)
        }), 1).show();
        continue; /* Loop/switch isn't completed */
_L6:
        (new android.app.AlertDialog.Builder(this)).setTitle(hc.e.boxsdk_Authentication_fail).setMessage(hc.e.boxsdk_Authentication_fail_forbidden).setPositiveButton(hc.e.boxsdk_button_ok, new android.content.DialogInterface.OnClickListener() {

            final OAuthActivity this$0;

            public void onClick(DialogInterface dialoginterface, int i)
            {
                dialoginterface.dismiss();
                finish();
            }

            
            {
                this$0 = OAuthActivity.this;
                super();
            }
        }).create().show();
        break; /* Loop/switch isn't completed */
        if (true) goto _L8; else goto _L7
_L7:
        return true;
    }

    public void onAuthenticationChosen(BoxAuthentication.BoxAuthenticationInfo boxauthenticationinfo)
    {
        if (boxauthenticationinfo != null)
        {
            BoxAuthentication.getInstance().onAuthenticated(boxauthenticationinfo, this);
            dismissSpinnerAndFinishAuthenticate(boxauthenticationinfo);
        }
    }

    public void onBackPressed()
    {
        if (getFragmentManager().findFragmentByTag("choose_auth") != null)
        {
            finish();
            return;
        } else
        {
            super.onBackPressed();
            return;
        }
    }

    public void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        Intent intent = getIntent();
        if (BoxConfig.IS_FLAG_SECURE)
        {
            getWindow().addFlags(8192);
        }
        setContentView(getContentView());
        registerReceiver(mConnectedReceiver, new IntentFilter("android.net.conn.CONNECTIVITY_CHANGE"));
        mClientId = intent.getStringExtra("client_id");
        mClientSecret = intent.getStringExtra("client_secret");
        mDeviceId = intent.getStringExtra("device_id");
        mDeviceName = intent.getStringExtra("device_name");
        mRedirectUrl = intent.getStringExtra("redirect_uri");
        int i;
        if (intent.getBooleanExtra("loginviaboxapp", false))
        {
            i = 1;
        } else
        {
            i = 0;
        }
        authType = i;
        apiCallStarted.getAndSet(false);
        mSession = (BoxSession)intent.getSerializableExtra("session");
        if (bundle != null)
        {
            mIsLoggingInViaBoxApp = bundle.getBoolean("loggingInViaBoxApp");
        }
        if (mSession != null)
        {
            mSession.setApplicationContext(getApplicationContext());
            return;
        } else
        {
            mSession = new BoxSession(this, null, mClientId, mClientSecret, mRedirectUrl);
            mSession.setDeviceId(mDeviceId);
            mSession.setDeviceName(mDeviceName);
            return;
        }
    }

    public void onDestroy()
    {
        unregisterReceiver(mConnectedReceiver);
        apiCallStarted.set(false);
        dismissSpinner();
        super.onDestroy();
    }

    public void onDifferentAuthenticationChosen()
    {
        if (getFragmentManager().findFragmentByTag("choose_auth") != null)
        {
            getFragmentManager().popBackStack();
        }
    }

    public void onPageFinished(WebView webview, String s)
    {
        dismissSpinner();
    }

    public void onReceivedAuthCode(String s)
    {
        onReceivedAuthCode(s, null);
    }

    public void onReceivedAuthCode(String s, String s1)
    {
        if (authType == 0)
        {
            oauthView.setVisibility(4);
        }
        startMakingOAuthAPICall(s, s1);
    }

    protected void onResume()
    {
        super.onResume();
        if (isAuthErrored())
        {
            startOAuth();
        }
    }

    protected void onSaveInstanceState(Bundle bundle)
    {
        bundle.putBoolean("loggingInViaBoxApp", mIsLoggingInViaBoxApp);
        super.onSaveInstanceState(bundle);
    }

    protected Dialog showDialogWhileWaitingForAuthenticationAPICall()
    {
        return ProgressDialog.show(this, getText(hc.e.boxsdk_Authenticating), getText(hc.e.boxsdk_Please_wait));
    }

    protected void showSpinner()
    {
        this;
        JVM INSTR monitorenter ;
        if (dialog == null) goto _L2; else goto _L1
_L1:
        boolean flag = dialog.isShowing();
        if (!flag);
_L4:
        this;
        JVM INSTR monitorexit ;
        return;
_L2:
        Exception exception1;
        try
        {
            dialog = showDialogWhileWaitingForAuthenticationAPICall();
            continue; /* Loop/switch isn't completed */
        }
        catch (Exception exception) { }
        finally
        {
            this;
        }
        dialog = null;
        if (true) goto _L4; else goto _L3
_L3:
        throw exception1;
    }

    protected void startMakingOAuthAPICall(final String code, String s)
    {
        if (apiCallStarted.getAndSet(true))
        {
            return;
        } else
        {
            showSpinner();
            mSession.getAuthInfo().setBaseDomain(s);
            (new Thread() {

                final OAuthActivity this$0;
                final String val$code;

                public void run()
                {
                    Object obj;
                    try
                    {
                        obj = (BoxAuthentication.BoxAuthenticationInfo)BoxAuthentication.getInstance().create(mSession, code).get();
                        String s1 = getIntent().getStringExtra("restrictToUserId");
                        if (!SdkUtils.isEmptyString(s1) && !((BoxAuthentication.BoxAuthenticationInfo) (obj)).getUser().getId().equals(s1))
                        {
                            throw new RuntimeException((new StringBuilder("Unexpected user logged in. Expected ")).append(s1).append(" received ").append(((BoxAuthentication.BoxAuthenticationInfo) (obj)).getUser().getId()).toString());
                        }
                    }
                    // Misplaced declaration of an exception variable
                    catch (Object obj)
                    {
                        ((Exception) (obj)).printStackTrace();
                        dismissSpinnerAndFailAuthenticate(((Exception) (obj)));
                        return;
                    }
                    dismissSpinnerAndFinishAuthenticate(((BoxAuthentication.BoxAuthenticationInfo) (obj)));
                    return;
                }

            
            {
                this$0 = OAuthActivity.this;
                code = s;
                super();
            }
            }).start();
            return;
        }
    }

    protected void startOAuth()
    {
        if (authType != 1 && !getIntent().getBooleanExtra("disableAccountChoosing", false) && getFragmentManager().findFragmentByTag("choose_auth") == null)
        {
            Map map = BoxAuthentication.getInstance().getStoredAuthInfo(this);
            if (SdkUtils.isEmptyString(getIntent().getStringExtra("restrictToUserId")) && map != null && map.size() > 0)
            {
                FragmentTransaction fragmenttransaction = getFragmentManager().beginTransaction();
                fragmenttransaction.replace(hc.c.oauth_container, ChooseAuthenticationFragment.createAuthenticationActivity(this), "choose_auth");
                fragmenttransaction.addToBackStack("choose_auth");
                fragmenttransaction.commit();
            }
        }
        switch (authType)
        {
        default:
            return;

        case 1: // '\001'
            Intent intent = getBoxAuthApp();
            if (intent != null)
            {
                intent.putExtra("client_id", mClientId);
                intent.putExtra("redirect_uri", mRedirectUrl);
                if (!SdkUtils.isEmptyString(getIntent().getStringExtra("restrictToUserId")))
                {
                    intent.putExtra("restrictToUserId", getIntent().getStringExtra("restrictToUserId"));
                }
                mIsLoggingInViaBoxApp = true;
                startActivityForResult(intent, 1);
                return;
            }
            // fall through

        case 0: // '\0'
            showSpinner();
            oauthView = createOAuthView();
            oauthClient = createOAuthWebViewClient();
            oauthClient.setOnPageFinishedListener(this);
            oauthView.setWebViewClient(oauthClient);
            break;
        }
        if (mSession.getBoxAccountEmail() != null)
        {
            oauthView.setBoxAccountEmail(mSession.getBoxAccountEmail());
        }
        oauthView.authenticate(mClientId, mRedirectUrl);
    }



/*
    static boolean access$102(OAuthActivity oauthactivity, boolean flag)
    {
        oauthactivity.mAuthWasSuccessful = flag;
        return flag;
    }

*/
}
