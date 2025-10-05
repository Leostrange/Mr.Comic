package defpackage;

import java.io.OutputStream;
import java.net.HttpURLConnection;

/* renamed from: mq  reason: default package */
/* compiled from: NetHttpRequest */
final class mq extends mi {
    private final HttpURLConnection e;

    mq(HttpURLConnection httpURLConnection) {
        this.e = httpURLConnection;
        httpURLConnection.setInstanceFollowRedirects(false);
    }

    public final mj a() {
        HttpURLConnection httpURLConnection = this.e;
        if (this.d != null) {
            String str = this.c;
            if (str != null) {
                a("Content-Type", str);
            }
            String str2 = this.b;
            if (str2 != null) {
                a("Content-Encoding", str2);
            }
            long j = this.a;
            if (j >= 0) {
                a("Content-Length", Long.toString(j));
            }
            String requestMethod = httpURLConnection.getRequestMethod();
            if ("POST".equals(requestMethod) || "PUT".equals(requestMethod)) {
                httpURLConnection.setDoOutput(true);
                if (j < 0 || j > 2147483647L) {
                    httpURLConnection.setChunkedStreamingMode(0);
                } else {
                    httpURLConnection.setFixedLengthStreamingMode((int) j);
                }
                OutputStream outputStream = httpURLConnection.getOutputStream();
                try {
                    this.d.a(outputStream);
                } finally {
                    outputStream.close();
                }
            } else {
                oh.a(j == 0, "%s with non-zero content length is not supported", requestMethod);
            }
        }
        try {
            httpURLConnection.connect();
            return new mr(httpURLConnection);
        } catch (Throwable th) {
            httpURLConnection.disconnect();
            throw th;
        }
    }

    public final void a(int i, int i2) {
        this.e.setReadTimeout(i2);
        this.e.setConnectTimeout(i);
    }

    public final void a(String str, String str2) {
        this.e.addRequestProperty(str, str2);
    }
}
