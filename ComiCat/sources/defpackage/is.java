package defpackage;

import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import defpackage.Cif;
import java.util.Arrays;

/* renamed from: is  reason: default package */
/* compiled from: Dimensions */
public final class is {
    protected final long a;
    protected final long b;

    /* renamed from: is$a */
    /* compiled from: Dimensions */
    static class a extends ig<is> {
        public static final a a = new a();

        a() {
        }

        public final /* synthetic */ void b(Object obj, JsonGenerator jsonGenerator) {
            is isVar = (is) obj;
            jsonGenerator.writeStartObject();
            jsonGenerator.writeFieldName("height");
            Cif.e.a.a(Long.valueOf(isVar.a), jsonGenerator);
            jsonGenerator.writeFieldName("width");
            Cif.e.a.a(Long.valueOf(isVar.b), jsonGenerator);
            jsonGenerator.writeEndObject();
        }

        public final /* synthetic */ Object h(JsonParser jsonParser) {
            d(jsonParser);
            String b = b(jsonParser);
            if (b == null) {
                Long l = null;
                Long l2 = null;
                while (jsonParser.getCurrentToken() == JsonToken.FIELD_NAME) {
                    String currentName = jsonParser.getCurrentName();
                    jsonParser.nextToken();
                    if ("height".equals(currentName)) {
                        l2 = (Long) Cif.e.a.a(jsonParser);
                    } else if ("width".equals(currentName)) {
                        l = (Long) Cif.e.a.a(jsonParser);
                    } else {
                        f(jsonParser);
                    }
                }
                if (l2 == null) {
                    throw new JsonParseException(jsonParser, "Required field \"height\" missing.");
                } else if (l == null) {
                    throw new JsonParseException(jsonParser, "Required field \"width\" missing.");
                } else {
                    is isVar = new is(l2.longValue(), l.longValue());
                    e(jsonParser);
                    return isVar;
                }
            } else {
                throw new JsonParseException(jsonParser, "No subtype found that matches tag: \"" + b + "\"");
            }
        }
    }

    public is(long j, long j2) {
        this.a = j;
        this.b = j2;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!obj.getClass().equals(getClass())) {
            return false;
        }
        is isVar = (is) obj;
        return this.a == isVar.a && this.b == isVar.b;
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{Long.valueOf(this.a), Long.valueOf(this.b)});
    }

    public final String toString() {
        return a.a.a(this);
    }
}
