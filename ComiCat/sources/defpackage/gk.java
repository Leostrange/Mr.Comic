package defpackage;

import android.os.Build;
import android.os.Bundle;
import android.text.TextUtils;
import com.amazon.identity.auth.device.AuthError;
import java.io.IOException;
import java.io.InputStream;
import java.io.UnsupportedEncodingException;
import java.net.MalformedURLException;
import java.net.Socket;
import java.net.URL;
import java.security.KeyStore;
import java.security.SecureRandom;
import java.security.cert.X509Certificate;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.TimeUnit;
import java.util.zip.GZIPInputStream;
import javax.net.ssl.KeyManager;
import javax.net.ssl.SSLContext;
import javax.net.ssl.TrustManager;
import javax.net.ssl.X509TrustManager;
import org.apache.http.Header;
import org.apache.http.HeaderElement;
import org.apache.http.HttpEntity;
import org.apache.http.HttpHeaders;
import org.apache.http.HttpResponse;
import org.apache.http.HttpResponseInterceptor;
import org.apache.http.NameValuePair;
import org.apache.http.client.ClientProtocolException;
import org.apache.http.client.HttpClient;
import org.apache.http.client.entity.UrlEncodedFormEntity;
import org.apache.http.client.methods.HttpPost;
import org.apache.http.client.methods.HttpRequestBase;
import org.apache.http.conn.ClientConnectionManager;
import org.apache.http.conn.scheme.Scheme;
import org.apache.http.conn.scheme.SchemeRegistry;
import org.apache.http.conn.ssl.SSLSocketFactory;
import org.apache.http.entity.HttpEntityWrapper;
import org.apache.http.impl.client.DefaultHttpClient;
import org.apache.http.impl.conn.SingleClientConnManager;
import org.apache.http.message.BasicHeader;
import org.apache.http.message.BasicNameValuePair;
import org.apache.http.params.CoreProtocolPNames;
import org.apache.http.params.HttpConnectionParams;
import org.apache.http.params.HttpParams;
import org.apache.http.protocol.HttpContext;

/* renamed from: gk  reason: default package */
/* compiled from: AbstractTokenRequest */
public abstract class gk {
    private static final String a = gk.class.getName();
    public static final String d = ("AmazonAuthenticationSDK/3.3.1/Android/" + Build.VERSION.RELEASE + "/" + Build.MODEL);
    public static final String e = ("AmazonWebView/AmazonAuthenticationSDK/3.3.1/Android/" + Build.VERSION.RELEASE + "/" + Build.MODEL);
    private int b = -1;
    private String c = null;
    protected HttpClient f;
    protected HttpRequestBase g;
    protected final List<NameValuePair> h = new ArrayList(10);
    protected final List<Header> i = new ArrayList();
    private Bundle j;
    private String k;
    private String l;
    private String m;

    /* renamed from: gk$a */
    /* compiled from: AbstractTokenRequest */
    static class a extends HttpEntityWrapper {
        public a(HttpEntity httpEntity) {
            super(httpEntity);
        }

        public final InputStream getContent() {
            return new GZIPInputStream(this.wrappedEntity.getContent());
        }

        public final long getContentLength() {
            return -1;
        }
    }

    /* renamed from: gk$b */
    /* compiled from: AbstractTokenRequest */
    public class b extends DefaultHttpClient {

        /* renamed from: gk$b$a */
        /* compiled from: AbstractTokenRequest */
        public class a extends SSLSocketFactory {
            SSLContext a = SSLContext.getInstance("TLS");

            public a(KeyStore keyStore) {
                super(keyStore);
                AnonymousClass1 r0 = new X509TrustManager(b.this) {
                    public final void checkClientTrusted(X509Certificate[] x509CertificateArr, String str) {
                    }

                    public final void checkServerTrusted(X509Certificate[] x509CertificateArr, String str) {
                    }

                    public final X509Certificate[] getAcceptedIssuers() {
                        return null;
                    }
                };
                this.a.init((KeyManager[]) null, new TrustManager[]{r0}, (SecureRandom) null);
            }

