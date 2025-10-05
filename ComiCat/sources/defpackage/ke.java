package defpackage;

import com.box.androidsdk.content.models.BoxEntity;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import defpackage.Cif;
import java.util.Arrays;

/* renamed from: ke  reason: default package */
/* compiled from: Team */
public class ke {
    protected final String b;
    protected final String c;

    /* renamed from: ke$a */
    /* compiled from: Team */
    public static class a extends ig<ke> {
        public static final a a = new a();

        public final /* synthetic */ void b(Object obj, JsonGenerator jsonGenerator) {
            ke keVar = (ke) obj;
            jsonGenerator.writeStartObject();
            jsonGenerator.writeFieldName(BoxEntity.FIELD_ID);
            Cif.g.a.a(keVar.b, jsonGenerator);
            jsonGenerator.writeFieldName("name");
            Cif.g.a.a(keVar.c, jsonGenerator);
            jsonGenerator.writeEndObject();
        }

        public final /* synthetic */ Object h(JsonParser jsonParser) {
            d(jsonParser);
            String b = b(jsonParser);
            if (b == null) {
                String str = null;
                String str2 = null;
                while (jsonParser.getCurrentToken() == JsonToken.FIELD_NAME) {
                    String currentName = jsonParser.getCurrentName();
                    jsonParser.nextToken();
                    if (BoxEntity.FIELD_ID.equals(currentName)) {
                        str2 = (String) Cif.g.a.a(jsonParser);
                    } else if ("name".equals(currentName)) {
                        str = (String) Cif.g.a.a(jsonParser);
                    } else {
                        f(jsonParser);
                    }
                }
                if (str2 == null) {
                    throw new JsonParseException(jsonParser, "Required field \"id\" missing.");
                } else if (str == null) {
                    throw new JsonParseException(jsonParser, "Required field \"name\" missing.");
                } else {
                    ke keVar = new ke(str2, str);
                    e(jsonParser);
                    return keVar;
                }
            } else {
                throw new JsonParseException(jsonParser, "No subtype found that matches tag: \"" + b + "\"");
            }
        }
    }

    public ke(String str, String str2) {
        if (str == null) {
            throw new IllegalArgumentException("Required value for 'id' is null");
        }
        this.b = str;
        if (str2 == null) {
            throw new IllegalArgumentException("Required value for 'name' is null");
        }
        this.c = str2;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!obj.getClass().equals(getClass())) {
            return false;
        }
        ke keVar = (ke) obj;
        return (this.b == keVar.b || this.b.equals(keVar.b)) && (this.c == keVar.c || this.c.equals(keVar.c));
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.b, this.c});
    }

    public String toString() {
        return a.a.a(this);
    }
}
