package defpackage;

import com.box.androidsdk.content.models.BoxError;
import defpackage.tj;
import java.util.Locale;
import org.json.JSONException;
import org.json.JSONObject;

/* renamed from: tk  reason: default package */
/* compiled from: OAuthErrorResponse */
class tk implements tm {
    final tj.b a;
    final String b;
    final String c;

    /* renamed from: tk$a */
    /* compiled from: OAuthErrorResponse */
    public static class a {
        static final /* synthetic */ boolean c = (!tk.class.desiredAssertionStatus());
        /* access modifiers changed from: package-private */
        public String a;
        /* access modifiers changed from: package-private */
        public String b;
        /* access modifiers changed from: private */
        public final tj.b d;

        public a(tj.b bVar) {
            if (c || bVar != null) {
                this.d = bVar;
                return;
            }
            throw new AssertionError();
        }
    }

    private tk(a aVar) {
        this.a = aVar.d;
        this.b = aVar.a;
        this.c = aVar.b;
    }

    private /* synthetic */ tk(a aVar, byte b2) {
        this(aVar);
    }

    public static tk a(JSONObject jSONObject) {
        try {
            try {
                a aVar = new a(tj.b.valueOf(jSONObject.getString("error").toUpperCase()));
                if (jSONObject.has(BoxError.FIELD_ERROR_DESCRIPTION)) {
                    try {
                        aVar.a = jSONObject.getString(BoxError.FIELD_ERROR_DESCRIPTION);
                    } catch (JSONException e) {
                        throw new sx("An error occured on the client during the operation.", e);
                    }
                }
                if (jSONObject.has("error_uri")) {
                    try {
                        aVar.b = jSONObject.getString("error_uri");
                    } catch (JSONException e2) {
                        throw new sx("An error occured on the client during the operation.", e2);
                    }
                }
                return new tk(aVar, (byte) 0);
            } catch (IllegalArgumentException e3) {
                throw new sx("An error occured while communicating with the server during the operation. Please try again later.", e3);
            } catch (NullPointerException e4) {
                throw new sx("An error occured while communicating with the server during the operation. Please try again later.", e4);
            }
        } catch (JSONException e5) {
            throw new sx("An error occured while communicating with the server during the operation. Please try again later.", e5);
        }
    }

    public static boolean b(JSONObject jSONObject) {
        return jSONObject.has("error");
    }

    public final void a(tn tnVar) {
        tnVar.a(this);
    }

    public String toString() {
        return String.format("OAuthErrorResponse [error=%s, errorDescription=%s, errorUri=%s]", new Object[]{this.a.toString().toLowerCase(Locale.US), this.b, this.c});
    }
}
