package defpackage;

import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import defpackage.Cif;

/* renamed from: ir  reason: default package */
/* compiled from: DeletedMetadata */
public final class ir extends jl {

    /* renamed from: ir$a */
    /* compiled from: DeletedMetadata */
    static class a extends ig<ir> {
        public static final a a = new a();

        a() {
        }

        public static ir a(JsonParser jsonParser, boolean z) {
            String str;
            if (!z) {
                d(jsonParser);
                str = b(jsonParser);
                if ("deleted".equals(str)) {
                    str = null;
                }
            } else {
                str = null;
            }
            if (str == null) {
                String str2 = null;
                String str3 = null;
                String str4 = null;
                String str5 = null;
                while (jsonParser.getCurrentToken() == JsonToken.FIELD_NAME) {
                    String currentName = jsonParser.getCurrentName();
                    jsonParser.nextToken();
                    if ("name".equals(currentName)) {
                        str5 = (String) Cif.g.a.a(jsonParser);
                    } else if ("path_lower".equals(currentName)) {
                        str4 = (String) Cif.a(Cif.g.a).a(jsonParser);
                    } else if ("path_display".equals(currentName)) {
                        str3 = (String) Cif.a(Cif.g.a).a(jsonParser);
                    } else if ("parent_shared_folder_id".equals(currentName)) {
                        str2 = (String) Cif.a(Cif.g.a).a(jsonParser);
                    } else {
                        f(jsonParser);
                    }
                }
                if (str5 == null) {
                    throw new JsonParseException(jsonParser, "Required field \"name\" missing.");
                }
                ir irVar = new ir(str5, str4, str3, str2);
                if (!z) {
                    e(jsonParser);
                }
                return irVar;
            }
            throw new JsonParseException(jsonParser, "No subtype found that matches tag: \"" + str + "\"");
        }

        public static void a(ir irVar, JsonGenerator jsonGenerator) {
            jsonGenerator.writeStartObject();
            jsonGenerator.writeStringField(".tag", "deleted");
            jsonGenerator.writeFieldName("name");
            Cif.g.a.a(irVar.k, jsonGenerator);
            if (irVar.l != null) {
                jsonGenerator.writeFieldName("path_lower");
                Cif.a(Cif.g.a).a(irVar.l, jsonGenerator);
            }
            if (irVar.m != null) {
                jsonGenerator.writeFieldName("path_display");
                Cif.a(Cif.g.a).a(irVar.m, jsonGenerator);
            }
            if (irVar.n != null) {
                jsonGenerator.writeFieldName("parent_shared_folder_id");
                Cif.a(Cif.g.a).a(irVar.n, jsonGenerator);
            }
            jsonGenerator.writeEndObject();
        }

        public final /* synthetic */ void b(Object obj, JsonGenerator jsonGenerator) {
            a((ir) obj, jsonGenerator);
        }

        public final /* synthetic */ Object h(JsonParser jsonParser) {
            return a(jsonParser, false);
        }
    }

    public ir(String str, String str2, String str3, String str4) {
        super(str, str2, str3, str4);
    }

    public final String a() {
        return this.k;
    }

    public final String b() {
        return this.l;
    }

    public final String c() {
        return this.m;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!obj.getClass().equals(getClass())) {
            return false;
        }
        ir irVar = (ir) obj;
        if ((this.k == irVar.k || this.k.equals(irVar.k)) && ((this.l == irVar.l || (this.l != null && this.l.equals(irVar.l))) && (this.m == irVar.m || (this.m != null && this.m.equals(irVar.m))))) {
            if (this.n == irVar.n) {
                return true;
            }
            if (this.n != null && this.n.equals(irVar.n)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return getClass().toString().hashCode();
    }

    public final String toString() {
        return a.a.a(this);
    }
}
