package defpackage;

import android.content.Context;
import android.os.Bundle;
import com.amazon.identity.auth.device.AuthError;
import defpackage.fx;
import java.io.IOException;

/* renamed from: fo  reason: default package */
/* compiled from: AuthorizationHelper */
public class fo {
    /* access modifiers changed from: private */
    public static final String a = fo.class.getName();
    private gq b = new gq();

    static /* synthetic */ void a(Context context, String str, String str2, String str3, String[] strArr, fw fwVar) {
        Bundle bundle;
        if (gt.a()) {
            gz.b(a, "code for token exchange started on main thread");
            throw new IllegalStateException("authorize started on main thread");
        }
        gz.c(a, "Inside getToken AsyncTask - Attempting endpoint");
        String str4 = new fm().a(context.getPackageName(), context).d;
        try {
            if (gq.b || (strArr != null && strArr.length > 0)) {
                gz.c(gq.a, "Vending new tokens from Code");
                ga[] a2 = go.a(str3, str, str2, str4, strArr, context);
                if (a2 == null) {
                    bundle = new Bundle(AuthError.a(new AuthError("No tokens returned", AuthError.b.ERROR_SERVER_REPSONSE)));
                } else {
                    gv gvVar = (gv) a2[0];
                    if (gvVar == null) {
                        bundle = new Bundle(AuthError.a(new AuthError("Access Atz token was null form ServerCommunication", AuthError.b.ERROR_SERVER_REPSONSE)));
                    } else if (gvVar.a(context) == -1) {
                        bundle = new Bundle(AuthError.a(new AuthError("Unable to insert access atz token into db", AuthError.b.ERROR_DATA_STORAGE)));
                    } else {
                        gx gxVar = (gx) a2[1];
                        if (gxVar == null) {
                            bundle = new Bundle(AuthError.a(new AuthError("access token was null form ServerCommunication", AuthError.b.ERROR_SERVER_REPSONSE)));
                        } else if (gxVar.a(context) == -1) {
                            bundle = new Bundle(AuthError.a(new AuthError("Unable to insert refresh token into db", AuthError.b.ERROR_DATA_STORAGE)));
                        } else {
                            gq.a(str4, strArr, context, gvVar, gxVar);
                            bundle = new Bundle();
                            bundle.putString(fx.a.AUTHORIZE.o, "authorized");
                        }
                    }
                }
                fwVar.a(bundle);
                return;
            }
            throw new AssertionError();
        } catch (IOException e) {
            fwVar.a(new AuthError("Failed to exchange code for token", e, AuthError.b.ERROR_IO));
        } catch (AuthError e2) {
            gz.b(a, "Failed doing code for token exchange " + e2.getMessage());
            fwVar.a(e2);
        }
    }
}
