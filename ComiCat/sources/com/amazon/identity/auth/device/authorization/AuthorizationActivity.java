package com.amazon.identity.auth.device.authorization;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.content.Context;
import android.net.Uri;
import android.os.Bundle;
import android.text.TextUtils;
import com.amazon.identity.auth.device.AuthError;
import com.box.androidsdk.content.models.BoxError;
import com.box.androidsdk.content.models.BoxMetadata;
import defpackage.fx;
import java.util.Arrays;

public class AuthorizationActivity extends Activity {
    /* access modifiers changed from: private */
    @SuppressLint({"Registered"})
    public static final String a = AuthorizationActivity.class.getName();

    /* access modifiers changed from: protected */
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        gz.d(a, "onCreate");
        Uri data = getIntent().getData();
        if (data == null) {
            gz.c(a, "uri is null onCreate - closing activity");
            finish();
            return;
        }
        new fp();
        final fq a2 = fp.a(data.toString());
        if (!(data == null || a2 == null)) {
            gz.a(a, "Received response from WebBroswer for OAuth2 flow", "response=" + data.toString());
            try {
                Bundle a3 = fp.a(data.toString(), a2.b, a2.a);
                if (a3.containsKey(fx.a.CAUSE_ID.o)) {
                    a2.c.b(a3);
                    finish();
                    return;
                }
                gt.a.execute(new Runnable(a3, getApplicationContext(), new fw() {
                    public final void a(Bundle bundle) {
                        gz.d(AuthorizationActivity.a, "Code for Token Exchange success");
                        if (a2.c != null) {
                            a2.c.a(bundle);
                        }
                    }

                    public final void a(AuthError authError) {
                        gz.d(AuthorizationActivity.a, "Code for Token Exchange Error. " + authError.getMessage());
                        if (a2.c != null) {
                            a2.c.a(authError);
                        }
                    }

                    public final void b(Bundle bundle) {
                        gz.d(AuthorizationActivity.a, "Code for Token Exchange Cancel");
                        if (a2.c != null) {
                            a2.c.b(bundle);
                        }
                    }
                }) {
                    final /* synthetic */ Bundle a;
                    final /* synthetic */ Context b;
                    final /* synthetic */ fw c;

                    {
                        this.a = r2;
                        this.b = r3;
                        this.c = r4;
                    }

                    public final void run() {
                        if (this.a != null) {
                            String string = this.a.getString(BoxError.FIELD_CODE);
                            if (!TextUtils.isEmpty(string)) {
                                String string2 = this.a.getString("clientId");
                                String string3 = this.a.getString("redirectUri");
                                String[] stringArray = this.a.getStringArray(BoxMetadata.FIELD_SCOPE);
                                gz.a(fo.a, "Params extracted from OAuth2 response", "code=" + string + "clientId=" + string2 + " redirectUri=" + string3 + " scopes=" + Arrays.toString(stringArray));
                                fo.a(this.b, string2, string3, string, stringArray, this.c);
                                return;
                            }
                            this.c.a(new AuthError("Response bundle from Authorization was empty", AuthError.b.ERROR_SERVER_REPSONSE));
                        }
                        this.c.a(new AuthError("Response bundle from Authorization was null", AuthError.b.ERROR_SERVER_REPSONSE));
                    }
                });
            } catch (AuthError e) {
                if (a2.c != null) {
                    a2.c.a(e);
                }
            }
        }
        finish();
    }
}
