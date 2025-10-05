package defpackage;

import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import defpackage.Cif;
import defpackage.jr;
import java.util.Arrays;
import java.util.List;
import java.util.regex.Pattern;

/* renamed from: js  reason: default package */
/* compiled from: PropertyGroup */
public final class js {
    protected final String a;
    protected final List<jr> b;

    /* renamed from: js$a */
    /* compiled from: PropertyGroup */
    public static class a extends ig<js> {
        public static final a a = new a();

        public final /* synthetic */ void b(Object obj, JsonGenerator jsonGenerator) {
            js jsVar = (js) obj;
            jsonGenerator.writeStartObject();
            jsonGenerator.writeFieldName("template_id");
            Cif.g.a.a(jsVar.a, jsonGenerator);
            jsonGenerator.writeFieldName("fields");
            Cif.b(jr.a.a).a(jsVar.b, jsonGenerator);
            jsonGenerator.writeEndObject();
        }

        public final /* synthetic */ Object h(JsonParser jsonParser) {
            d(jsonParser);
            String b = b(jsonParser);
            if (b == null) {
                List list = null;
                String str = null;
                while (jsonParser.getCurrentToken() == JsonToken.FIELD_NAME) {
                    String currentName = jsonParser.getCurrentName();
                    jsonParser.nextToken();
                    if ("template_id".equals(currentName)) {
                        str = (String) Cif.g.a.a(jsonParser);
                    } else if ("fields".equals(currentName)) {
                        list = (List) Cif.b(jr.a.a).a(jsonParser);
                    } else {
                        f(jsonParser);
                    }
                }
                if (str == null) {
                    throw new JsonParseException(jsonParser, "Required field \"template_id\" missing.");
                } else if (list == null) {
                    throw new JsonParseException(jsonParser, "Required field \"fields\" missing.");
                } else {
                    js jsVar = new js(str, list);
                    e(jsonParser);
                    return jsVar;
                }
            } else {
                throw new JsonParseException(jsonParser, "No subtype found that matches tag: \"" + b + "\"");
            }
        }
    }

    public js(String str, List<jr> list) {
        if (str == null) {
            throw new IllegalArgumentException("Required value for 'templateId' is null");
        } else if (str.length() <= 0) {
            throw new IllegalArgumentException("String 'templateId' is shorter than 1");
        } else if (!Pattern.matches("(/|ptid:).*", str)) {
            throw new IllegalArgumentException("String 'templateId' does not match pattern");
        } else {
            this.a = str;
            if (list == null) {
                throw new IllegalArgumentException("Required value for 'fields' is null");
            }
            for (jr jrVar : list) {
                if (jrVar == null) {
                    throw new IllegalArgumentException("An item in list 'fields' is null");
                }
            }
            this.b = list;
        }
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!obj.getClass().equals(getClass())) {
            return false;
        }
        js jsVar = (js) obj;
        return (this.a == jsVar.a || this.a.equals(jsVar.a)) && (this.b == jsVar.b || this.b.equals(jsVar.b));
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{this.a, this.b});
    }

    public final String toString() {
        return a.a.a(this);
    }
}
