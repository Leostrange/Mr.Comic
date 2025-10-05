package defpackage;

import defpackage.sm;
import java.io.InputStream;
import org.apache.http.client.HttpClient;
import org.apache.http.client.methods.HttpGet;
import org.apache.http.client.methods.HttpUriRequest;

/* renamed from: ss  reason: default package */
/* compiled from: DownloadRequest */
public final class ss extends sm<InputStream> {
    public ss(ta taVar, HttpClient httpClient, String str) {
        super(taVar, httpClient, su.a, str, sm.c.b, sm.b.b);
    }

    public final String b() {
        return "GET";
    }

    /* access modifiers changed from: protected */
    public final HttpUriRequest c() {
        return new HttpGet(this.c.toString());
    }
}
