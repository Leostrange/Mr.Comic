package defpackage;

import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import defpackage.Cif;
import defpackage.kd;
import java.util.Arrays;

/* renamed from: jy  reason: default package */
/* compiled from: Account */
public class jy {
    protected final String a;
    protected final kd b;
    protected final String c;
    protected final boolean d;
    protected final String e;
    protected final boolean f;

    /* renamed from: jy$a */
    /* compiled from: Account */
    static class a extends ig<jy> {
        public static final a a = new a();

        private a() {
        }

        public final /* synthetic */ void b(Object obj, JsonGenerator jsonGenerator) {
            jy jyVar = (jy) obj;
            jsonGenerator.writeStartObject();
            jsonGenerator.writeFieldName("account_id");
            Cif.g.a.a(jyVar.a, jsonGenerator);
            jsonGenerator.writeFieldName("name");
            kd.a.a.b(jyVar.b, jsonGenerator);
            jsonGenerator.writeFieldName("email");
            Cif.g.a.a(jyVar.c, jsonGenerator);
            jsonGenerator.writeFieldName("email_verified");
            Cif.a.a.a(Boolean.valueOf(jyVar.d), jsonGenerator);
            jsonGenerator.writeFieldName("disabled");
            Cif.a.a.a(Boolean.valueOf(jyVar.f), jsonGenerator);
            if (jyVar.e != null) {
                jsonGenerator.writeFieldName("profile_photo_url");
                Cif.a(Cif.g.a).a(jyVar.e, jsonGenerator);
            }
            jsonGenerator.writeEndObject();
        }

        public final /* synthetic */ Object h(JsonParser jsonParser) {
            String str = null;
            d(jsonParser);
            String b = b(jsonParser);
            if (b == null) {
                Boolean bool = null;
                Boolean bool2 = null;
                String str2 = null;
                kd kdVar = null;
                String str3 = null;
                while (jsonParser.getCurrentToken() == JsonToken.FIELD_NAME) {
                    String currentName = jsonParser.getCurrentName();
                    jsonParser.nextToken();
                    if ("account_id".equals(currentName)) {
                        str3 = (String) Cif.g.a.a(jsonParser);
                    } else if ("name".equals(currentName)) {
                        kdVar = (kd) kd.a.a.a(jsonParser);
                    } else if ("email".equals(currentName)) {
                        str2 = (String) Cif.g.a.a(jsonParser);
                    } else if ("email_verified".equals(currentName)) {
                        bool2 = (Boolean) Cif.a.a.a(jsonParser);
                    } else if ("disabled".equals(currentName)) {
                        bool = (Boolean) Cif.a.a.a(jsonParser);
                    } else if ("profile_photo_url".equals(currentName)) {
                        str = (String) Cif.a(Cif.g.a).a(jsonParser);
                    } else {
                        f(jsonParser);
                    }
                }
                if (str3 == null) {
                    throw new JsonParseException(jsonParser, "Required field \"account_id\" missing.");
                } else if (kdVar == null) {
                    throw new JsonParseException(jsonParser, "Required field \"name\" missing.");
                } else if (str2 == null) {
                    throw new JsonParseException(jsonParser, "Required field \"email\" missing.");
                } else if (bool2 == null) {
                    throw new JsonParseException(jsonParser, "Required field \"email_verified\" missing.");
                } else if (bool == null) {
                    throw new JsonParseException(jsonParser, "Required field \"disabled\" missing.");
                } else {
                    jy jyVar = new jy(str3, kdVar, str2, bool2.booleanValue(), bool.booleanValue(), str);
                    e(jsonParser);
                    return jyVar;
                }
            } else {
                throw new JsonParseException(jsonParser, "No subtype found that matches tag: \"" + b + "\"");
            }
        }
    }

    public jy(String str, kd kdVar, String str2, boolean z, boolean z2, String str3) {
        if (str == null) {
            throw new IllegalArgumentException("Required value for 'accountId' is null");
        } else if (str.length() < 40) {
            throw new IllegalArgumentException("String 'accountId' is shorter than 40");
        } else if (str.length() > 40) {
            throw new IllegalArgumentException("String 'accountId' is longer than 40");
        } else {
            this.a = str;
            if (kdVar == null) {
                throw new IllegalArgumentException("Required value for 'name' is null");
            }
            this.b = kdVar;
            if (str2 == null) {
                throw new IllegalArgumentException("Required value for 'email' is null");
            }
            this.c = str2;
            this.d = z;
            this.e = str3;
            this.f = z2;
        }
    }

    public kd a() {
        return this.b;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!obj.getClass().equals(getClass())) {
            return false;
        }
        jy jyVar = (jy) obj;
        if ((this.a == jyVar.a || this.a.equals(jyVar.a)) && ((this.b == jyVar.b || this.b.equals(jyVar.b)) && ((this.c == jyVar.c || this.c.equals(jyVar.c)) && this.d == jyVar.d && this.f == jyVar.f))) {
            if (this.e == jyVar.e) {
                return true;
            }
            if (this.e != null && this.e.equals(jyVar.e)) {
                return true;
            }
        }
        return false;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.a, this.b, this.c, Boolean.valueOf(this.d), this.e, Boolean.valueOf(this.f)});
    }

    public String toString() {
        return a.a.a(this);
    }
}
