package defpackage;

import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import defpackage.Cif;
import defpackage.is;
import defpackage.ja;
import java.util.Date;

/* renamed from: jn  reason: default package */
/* compiled from: PhotoMetadata */
public final class jn extends jk {

    /* renamed from: jn$a */
    /* compiled from: PhotoMetadata */
    static class a extends ig<jn> {
        public static final a a = new a();

        a() {
        }

        public static jn a(JsonParser jsonParser, boolean z) {
            String str;
            if (!z) {
                d(jsonParser);
                str = b(jsonParser);
                if ("photo".equals(str)) {
                    str = null;
                }
            } else {
                str = null;
            }
            if (str == null) {
                Date date = null;
                ja jaVar = null;
                is isVar = null;
                while (jsonParser.getCurrentToken() == JsonToken.FIELD_NAME) {
                    String currentName = jsonParser.getCurrentName();
                    jsonParser.nextToken();
                    if ("dimensions".equals(currentName)) {
                        isVar = (is) Cif.a(is.a.a).a(jsonParser);
                    } else if ("location".equals(currentName)) {
                        jaVar = (ja) Cif.a(ja.a.a).a(jsonParser);
                    } else if ("time_taken".equals(currentName)) {
                        date = (Date) Cif.a(Cif.b.a).a(jsonParser);
                    } else {
                        f(jsonParser);
                    }
                }
                jn jnVar = new jn(isVar, jaVar, date);
                if (!z) {
                    e(jsonParser);
                }
                return jnVar;
            }
            throw new JsonParseException(jsonParser, "No subtype found that matches tag: \"" + str + "\"");
        }

        public static void a(jn jnVar, JsonGenerator jsonGenerator) {
            jsonGenerator.writeStartObject();
            jsonGenerator.writeStringField(".tag", "photo");
            if (jnVar.a != null) {
                jsonGenerator.writeFieldName("dimensions");
                Cif.a(is.a.a).a(jnVar.a, jsonGenerator);
            }
            if (jnVar.b != null) {
                jsonGenerator.writeFieldName("location");
                Cif.a(ja.a.a).a(jnVar.b, jsonGenerator);
            }
            if (jnVar.c != null) {
                jsonGenerator.writeFieldName("time_taken");
                Cif.a(Cif.b.a).a(jnVar.c, jsonGenerator);
            }
            jsonGenerator.writeEndObject();
        }

        public final /* synthetic */ void b(Object obj, JsonGenerator jsonGenerator) {
            a((jn) obj, jsonGenerator);
        }

        public final /* synthetic */ Object h(JsonParser jsonParser) {
            return a(jsonParser, false);
        }
    }

    public jn() {
        this((is) null, (ja) null, (Date) null);
    }

    public jn(is isVar, ja jaVar, Date date) {
        super(isVar, jaVar, date);
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!obj.getClass().equals(getClass())) {
            return false;
        }
        jn jnVar = (jn) obj;
        if ((this.a == jnVar.a || (this.a != null && this.a.equals(jnVar.a))) && (this.b == jnVar.b || (this.b != null && this.b.equals(jnVar.b)))) {
            if (this.c == jnVar.c) {
                return true;
            }
            if (this.c != null && this.c.equals(jnVar.c)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return getClass().toString().hashCode();
    }

    public final String toString() {
        return a.a.a(this);
    }
}
