package defpackage;

import java.io.ByteArrayOutputStream;
import java.io.InputStream;
import java.nio.charset.Charset;
import java.util.logging.Level;
import java.util.logging.Logger;
import org.apache.http.message.TokenParser;

/* renamed from: mc  reason: default package */
/* compiled from: HttpResponse */
public final class mc {
    public final String a;
    mj b;
    public final int c;
    public final String d;
    public final lz e;
    private InputStream f;
    private final String g;
    private final ly h;
    private int i;
    private boolean j;
    private boolean k;

    mc(lz lzVar, mj mjVar) {
        StringBuilder sb;
        ly lyVar = null;
        this.e = lzVar;
        this.i = lzVar.d;
        this.j = lzVar.e;
        this.b = mjVar;
        this.g = mjVar.b();
        int e2 = mjVar.e();
        this.c = e2 < 0 ? 0 : e2;
        String f2 = mjVar.f();
        this.d = f2;
        Logger logger = mf.a;
        boolean z = this.j && logger.isLoggable(Level.CONFIG);
        if (z) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append("-------------- RESPONSE --------------").append(ok.a);
            String d2 = mjVar.d();
            if (d2 != null) {
                sb2.append(d2);
            } else {
                sb2.append(this.c);
                if (f2 != null) {
                    sb2.append(TokenParser.SP).append(f2);
                }
            }
            sb2.append(ok.a);
            sb = sb2;
        } else {
            sb = null;
        }
        lzVar.c.a(mjVar, z ? sb : null);
        String c2 = mjVar.c();
        c2 = c2 == null ? (String) lw.a(lzVar.c.contentType) : c2;
        this.a = c2;
        this.h = c2 != null ? new ly(c2) : lyVar;
        if (z) {
            logger.config(sb.toString());
        }
    }

    public final <T> T a(Class<T> cls) {
        boolean z = true;
        int i2 = this.c;
        if (this.e.h.equals("HEAD") || i2 / 100 == 1 || i2 == 204 || i2 == 304) {
            c();
            z = false;
        }
        if (!z) {
            return null;
        }
        return this.e.m.a(b(), f(), cls);
    }

    public final boolean a() {
        int i2 = this.c;
        return i2 >= 200 && i2 < 300;
    }

    /* JADX WARNING: Code restructure failed: missing block: B:22:0x003f, code lost:
        r0.close();
     */
    /* JADX WARNING: Code restructure failed: missing block: B:27:0x004b, code lost:
        r1 = move-exception;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:28:0x004c, code lost:
        r5 = r1;
        r1 = r0;
        r0 = r5;
     */
    /* JADX WARNING: Failed to process nested try/catch */
    /* JADX WARNING: Removed duplicated region for block: B:21:0x003e A[ExcHandler: EOFException (e java.io.EOFException), PHI: r0 
      PHI: (r0v7 java.io.InputStream) = (r0v3 java.io.InputStream), (r0v8 java.io.InputStream) binds: [B:4:0x000c, B:11:0x001e] A[DONT_GENERATE, DONT_INLINE], Splitter:B:4:0x000c] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final java.io.InputStream b() {
        /*
            r6 = this;
            boolean r0 = r6.k
            if (r0 != 0) goto L_0x003b
            mj r0 = r6.b
            java.io.InputStream r0 = r0.a()
            if (r0 == 0) goto L_0x0038
            java.lang.String r1 = r6.g     // Catch:{ EOFException -> 0x003e, all -> 0x0043 }
            if (r1 == 0) goto L_0x001e
            java.lang.String r2 = "gzip"
            boolean r1 = r1.contains(r2)     // Catch:{ EOFException -> 0x003e, all -> 0x0043 }
            if (r1 == 0) goto L_0x001e
            java.util.zip.GZIPInputStream r1 = new java.util.zip.GZIPInputStream     // Catch:{ EOFException -> 0x003e, all -> 0x0043 }
            r1.<init>(r0)     // Catch:{ EOFException -> 0x003e, all -> 0x0043 }
            r0 = r1
        L_0x001e:
            java.util.logging.Logger r2 = defpackage.mf.a     // Catch:{ EOFException -> 0x003e, all -> 0x004b }
            boolean r1 = r6.j     // Catch:{ EOFException -> 0x003e, all -> 0x004b }
            if (r1 == 0) goto L_0x0036
            java.util.logging.Level r1 = java.util.logging.Level.CONFIG     // Catch:{ EOFException -> 0x003e, all -> 0x004b }
            boolean r1 = r2.isLoggable(r1)     // Catch:{ EOFException -> 0x003e, all -> 0x004b }
            if (r1 == 0) goto L_0x0036
            ob r1 = new ob     // Catch:{ EOFException -> 0x003e, all -> 0x004b }
            java.util.logging.Level r3 = java.util.logging.Level.CONFIG     // Catch:{ EOFException -> 0x003e, all -> 0x004b }
            int r4 = r6.i     // Catch:{ EOFException -> 0x003e, all -> 0x004b }
            r1.<init>(r0, r2, r3, r4)     // Catch:{ EOFException -> 0x003e, all -> 0x004b }
            r0 = r1
        L_0x0036:
            r6.f = r0     // Catch:{ EOFException -> 0x003e, all -> 0x004b }
        L_0x0038:
            r0 = 1
            r6.k = r0
        L_0x003b:
            java.io.InputStream r0 = r6.f
            return r0
        L_0x003e:
            r1 = move-exception
            r0.close()
            goto L_0x0038
        L_0x0043:
            r1 = move-exception
            r5 = r1
            r1 = r0
            r0 = r5
        L_0x0047:
            r1.close()
            throw r0
        L_0x004b:
            r1 = move-exception
            r5 = r1
            r1 = r0
            r0 = r5
            goto L_0x0047
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.mc.b():java.io.InputStream");
    }

    public final void c() {
        InputStream b2 = b();
        if (b2 != null) {
            b2.close();
        }
    }

    public final void d() {
        c();
        this.b.h();
    }

    public final String e() {
        InputStream b2 = b();
        if (b2 == null) {
            return "";
        }
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        nx.a(b2, byteArrayOutputStream, true);
        return byteArrayOutputStream.toString(f().name());
    }

    public final Charset f() {
        return (this.h == null || this.h.b() == null) ? np.b : this.h.b();
    }
}
