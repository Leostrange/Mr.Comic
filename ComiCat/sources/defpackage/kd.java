package defpackage;

import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import defpackage.Cif;
import java.util.Arrays;

/* renamed from: kd  reason: default package */
/* compiled from: Name */
public final class kd {
    protected final String a;
    protected final String b;
    protected final String c;
    protected final String d;
    protected final String e;

    /* renamed from: kd$a */
    /* compiled from: Name */
    public static class a extends ig<kd> {
        public static final a a = new a();

        public final /* synthetic */ void b(Object obj, JsonGenerator jsonGenerator) {
            kd kdVar = (kd) obj;
            jsonGenerator.writeStartObject();
            jsonGenerator.writeFieldName("given_name");
            Cif.g.a.a(kdVar.a, jsonGenerator);
            jsonGenerator.writeFieldName("surname");
            Cif.g.a.a(kdVar.b, jsonGenerator);
            jsonGenerator.writeFieldName("familiar_name");
            Cif.g.a.a(kdVar.c, jsonGenerator);
            jsonGenerator.writeFieldName("display_name");
            Cif.g.a.a(kdVar.d, jsonGenerator);
            jsonGenerator.writeFieldName("abbreviated_name");
            Cif.g.a.a(kdVar.e, jsonGenerator);
            jsonGenerator.writeEndObject();
        }

        public final /* synthetic */ Object h(JsonParser jsonParser) {
            String str = null;
            d(jsonParser);
            String b = b(jsonParser);
            if (b == null) {
                String str2 = null;
                String str3 = null;
                String str4 = null;
                String str5 = null;
                while (jsonParser.getCurrentToken() == JsonToken.FIELD_NAME) {
                    String currentName = jsonParser.getCurrentName();
                    jsonParser.nextToken();
                    if ("given_name".equals(currentName)) {
                        str5 = (String) Cif.g.a.a(jsonParser);
                    } else if ("surname".equals(currentName)) {
                        str4 = (String) Cif.g.a.a(jsonParser);
                    } else if ("familiar_name".equals(currentName)) {
                        str3 = (String) Cif.g.a.a(jsonParser);
                    } else if ("display_name".equals(currentName)) {
                        str2 = (String) Cif.g.a.a(jsonParser);
                    } else if ("abbreviated_name".equals(currentName)) {
                        str = (String) Cif.g.a.a(jsonParser);
                    } else {
                        f(jsonParser);
                    }
                }
                if (str5 == null) {
                    throw new JsonParseException(jsonParser, "Required field \"given_name\" missing.");
                } else if (str4 == null) {
                    throw new JsonParseException(jsonParser, "Required field \"surname\" missing.");
                } else if (str3 == null) {
                    throw new JsonParseException(jsonParser, "Required field \"familiar_name\" missing.");
                } else if (str2 == null) {
                    throw new JsonParseException(jsonParser, "Required field \"display_name\" missing.");
                } else if (str == null) {
                    throw new JsonParseException(jsonParser, "Required field \"abbreviated_name\" missing.");
                } else {
                    kd kdVar = new kd(str5, str4, str3, str2, str);
                    e(jsonParser);
                    return kdVar;
                }
            } else {
                throw new JsonParseException(jsonParser, "No subtype found that matches tag: \"" + b + "\"");
            }
        }
    }

    public kd(String str, String str2, String str3, String str4, String str5) {
        if (str == null) {
            throw new IllegalArgumentException("Required value for 'givenName' is null");
        }
        this.a = str;
        if (str2 == null) {
            throw new IllegalArgumentException("Required value for 'surname' is null");
        }
        this.b = str2;
        if (str3 == null) {
            throw new IllegalArgumentException("Required value for 'familiarName' is null");
        }
        this.c = str3;
        if (str4 == null) {
            throw new IllegalArgumentException("Required value for 'displayName' is null");
        }
        this.d = str4;
        if (str5 == null) {
            throw new IllegalArgumentException("Required value for 'abbreviatedName' is null");
        }
        this.e = str5;
    }

    public final String a() {
        return this.d;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!obj.getClass().equals(getClass())) {
            return false;
        }
        kd kdVar = (kd) obj;
        return (this.a == kdVar.a || this.a.equals(kdVar.a)) && (this.b == kdVar.b || this.b.equals(kdVar.b)) && ((this.c == kdVar.c || this.c.equals(kdVar.c)) && ((this.d == kdVar.d || this.d.equals(kdVar.d)) && (this.e == kdVar.e || this.e.equals(kdVar.e))));
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{this.a, this.b, this.c, this.d, this.e});
    }

    public final String toString() {
        return a.a.a(this);
    }
}
