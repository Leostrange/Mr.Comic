package defpackage;

import com.amazon.identity.auth.device.AuthError;
import com.amazon.identity.auth.device.InvalidTokenAuthError;
import com.box.androidsdk.content.auth.BoxAuthentication;
import com.box.androidsdk.content.models.BoxError;
import org.apache.http.HttpResponse;
import org.apache.http.ParseException;
import org.json.JSONException;
import org.json.JSONObject;

/* renamed from: gi  reason: default package */
/* compiled from: AbstractJSONTokenResponse */
public abstract class gi implements gp {
    private static final String b = gi.class.getName();
    final HttpResponse a;
    private String c;

    public gi(HttpResponse httpResponse) {
        this.a = httpResponse;
    }

    private void a(String str) {
        throw new AuthError("Server Error : " + String.format("Error code: %s Server response: %s", new Object[]{str, this.c}), AuthError.b.ERROR_SERVER_REPSONSE);
    }

    private static boolean a(HttpResponse httpResponse) {
        int statusCode = httpResponse.getStatusLine().getStatusCode();
        return statusCode >= 500 && statusCode <= 599;
    }

    private int c() {
        try {
            return this.a.getStatusLine().getStatusCode();
        } catch (NullPointerException e) {
            throw new AuthError("StatusLine is null", e, AuthError.b.ERROR_COM);
        }
    }

    protected static long e(JSONObject jSONObject) {
        try {
            if (jSONObject.has("token_expires_in")) {
                return jSONObject.getLong("token_expires_in");
            }
            if (jSONObject.has(BoxAuthentication.BoxAuthenticationInfo.FIELD_EXPIRES_IN)) {
                return jSONObject.getLong(BoxAuthentication.BoxAuthenticationInfo.FIELD_EXPIRES_IN);
            }
            gz.d(b, "Unable to find expiration time in JSON response, AccessToken will not expire locally");
            return 0;
        } catch (JSONException e) {
            gz.b(b, "Unable to parse expiration time in JSON response, AccessToken will not expire locally");
            return 0;
        }
    }

    public String a() {
        return "3.3.1";
    }

    /* access modifiers changed from: protected */
    public JSONObject a(JSONObject jSONObject) {
        return jSONObject.getJSONObject("response");
    }

