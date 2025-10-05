package defpackage;

import com.box.androidsdk.content.models.BoxIterator;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import defpackage.Cif;
import defpackage.jl;
import java.util.Arrays;
import java.util.List;

/* renamed from: jh  reason: default package */
/* compiled from: ListFolderResult */
public final class jh {
    protected final List<jl> a;
    protected final String b;
    protected final boolean c;

    /* renamed from: jh$a */
    /* compiled from: ListFolderResult */
    static class a extends ig<jh> {
        public static final a a = new a();

        a() {
        }

        public final /* synthetic */ void b(Object obj, JsonGenerator jsonGenerator) {
            jh jhVar = (jh) obj;
            jsonGenerator.writeStartObject();
            jsonGenerator.writeFieldName(BoxIterator.FIELD_ENTRIES);
            Cif.b(jl.b.a).a(jhVar.a, jsonGenerator);
            jsonGenerator.writeFieldName("cursor");
            Cif.g.a.a(jhVar.b, jsonGenerator);
            jsonGenerator.writeFieldName("has_more");
            Cif.a.a.a(Boolean.valueOf(jhVar.c), jsonGenerator);
            jsonGenerator.writeEndObject();
        }

        public final /* synthetic */ Object h(JsonParser jsonParser) {
            d(jsonParser);
            String b = b(jsonParser);
            if (b == null) {
                Boolean bool = null;
                String str = null;
                List list = null;
                while (jsonParser.getCurrentToken() == JsonToken.FIELD_NAME) {
                    String currentName = jsonParser.getCurrentName();
                    jsonParser.nextToken();
                    if (BoxIterator.FIELD_ENTRIES.equals(currentName)) {
                        list = (List) Cif.b(jl.b.a).a(jsonParser);
                    } else if ("cursor".equals(currentName)) {
                        str = (String) Cif.g.a.a(jsonParser);
                    } else if ("has_more".equals(currentName)) {
                        bool = (Boolean) Cif.a.a.a(jsonParser);
                    } else {
                        f(jsonParser);
                    }
                }
                if (list == null) {
                    throw new JsonParseException(jsonParser, "Required field \"entries\" missing.");
                } else if (str == null) {
                    throw new JsonParseException(jsonParser, "Required field \"cursor\" missing.");
                } else if (bool == null) {
                    throw new JsonParseException(jsonParser, "Required field \"has_more\" missing.");
                } else {
                    jh jhVar = new jh(list, str, bool.booleanValue());
                    e(jsonParser);
                    return jhVar;
                }
            } else {
                throw new JsonParseException(jsonParser, "No subtype found that matches tag: \"" + b + "\"");
            }
        }
    }

    public jh(List<jl> list, String str, boolean z) {
        if (list == null) {
            throw new IllegalArgumentException("Required value for 'entries' is null");
        }
        for (jl jlVar : list) {
            if (jlVar == null) {
                throw new IllegalArgumentException("An item in list 'entries' is null");
            }
        }
        this.a = list;
        if (str == null) {
            throw new IllegalArgumentException("Required value for 'cursor' is null");
        } else if (str.length() <= 0) {
            throw new IllegalArgumentException("String 'cursor' is shorter than 1");
        } else {
            this.b = str;
            this.c = z;
        }
    }

    public final List<jl> a() {
        return this.a;
    }

    public final String b() {
        return this.b;
    }

    public final boolean c() {
        return this.c;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!obj.getClass().equals(getClass())) {
            return false;
        }
        jh jhVar = (jh) obj;
        return (this.a == jhVar.a || this.a.equals(jhVar.a)) && (this.b == jhVar.b || this.b.equals(jhVar.b)) && this.c == jhVar.c;
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{this.a, this.b, Boolean.valueOf(this.c)});
    }

    public final String toString() {
        return a.a.a(this);
    }
}
