package defpackage;

import java.net.HttpURLConnection;
import java.net.URL;
import java.util.Arrays;
import javax.net.ssl.HostnameVerifier;
import javax.net.ssl.HttpsURLConnection;
import javax.net.ssl.SSLSocketFactory;

/* renamed from: ms  reason: default package */
/* compiled from: NetHttpTransport */
public final class ms extends mf {
    private static final String[] b;
    private final mo c;
    private final SSLSocketFactory d;
    private final HostnameVerifier e;

    static {
        String[] strArr = {"DELETE", "GET", "HEAD", "OPTIONS", "POST", "PUT", "TRACE"};
        b = strArr;
        Arrays.sort(strArr);
    }

    public ms() {
        this((byte) 0);
    }

    private ms(byte b2) {
        this.c = new mp();
        this.d = null;
        this.e = null;
    }

    /* access modifiers changed from: protected */
    public final /* synthetic */ mi a(String str, String str2) {
        oh.a(a(str), "HTTP method %s not supported", str);
        HttpURLConnection a = this.c.a(new URL(str2));
        a.setRequestMethod(str);
        if (a instanceof HttpsURLConnection) {
            HttpsURLConnection httpsURLConnection = (HttpsURLConnection) a;
            if (this.e != null) {
                httpsURLConnection.setHostnameVerifier(this.e);
            }
            if (this.d != null) {
                httpsURLConnection.setSSLSocketFactory(this.d);
            }
        }
        return new mq(a);
    }

    public final boolean a(String str) {
        return Arrays.binarySearch(b, str) >= 0;
    }
}
