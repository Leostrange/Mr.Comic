package defpackage;

import com.box.androidsdk.content.requests.BoxRequestsMetadata;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import defpackage.Cif;
import java.util.Arrays;

/* renamed from: jr  reason: default package */
/* compiled from: PropertyField */
public final class jr {
    protected final String a;
    protected final String b;

    /* renamed from: jr$a */
    /* compiled from: PropertyField */
    public static class a extends ig<jr> {
        public static final a a = new a();

        public final /* synthetic */ void b(Object obj, JsonGenerator jsonGenerator) {
            jr jrVar = (jr) obj;
            jsonGenerator.writeStartObject();
            jsonGenerator.writeFieldName("name");
            Cif.g.a.a(jrVar.a, jsonGenerator);
            jsonGenerator.writeFieldName(BoxRequestsMetadata.UpdateFileMetadata.BoxMetadataUpdateTask.VALUE);
            Cif.g.a.a(jrVar.b, jsonGenerator);
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
                    if ("name".equals(currentName)) {
                        str2 = (String) Cif.g.a.a(jsonParser);
                    } else if (BoxRequestsMetadata.UpdateFileMetadata.BoxMetadataUpdateTask.VALUE.equals(currentName)) {
                        str = (String) Cif.g.a.a(jsonParser);
                    } else {
                        f(jsonParser);
                    }
                }
                if (str2 == null) {
                    throw new JsonParseException(jsonParser, "Required field \"name\" missing.");
                } else if (str == null) {
                    throw new JsonParseException(jsonParser, "Required field \"value\" missing.");
                } else {
                    jr jrVar = new jr(str2, str);
                    e(jsonParser);
                    return jrVar;
                }
            } else {
                throw new JsonParseException(jsonParser, "No subtype found that matches tag: \"" + b + "\"");
            }
        }
    }

    public jr(String str, String str2) {
        if (str == null) {
            throw new IllegalArgumentException("Required value for 'name' is null");
        }
        this.a = str;
        if (str2 == null) {
            throw new IllegalArgumentException("Required value for 'value' is null");
        }
        this.b = str2;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!obj.getClass().equals(getClass())) {
            return false;
        }
        jr jrVar = (jr) obj;
        return (this.a == jrVar.a || this.a.equals(jrVar.a)) && (this.b == jrVar.b || this.b.equals(jrVar.b));
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{this.a, this.b});
    }

    public final String toString() {
        return a.a.a(this);
    }
}
