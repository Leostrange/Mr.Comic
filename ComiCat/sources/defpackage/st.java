package defpackage;

import org.apache.http.client.HttpClient;
import org.apache.http.client.methods.HttpGet;
import org.apache.http.client.methods.HttpUriRequest;
import org.json.JSONObject;

/* renamed from: st  reason: default package */
/* compiled from: GetRequest */
public final class st extends sm<JSONObject> {
    public st(ta taVar, HttpClient httpClient, String str) {
        super(taVar, httpClient, sv.a, str);
    }

    public final String b() {
        return "GET";
    }

    /* access modifiers changed from: protected */
    public final HttpUriRequest c() {
        return new HttpGet(this.c.toString());
    }
}