            public final Socket createSocket() {
                return this.a.getSocketFactory().createSocket();
            }

            public final Socket createSocket(Socket socket, String str, int i, boolean z) {
                return this.a.getSocketFactory().createSocket(socket, str, i, z);
            }
        }

        public b() {
            addResponseInterceptor(new HttpResponseInterceptor() {
                public final void process(HttpResponse httpResponse, HttpContext httpContext) {
                    Header contentEncoding = httpResponse.getEntity().getContentEncoding();
                    if (contentEncoding != null) {
                        HeaderElement[] elements = contentEncoding.getElements();
                        for (HeaderElement name : elements) {
                            if (name.getName().equalsIgnoreCase("gzip")) {
                                httpResponse.setEntity(new a(httpResponse.getEntity()));
                                return;
                            }
                        }
                    }
                }
            });
        }

        private SSLSocketFactory a() {
            try {
                a aVar = new a(KeyStore.getInstance("BKS"));
                aVar.setHostnameVerifier(SSLSocketFactory.ALLOW_ALL_HOSTNAME_VERIFIER);
                return aVar;
            } catch (Exception e) {
                throw new AssertionError(e);
            }
        }

        /* access modifiers changed from: protected */
        public final ClientConnectionManager createClientConnectionManager() {
            if (gy.a()) {
                return gk.super.createClientConnectionManager();
            }
            SchemeRegistry schemeRegistry = new SchemeRegistry();
            schemeRegistry.register(new Scheme("https", a(), 443));
            return new SingleClientConnManager(getParams(), schemeRegistry);
        }
    }

    public gk(String str, String str2, String str3, Bundle bundle) {
        this.j = bundle;
        this.k = str;
        this.l = str2;
        this.m = str3;
    }

    private List<NameValuePair> c() {
        for (NameValuePair next : this.h) {
            if (next != null) {
                gz.a(a, "Parameter Added to request", "name=" + next.getName() + " val=" + next.getValue());
            } else {
                gz.b(a, "Parameter Added to request was NULL");
            }
        }
        return this.h;
    }

    private void g() {
        this.g.getEntity().consumeContent();
    }

    private String h() {
        String a2 = a(this.j);
        gy.a();
        try {
            return new URL("https", a2, 443, a()).toString();
        } catch (MalformedURLException e2) {
            throw new AuthError("MalformedURLException", e2, AuthError.b.ERROR_BAD_PARAM);
        }
    }

    /* access modifiers changed from: protected */
    public abstract gp a(HttpResponse httpResponse);

    public abstract String a();

    public String a(Bundle bundle) {
        String str;
        String b2 = b();
        if (b2 == null) {
            gz.c(a, "No domain passed into Request, Attempting to get from options");
            if (bundle != null) {
                b2 = bundle.getString("com.amazon.identity.ap.domain");
            }
        }
        if (b2 == null) {
            b2 = ".amazon.com";
            gz.c(a, "No domain in options");
        }
        switch (gy.b()) {
            case FORCE_DEVO:
                str = "";
                break;
            case FORCE_PRE_PROD:
                str = "";
                break;
            default:
                str = "www";
                break;
        }
        return str + b2;
    }

    public String b() {
        return this.c;
    }

    /* access modifiers changed from: protected */
    public abstract void d();

