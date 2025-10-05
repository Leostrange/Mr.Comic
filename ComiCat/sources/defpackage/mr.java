package defpackage;

import java.io.FilterInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.net.HttpURLConnection;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

/* renamed from: mr  reason: default package */
/* compiled from: NetHttpResponse */
final class mr extends mj {
    final HttpURLConnection a;
    private final int b;
    private final String c;
    private final ArrayList<String> d = new ArrayList<>();
    private final ArrayList<String> e = new ArrayList<>();

    /* renamed from: mr$a */
    /* compiled from: NetHttpResponse */
    final class a extends FilterInputStream {
        private long b = 0;

        public a(InputStream inputStream) {
            super(inputStream);
        }

        private void a() {
            String headerField = mr.this.a.getHeaderField("Content-Length");
            long parseLong = headerField == null ? -1 : Long.parseLong(headerField);
            if (parseLong != -1 && this.b != 0 && this.b < parseLong) {
                throw new IOException("Connection closed prematurely: bytesRead = " + this.b + ", Content-Length = " + parseLong);
            }
        }

        public final int read() {
            int read = this.in.read();
            if (read == -1) {
                a();
            } else {
                this.b++;
            }
            return read;
        }

        public final int read(byte[] bArr, int i, int i2) {
            int read = this.in.read(bArr, i, i2);
            if (read == -1) {
                a();
            } else {
                this.b += (long) read;
            }
            return read;
        }
    }

    mr(HttpURLConnection httpURLConnection) {
        this.a = httpURLConnection;
        int responseCode = httpURLConnection.getResponseCode();
        this.b = responseCode == -1 ? 0 : responseCode;
        this.c = httpURLConnection.getResponseMessage();
        ArrayList<String> arrayList = this.d;
        ArrayList<String> arrayList2 = this.e;
        for (Map.Entry entry : httpURLConnection.getHeaderFields().entrySet()) {
            String str = (String) entry.getKey();
            if (str != null) {
                for (String str2 : (List) entry.getValue()) {
                    if (str2 != null) {
                        arrayList.add(str);
                        arrayList2.add(str2);
                    }
                }
            }
        }
    }

    public final InputStream a() {
        InputStream errorStream;
        try {
            errorStream = this.a.getInputStream();
        } catch (IOException e2) {
            errorStream = this.a.getErrorStream();
        }
        if (errorStream == null) {
            return null;
        }
        return new a(errorStream);
    }

    public final String a(int i) {
        return this.d.get(i);
    }

    public final String b() {
        return this.a.getContentEncoding();
    }

    public final String b(int i) {
        return this.e.get(i);
    }

    public final String c() {
        return this.a.getHeaderField("Content-Type");
    }

    public final String d() {
        String headerField = this.a.getHeaderField(0);
        if (headerField == null || !headerField.startsWith("HTTP/1.")) {
            return null;
        }
        return headerField;
    }

    public final int e() {
        return this.b;
    }

    public final String f() {
        return this.c;
    }

    public final int g() {
        return this.d.size();
    }

    public final void h() {
        this.a.disconnect();
    }
}
