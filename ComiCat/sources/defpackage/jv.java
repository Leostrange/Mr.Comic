package defpackage;

import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;

/* renamed from: jv  reason: default package */
/* compiled from: SharedFolderMemberPolicy */
public enum jv {
    TEAM,
    ANYONE,
    OTHER;

    /* renamed from: jv$a */
    /* compiled from: SharedFolderMemberPolicy */
    static class a extends ih<jv> {
        public static final a a = null;

        static {
            a = new a();
        }

        a() {
        }

        public static void a(jv jvVar, JsonGenerator jsonGenerator) {
            switch (jvVar) {
                case TEAM:
                    jsonGenerator.writeString("team");
                    return;
                case ANYONE:
                    jsonGenerator.writeString("anyone");
                    return;
                default:
                    jsonGenerator.writeString("other");
                    return;
            }
        }

        public static jv h(JsonParser jsonParser) {
            String b;
            boolean z;
            jv jvVar;
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
            if ("team".equals(b)) {
                jvVar = jv.TEAM;
            } else if ("anyone".equals(b)) {
                jvVar = jv.ANYONE;
            } else {
                jvVar = jv.OTHER;
                g(jsonParser);
            }
            if (!z) {
                e(jsonParser);
            }
            return jvVar;
        }

        public final /* synthetic */ Object a(JsonParser jsonParser) {
            return h(jsonParser);
        }

        public final /* bridge */ /* synthetic */ void a(Object obj, JsonGenerator jsonGenerator) {
            a((jv) obj, jsonGenerator);
        }
    }
}
