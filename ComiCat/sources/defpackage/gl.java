package defpackage;

import android.content.Context;
import android.os.Bundle;
import com.box.androidsdk.content.BoxConstants;
import com.box.androidsdk.content.models.BoxError;
import org.apache.http.HttpResponse;
import org.apache.http.message.BasicNameValuePair;

/* renamed from: gl  reason: default package */
/* compiled from: OauthCodeForTokenRequest */
class gl extends gj {
    private static final String j = gl.class.getName();
    private final String k;
    private final String l;

    gl(String str, String str2, String str3, Bundle bundle, String str4, String str5, String str6, String str7, Context context) {
        super(str, str2, str3, str6, context, str5, bundle);
        this.k = str4;
        this.l = str7;
    }

    /* access modifiers changed from: protected */
    public final gp a(HttpResponse httpResponse) {
        return new gm(httpResponse, this.a);
    }

    public final String c() {
        return "authorization_code";
    }

    /* access modifiers changed from: protected */
    public final void d() {
        super.d();
        this.h.add(new BasicNameValuePair(BoxError.FIELD_CODE, this.k));
        this.h.add(new BasicNameValuePair(BoxConstants.KEY_REDIRECT_URL, this.l));
    }

    public final HttpResponse f() {
        gz.a(j, "Oauth Code for Token Exchange executeRequest. redirectUri=" + this.l + " appId=" + this.a, "code=" + this.k);
        return super.f();
    }
}
