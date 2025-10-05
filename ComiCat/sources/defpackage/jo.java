package defpackage;

import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import defpackage.Cif;
import java.util.Arrays;

/* renamed from: jo  reason: default package */
/* compiled from: SharingInfo */
public class jo {
    protected final boolean e;

    /* renamed from: jo$a */
    /* compiled from: SharingInfo */
    static class a extends ig<jo> {
        public static final a a = new a();

        private a() {
        }

        public final /* synthetic */ void b(Object obj, JsonGenerator jsonGenerator) {
            jsonGenerator.writeStartObject();
            jsonGenerator.writeFieldName("read_only");
            Cif.a.a.a(Boolean.valueOf(((jo) obj).e), jsonGenerator);
            jsonGenerator.writeEndObject();
        }

        public final /* synthetic */ Object h(JsonParser jsonParser) {
            d(jsonParser);
            String b = b(jsonParser);
            if (b == null) {
                Boolean bool = null;
                while (jsonParser.getCurrentToken() == JsonToken.FIELD_NAME) {
                    String currentName = jsonParser.getCurrentName();
                    jsonParser.nextToken();
                    if ("read_only".equals(currentName)) {
                        bool = (Boolean) Cif.a.a.a(jsonParser);
                    } else {
                        f(jsonParser);
                    }
                }
                if (bool == null) {
                    throw new JsonParseException(jsonParser, "Required field \"read_only\" missing.");
                }
                jo joVar = new jo(bool.booleanValue());
                e(jsonParser);
                return joVar;
            }
            throw new JsonParseException(jsonParser, "No subtype found that matches tag: \"" + b + "\"");
        }
    }

    public jo(boolean z) {
        this.e = z;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj.getClass().equals(getClass())) {
            return this.e == ((jo) obj).e;
        }
        return false;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{Boolean.valueOf(this.e)});
    }

    public String toString() {
        return a.a.a(this);
    }
}
