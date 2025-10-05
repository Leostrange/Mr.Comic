package defpackage;

import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import defpackage.Cif;
import java.util.Arrays;

/* renamed from: jm  reason: default package */
/* compiled from: PathRootError */
public final class jm {
    protected final String a;

    /* renamed from: jm$a */
    /* compiled from: PathRootError */
    public static class a extends ig<jm> {
        public static final a a = new a();

        public static jm a(JsonParser jsonParser, boolean z) {
            String str;
            String str2 = null;
            if (!z) {
                d(jsonParser);
                str = b(jsonParser);
            } else {
                str = null;
            }
            if (str == null) {
                while (jsonParser.getCurrentToken() == JsonToken.FIELD_NAME) {
                    String currentName = jsonParser.getCurrentName();
                    jsonParser.nextToken();
                    if ("path_root".equals(currentName)) {
                        str2 = (String) Cif.a(Cif.g.a).a(jsonParser);
                    } else {
                        f(jsonParser);
                    }
                }
                jm jmVar = new jm(str2);
                if (!z) {
                    e(jsonParser);
                }
                return jmVar;
            }
            throw new JsonParseException(jsonParser, "No subtype found that matches tag: \"" + str + "\"");
        }

        public static void a(jm jmVar, JsonGenerator jsonGenerator, boolean z) {
            if (!z) {
                jsonGenerator.writeStartObject();
            }
            if (jmVar.a != null) {
                jsonGenerator.writeFieldName("path_root");
                Cif.a(Cif.g.a).a(jmVar.a, jsonGenerator);
            }
            if (!z) {
                jsonGenerator.writeEndObject();
            }
        }

        public final /* synthetic */ void b(Object obj, JsonGenerator jsonGenerator) {
            a((jm) obj, jsonGenerator, false);
        }

        public final /* synthetic */ Object h(JsonParser jsonParser) {
            return a(jsonParser, false);
        }
    }

    public jm() {
        this((String) null);
    }

    public jm(String str) {
        this.a = str;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!obj.getClass().equals(getClass())) {
            return false;
        }
        jm jmVar = (jm) obj;
        if (this.a != jmVar.a) {
            return this.a != null && this.a.equals(jmVar.a);
        }
        return true;
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{this.a});
    }

    public final String toString() {
        return a.a.a(this);
    }
}
