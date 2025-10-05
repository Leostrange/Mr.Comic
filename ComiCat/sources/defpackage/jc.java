package defpackage;

import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import defpackage.Cif;
import java.util.Arrays;

/* renamed from: jc  reason: default package */
/* compiled from: ListFolderContinueArg */
public final class jc {
    protected final String a;

    /* renamed from: jc$a */
    /* compiled from: ListFolderContinueArg */
    static class a extends ig<jc> {
        public static final a a = new a();

        a() {
        }

        public final /* synthetic */ void b(Object obj, JsonGenerator jsonGenerator) {
            jsonGenerator.writeStartObject();
            jsonGenerator.writeFieldName("cursor");
            Cif.g.a.a(((jc) obj).a, jsonGenerator);
            jsonGenerator.writeEndObject();
        }

        public final /* synthetic */ Object h(JsonParser jsonParser) {
            d(jsonParser);
            String b = b(jsonParser);
            if (b == null) {
                String str = null;
                while (jsonParser.getCurrentToken() == JsonToken.FIELD_NAME) {
                    String currentName = jsonParser.getCurrentName();
                    jsonParser.nextToken();
                    if ("cursor".equals(currentName)) {
                        str = (String) Cif.g.a.a(jsonParser);
                    } else {
                        f(jsonParser);
                    }
                }
                if (str == null) {
                    throw new JsonParseException(jsonParser, "Required field \"cursor\" missing.");
                }
                jc jcVar = new jc(str);
                e(jsonParser);
                return jcVar;
            }
            throw new JsonParseException(jsonParser, "No subtype found that matches tag: \"" + b + "\"");
        }
    }

    public jc(String str) {
        if (str == null) {
            throw new IllegalArgumentException("Required value for 'cursor' is null");
        } else if (str.length() <= 0) {
            throw new IllegalArgumentException("String 'cursor' is shorter than 1");
        } else {
            this.a = str;
        }
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!obj.getClass().equals(getClass())) {
            return false;
        }
        jc jcVar = (jc) obj;
        return this.a == jcVar.a || this.a.equals(jcVar.a);
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{this.a});
    }

    public final String toString() {
        return a.a.a(this);
    }
}
