package defpackage;

import android.text.TextUtils;
import com.box.androidsdk.content.auth.BoxAuthentication;
import com.box.androidsdk.content.models.BoxMetadata;
import defpackage.tj;
import java.util.List;
import org.apache.http.NameValuePair;
import org.apache.http.client.HttpClient;
import org.apache.http.message.BasicNameValuePair;

/* renamed from: tp  reason: default package */
/* compiled from: RefreshAccessTokenRequest */
class tp extends tr {
    static final /* synthetic */ boolean a = (!tp.class.desiredAssertionStatus());
    private final tj.c e = tj.c.REFRESH_TOKEN;
    private final String f;
    private final String g;

    public tp(HttpClient httpClient, String str, String str2, String str3) {
        super(httpClient, str);
        if (!a && str2 == null) {
            throw new AssertionError();
        } else if (!a && TextUtils.isEmpty(str2)) {
            throw new AssertionError();
        } else if (!a && str3 == null) {
            throw new AssertionError();
        } else if (a || !TextUtils.isEmpty(str3)) {
            this.f = str2;
            this.g = str3;
        } else {
            throw new AssertionError();
        }
    }

    /* access modifiers changed from: protected */
    public final void a(List<NameValuePair> list) {
        list.add(new BasicNameValuePair(BoxAuthentication.BoxAuthenticationInfo.FIELD_REFRESH_TOKEN, this.f));
        list.add(new BasicNameValuePair(BoxMetadata.FIELD_SCOPE, this.g));
        list.add(new BasicNameValuePair("grant_type", this.e.toString()));
    }
}
