package defpackage;

import android.text.TextUtils;
import com.box.androidsdk.content.auth.BoxAuthentication;
import com.box.androidsdk.content.models.BoxMetadata;
import defpackage.tj;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;

/* renamed from: to  reason: default package */
/* compiled from: OAuthSuccessfulResponse */
class to implements tm {
    static final /* synthetic */ boolean g = (!to.class.desiredAssertionStatus());
    final String a;
    final String b;
    final int c;
    final String d;
    final String e;
    final tj.e f;

    /* renamed from: to$a */
    /* compiled from: OAuthSuccessfulResponse */
    public static class a {
        static final /* synthetic */ boolean e = (!to.class.desiredAssertionStatus());
        /* access modifiers changed from: package-private */
        public String a;
        /* access modifiers changed from: package-private */
        public int b = -1;
        /* access modifiers changed from: package-private */
        public String c;
        /* access modifiers changed from: package-private */
        public String d;
        /* access modifiers changed from: private */
        public final String f;
        /* access modifiers changed from: private */
        public final tj.e g;

        public a(String str, tj.e eVar) {
            if (!e && str == null) {
                throw new AssertionError();
            } else if (!e && TextUtils.isEmpty(str)) {
                throw new AssertionError();
            } else if (e || eVar != null) {
                this.f = str;
                this.g = eVar;
            } else {
                throw new AssertionError();
            }
        }

        public final to a() {
            return new to(this, (byte) 0);
        }
    }

    private to(a aVar) {
        this.a = aVar.f;
        this.b = aVar.a;
        this.f = aVar.g;
        this.d = aVar.c;
        this.c = aVar.b;
        this.e = aVar.d;
    }

    /* synthetic */ to(a aVar, byte b2) {
        this(aVar);
    }

    public static to a(Map<String, String> map) {
        String str = map.get(BoxAuthentication.BoxAuthenticationInfo.FIELD_ACCESS_TOKEN);
        String str2 = map.get("token_type");
        if (!g && str == null) {
            throw new AssertionError();
        } else if (g || str2 != null) {
            try {
                a aVar = new a(str, tj.e.valueOf(str2.toUpperCase()));
                String str3 = map.get("authentication_token");
                if (str3 != null) {
                    aVar.a = str3;
                }
                String str4 = map.get(BoxAuthentication.BoxAuthenticationInfo.FIELD_EXPIRES_IN);
                if (str4 != null) {
                    try {
                        aVar.b = Integer.parseInt(str4);
                    } catch (NumberFormatException e2) {
                        throw new sx("An error occured while communicating with the server during the operation. Please try again later.", e2);
                    }
                }
                String str5 = map.get(BoxMetadata.FIELD_SCOPE);
                if (str5 != null) {
                    aVar.d = str5;
                }
                return aVar.a();
            } catch (IllegalArgumentException e3) {
                throw new sx("An error occured while communicating with the server during the operation. Please try again later.", e3);
            }
        } else {
            throw new AssertionError();
        }
    }

    public static to a(JSONObject jSONObject) {
        if (g || b(jSONObject)) {
            try {
                try {
                    try {
                        a aVar = new a(jSONObject.getString(BoxAuthentication.BoxAuthenticationInfo.FIELD_ACCESS_TOKEN), tj.e.valueOf(jSONObject.getString("token_type").toUpperCase()));
                        if (jSONObject.has("authentication_token")) {
                            try {
                                aVar.a = jSONObject.getString("authentication_token");
                            } catch (JSONException e2) {
                                throw new sx("An error occured on the client during the operation.", e2);
                            }
                        }
                        if (jSONObject.has(BoxAuthentication.BoxAuthenticationInfo.FIELD_REFRESH_TOKEN)) {
                            try {
                                aVar.c = jSONObject.getString(BoxAuthentication.BoxAuthenticationInfo.FIELD_REFRESH_TOKEN);
                            } catch (JSONException e3) {
                                throw new sx("An error occured on the client during the operation.", e3);
                            }
                        }
                        if (jSONObject.has(BoxAuthentication.BoxAuthenticationInfo.FIELD_EXPIRES_IN)) {
                            try {
                                aVar.b = jSONObject.getInt(BoxAuthentication.BoxAuthenticationInfo.FIELD_EXPIRES_IN);
                            } catch (JSONException e4) {
                                throw new sx("An error occured on the client during the operation.", e4);
                            }
                        }
                        if (jSONObject.has(BoxMetadata.FIELD_SCOPE)) {
                            try {
                                aVar.d = jSONObject.getString(BoxMetadata.FIELD_SCOPE);
                            } catch (JSONException e5) {
                                throw new sx("An error occured on the client during the operation.", e5);
                            }
                        }
                        return aVar.a();
                    } catch (IllegalArgumentException e6) {
                        throw new sx("An error occured while communicating with the server during the operation. Please try again later.", e6);
                    } catch (NullPointerException e7) {
                        throw new sx("An error occured while communicating with the server during the operation. Please try again later.", e7);
                    }
                } catch (JSONException e8) {
                    throw new sx("An error occured while communicating with the server during the operation. Please try again later.", e8);
                }
            } catch (JSONException e9) {
                throw new sx("An error occured while communicating with the server during the operation. Please try again later.", e9);
            }
        } else {
            throw new AssertionError();
        }
    }

    public static boolean b(JSONObject jSONObject) {
        return jSONObject.has(BoxAuthentication.BoxAuthenticationInfo.FIELD_ACCESS_TOKEN) && jSONObject.has("token_type");
    }

    public final void a(tn tnVar) {
        tnVar.a(this);
    }

    public String toString() {
        return String.format("OAuthSuccessfulResponse [accessToken=%s, authenticationToken=%s, tokenType=%s, refreshToken=%s, expiresIn=%s, scope=%s]", new Object[]{this.a, this.b, this.f, this.d, Integer.valueOf(this.c), this.e});
    }
}