    /* JADX WARNING: Code restructure failed: missing block: B:52:0x01db, code lost:
        r0 = move-exception;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:53:0x01dc, code lost:
        defpackage.gz.b(b, "Exception accessing " + r2 + " response:" + r0.toString());
     */
    /* JADX WARNING: Code restructure failed: missing block: B:54:0x0209, code lost:
        throw new com.amazon.identity.auth.device.AuthError(r0.getMessage(), r0, com.amazon.identity.auth.device.AuthError.b.ERROR_COM);
     */
    /* JADX WARNING: Removed duplicated region for block: B:52:0x01db A[Catch:{ JSONException -> 0x00a0, ParseException -> 0x00fb, IOException -> 0x01db, JSONException -> 0x00cb, ParseException -> 0x0126, IOException -> 0x01db, all -> 0x00ec }, ExcHandler: IOException (r0v0 'e' java.io.IOException A[CUSTOM_DECLARE, Catch:{  }]), PHI: r2 
      PHI: (r2v1 java.lang.String) = (r2v0 java.lang.String), (r2v26 java.lang.String), (r2v26 java.lang.String), (r2v26 java.lang.String) binds: [B:1:0x0003, B:7:0x0062, B:34:0x00fc, B:15:0x00a1] A[DONT_GENERATE, DONT_INLINE], Splitter:B:1:0x0003] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final void b() {
        /*
            r6 = this;
            r1 = 0
            java.lang.String r2 = ""
            org.apache.http.HttpResponse r0 = r6.a     // Catch:{ JSONException -> 0x00cb, ParseException -> 0x0126, IOException -> 0x01db }
            boolean r0 = a((org.apache.http.HttpResponse) r0)     // Catch:{ JSONException -> 0x00cb, ParseException -> 0x0126, IOException -> 0x01db }
            if (r0 == 0) goto L_0x0024
            java.lang.StringBuilder r0 = new java.lang.StringBuilder     // Catch:{ JSONException -> 0x00cb, ParseException -> 0x0126, IOException -> 0x01db }
            java.lang.String r3 = "500 error (status="
            r0.<init>(r3)     // Catch:{ JSONException -> 0x00cb, ParseException -> 0x0126, IOException -> 0x01db }
            int r3 = r6.c()     // Catch:{ JSONException -> 0x00cb, ParseException -> 0x0126, IOException -> 0x01db }
            java.lang.StringBuilder r0 = r0.append(r3)     // Catch:{ JSONException -> 0x00cb, ParseException -> 0x0126, IOException -> 0x01db }
            java.lang.String r3 = ")"
            java.lang.StringBuilder r0 = r0.append(r3)     // Catch:{ JSONException -> 0x00cb, ParseException -> 0x0126, IOException -> 0x01db }
            java.lang.String r2 = r0.toString()     // Catch:{ JSONException -> 0x00cb, ParseException -> 0x0126, IOException -> 0x01db }
        L_0x0024:
            org.apache.http.HttpResponse r0 = r6.a     // Catch:{ JSONException -> 0x00cb, ParseException -> 0x0126, IOException -> 0x01db }
            org.apache.http.HttpEntity r0 = r0.getEntity()     // Catch:{ JSONException -> 0x00cb, ParseException -> 0x0126, IOException -> 0x01db }
            java.lang.String r0 = org.apache.http.util.EntityUtils.toString(r0)     // Catch:{ JSONException -> 0x00cb, ParseException -> 0x0126, IOException -> 0x01db }
            java.lang.String r0 = r0.trim()     // Catch:{ JSONException -> 0x00cb, ParseException -> 0x0126, IOException -> 0x01db }
            r6.c = r0     // Catch:{ JSONException -> 0x00cb, ParseException -> 0x0126, IOException -> 0x01db }
            java.lang.String r0 = b     // Catch:{ JSONException -> 0x00cb, ParseException -> 0x0126, IOException -> 0x01db }
            java.lang.String r3 = "Entity Extracted"
            java.lang.StringBuilder r4 = new java.lang.StringBuilder     // Catch:{ JSONException -> 0x00cb, ParseException -> 0x0126, IOException -> 0x01db }
            java.lang.String r5 = "entity="
            r4.<init>(r5)     // Catch:{ JSONException -> 0x00cb, ParseException -> 0x0126, IOException -> 0x01db }
            java.lang.String r5 = r6.c     // Catch:{ JSONException -> 0x00cb, ParseException -> 0x0126, IOException -> 0x01db }
            java.lang.StringBuilder r4 = r4.append(r5)     // Catch:{ JSONException -> 0x00cb, ParseException -> 0x0126, IOException -> 0x01db }
            java.lang.String r4 = r4.toString()     // Catch:{ JSONException -> 0x00cb, ParseException -> 0x0126, IOException -> 0x01db }
            defpackage.gz.a((java.lang.String) r0, (java.lang.String) r3, (java.lang.String) r4)     // Catch:{ JSONException -> 0x00cb, ParseException -> 0x0126, IOException -> 0x01db }
            org.json.JSONObject r0 = new org.json.JSONObject     // Catch:{ JSONException -> 0x00cb, ParseException -> 0x0126, IOException -> 0x01db }
            java.lang.String r3 = r6.c     // Catch:{ JSONException -> 0x00cb, ParseException -> 0x0126, IOException -> 0x01db }
            r0.<init>(r3)     // Catch:{ JSONException -> 0x00cb, ParseException -> 0x0126, IOException -> 0x01db }
            org.json.JSONObject r3 = r6.a((org.json.JSONObject) r0)     // Catch:{ JSONException -> 0x00cb, ParseException -> 0x0126, IOException -> 0x01db }
            r6.b(r0)     // Catch:{ JSONException -> 0x00cb, ParseException -> 0x0126, IOException -> 0x01db }
            r6.d(r3)     // Catch:{ JSONException -> 0x00cb, ParseException -> 0x0126, IOException -> 0x01db }
            r6.c(r3)     // Catch:{ JSONException -> 0x00cb, ParseException -> 0x0126, IOException -> 0x01db }
            java.lang.String r0 = "force_update"
            java.lang.String r1 = r3.getString(r0)     // Catch:{ JSONException -> 0x00a0, ParseException -> 0x00fb, IOException -> 0x01db }
            if (r1 == 0) goto L_0x0155
            java.lang.String r0 = "1"
            boolean r0 = r1.equals(r0)     // Catch:{ JSONException -> 0x00a0, ParseException -> 0x00fb, IOException -> 0x01db }
            if (r0 == 0) goto L_0x0155
            java.lang.String r0 = r6.a()     // Catch:{ JSONException -> 0x00a0, ParseException -> 0x00fb, IOException -> 0x01db }
            java.lang.String r3 = b     // Catch:{ JSONException -> 0x00a0, ParseException -> 0x00fb, IOException -> 0x01db }
            java.lang.StringBuilder r4 = new java.lang.StringBuilder     // Catch:{ JSONException -> 0x00a0, ParseException -> 0x00fb, IOException -> 0x01db }
            java.lang.String r5 = "Force update requested ver:"
            r4.<init>(r5)     // Catch:{ JSONException -> 0x00a0, ParseException -> 0x00fb, IOException -> 0x01db }
            java.lang.StringBuilder r4 = r4.append(r0)     // Catch:{ JSONException -> 0x00a0, ParseException -> 0x00fb, IOException -> 0x01db }
            java.lang.String r4 = r4.toString()     // Catch:{ JSONException -> 0x00a0, ParseException -> 0x00fb, IOException -> 0x01db }
            defpackage.gz.b(r3, r4)     // Catch:{ JSONException -> 0x00a0, ParseException -> 0x00fb, IOException -> 0x01db }
            com.amazon.identity.auth.device.AuthError r3 = new com.amazon.identity.auth.device.AuthError     // Catch:{ JSONException -> 0x00a0, ParseException -> 0x00fb, IOException -> 0x01db }
            java.lang.StringBuilder r4 = new java.lang.StringBuilder     // Catch:{ JSONException -> 0x00a0, ParseException -> 0x00fb, IOException -> 0x01db }
            java.lang.String r5 = "Server denied request, requested Force Update ver:"
            r4.<init>(r5)     // Catch:{ JSONException -> 0x00a0, ParseException -> 0x00fb, IOException -> 0x01db }
            java.lang.StringBuilder r0 = r4.append(r0)     // Catch:{ JSONException -> 0x00a0, ParseException -> 0x00fb, IOException -> 0x01db }
            java.lang.String r0 = r0.toString()     // Catch:{ JSONException -> 0x00a0, ParseException -> 0x00fb, IOException -> 0x01db }
            r4 = 0
            com.amazon.identity.auth.device.AuthError$b r5 = com.amazon.identity.auth.device.AuthError.b.ERROR_FORCE_UPDATE     // Catch:{ JSONException -> 0x00a0, ParseException -> 0x00fb, IOException -> 0x01db }
            r3.<init>(r0, r4, r5)     // Catch:{ JSONException -> 0x00a0, ParseException -> 0x00fb, IOException -> 0x01db }
            throw r3     // Catch:{ JSONException -> 0x00a0, ParseException -> 0x00fb, IOException -> 0x01db }
        L_0x00a0:
            r0 = move-exception
            boolean r1 = android.text.TextUtils.isEmpty(r1)     // Catch:{ JSONException -> 0x00cb, ParseException -> 0x0126, IOException -> 0x01db }
            if (r1 != 0) goto L_0x0155
            java.lang.String r1 = b     // Catch:{ JSONException -> 0x00cb, ParseException -> 0x0126, IOException -> 0x01db }
            java.lang.StringBuilder r3 = new java.lang.StringBuilder     // Catch:{ JSONException -> 0x00cb, ParseException -> 0x0126, IOException -> 0x01db }
            java.lang.String r4 = "JSON exception parsing force update response:"
            r3.<init>(r4)     // Catch:{ JSONException -> 0x00cb, ParseException -> 0x0126, IOException -> 0x01db }
            java.lang.String r4 = r0.toString()     // Catch:{ JSONException -> 0x00cb, ParseException -> 0x0126, IOException -> 0x01db }
            java.lang.StringBuilder r3 = r3.append(r4)     // Catch:{ JSONException -> 0x00cb, ParseException -> 0x0126, IOException -> 0x01db }
            java.lang.String r3 = r3.toString()     // Catch:{ JSONException -> 0x00cb, ParseException -> 0x0126, IOException -> 0x01db }
            defpackage.gz.b(r1, r3)     // Catch:{ JSONException -> 0x00cb, ParseException -> 0x0126, IOException -> 0x01db }
            com.amazon.identity.auth.device.AuthError r1 = new com.amazon.identity.auth.device.AuthError     // Catch:{ JSONException -> 0x00cb, ParseException -> 0x0126, IOException -> 0x01db }
            java.lang.String r3 = r0.getMessage()     // Catch:{ JSONException -> 0x00cb, ParseException -> 0x0126, IOException -> 0x01db }
            com.amazon.identity.auth.device.AuthError$b r4 = com.amazon.identity.auth.device.AuthError.b.ERROR_JSON     // Catch:{ JSONException -> 0x00cb, ParseException -> 0x0126, IOException -> 0x01db }
            r1.<init>(r3, r0, r4)     // Catch:{ JSONException -> 0x00cb, ParseException -> 0x0126, IOException -> 0x01db }
            throw r1     // Catch:{ JSONException -> 0x00cb, ParseException -> 0x0126, IOException -> 0x01db }
        L_0x00cb:
            r0 = move-exception
            r1 = r2
            java.lang.String r2 = r6.c     // Catch:{ all -> 0x00ec }
            if (r2 == 0) goto L_0x0197
            java.lang.String r2 = r6.c     // Catch:{ all -> 0x00ec }
            java.lang.String r3 = "!DOCTYPE html"
            boolean r2 = r2.contains(r3)     // Catch:{ all -> 0x00ec }
            if (r2 == 0) goto L_0x0197
            java.lang.String r1 = b     // Catch:{ all -> 0x00ec }
            java.lang.String r2 = "Server sending back default error page - BAD request"
            defpackage.gz.b(r1, r2)     // Catch:{ all -> 0x00ec }
            com.amazon.identity.auth.device.AuthError r1 = new com.amazon.identity.auth.device.AuthError     // Catch:{ all -> 0x00ec }
            java.lang.String r2 = "Server sending back default error page - BAD request"
            com.amazon.identity.auth.device.AuthError$b r3 = com.amazon.identity.auth.device.AuthError.b.ERROR_JSON     // Catch:{ all -> 0x00ec }
            r1.<init>(r2, r0, r3)     // Catch:{ all -> 0x00ec }
            throw r1     // Catch:{ all -> 0x00ec }
        L_0x00ec:
            r0 = move-exception
            org.apache.http.HttpResponse r1 = r6.a     // Catch:{ IllegalStateException -> 0x020a, IOException -> 0x0225 }
            org.apache.http.HttpEntity r1 = r1.getEntity()     // Catch:{ IllegalStateException -> 0x020a, IOException -> 0x0225 }
            java.io.InputStream r1 = r1.getContent()     // Catch:{ IllegalStateException -> 0x020a, IOException -> 0x0225 }
            r1.close()     // Catch:{ IllegalStateException -> 0x020a, IOException -> 0x0225 }
        L_0x00fa:
            throw r0
        L_0x00fb:
            r0 = move-exception
            boolean r1 = android.text.TextUtils.isEmpty(r1)     // Catch:{ JSONException -> 0x00cb, ParseException -> 0x0126, IOException -> 0x01db }
            if (r1 != 0) goto L_0x0155
            java.lang.String r1 = b     // Catch:{ JSONException -> 0x00cb, ParseException -> 0x0126, IOException -> 0x01db }
            java.lang.StringBuilder r3 = new java.lang.StringBuilder     // Catch:{ JSONException -> 0x00cb, ParseException -> 0x0126, IOException -> 0x01db }
            java.lang.String r4 = "JSON parsing exception force update parsing response:"
            r3.<init>(r4)     // Catch:{ JSONException -> 0x00cb, ParseException -> 0x0126, IOException -> 0x01db }
            java.lang.String r4 = r0.toString()     // Catch:{ JSONException -> 0x00cb, ParseException -> 0x0126, IOException -> 0x01db }
            java.lang.StringBuilder r3 = r3.append(r4)     // Catch:{ JSONException -> 0x00cb, ParseException -> 0x0126, IOException -> 0x01db }
            java.lang.String r3 = r3.toString()     // Catch:{ JSONException -> 0x00cb, ParseException -> 0x0126, IOException -> 0x01db }
            defpackage.gz.b(r1, r3)     // Catch:{ JSONException -> 0x00cb, ParseException -> 0x0126, IOException -> 0x01db }
            com.amazon.identity.auth.device.AuthError r1 = new com.amazon.identity.auth.device.AuthError     // Catch:{ JSONException -> 0x00cb, ParseException -> 0x0126, IOException -> 0x01db }
            java.lang.String r3 = r0.getMessage()     // Catch:{ JSONException -> 0x00cb, ParseException -> 0x0126, IOException -> 0x01db }
            com.amazon.identity.auth.device.AuthError$b r4 = com.amazon.identity.auth.device.AuthError.b.ERROR_PARSE     // Catch:{ JSONException -> 0x00cb, ParseException -> 0x0126, IOException -> 0x01db }
            r1.<init>(r3, r0, r4)     // Catch:{ JSONException -> 0x00cb, ParseException -> 0x0126, IOException -> 0x01db }
            throw r1     // Catch:{ JSONException -> 0x00cb, ParseException -> 0x0126, IOException -> 0x01db }
        L_0x0126:
            r0 = move-exception
            java.lang.String r1 = b     // Catch:{ all -> 0x00ec }
            java.lang.StringBuilder r3 = new java.lang.StringBuilder     // Catch:{ all -> 0x00ec }
            java.lang.String r4 = "Exception parsing "
            r3.<init>(r4)     // Catch:{ all -> 0x00ec }
            java.lang.StringBuilder r2 = r3.append(r2)     // Catch:{ all -> 0x00ec }
            java.lang.String r3 = " response:"
            java.lang.StringBuilder r2 = r2.append(r3)     // Catch:{ all -> 0x00ec }
            java.lang.String r3 = r0.toString()     // Catch:{ all -> 0x00ec }
            java.lang.StringBuilder r2 = r2.append(r3)     // Catch:{ all -> 0x00ec }
            java.lang.String r2 = r2.toString()     // Catch:{ all -> 0x00ec }
            defpackage.gz.b(r1, r2)     // Catch:{ all -> 0x00ec }
            com.amazon.identity.auth.device.AuthError r1 = new com.amazon.identity.auth.device.AuthError     // Catch:{ all -> 0x00ec }
            java.lang.String r2 = r0.getMessage()     // Catch:{ all -> 0x00ec }
            com.amazon.identity.auth.device.AuthError$b r3 = com.amazon.identity.auth.device.AuthError.b.ERROR_PARSE     // Catch:{ all -> 0x00ec }
            r1.<init>(r2, r0, r3)     // Catch:{ all -> 0x00ec }
            throw r1     // Catch:{ all -> 0x00ec }
        L_0x0155:
            org.apache.http.HttpResponse r0 = r6.a     // Catch:{ IllegalStateException -> 0x0163, IOException -> 0x017d }
            org.apache.http.HttpEntity r0 = r0.getEntity()     // Catch:{ IllegalStateException -> 0x0163, IOException -> 0x017d }
            java.io.InputStream r0 = r0.getContent()     // Catch:{ IllegalStateException -> 0x0163, IOException -> 0x017d }
            r0.close()     // Catch:{ IllegalStateException -> 0x0163, IOException -> 0x017d }
        L_0x0162:
            return
        L_0x0163:
            r0 = move-exception
            java.lang.String r1 = b
            java.lang.StringBuilder r2 = new java.lang.StringBuilder
            java.lang.String r3 = "IllegalStateException closing response "
            r2.<init>(r3)
            java.lang.String r0 = r0.toString()
            java.lang.StringBuilder r0 = r2.append(r0)
            java.lang.String r0 = r0.toString()
            defpackage.gz.c(r1, r0)
            goto L_0x0162
        L_0x017d:
            r0 = move-exception
            java.lang.String r1 = b
            java.lang.StringBuilder r2 = new java.lang.StringBuilder
            java.lang.String r3 = "IOException closing response "
            r2.<init>(r3)
            java.lang.String r0 = r0.toString()
            java.lang.StringBuilder r0 = r2.append(r0)
            java.lang.String r0 = r0.toString()
            defpackage.gz.b(r1, r0)
            goto L_0x0162
        L_0x0197:
            java.lang.String r2 = b     // Catch:{ all -> 0x00ec }
            java.lang.StringBuilder r3 = new java.lang.StringBuilder     // Catch:{ all -> 0x00ec }
            java.lang.String r4 = "JSON exception parsing "
            r3.<init>(r4)     // Catch:{ all -> 0x00ec }
            java.lang.StringBuilder r1 = r3.append(r1)     // Catch:{ all -> 0x00ec }
            java.lang.String r3 = " response:"
            java.lang.StringBuilder r1 = r1.append(r3)     // Catch:{ all -> 0x00ec }
            java.lang.String r3 = r0.toString()     // Catch:{ all -> 0x00ec }
            java.lang.StringBuilder r1 = r1.append(r3)     // Catch:{ all -> 0x00ec }
            java.lang.String r1 = r1.toString()     // Catch:{ all -> 0x00ec }
            defpackage.gz.d(r2, r1)     // Catch:{ all -> 0x00ec }
            java.lang.String r1 = b     // Catch:{ all -> 0x00ec }
            java.lang.StringBuilder r2 = new java.lang.StringBuilder     // Catch:{ all -> 0x00ec }
            java.lang.String r3 = "JSON exception html = "
            r2.<init>(r3)     // Catch:{ all -> 0x00ec }
            java.lang.String r3 = r6.c     // Catch:{ all -> 0x00ec }
            java.lang.StringBuilder r2 = r2.append(r3)     // Catch:{ all -> 0x00ec }
            java.lang.String r2 = r2.toString()     // Catch:{ all -> 0x00ec }
            defpackage.gz.d(r1, r2)     // Catch:{ all -> 0x00ec }
            com.amazon.identity.auth.device.AuthError r1 = new com.amazon.identity.auth.device.AuthError     // Catch:{ all -> 0x00ec }
            java.lang.String r2 = r0.getMessage()     // Catch:{ all -> 0x00ec }
            com.amazon.identity.auth.device.AuthError$b r3 = com.amazon.identity.auth.device.AuthError.b.ERROR_JSON     // Catch:{ all -> 0x00ec }
            r1.<init>(r2, r0, r3)     // Catch:{ all -> 0x00ec }
            throw r1     // Catch:{ all -> 0x00ec }
        L_0x01db:
            r0 = move-exception
            java.lang.String r1 = b     // Catch:{ all -> 0x00ec }
            java.lang.StringBuilder r3 = new java.lang.StringBuilder     // Catch:{ all -> 0x00ec }
            java.lang.String r4 = "Exception accessing "
            r3.<init>(r4)     // Catch:{ all -> 0x00ec }
            java.lang.StringBuilder r2 = r3.append(r2)     // Catch:{ all -> 0x00ec }
            java.lang.String r3 = " response:"
            java.lang.StringBuilder r2 = r2.append(r3)     // Catch:{ all -> 0x00ec }
            java.lang.String r3 = r0.toString()     // Catch:{ all -> 0x00ec }
            java.lang.StringBuilder r2 = r2.append(r3)     // Catch:{ all -> 0x00ec }
            java.lang.String r2 = r2.toString()     // Catch:{ all -> 0x00ec }
            defpackage.gz.b(r1, r2)     // Catch:{ all -> 0x00ec }
            com.amazon.identity.auth.device.AuthError r1 = new com.amazon.identity.auth.device.AuthError     // Catch:{ all -> 0x00ec }
            java.lang.String r2 = r0.getMessage()     // Catch:{ all -> 0x00ec }
            com.amazon.identity.auth.device.AuthError$b r3 = com.amazon.identity.auth.device.AuthError.b.ERROR_COM     // Catch:{ all -> 0x00ec }
            r1.<init>(r2, r0, r3)     // Catch:{ all -> 0x00ec }
            throw r1     // Catch:{ all -> 0x00ec }
        L_0x020a:
            r1 = move-exception
            java.lang.String r2 = b
            java.lang.StringBuilder r3 = new java.lang.StringBuilder
            java.lang.String r4 = "IllegalStateException closing response "
            r3.<init>(r4)
            java.lang.String r1 = r1.toString()
            java.lang.StringBuilder r1 = r3.append(r1)
            java.lang.String r1 = r1.toString()
            defpackage.gz.c(r2, r1)
            goto L_0x00fa
        L_0x0225:
            r1 = move-exception
            java.lang.String r2 = b
            java.lang.StringBuilder r3 = new java.lang.StringBuilder
            java.lang.String r4 = "IOException closing response "
            r3.<init>(r4)
            java.lang.String r1 = r1.toString()
            java.lang.StringBuilder r1 = r3.append(r1)
            java.lang.String r1 = r1.toString()
            defpackage.gz.b(r2, r1)
            goto L_0x00fa
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.gi.b():void");
    }

    /* access modifiers changed from: protected */
    public void b(JSONObject jSONObject) {
        try {
            gz.a(b, "ExchangeRepsonse", "requestId=" + jSONObject.getString(BoxError.FIELD_REQUEST_ID));
        } catch (JSONException e) {
            gz.b(b, "No RequestId in JSON response");
        }
    }

