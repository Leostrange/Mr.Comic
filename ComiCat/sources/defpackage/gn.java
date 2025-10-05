package defpackage;

import android.text.TextUtils;
import com.amazon.identity.auth.device.AuthError;
import com.amazon.identity.auth.device.InvalidGrantAuthError;
import com.amazon.identity.auth.device.InvalidTokenAuthError;
import com.box.androidsdk.content.auth.BoxAuthentication;
import com.box.androidsdk.content.models.BoxError;
import com.box.androidsdk.content.requests.BoxRequest;
import org.apache.http.Header;
import org.apache.http.HttpResponse;
import org.json.JSONException;
import org.json.JSONObject;

/* renamed from: gn  reason: default package */
/* compiled from: OauthTokenResponse */
class gn extends gi {
    private static final String c = gn.class.getName();
    protected gv b;
    private final String d;
    private gx e = null;

    gn(HttpResponse httpResponse, String str) {
        super(httpResponse);
        this.d = str;
    }

    private gv g(JSONObject jSONObject) {
        try {
            if (jSONObject.has(BoxAuthentication.BoxAuthenticationInfo.FIELD_ACCESS_TOKEN)) {
                return new gv(this.d, jSONObject.getString(BoxAuthentication.BoxAuthenticationInfo.FIELD_ACCESS_TOKEN), gu.a(e(jSONObject)));
            }
            gz.b(c, "Unable to find AccessAtzToken in JSON response, throwing AuthError");
            throw new AuthError("JSON response did not contain an AccessAtzToken", AuthError.b.ERROR_JSON);
        } catch (JSONException e2) {
            gz.b(c, "Error reading JSON response, throwing AuthError");
            throw new AuthError("Error reading JSON response", AuthError.b.ERROR_JSON);
        }
    }

    public final String a() {
        return "1.0.1";
    }

    /* access modifiers changed from: protected */
    public final JSONObject a(JSONObject jSONObject) {
        try {
            return super.a(jSONObject);
        } catch (JSONException e2) {
            gz.d(c, "No Response type in the response");
            return jSONObject;
        }
    }

    /* access modifiers changed from: package-private */
    public boolean a(String str, String str2) {
        return BoxRequest.BoxRequestHandler.OAUTH_INVALID_TOKEN.equals(str) || ("invalid_request".equals(str) && !TextUtils.isEmpty(str2) && str2.contains(BoxAuthentication.BoxAuthenticationInfo.FIELD_ACCESS_TOKEN));
    }

    /* access modifiers changed from: protected */
    public final void b(JSONObject jSONObject) {
        super.b(jSONObject);
        Header firstHeader = this.a.getFirstHeader("x-amzn-RequestId");
        if (firstHeader != null) {
            gz.a(c, "ExchangeRepsonse", "requestId=" + firstHeader.getValue());
        } else {
            gz.b(c, "No RequestId in headers");
        }
    }

    /* access modifiers changed from: protected */
    public final void c(JSONObject jSONObject) {
        this.b = g(jSONObject);
        this.e = f(jSONObject);
    }

    public final ga[] c() {
        return new ga[]{this.b, this.e};
    }

    /* access modifiers changed from: protected */
    public final void d(JSONObject jSONObject) {
        String str = null;
        try {
            str = jSONObject.getString("error");
            if (!TextUtils.isEmpty(str)) {
                String string = jSONObject.getString(BoxError.FIELD_ERROR_DESCRIPTION);
                if ("invalid_grant".equals(str) || "unsupported_grant_type".equals(str)) {
                    gz.a(c, "Invalid source authorization in exchange.", "info=" + jSONObject);
                    throw new InvalidGrantAuthError("Invalid source authorization in exchange." + jSONObject);
                } else if (a(str, string)) {
                    gz.a(c, "Invalid Token in exchange.", "info=" + jSONObject);
                    throw new InvalidTokenAuthError("Invalid Token in exchange." + jSONObject);
                } else if ("invalid_client".equals(str)) {
                    gz.a(c, "Invalid Client. ApiKey is invalid ", "info=" + jSONObject);
                    throw new AuthError("Invalid Client. ApiKey is invalid " + jSONObject, AuthError.b.ERROR_INVALID_CLIENT);
                } else if ("invalid_scope".equals(str) || "insufficient_scope".equals(str)) {
                    gz.a(c, "Invalid Scope. Authorization not valid for the requested scopes ", "info=" + jSONObject);
                    throw new AuthError("Invalid Scope. Authorization not valid for the requested scopes " + jSONObject, AuthError.b.ERROR_INVALID_SCOPE);
                } else if ("unauthorized_client".equals(str)) {
                    gz.a(c, "Unauthorizaied Client.  The authenticated client is not authorized to use this authorization grant type. ", "info=" + jSONObject);
                    throw new AuthError("Unauthorizaied Client.  The authenticated client is not authorized to use this authorization grant type. " + jSONObject, AuthError.b.ERROR_UNAUTHORIZED_CLIENT);
                } else {
                    gz.a(c, "Server error doing authorization exchange. ", "info=" + jSONObject);
                    throw new AuthError("Server error doing authorization exchange. " + jSONObject, AuthError.b.ERROR_SERVER_REPSONSE);
                }
            }
        } catch (JSONException e2) {
            if (!TextUtils.isEmpty(str)) {
                throw new AuthError("Server Error : " + str, AuthError.b.ERROR_SERVER_REPSONSE);
            }
        }
    }

    public gx f(JSONObject jSONObject) {
        gz.c(c, "Extracting RefreshToken");
        try {
            if (jSONObject.has(BoxAuthentication.BoxAuthenticationInfo.FIELD_REFRESH_TOKEN)) {
                return new gx(this.d, jSONObject.getString(BoxAuthentication.BoxAuthenticationInfo.FIELD_REFRESH_TOKEN));
            }
            gz.b(c, "Unable to find RefreshAtzToken in JSON response");
            return null;
        } catch (JSONException e2) {
            gz.b(c, "Error reading JSON response, throwing AuthError");
            throw new AuthError("Error reading JSON response", AuthError.b.ERROR_JSON);
        }
    }
}
