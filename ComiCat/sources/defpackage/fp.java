package defpackage;

import android.net.Uri;
import android.os.Bundle;
import android.text.TextUtils;
import com.amazon.identity.auth.device.AuthError;
import com.box.androidsdk.content.models.BoxError;
import com.box.androidsdk.content.models.BoxMetadata;
import defpackage.fx;
import java.util.HashMap;
import java.util.Map;

/* renamed from: fp  reason: default package */
/* compiled from: AuthorizationResponseParser */
public final class fp {
    private static final String a = fr.class.getName();

    public static Bundle a(String str, String str2, String[] strArr) {
        Bundle bundle = new Bundle();
        Uri parse = Uri.parse(str);
        gz.a(a, "Received response from WebBroswer for OAuth2 flow", "response=" + parse.toString());
        String queryParameter = parse.getQueryParameter(BoxError.FIELD_CODE);
        bundle.putString(BoxError.FIELD_CODE, queryParameter);
        gz.a(a, "Code extracted from response", "code=" + queryParameter);
        Map<String, String> a2 = a(parse);
        String str3 = a2.get("clientRequestId");
        if (TextUtils.isEmpty(str3)) {
            throw new AuthError("No clientRequestId in OAuth2 response", AuthError.b.ERROR_SERVER_REPSONSE);
        } else if (!str3.equalsIgnoreCase(str2)) {
            throw new AuthError("ClientRequestIds do not match. req=" + str3 + " resp=" + str2, AuthError.b.ERROR_SERVER_REPSONSE);
        } else {
            String queryParameter2 = parse.getQueryParameter("error");
            if (!TextUtils.isEmpty(queryParameter2)) {
                String queryParameter3 = parse.getQueryParameter(BoxError.FIELD_ERROR_DESCRIPTION);
                if (!"access_denied".equals(queryParameter2) || TextUtils.isEmpty(queryParameter3) || (!"Access not permitted.".equals(queryParameter3) && !"Access+not+permitted.".equals(queryParameter3))) {
                    throw new AuthError("Error=" + queryParameter2 + "error_description=" + queryParameter3, AuthError.b.ERROR_SERVER_REPSONSE);
                }
                bundle.putInt(fx.a.CAUSE_ID.o, 0);
                bundle.putString(fx.a.ON_CANCEL_TYPE.o, queryParameter2);
                bundle.putString(fx.a.ON_CANCEL_DESCRIPTION.o, queryParameter3);
                return bundle;
            } else if (TextUtils.isEmpty(queryParameter)) {
                throw new AuthError("No code in OAuth2 response", AuthError.b.ERROR_SERVER_REPSONSE);
            } else {
                String queryParameter4 = parse.getQueryParameter(BoxMetadata.FIELD_SCOPE);
                bundle.putString("clientId", a2.get("clientId"));
                bundle.putString("redirectUri", a2.get("redirectUri"));
                if (queryParameter4 != null) {
                    bundle.putStringArray(BoxMetadata.FIELD_SCOPE, ft.a(queryParameter4));
                } else {
                    gz.a(a, "No scopes from OAuth2 response, using requested scopes");
                    bundle.putStringArray(BoxMetadata.FIELD_SCOPE, strArr);
                }
                return bundle;
            }
        }
    }

    public static fq a(String str) {
        return fq.a(a(Uri.parse(str)).get("clientRequestId"));
    }

    private static Map<String, String> a(Uri uri) {
        String[] split;
        HashMap hashMap = new HashMap();
        String queryParameter = uri.getQueryParameter("state");
        if (!(queryParameter == null || (split = TextUtils.split(queryParameter, "&")) == null)) {
            for (String split2 : split) {
                String[] split3 = TextUtils.split(split2, "=");
                if (split3 != null && split3.length == 2) {
                    hashMap.put(split3[0], split3[1]);
                }
            }
        }
        return hashMap;
    }
}
