package defpackage;

import android.text.TextUtils;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.util.ArrayList;
import java.util.List;
import org.apache.http.NameValuePair;
import org.apache.http.client.ClientProtocolException;
import org.apache.http.client.HttpClient;
import org.apache.http.client.entity.UrlEncodedFormEntity;
import org.apache.http.client.methods.HttpPost;
import org.apache.http.message.BasicNameValuePair;
import org.apache.http.protocol.HTTP;
import org.apache.http.util.EntityUtils;
import org.json.JSONException;
import org.json.JSONObject;

/* renamed from: tr  reason: default package */
/* compiled from: TokenRequest */
abstract class tr {
    static final /* synthetic */ boolean d = (!tr.class.desiredAssertionStatus());
    protected final HttpClient b;
    protected final String c;

    public tr(HttpClient httpClient, String str) {
        if (!d && httpClient == null) {
            throw new AssertionError();
        } else if (!d && str == null) {
            throw new AssertionError();
        } else if (d || !TextUtils.isEmpty(str)) {
            this.b = httpClient;
            this.c = str;
        } else {
            throw new AssertionError();
        }
    }

    public final tm a() {
        HttpPost httpPost = new HttpPost(sp.a.g.toString());
        ArrayList arrayList = new ArrayList();
        arrayList.add(new BasicNameValuePair("client_id", this.c));
        a(arrayList);
        try {
            UrlEncodedFormEntity urlEncodedFormEntity = new UrlEncodedFormEntity(arrayList, HTTP.UTF_8);
            urlEncodedFormEntity.setContentType("application/x-www-form-urlencoded;charset=UTF-8");
            httpPost.setEntity(urlEncodedFormEntity);
            try {
                try {
                    try {
                        JSONObject jSONObject = new JSONObject(EntityUtils.toString(this.b.execute(httpPost).getEntity()));
                        if (tk.b(jSONObject)) {
                            return tk.a(jSONObject);
                        }
                        if (to.b(jSONObject)) {
                            return to.a(jSONObject);
                        }
                        throw new sx("An error occured while communicating with the server during the operation. Please try again later.");
                    } catch (JSONException e) {
                        throw new sx("An error occured while communicating with the server during the operation. Please try again later.", e);
                    }
                } catch (IOException e2) {
                    throw new sx("An error occured while communicating with the server during the operation. Please try again later.", e2);
                }
            } catch (ClientProtocolException e3) {
                throw new sx("An error occured while communicating with the server during the operation. Please try again later.", e3);
            } catch (IOException e4) {
                throw new sx("An error occured while communicating with the server during the operation. Please try again later.", e4);
            }
        } catch (UnsupportedEncodingException e5) {
            throw new sx("An error occured on the client during the operation.", e5);
        }
    }

    /* access modifiers changed from: protected */
    public abstract void a(List<NameValuePair> list);
}
