package com.dropbox.core.android;

import android.app.Activity;
import android.app.AlertDialog;
import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.pm.ResolveInfo;
import android.net.Uri;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.util.Log;
import com.box.androidsdk.content.BoxConstants;
import java.security.SecureRandom;
import java.util.List;
import java.util.Locale;

public class AuthActivity extends Activity {
    public static Intent a = null;
    /* access modifiers changed from: private */
    public static final String b = AuthActivity.class.getName();
    private static a c = new a() {
        public final SecureRandom a() {
            return hx.a();
        }
    };
    private static final Object d = new Object();
    private static String e;
    private static String f = "www.dropbox.com";
    private static String g;
    private static String h;
    private static String[] i;
    private static String j;
    private String k;
    private String l;
    private String m;
    private String n;
    private String[] o;
    private String p;
    /* access modifiers changed from: private */
    public String q = null;
    private boolean r = false;

    public interface a {
        SecureRandom a();
    }

    public static Intent a(Context context, String str, String str2, String str3) {
        a(str, str2, str3);
        return new Intent(context, AuthActivity.class);
    }

    static void a() {
        a((String) null, (String) null, (String) null);
    }

    private void a(Intent intent) {
        a = intent;
        this.q = null;
        a((String) null, (String) null, (String) null);
        finish();
    }

    static /* synthetic */ void a(AuthActivity authActivity, String str) {
        authActivity.startActivity(new Intent("android.intent.action.VIEW", Uri.parse(hm.a(Locale.getDefault().toString(), authActivity.l, "1/connect", new String[]{"k", authActivity.k, "n", authActivity.o.length > 0 ? authActivity.o[0] : BoxConstants.ROOT_FOLDER_ID, "api", authActivity.m, "state", str}))));
    }

    private static void a(String str, String str2, String str3) {
        e = str;
        h = null;
        i = new String[0];
        j = null;
        if (str2 == null) {
            str2 = "www.dropbox.com";
        }
        f = str2;
        g = str3;
    }

    public static boolean a(Context context, String str) {
        Intent intent = new Intent("android.intent.action.VIEW");
        String str2 = "db-" + str;
        intent.setData(Uri.parse(str2 + "://1/connect"));
        List<ResolveInfo> queryIntentActivities = context.getPackageManager().queryIntentActivities(intent, 0);
        if (queryIntentActivities == null || queryIntentActivities.size() == 0) {
            throw new IllegalStateException("URI scheme in your app's manifest is not set up correctly. You should have a " + AuthActivity.class.getName() + " with the scheme: " + str2);
        } else if (queryIntentActivities.size() > 1) {
            AlertDialog.Builder builder = new AlertDialog.Builder(context);
            builder.setTitle("Security alert");
            builder.setMessage("Another app on your phone may be trying to pose as the app you are currently using. The malicious app can't access your account, but linking to Dropbox has been disabled as a precaution. Please contact support@dropbox.com.");
            builder.setPositiveButton("OK", new DialogInterface.OnClickListener() {
                public final void onClick(DialogInterface dialogInterface, int i) {
                    dialogInterface.dismiss();
                }
            });
            builder.show();
            return false;
        } else {
            ResolveInfo resolveInfo = queryIntentActivities.get(0);
            if (resolveInfo != null && resolveInfo.activityInfo != null && context.getPackageName().equals(resolveInfo.activityInfo.packageName)) {
                return true;
            }
            throw new IllegalStateException("There must be a " + AuthActivity.class.getName() + " within your app's package registered for your URI scheme (" + str2 + "). However, it appears that an activity in a different package is registered for that scheme instead. If you have multiple apps that all want to use the same accesstoken pair, designate one of them to do authentication and have the other apps launch it and then retrieve the token pair from it.");
        }
    }

    private static a c() {
        a aVar;
        synchronized (d) {
            aVar = c;
        }
        return aVar;
    }

    /* access modifiers changed from: protected */
    public void onCreate(Bundle bundle) {
        this.k = e;
        this.l = f;
        this.m = g;
        this.n = h;
        this.o = i;
        this.p = j;
        if (bundle == null) {
            a = null;
            this.q = null;
        } else {
            this.q = bundle.getString("SIS_KEY_AUTH_STATE_NONCE");
        }
        setTheme(16973840);
        super.onCreate(bundle);
    }

