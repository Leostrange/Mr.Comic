package defpackage;

import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;

/* renamed from: jw  reason: default package */
/* compiled from: SharedLinkCreatePolicy */
public enum jw {
    DEFAULT_PUBLIC,
    DEFAULT_TEAM_ONLY,
    TEAM_ONLY,
    OTHER;

    /* renamed from: jw$a */
    /* compiled from: SharedLinkCreatePolicy */
    static class a extends ih<jw> {
        public static final a a = null;

        static {
            a = new a();
        }

        a() {
        }

        public static void a(jw jwVar, JsonGenerator jsonGenerator) {
            switch (jwVar) {
                case DEFAULT_PUBLIC:
                    jsonGenerator.writeString("default_public");
                    return;
                case DEFAULT_TEAM_ONLY:
                    jsonGenerator.writeString("default_team_only");
                    return;
                case TEAM_ONLY:
                    jsonGenerator.writeString("team_only");
                    return;
                default:
                    jsonGenerator.writeString("other");
                    return;
            }
        }

        public static jw h(JsonParser jsonParser) {
            String b;
            boolean z;
            jw jwVar;
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
            if ("default_public".equals(b)) {
                jwVar = jw.DEFAULT_PUBLIC;
            } else if ("default_team_only".equals(b)) {
                jwVar = jw.DEFAULT_TEAM_ONLY;
            } else if ("team_only".equals(b)) {
                jwVar = jw.TEAM_ONLY;
            } else {
                jwVar = jw.OTHER;
                g(jsonParser);
            }
            if (!z) {
                e(jsonParser);
            }
            return jwVar;
        }

        public final /* synthetic */ Object a(JsonParser jsonParser) {
            return h(jsonParser);
        }

        public final /* bridge */ /* synthetic */ void a(Object obj, JsonGenerator jsonGenerator) {
            a((jw) obj, jsonGenerator);
        }
    }
}
