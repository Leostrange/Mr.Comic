package defpackage;

import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import defpackage.ju;
import defpackage.jv;
import defpackage.jw;
import java.util.Arrays;

/* renamed from: jx  reason: default package */
/* compiled from: TeamSharingPolicies */
public final class jx {
    protected final jv a;
    protected final ju b;
    protected final jw c;

    /* renamed from: jx$a */
    /* compiled from: TeamSharingPolicies */
    public static class a extends ig<jx> {
        public static final a a = new a();

        public final /* synthetic */ void b(Object obj, JsonGenerator jsonGenerator) {
            jx jxVar = (jx) obj;
            jsonGenerator.writeStartObject();
            jsonGenerator.writeFieldName("shared_folder_member_policy");
            jv.a aVar = jv.a.a;
            jv.a.a(jxVar.a, jsonGenerator);
            jsonGenerator.writeFieldName("shared_folder_join_policy");
            ju.a aVar2 = ju.a.a;
            ju.a.a(jxVar.b, jsonGenerator);
            jsonGenerator.writeFieldName("shared_link_create_policy");
            jw.a aVar3 = jw.a.a;
            jw.a.a(jxVar.c, jsonGenerator);
            jsonGenerator.writeEndObject();
        }

        public final /* synthetic */ Object h(JsonParser jsonParser) {
            jw jwVar = null;
            d(jsonParser);
            String b = b(jsonParser);
            if (b == null) {
                ju juVar = null;
                jv jvVar = null;
                while (jsonParser.getCurrentToken() == JsonToken.FIELD_NAME) {
                    String currentName = jsonParser.getCurrentName();
                    jsonParser.nextToken();
                    if ("shared_folder_member_policy".equals(currentName)) {
                        jv.a aVar = jv.a.a;
                        jvVar = jv.a.h(jsonParser);
                    } else if ("shared_folder_join_policy".equals(currentName)) {
                        ju.a aVar2 = ju.a.a;
                        juVar = ju.a.h(jsonParser);
                    } else if ("shared_link_create_policy".equals(currentName)) {
                        jw.a aVar3 = jw.a.a;
                        jwVar = jw.a.h(jsonParser);
                    } else {
                        f(jsonParser);
                    }
                }
                if (jvVar == null) {
                    throw new JsonParseException(jsonParser, "Required field \"shared_folder_member_policy\" missing.");
                } else if (juVar == null) {
                    throw new JsonParseException(jsonParser, "Required field \"shared_folder_join_policy\" missing.");
                } else if (jwVar == null) {
                    throw new JsonParseException(jsonParser, "Required field \"shared_link_create_policy\" missing.");
                } else {
                    jx jxVar = new jx(jvVar, juVar, jwVar);
                    e(jsonParser);
                    return jxVar;
                }
            } else {
                throw new JsonParseException(jsonParser, "No subtype found that matches tag: \"" + b + "\"");
            }
        }
    }

    public jx(jv jvVar, ju juVar, jw jwVar) {
        if (jvVar == null) {
            throw new IllegalArgumentException("Required value for 'sharedFolderMemberPolicy' is null");
        }
        this.a = jvVar;
        if (juVar == null) {
            throw new IllegalArgumentException("Required value for 'sharedFolderJoinPolicy' is null");
        }
        this.b = juVar;
        if (jwVar == null) {
            throw new IllegalArgumentException("Required value for 'sharedLinkCreatePolicy' is null");
        }
        this.c = jwVar;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!obj.getClass().equals(getClass())) {
            return false;
        }
        jx jxVar = (jx) obj;
        return (this.a == jxVar.a || this.a.equals(jxVar.a)) && (this.b == jxVar.b || this.b.equals(jxVar.b)) && (this.c == jxVar.c || this.c.equals(jxVar.c));
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{this.a, this.b, this.c});
    }

    public final String toString() {
        return a.a.a(this);
    }
}
