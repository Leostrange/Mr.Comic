package defpackage;

import android.net.Uri;
import android.os.Build;
import android.text.TextUtils;
import defpackage.tj;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.Locale;
import org.apache.http.Header;
import org.apache.http.HttpHeaders;
import org.apache.http.HttpResponse;
import org.apache.http.client.ClientProtocolException;
import org.apache.http.client.HttpClient;
import org.apache.http.client.ResponseHandler;
import org.apache.http.client.methods.HttpUriRequest;
import org.apache.http.message.BasicHeader;
import org.json.JSONException;
import org.json.JSONObject;

/* renamed from: sm  reason: default package */
/* compiled from: ApiRequest */
public abstract class sm<ResponseType> {
    static final /* synthetic */ boolean e = (!sm.class.desiredAssertionStatus());
    private static final Header f = new BasicHeader("X-HTTP-Live-Library", "android/" + Build.VERSION.RELEASE + "_" + sp.a.c);
    public final List<a> a;
    public final String b;
    protected final tt c;
    protected final Uri d;
    private final HttpClient g;
    private final ResponseHandler<ResponseType> h;
    private final ta i;

    /* renamed from: sm$a */
    /* compiled from: ApiRequest */
    public interface a {
        void a(HttpResponse httpResponse);
    }

    /* renamed from: sm$b */
    /* compiled from: ApiRequest */
    public enum b {
        ;

        /* access modifiers changed from: protected */
        public abstract void a(tt ttVar);
    }

    /* renamed from: sm$c */
    /* compiled from: ApiRequest */
    public enum c {
        ;

        /* access modifiers changed from: protected */
        public abstract void a(tt ttVar);
    }

    public sm(ta taVar, HttpClient httpClient, ResponseHandler<ResponseType> responseHandler, String str) {
        this(taVar, httpClient, responseHandler, str, c.a, b.a);
    }

    public sm(ta taVar, HttpClient httpClient, ResponseHandler<ResponseType> responseHandler, String str, c cVar, b bVar) {
        tt a2;
        boolean z = false;
        if (!e && taVar == null) {
            throw new AssertionError();
        } else if (!e && httpClient == null) {
            throw new AssertionError();
        } else if (!e && responseHandler == null) {
            throw new AssertionError();
        } else if (e || !TextUtils.isEmpty(str)) {
            this.i = taVar;
            this.g = httpClient;
            this.a = new ArrayList();
            this.h = responseHandler;
            this.b = str;
            this.d = Uri.parse(str);
            if (this.d.isAbsolute()) {
                a2 = tt.a(this.d);
            } else {
                tt a3 = tt.a(sp.a.b);
                String encodedPath = this.d.getEncodedPath();
                if (tt.b || encodedPath != null) {
                    if (a3.a == null) {
                        a3.a = new StringBuilder(encodedPath);
                    } else {
                        boolean z2 = !TextUtils.isEmpty(a3.a) && a3.a.charAt(a3.a.length() + -1) == '/';
                        boolean isEmpty = TextUtils.isEmpty(encodedPath);
                        if (!isEmpty && encodedPath.charAt(0) == '/') {
                            z = true;
                        }
                        if (!z2 || !z) {
                            if (z2 || z) {
                                a3.a.append(encodedPath);
                            } else if (!isEmpty) {
                                a3.a.append('/').append(encodedPath);
                            }
                        } else if (encodedPath.length() > 1) {
                            a3.a.append(encodedPath.substring(1));
                        }
                    }
                    a2 = a3.a(this.d.getQuery());
                } else {
                    throw new AssertionError();
                }
            }
            cVar.a(a2);
            bVar.a(a2);
            this.c = a2;
        } else {
            throw new AssertionError();
        }
    }

    public final ResponseType a() {
        HttpUriRequest c2 = c();
        c2.addHeader(f);
        if (this.i.a(30)) {
            this.i.g();
        }
        if (!this.i.a(3)) {
            ta taVar = this.i;
            if (e || taVar != null) {
                String a2 = taVar.a();
                if (e || !TextUtils.isEmpty(a2)) {
                    c2.addHeader(new BasicHeader(HttpHeaders.AUTHORIZATION, TextUtils.join(" ", new String[]{tj.e.a.toString().toLowerCase(Locale.US), a2})));
                } else {
                    throw new AssertionError();
                }
            } else {
                throw new AssertionError();
            }
        }
        try {
            HttpResponse execute = this.g.execute(c2);
            for (a a3 : this.a) {
                a3.a(execute);
            }
            return this.h.handleResponse(execute);
        } catch (ClientProtocolException e2) {
            throw new tf("An error occured while communicating with the server during the operation. Please try again later.", e2);
        } catch (IOException e3) {
            new JSONObject(e3.getMessage());
            throw new tf(e3.getMessage());
        } catch (JSONException e4) {
            throw new tf("An error occured while communicating with the server during the operation. Please try again later.", e3);
        }
    }

    public abstract String b();

    /* access modifiers changed from: protected */
    public abstract HttpUriRequest c();
}