    /* access modifiers changed from: protected */
    public abstract void c(JSONObject jSONObject);

    /* access modifiers changed from: protected */
    public void d(JSONObject jSONObject) {
        JSONObject jSONObject2 = null;
        try {
            jSONObject2 = jSONObject.getJSONObject("error");
            String string = jSONObject2.getString(BoxError.FIELD_CODE);
            if ("ServerError".equalsIgnoreCase(string)) {
                if (jSONObject2.getString("message").startsWith("INVALID_TOKEN")) {
                    throw new InvalidTokenAuthError("Invalid Exchange parameter - SERVER_ERROR.");
                }
                a(string);
            } else if ("InvalidSourceToken".equalsIgnoreCase(string)) {
                throw new InvalidTokenAuthError("Invalid Source Token in exchange parameter");
            } else if ("InvalidToken".equals(string)) {
                throw new InvalidTokenAuthError("Token used is invalid.");
            } else if (a(this.a)) {
                a("500 error (status=" + c() + ")" + string);
            } else {
                a(string);
            }
        } catch (JSONException e) {
            if (jSONObject2 != null) {
                throw new AuthError("JSON exception parsing json error response:", e, AuthError.b.ERROR_JSON);
            }
        } catch (ParseException e2) {
            if (jSONObject2 != null) {
                throw new AuthError("Exception parsing response", e2, AuthError.b.ERROR_PARSE);
            }
        }
    }
}
