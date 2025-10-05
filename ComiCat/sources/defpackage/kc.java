package defpackage;

import com.box.androidsdk.content.models.BoxEntity;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import defpackage.Cif;
import defpackage.jx;
import java.util.Arrays;

/* renamed from: kc  reason: default package */
/* compiled from: FullTeam */
public final class kc extends ke {
    protected final jx a;

    /* renamed from: kc$a */
    /* compiled from: FullTeam */
    static class a extends ig<kc> {
        public static final a a = new a();

        a() {
        }

        public final /* synthetic */ void b(Object obj, JsonGenerator jsonGenerator) {
            kc kcVar = (kc) obj;
            jsonGenerator.writeStartObject();
            jsonGenerator.writeFieldName(BoxEntity.FIELD_ID);
            Cif.g.a.a(kcVar.b, jsonGenerator);
            jsonGenerator.writeFieldName("name");
            Cif.g.a.a(kcVar.c, jsonGenerator);
            jsonGenerator.writeFieldName("sharing_policies");
            jx.a.a.b(kcVar.a, jsonGenerator);
            jsonGenerator.writeEndObject();
        }

        public final /* synthetic */ Object h(JsonParser jsonParser) {
            d(jsonParser);
            String b = b(jsonParser);
            if (b == null) {
                jx jxVar = null;
                String str = null;
                String str2 = null;
                while (jsonParser.getCurrentToken() == JsonToken.FIELD_NAME) {
                    String currentName = jsonParser.getCurrentName();
                    jsonParser.nextToken();
                    if (BoxEntity.FIELD_ID.equals(currentName)) {
                        str2 = (String) Cif.g.a.a(jsonParser);
                    } else if ("name".equals(currentName)) {
                        str = (String) Cif.g.a.a(jsonParser);
                    } else if ("sharing_policies".equals(currentName)) {
                        jxVar = (jx) jx.a.a.a(jsonParser);
                    } else {
                        f(jsonParser);
                    }
                }
                if (str2 == null) {
                    throw new JsonParseException(jsonParser, "Required field \"id\" missing.");
                } else if (str == null) {
                    throw new JsonParseException(jsonParser, "Required field \"name\" missing.");
                } else if (jxVar == null) {
                    throw new JsonParseException(jsonParser, "Required field \"sharing_policies\" missing.");
                } else {
                    kc kcVar = new kc(str2, str, jxVar);
                    e(jsonParser);
                    return kcVar;
                }
            } else {
                throw new JsonParseException(jsonParser, "No subtype found that matches tag: \"" + b + "\"");
            }
        }
    }

    public kc(String str, String str2, jx jxVar) {
        super(str, str2);
        if (jxVar == null) {
            throw new IllegalArgumentException("Required value for 'sharingPolicies' is null");
        }
        this.a = jxVar;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!obj.getClass().equals(getClass())) {
            return false;
        }
        kc kcVar = (kc) obj;
        return (this.b == kcVar.b || this.b.equals(kcVar.b)) && (this.c == kcVar.c || this.c.equals(kcVar.c)) && (this.a == kcVar.a || this.a.equals(kcVar.a));
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{this.a}) + (super.hashCode() * 31);
    }

    public final String toString() {
        return a.a.a(this);
    }
}
