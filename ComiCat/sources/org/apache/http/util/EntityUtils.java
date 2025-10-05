package org.apache.http.util;

import android.support.v4.app.FragmentTransaction;
import java.io.IOException;
import java.io.InputStream;
import java.nio.charset.Charset;
import org.apache.http.HeaderElement;
import org.apache.http.HttpEntity;
import org.apache.http.HttpResponse;
import org.apache.http.NameValuePair;

public final class EntityUtils {
    private EntityUtils() {
    }

    public static void consume(HttpEntity httpEntity) {
        InputStream content;
        if (httpEntity != null && httpEntity.isStreaming() && (content = httpEntity.getContent()) != null) {
            content.close();
        }
    }

    public static void consumeQuietly(HttpEntity httpEntity) {
        try {
            consume(httpEntity);
        } catch (IOException e) {
        }
    }

    @Deprecated
    public static String getContentCharSet(HttpEntity httpEntity) {
        NameValuePair parameterByName;
        Args.notNull(httpEntity, "Entity");
        if (httpEntity.getContentType() == null) {
            return null;
        }
        HeaderElement[] elements = httpEntity.getContentType().getElements();
        if (elements.length <= 0 || (parameterByName = elements[0].getParameterByName("charset")) == null) {
            return null;
        }
        return parameterByName.getValue();
    }

    @Deprecated
    public static String getContentMimeType(HttpEntity httpEntity) {
        Args.notNull(httpEntity, "Entity");
        if (httpEntity.getContentType() == null) {
            return null;
        }
        HeaderElement[] elements = httpEntity.getContentType().getElements();
        if (elements.length > 0) {
            return elements[0].getName();
        }
        return null;
    }

    public static byte[] toByteArray(HttpEntity httpEntity) {
        int i = FragmentTransaction.TRANSIT_ENTER_MASK;
        boolean z = false;
        Args.notNull(httpEntity, "Entity");
        InputStream content = httpEntity.getContent();
        if (content == null) {
            return null;
        }
        try {
            if (httpEntity.getContentLength() <= 2147483647L) {
                z = true;
            }
            Args.check(z, "HTTP entity too large to be buffered in memory");
            int contentLength = (int) httpEntity.getContentLength();
            if (contentLength >= 0) {
                i = contentLength;
            }
            ByteArrayBuffer byteArrayBuffer = new ByteArrayBuffer(i);
            byte[] bArr = new byte[FragmentTransaction.TRANSIT_ENTER_MASK];
            while (true) {
                int read = content.read(bArr);
                if (read == -1) {
                    return byteArrayBuffer.toByteArray();
                }
                byteArrayBuffer.append(bArr, 0, read);
            }
        } finally {
            content.close();
        }
    }

    public static String toString(HttpEntity httpEntity) {
        return toString(httpEntity, (Charset) null);
    }

    public static String toString(HttpEntity httpEntity, String str) {
        return toString(httpEntity, str != null ? Charset.forName(str) : null);
    }

    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r1v0, resolved type: java.lang.String} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r1v2, resolved type: java.lang.String} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r1v3, resolved type: java.nio.charset.Charset} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r1v4, resolved type: java.nio.charset.Charset} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r1v8, resolved type: java.nio.charset.Charset} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r1v9, resolved type: java.nio.charset.Charset} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r1v10, resolved type: java.lang.String} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r1v11, resolved type: java.lang.String} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r1v12, resolved type: java.nio.charset.Charset} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r1v13, resolved type: java.lang.String} */
    /* JADX WARNING: Failed to insert additional move for type inference */
    /* JADX WARNING: Multi-variable type inference failed */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static java.lang.String toString(org.apache.http.HttpEntity r8, java.nio.charset.Charset r9) {
        /*
            r1 = 0
            r0 = 0
            java.lang.String r2 = "Entity"
            org.apache.http.util.Args.notNull(r8, r2)
            java.io.InputStream r3 = r8.getContent()
            if (r3 != 0) goto L_0x000e
        L_0x000d:
            return r1
        L_0x000e:
            long r4 = r8.getContentLength()     // Catch:{ all -> 0x0053 }
            r6 = 2147483647(0x7fffffff, double:1.060997895E-314)
            int r2 = (r4 > r6 ? 1 : (r4 == r6 ? 0 : -1))
            if (r2 > 0) goto L_0x001a
            r0 = 1
        L_0x001a:
            java.lang.String r2 = "HTTP entity too large to be buffered in memory"
            org.apache.http.util.Args.check(r0, r2)     // Catch:{ all -> 0x0053 }
            long r4 = r8.getContentLength()     // Catch:{ all -> 0x0053 }
            int r0 = (int) r4
            if (r0 >= 0) goto L_0x0028
            r0 = 4096(0x1000, float:5.74E-42)
        L_0x0028:
            org.apache.http.entity.ContentType r2 = org.apache.http.entity.ContentType.get(r8)     // Catch:{ UnsupportedCharsetException -> 0x0058 }
            if (r2 == 0) goto L_0x0032
            java.nio.charset.Charset r1 = r2.getCharset()     // Catch:{ UnsupportedCharsetException -> 0x0058 }
        L_0x0032:
            if (r1 != 0) goto L_0x0035
            r1 = r9
        L_0x0035:
            if (r1 != 0) goto L_0x0039
            java.nio.charset.Charset r1 = org.apache.http.protocol.HTTP.DEF_CONTENT_CHARSET     // Catch:{ all -> 0x0053 }
        L_0x0039:
            java.io.InputStreamReader r2 = new java.io.InputStreamReader     // Catch:{ all -> 0x0053 }
            r2.<init>(r3, r1)     // Catch:{ all -> 0x0053 }
            org.apache.http.util.CharArrayBuffer r1 = new org.apache.http.util.CharArrayBuffer     // Catch:{ all -> 0x0053 }
            r1.<init>(r0)     // Catch:{ all -> 0x0053 }
            r0 = 1024(0x400, float:1.435E-42)
            char[] r0 = new char[r0]     // Catch:{ all -> 0x0053 }
        L_0x0047:
            int r4 = r2.read(r0)     // Catch:{ all -> 0x0053 }
            r5 = -1
            if (r4 == r5) goto L_0x0065
            r5 = 0
            r1.append((char[]) r0, (int) r5, (int) r4)     // Catch:{ all -> 0x0053 }
            goto L_0x0047
        L_0x0053:
            r0 = move-exception
            r3.close()
            throw r0
        L_0x0058:
            r2 = move-exception
            if (r9 != 0) goto L_0x0032
            java.io.UnsupportedEncodingException r0 = new java.io.UnsupportedEncodingException     // Catch:{ all -> 0x0053 }
            java.lang.String r1 = r2.getMessage()     // Catch:{ all -> 0x0053 }
            r0.<init>(r1)     // Catch:{ all -> 0x0053 }
            throw r0     // Catch:{ all -> 0x0053 }
        L_0x0065:
            java.lang.String r1 = r1.toString()     // Catch:{ all -> 0x0053 }
            r3.close()
            goto L_0x000d
        */
        throw new UnsupportedOperationException("Method not decompiled: org.apache.http.util.EntityUtils.toString(org.apache.http.HttpEntity, java.nio.charset.Charset):java.lang.String");
    }

    public static void updateEntity(HttpResponse httpResponse, HttpEntity httpEntity) {
        Args.notNull(httpResponse, "Response");
        consume(httpResponse.getEntity());
        httpResponse.setEntity(httpEntity);
    }
}
