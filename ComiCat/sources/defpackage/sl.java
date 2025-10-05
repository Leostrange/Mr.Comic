package defpackage;

import android.text.TextUtils;
import com.box.androidsdk.content.BoxConstants;
import com.box.androidsdk.content.models.BoxError;
import defpackage.tj;
import java.util.List;
import java.util.Locale;
import org.apache.http.NameValuePair;
import org.apache.http.client.HttpClient;
import org.apache.http.message.BasicNameValuePair;

/* renamed from: sl  reason: default package */
/* compiled from: AccessTokenRequest */
class sl extends tr {
    static final /* synthetic */ boolean a = (!sl.class.desiredAssertionStatus());
    private final String e;
    private final tj.c f;
    private final String g;

    public sl(HttpClient httpClient, String str, String str2, String str3) {
        super(httpClient, str);
        if (!a && TextUtils.isEmpty(str2)) {
            throw new AssertionError();
        } else if (a || !TextUtils.isEmpty(str3)) {
            this.g = str2;
            this.e = str3;
            this.f = tj.c.AUTHORIZATION_CODE;
        } else {
            throw new AssertionError();
        }
    }

    /* access modifiers changed from: protected */
    public final void a(List<NameValuePair> list) {
        list.add(new BasicNameValuePair(BoxError.FIELD_CODE, this.e));
        list.add(new BasicNameValuePair(BoxConstants.KEY_REDIRECT_URL, this.g));
        list.add(new BasicNameValuePair("grant_type", this.f.toString().toLowerCase(Locale.US)));
    }
}
