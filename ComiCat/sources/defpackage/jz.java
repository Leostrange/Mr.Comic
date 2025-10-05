package defpackage;

import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;

/* renamed from: jz  reason: default package */
/* compiled from: AccountType */
public enum jz {
    BASIC,
    PRO,
    BUSINESS;

    /* renamed from: jz$a */
    /* compiled from: AccountType */
    static class a extends ih<jz> {
        public static final a a = null;

        static {
            a = new a();
        }

        a() {
        }

        public static void a(jz jzVar, JsonGenerator jsonGenerator) {
            switch (jzVar) {
                case BASIC:
                    jsonGenerator.writeString("basic");
                    return;
                case PRO:
                    jsonGenerator.writeString("pro");
                    return;
                case BUSINESS:
                    jsonGenerator.writeString("business");
                    return;
                default:
                    throw new IllegalArgumentException("Unrecognized tag: " + jzVar);
            }
        }

        public static jz h(JsonParser jsonParser) {
            String b;
            boolean z;
            jz jzVar;
            if (jsonParser.getCurrentToken() == JsonToken.VALUE_STRING) {
                String c = c(jsonParser);
                jsonParser.nextToken();
                b = c;
                z = true;
            } else {
                d(jsonParser);
                b = b(jsonParser);
                z = false;
            }
            if (b == null) {
                throw new JsonParseException(jsonParser, "Required field missing: .tag");
            }
            if ("basic".equals(b)) {
                jzVar = jz.BASIC;
            } else if ("pro".equals(b)) {
                jzVar = jz.PRO;
            } else if ("business".equals(b)) {
                jzVar = jz.BUSINESS;
            } else {
                throw new JsonParseException(jsonParser, "Unknown tag: " + b);
            }
            if (!z) {
                e(jsonParser);
            }
            return jzVar;
        }

        public final /* synthetic */ Object a(JsonParser jsonParser) {
            return h(jsonParser);
        }

        public final /* bridge */ /* synthetic */ void a(Object obj, JsonGenerator jsonGenerator) {
            a((jz) obj, jsonGenerator);
        }
    }
}
