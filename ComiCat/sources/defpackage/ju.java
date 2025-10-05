package defpackage;

import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;

/* renamed from: ju  reason: default package */
/* compiled from: SharedFolderJoinPolicy */
public enum ju {
    FROM_TEAM_ONLY,
    FROM_ANYONE,
    OTHER;

    /* renamed from: ju$a */
    /* compiled from: SharedFolderJoinPolicy */
    static class a extends ih<ju> {
        public static final a a = null;

        static {
            a = new a();
        }

        a() {
        }

        public static void a(ju juVar, JsonGenerator jsonGenerator) {
            switch (juVar) {
                case FROM_TEAM_ONLY:
                    jsonGenerator.writeString("from_team_only");
                    return;
                case FROM_ANYONE:
                    jsonGenerator.writeString("from_anyone");
                    return;
                default:
                    jsonGenerator.writeString("other");
                    return;
            }
        }

        public static ju h(JsonParser jsonParser) {
            String b;
            boolean z;
            ju juVar;
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
            if ("from_team_only".equals(b)) {
                juVar = ju.FROM_TEAM_ONLY;
            } else if ("from_anyone".equals(b)) {
                juVar = ju.FROM_ANYONE;
            } else {
                juVar = ju.OTHER;
                g(jsonParser);
            }
            if (!z) {
                e(jsonParser);
            }
            return juVar;
        }

        public final /* synthetic */ Object a(JsonParser jsonParser) {
            return h(jsonParser);
        }

        public final /* bridge */ /* synthetic */ void a(Object obj, JsonGenerator jsonGenerator) {
            a((ju) obj, jsonGenerator);
        }
    }
}
