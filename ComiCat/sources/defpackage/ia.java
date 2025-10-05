package defpackage;

import defpackage.hy;
import java.io.Closeable;
import java.io.IOException;
import java.io.OutputStream;
import java.net.HttpURLConnection;
import java.net.Proxy;
import java.net.URL;
import java.util.Iterator;
import java.util.logging.Logger;
import javax.net.ssl.HttpsURLConnection;

/* renamed from: ia  reason: default package */
/* compiled from: StandardHttpRequestor */
public class ia extends hy {
    public static final ia c = new ia(a.a);
    private static final Logger d = Logger.getLogger(ia.class.getCanonicalName());
    private static volatile boolean e = false;
    private final a f;

    /* renamed from: ia$a */
    /* compiled from: StandardHttpRequestor */
    public static final class a {
        public static final a a;
        final Proxy b;
        final long c;
        final long d;

        /* renamed from: ia$a$a  reason: collision with other inner class name */
        /* compiled from: StandardHttpRequestor */
        public static final class C0004a {
            Proxy a;
            long b;
            long c;

            private C0004a() {
                this(Proxy.NO_PROXY, hy.a, hy.b);
            }

            /* synthetic */ C0004a(byte b2) {
                this();
            }

            private C0004a(Proxy proxy, long j, long j2) {
                this.a = proxy;
                this.b = j;
                this.c = j2;
            }
        }

        static {
            C0004a aVar = new C0004a((byte) 0);
            a = new a(aVar.a, aVar.b, aVar.c, (byte) 0);
        }

        private a(Proxy proxy, long j, long j2) {
            this.b = proxy;
            this.c = j;
            this.d = j2;
        }

        private /* synthetic */ a(Proxy proxy, long j, long j2, byte b2) {
            this(proxy, j, j2);
        }
    }

    /* renamed from: ia$b */
    /* compiled from: StandardHttpRequestor */
    class b extends hy.c {
        private final OutputStream b;
        private HttpURLConnection c;

        public b(HttpURLConnection httpURLConnection) {
            this.c = httpURLConnection;
            this.b = httpURLConnection.setDoOutput(true);
            httpURLConnection.connect();
        }

        public final OutputStream a() {
            return this.b;
        }

        public final void b() {
            if (this.c != null) {
                if (this.c.getDoOutput()) {
                    try {
                        ij.a((Closeable) this.c.getOutputStream());
                    } catch (IOException e) {
                    }
                }
                this.c = null;
            }
        }

        public final hy.b c() {
            if (this.c == null) {
                throw new IllegalStateException("Can't finish().  Uploader already closed.");
            }
            try {
                return ia.b(this.c);
            } finally {
                this.c = null;
            }
        }
    }

    private ia(a aVar) {
        this.f = aVar;
    }

    static /* synthetic */ hy.b b(HttpURLConnection httpURLConnection) {
        int responseCode = httpURLConnection.getResponseCode();
        return new hy.b(responseCode, (responseCode >= 400 || responseCode == -1) ? httpURLConnection.getErrorStream() : httpURLConnection.getInputStream(), httpURLConnection.getHeaderFields());
    }

    public final /* synthetic */ hy.c a(String str, Iterable iterable) {
        HttpURLConnection httpURLConnection = (HttpURLConnection) new URL(str).openConnection(this.f.b);
        httpURLConnection.setConnectTimeout((int) this.f.c);
        httpURLConnection.setReadTimeout((int) this.f.d);
        httpURLConnection.setUseCaches(false);
        httpURLConnection.setAllowUserInteraction(false);
        if (httpURLConnection instanceof HttpsURLConnection) {
            hz.a((HttpsURLConnection) httpURLConnection);
        } else if (!e) {
            e = true;
            d.warning("Certificate pinning disabled for HTTPS connections. This is likely because your JRE does not return javax.net.ssl.HttpsURLConnection objects for https network connections. Be aware your app may be prone to man-in-the-middle attacks without proper SSL certificate validation. If you are using Google App Engine, please configure DbxRequestConfig to use GoogleAppEngineRequestor.");
        }
        Iterator it = iterable.iterator();
        while (it.hasNext()) {
            hy.a aVar = (hy.a) it.next();
            httpURLConnection.addRequestProperty(aVar.a, aVar.b);
        }
        httpURLConnection.setRequestMethod("POST");
        return new b(httpURLConnection);
    }
}