    public final gp e() {
        if (this.f == null) {
            this.f = new b();
            this.g = new HttpPost(h());
        }
        this.f.getParams().setParameter(CoreProtocolPNames.USER_AGENT, d);
        d();
        this.h.add(new BasicNameValuePair("app_name", this.k));
        if (this.l != null) {
            this.h.add(new BasicNameValuePair("app_version", this.l));
        }
        if (!TextUtils.isEmpty(fi.a) && !fi.a.equals("unknown")) {
            this.h.add(new BasicNameValuePair("di.hw.name", fi.a));
        }
        if (!TextUtils.isEmpty(fi.b) && !fi.b.equals("unknown")) {
            this.h.add(new BasicNameValuePair("di.hw.version", fi.b));
        }
        this.h.add(new BasicNameValuePair("di.os.name", "Android"));
        if (!TextUtils.isEmpty(fi.c) && !fi.c.equals("unknown")) {
            this.h.add(new BasicNameValuePair("di.os.version", fi.c));
        }
        this.h.add(new BasicNameValuePair("di.sdk.version", this.m));
        List<Header> list = this.i;
        ArrayList arrayList = new ArrayList();
        arrayList.add(new BasicHeader(HttpHeaders.ACCEPT_ENCODING, "gzip, deflate"));
        arrayList.add(new BasicHeader(HttpHeaders.ACCEPT_LANGUAGE, "en-us,en;q=0.5"));
        arrayList.add(new BasicHeader(HttpHeaders.ACCEPT, "application/xml,application/xhtml+xml,text/html,application/json;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5"));
        arrayList.add(new BasicHeader(HttpHeaders.ACCEPT_CHARSET, "utf-8, iso-8859-1, utf-16, *;q=0.7"));
        list.addAll(arrayList);
        try {
            this.g.setEntity(new UrlEncodedFormEntity(c()));
            Header[] headerArr = new Header[this.i.size()];
            this.i.toArray(headerArr);
            if (headerArr.length > 0) {
                this.g.setHeaders(headerArr);
            }
            HttpResponse httpResponse = null;
            try {
                gz.c(a, "Request url: " + this.g.getURI());
                for (int i2 = 0; i2 <= 2; i2++) {
                    httpResponse = f();
                    int statusCode = httpResponse.getStatusLine().getStatusCode();
                    if (!(statusCode >= 500 && statusCode < 600)) {
                        break;
                    }
                    if (i2 != 2) {
                        httpResponse.getEntity().consumeContent();
                    }
                    gz.d(a, "Received " + httpResponse.getStatusLine().getStatusCode() + " error on request attempt " + (i2 + 1) + " of 3");
                }
                if (this.f != null) {
                    this.f.getConnectionManager().closeIdleConnections(5, TimeUnit.SECONDS);
                }
                if (this.g != null) {
                    try {
                        g();
                    } catch (IOException e2) {
                        gz.b(a, "IOException consuming httppost entity content " + e2.toString());
                    }
                }
                return a(httpResponse);
            } catch (ClientProtocolException e3) {
                gz.b(a, "Received communication error when executing token request:" + e3.toString());
                throw new AuthError("Received communication error when executing token request", e3, AuthError.b.ERROR_COM);
            } catch (IOException e4) {
                gz.b(a, "Received IO error when executing token request:" + e4.toString());
                throw new AuthError("Received communication error when executing token request", e4, AuthError.b.ERROR_IO);
            } catch (Throwable th) {
                if (this.f != null) {
                    this.f.getConnectionManager().closeIdleConnections(5, TimeUnit.SECONDS);
                }
                if (this.g != null) {
                    try {
                        g();
                    } catch (IOException e5) {
                        gz.b(a, "IOException consuming httppost entity content " + e5.toString());
                    }
                }
                throw th;
            }
        } catch (UnsupportedEncodingException e6) {
            throw new AuthError(e6.getMessage(), e6, AuthError.b.ERROR_BAD_PARAM);
        } catch (IOException e7) {
            throw new AuthError("Received IO error when creating RequestUrlBuilder", e7, AuthError.b.ERROR_IO);
        }
    }

    public HttpResponse f() {
        if (this.b != -1) {
            HttpParams params = this.g.getParams();
            HttpConnectionParams.setSoTimeout(params, this.b);
            this.g.setParams(params);
        }
        gz.a(a, "Logging Request info.", "UserAgent = " + ((String) this.f.getParams().getParameter(CoreProtocolPNames.USER_AGENT)));
        Header[] allHeaders = this.g.getAllHeaders();
        if (allHeaders != null) {
            gz.c(a, "Number of Headers : " + allHeaders.length);
            for (Header header : allHeaders) {
                gz.a(a, "Header used for request: name=" + header.getName(), "val=" + header.getValue());
            }
        } else {
            gz.c(a, "No Headers");
        }
        return this.f.execute(this.g);
    }
}
