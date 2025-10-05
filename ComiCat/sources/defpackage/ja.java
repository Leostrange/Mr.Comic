package defpackage;

import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import defpackage.Cif;
import java.util.Arrays;

/* renamed from: ja  reason: default package */
/* compiled from: GpsCoordinates */
public final class ja {
    protected final double a;
    protected final double b;

    /* renamed from: ja$a */
    /* compiled from: GpsCoordinates */
    static class a extends ig<ja> {
        public static final a a = new a();

        a() {
        }

        public final /* synthetic */ void b(Object obj, JsonGenerator jsonGenerator) {
            ja jaVar = (ja) obj;
            jsonGenerator.writeStartObject();
            jsonGenerator.writeFieldName("latitude");
            Cif.c.a.a(Double.valueOf(jaVar.a), jsonGenerator);
            jsonGenerator.writeFieldName("longitude");
            Cif.c.a.a(Double.valueOf(jaVar.b), jsonGenerator);
            jsonGenerator.writeEndObject();
        }

        public final /* synthetic */ Object h(JsonParser jsonParser) {
            d(jsonParser);
            String b = b(jsonParser);
            if (b == null) {
                Double d = null;
                Double d2 = null;
                while (jsonParser.getCurrentToken() == JsonToken.FIELD_NAME) {
                    String currentName = jsonParser.getCurrentName();
                    jsonParser.nextToken();
                    if ("latitude".equals(currentName)) {
                        d2 = (Double) Cif.c.a.a(jsonParser);
                    } else if ("longitude".equals(currentName)) {
                        d = (Double) Cif.c.a.a(jsonParser);
                    } else {
                        f(jsonParser);
                    }
                }
                if (d2 == null) {
                    throw new JsonParseException(jsonParser, "Required field \"latitude\" missing.");
                } else if (d == null) {
                    throw new JsonParseException(jsonParser, "Required field \"longitude\" missing.");
                } else {
                    ja jaVar = new ja(d2.doubleValue(), d.doubleValue());
                    e(jsonParser);
                    return jaVar;
                }
            } else {
                throw new JsonParseException(jsonParser, "No subtype found that matches tag: \"" + b + "\"");
            }
        }
    }

    public ja(double d, double d2) {
        this.a = d;
        this.b = d2;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!obj.getClass().equals(getClass())) {
            return false;
        }
        ja jaVar = (ja) obj;
        return this.a == jaVar.a && this.b == jaVar.b;
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{Double.valueOf(this.a), Double.valueOf(this.b)});
    }

    public final String toString() {
        return a.a.a(this);
    }
}
