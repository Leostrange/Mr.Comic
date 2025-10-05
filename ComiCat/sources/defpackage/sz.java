package defpackage;

import android.text.TextUtils;
import com.box.androidsdk.content.auth.OAuthActivity;
import com.box.androidsdk.content.requests.BoxRequestsMetadata;
import defpackage.sm;
import defpackage.sn;
import java.beans.PropertyChangeEvent;
import java.beans.PropertyChangeListener;
import java.net.URI;
import java.net.URISyntaxException;
import org.apache.http.Header;
import org.apache.http.HttpHost;
import org.apache.http.HttpResponse;
import org.apache.http.HttpVersion;
import org.apache.http.client.HttpClient;
import org.apache.http.conn.params.ConnManagerParams;
import org.apache.http.conn.scheme.PlainSocketFactory;
import org.apache.http.conn.scheme.Scheme;
import org.apache.http.conn.scheme.SchemeRegistry;
import org.apache.http.conn.ssl.SSLSocketFactory;
import org.apache.http.impl.client.DefaultHttpClient;
import org.apache.http.impl.conn.tsccm.ThreadSafeClientConnManager;
import org.apache.http.params.BasicHttpParams;
import org.apache.http.params.HttpConnectionParams;
import org.apache.http.params.HttpProtocolParams;
import org.json.JSONObject;

/* renamed from: sz  reason: default package */
/* compiled from: LiveConnectClient */
public class sz {
    public static final tg a = new tg() {
        static final /* synthetic */ boolean a = (!sz.class.desiredAssertionStatus());

        public final void a(te teVar) {
            if (!a && teVar == null) {
                throw new AssertionError();
            }
        }

        public final void a(tf tfVar, te teVar) {
            if (!a && tfVar == null) {
                throw new AssertionError();
            } else if (!a && teVar == null) {
                throw new AssertionError();
            }
        }
    };
    static final /* synthetic */ boolean e = (!sz.class.desiredAssertionStatus());
    private static int f = 1024;
    private static int g = 30000;
    private static volatile HttpClient h;
    private static Object i = new Object();
    private static final td j = new td() {
        static final /* synthetic */ boolean a = (!sz.class.desiredAssertionStatus());
    };
    private static final ti k = new ti() {
        static final /* synthetic */ boolean a = (!sz.class.desiredAssertionStatus());
    };
    private static int l = 30000;
    public HttpClient b;
    public final ta c;
    public c d = c.a;

    /* renamed from: sz$a */
    /* compiled from: LiveConnectClient */
    public static class a implements sm.a {
        static final /* synthetic */ boolean a = (!sz.class.desiredAssertionStatus());
        private final tc b;

        public a(tc tcVar) {
            this.b = tcVar;
        }

        public final void a(HttpResponse httpResponse) {
            Header firstHeader = httpResponse.getFirstHeader("Content-Length");
            if (firstHeader != null) {
                int intValue = Integer.valueOf(firstHeader.getValue()).intValue();
                tc tcVar = this.b;
                if (tc.c || intValue >= 0) {
                    tcVar.a = intValue;
                    return;
                }
                throw new AssertionError();
            }
        }
    }

    /* renamed from: sz$b */
    /* compiled from: LiveConnectClient */
    public static class b implements sn.a<JSONObject> {
        static final /* synthetic */ boolean a = (!sz.class.desiredAssertionStatus());
        private final tg b;
        private final te c;

        public b(te teVar, tg tgVar) {
            if (a || teVar != null) {
                this.c = teVar;
                this.b = tgVar;
                return;
            }
            throw new AssertionError();
        }

        public final /* synthetic */ void a(Object obj) {
            JSONObject jSONObject = (JSONObject) obj;
            te teVar = this.c;
            if (te.b || jSONObject != null) {
                teVar.a = jSONObject;
                this.b.a(this.c);
                return;
            }
            throw new AssertionError();
        }

        public final void a(tf tfVar) {
            this.b.a(tfVar, this.c);
        }
    }

    /* renamed from: sz$c */
    /* compiled from: LiveConnectClient */
    public enum c {
        ;

        public abstract void a();
    }

    public sz(ta taVar) {
        tb.a((Object) taVar, OAuthActivity.EXTRA_SESSION);
        tb.a(taVar.a(), "session.getAccessToken()");
        this.c = taVar;
        ta taVar2 = this.c;
        taVar2.c.addPropertyChangeListener("accessToken", new PropertyChangeListener() {
            public final void propertyChange(PropertyChangeEvent propertyChangeEvent) {
                if (TextUtils.isEmpty((String) propertyChangeEvent.getNewValue())) {
                    c unused = sz.this.d = c.b;
                } else {
                    c unused2 = sz.this.d = c.a;
                }
            }
        });
        this.b = a();
    }

    public static URI a(String str) {
        try {
            return new URI(str);
        } catch (URISyntaxException e2) {
            throw new IllegalArgumentException(String.format("Input parameter '%1$s' is invalid. '%1$s' must be a valid URI.", new Object[]{BoxRequestsMetadata.UpdateFileMetadata.BoxMetadataUpdateTask.PATH}));
        }
    }

    private static HttpClient a() {
        if (h == null) {
            synchronized (i) {
                if (h == null) {
                    BasicHttpParams basicHttpParams = new BasicHttpParams();
                    HttpConnectionParams.setConnectionTimeout(basicHttpParams, g);
                    HttpConnectionParams.setSoTimeout(basicHttpParams, l);
                    ConnManagerParams.setMaxTotalConnections(basicHttpParams, 100);
                    HttpProtocolParams.setVersion(basicHttpParams, HttpVersion.HTTP_1_1);
                    SchemeRegistry schemeRegistry = new SchemeRegistry();
                    schemeRegistry.register(new Scheme(HttpHost.DEFAULT_SCHEME_NAME, PlainSocketFactory.getSocketFactory(), 80));
                    schemeRegistry.register(new Scheme("https", SSLSocketFactory.getSocketFactory(), 443));
                    h = new DefaultHttpClient(new ThreadSafeClientConnManager(basicHttpParams, schemeRegistry), basicHttpParams);
                }
            }
        }
        return h;
    }

    public static void b(String str) {
        tb.a(str, BoxRequestsMetadata.UpdateFileMetadata.BoxMetadataUpdateTask.PATH);
        if (str.toLowerCase().startsWith(HttpHost.DEFAULT_SCHEME_NAME) || str.toLowerCase().startsWith("https")) {
            throw new IllegalArgumentException(String.format("Input parameter '%1$s' is invalid. '%1$s' cannot be absolute.", new Object[]{BoxRequestsMetadata.UpdateFileMetadata.BoxMetadataUpdateTask.PATH}));
        }
    }
}