    /* access modifiers changed from: protected */
    /* JADX WARNING: Removed duplicated region for block: B:20:0x0059  */
    /* JADX WARNING: Removed duplicated region for block: B:41:0x0096  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public void onNewIntent(android.content.Intent r8) {
        /*
            r7 = this;
            r0 = 0
            java.lang.String r1 = r7.q
            if (r1 != 0) goto L_0x0009
            r7.a(r0)
        L_0x0008:
            return
        L_0x0009:
            java.lang.String r1 = "ACCESS_TOKEN"
            boolean r1 = r8.hasExtra(r1)
            if (r1 == 0) goto L_0x005d
            java.lang.String r1 = "ACCESS_TOKEN"
            java.lang.String r4 = r8.getStringExtra(r1)
            java.lang.String r1 = "ACCESS_SECRET"
            java.lang.String r3 = r8.getStringExtra(r1)
            java.lang.String r1 = "UID"
            java.lang.String r2 = r8.getStringExtra(r1)
            java.lang.String r1 = "AUTH_STATE"
            java.lang.String r1 = r8.getStringExtra(r1)
        L_0x0029:
            if (r4 == 0) goto L_0x00aa
            java.lang.String r5 = ""
            boolean r5 = r4.equals(r5)
            if (r5 != 0) goto L_0x00aa
            if (r3 == 0) goto L_0x00aa
            java.lang.String r5 = ""
            boolean r5 = r3.equals(r5)
            if (r5 != 0) goto L_0x00aa
            if (r2 == 0) goto L_0x00aa
            java.lang.String r5 = ""
            boolean r5 = r2.equals(r5)
            if (r5 != 0) goto L_0x00aa
            if (r1 == 0) goto L_0x00aa
            java.lang.String r5 = ""
            boolean r5 = r1.equals(r5)
            if (r5 != 0) goto L_0x00aa
            java.lang.String r5 = r7.q
            boolean r1 = r5.equals(r1)
            if (r1 != 0) goto L_0x0096
            r7.a(r0)
            goto L_0x0008
        L_0x005d:
            android.net.Uri r4 = r8.getData()
            if (r4 == 0) goto L_0x00b8
            java.lang.String r1 = r4.getPath()
            java.lang.String r2 = "/connect"
            boolean r1 = r2.equals(r1)
            if (r1 == 0) goto L_0x00b8
            java.lang.String r1 = "oauth_token"
            java.lang.String r3 = r4.getQueryParameter(r1)     // Catch:{ UnsupportedOperationException -> 0x008d }
            java.lang.String r1 = "oauth_token_secret"
            java.lang.String r2 = r4.getQueryParameter(r1)     // Catch:{ UnsupportedOperationException -> 0x00af }
            java.lang.String r1 = "uid"
            java.lang.String r1 = r4.getQueryParameter(r1)     // Catch:{ UnsupportedOperationException -> 0x00b3 }
            java.lang.String r5 = "state"
            java.lang.String r4 = r4.getQueryParameter(r5)     // Catch:{ UnsupportedOperationException -> 0x00b6 }
            r6 = r4
            r4 = r3
            r3 = r2
            r2 = r1
            r1 = r6
            goto L_0x0029
        L_0x008d:
            r1 = move-exception
            r1 = r0
            r2 = r0
            r3 = r0
        L_0x0091:
            r4 = r3
            r3 = r2
            r2 = r1
            r1 = r0
            goto L_0x0029
        L_0x0096:
            android.content.Intent r0 = new android.content.Intent
            r0.<init>()
            java.lang.String r1 = "ACCESS_TOKEN"
            r0.putExtra(r1, r4)
            java.lang.String r1 = "ACCESS_SECRET"
            r0.putExtra(r1, r3)
            java.lang.String r1 = "UID"
            r0.putExtra(r1, r2)
        L_0x00aa:
            r7.a(r0)
            goto L_0x0008
        L_0x00af:
            r1 = move-exception
            r1 = r0
            r2 = r0
            goto L_0x0091
        L_0x00b3:
            r1 = move-exception
            r1 = r0
            goto L_0x0091
        L_0x00b6:
            r4 = move-exception
            goto L_0x0091
        L_0x00b8:
            r1 = r0
            r2 = r0
            r3 = r0
            r4 = r0
            goto L_0x0029
        */
        throw new UnsupportedOperationException("Method not decompiled: com.dropbox.core.android.AuthActivity.onNewIntent(android.content.Intent):void");
    }

    /* access modifiers changed from: protected */
    public void onResume() {
        super.onResume();
        if (!isFinishing()) {
            if (this.q != null || this.k == null) {
                a((Intent) null);
                return;
            }
            a = null;
            if (this.r) {
                Log.w(b, "onResume called again before Handler run");
                return;
            }
            byte[] bArr = new byte[16];
            a c2 = c();
            (c2 != null ? c2.a() : new SecureRandom()).nextBytes(bArr);
            StringBuilder sb = new StringBuilder();
            sb.append("oauth2:");
            for (int i2 = 0; i2 < 16; i2++) {
                sb.append(String.format("%02x", new Object[]{Integer.valueOf(bArr[i2] & 255)}));
            }
            final String sb2 = sb.toString();
            final Intent intent = new Intent("com.dropbox.android.AUTHENTICATE_V2");
            intent.setPackage("com.dropbox.android");
            intent.putExtra("CONSUMER_KEY", this.k);
            intent.putExtra("CONSUMER_SIG", "");
            intent.putExtra("DESIRED_UID", this.n);
            intent.putExtra("ALREADY_AUTHED_UIDS", this.o);
            intent.putExtra("SESSION_ID", this.p);
            intent.putExtra("CALLING_PACKAGE", getPackageName());
            intent.putExtra("CALLING_CLASS", getClass().getName());
            intent.putExtra("AUTH_STATE", sb2);
            new Handler(Looper.getMainLooper()).post(new Runnable() {
                public final void run() {
                    String unused = AuthActivity.b;
                    try {
                        if (hw.a(AuthActivity.this, intent) != null) {
                            AuthActivity.this.startActivity(intent);
                        } else {
                            AuthActivity.a(AuthActivity.this, sb2);
                        }
                        String unused2 = AuthActivity.this.q = sb2;
                        AuthActivity.a();
                    } catch (ActivityNotFoundException e) {
                        Log.e(AuthActivity.b, "Could not launch intent. User may have restricted profile", e);
                        AuthActivity.this.finish();
                    }
                }
            });
            this.r = true;
        }
    }

    /* access modifiers changed from: protected */
    public void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        bundle.putString("SIS_KEY_AUTH_STATE_NONCE", this.q);
    }
}
