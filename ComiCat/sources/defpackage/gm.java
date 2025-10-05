package defpackage;

import com.amazon.identity.auth.device.AuthError;
import org.apache.http.HttpResponse;
import org.json.JSONObject;

/* renamed from: gm  reason: default package */
/* compiled from: OauthCodeForTokenResponse */
class gm extends gn {
    private static final String c = gm.class.getName();

    gm(HttpResponse httpResponse, String str) {
        super(httpResponse, str);
        gz.c(c, "Creating OauthCodeForTokenResponse appId=" + str);
    }

    /* access modifiers changed from: package-private */
    public final boolean a(String str, String str2) {
        return false;
    }

    public final gx f(JSONObject jSONObject) {
        gx f = super.f(jSONObject);
        if (f != null) {
            return f;
        }
        throw new AuthError("JSON response did not contain an AccessAtzToken", AuthError.b.ERROR_JSON);
    }
}
