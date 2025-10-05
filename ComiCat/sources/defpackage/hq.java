package defpackage;

import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import defpackage.Cif;

/* renamed from: hq  reason: default package */
/* compiled from: LocalizedText */
public final class hq {
    static final ie<hq> a = new ie<hq>() {
        public final /* synthetic */ Object a(JsonParser jsonParser) {
            d(jsonParser);
            String str = null;
            String str2 = null;
            while (jsonParser.getCurrentToken() == JsonToken.FIELD_NAME) {
                String currentName = jsonParser.getCurrentName();
                jsonParser.nextToken();
                if ("text".equals(currentName)) {
                    str2 = (String) Cif.g.a.a(jsonParser);
                } else if ("locale".equals(currentName)) {
                    str = (String) Cif.g.a.a(jsonParser);
                } else {
                    f(jsonParser);
                }
            }
            if (str2 == null) {
                throw new JsonParseException(jsonParser, "Required field \"text\" missing.");
            } else if (str == null) {
                throw new JsonParseException(jsonParser, "Required field \"locale\" missing.");
            } else {
                hq hqVar = new hq(str2, str);
                e(jsonParser);
                return hqVar;
            }
        }

        public final /* synthetic */ void a(Object obj, JsonGenerator jsonGenerator) {
            throw new UnsupportedOperationException("Error wrapper serialization not supported.");
        }
    };
    private final String b;
    private final String c;

    public hq(String str, String str2) {
        if (str == null) {
            throw new NullPointerException("text");
        } else if (str2 == null) {
            throw new NullPointerException("locale");
        } else {
            this.b = str;
            this.c = str2;
        }
    }

    public final String toString() {
        return this.b;
    }
}
