package defpackage;

import com.box.androidsdk.content.models.BoxFile;
import com.box.androidsdk.content.models.BoxFolder;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import defpackage.Cif;
import defpackage.ir;
import defpackage.iw;
import defpackage.iy;
import java.util.Arrays;
import java.util.regex.Pattern;

/* renamed from: jl  reason: default package */
/* compiled from: Metadata */
public class jl {
    protected final String k;
    protected final String l;
    protected final String m;
    protected final String n;

    /* renamed from: jl$a */
    /* compiled from: Metadata */
    public static class a {
        protected final String a;
        protected String b;
        protected String c;
        protected String d;

        protected a(String str) {
            if (str == null) {
                throw new IllegalArgumentException("Required value for 'name' is null");
            }
            this.a = str;
            this.b = null;
            this.c = null;
            this.d = null;
        }

        public final a a(String str) {
            this.b = str;
            return this;
        }

        public final jl a() {
            return new jl(this.a, this.b, this.c, this.d);
        }

        public final a b(String str) {
            this.c = str;
            return this;
        }
    }

    /* renamed from: jl$b */
    /* compiled from: Metadata */
    static class b extends ig<jl> {
        public static final b a = new b();

        b() {
        }

        private static jl a(JsonParser jsonParser, boolean z) {
            String str;
            jl a2;
            if (!z) {
                d(jsonParser);
                str = b(jsonParser);
                if ("".equals(str)) {
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
                a2 = new jl(str5, str4, str3, str2);
            } else if ("".equals(str)) {
                a2 = a(jsonParser, true);
            } else if (BoxFile.TYPE.equals(str)) {
                iw.a aVar = iw.a.a;
                a2 = iw.a.a(jsonParser, true);
            } else if (BoxFolder.TYPE.equals(str)) {
                iy.a aVar2 = iy.a.a;
                a2 = iy.a.a(jsonParser, true);
            } else if ("deleted".equals(str)) {
                ir.a aVar3 = ir.a.a;
                a2 = ir.a.a(jsonParser, true);
            } else {
                throw new JsonParseException(jsonParser, "No subtype found that matches tag: \"" + str + "\"");
            }
            if (!z) {
                e(jsonParser);
            }
            return a2;
        }

        public final /* synthetic */ void b(Object obj, JsonGenerator jsonGenerator) {
            jl jlVar = (jl) obj;
            if (jlVar instanceof iw) {
                iw.a aVar = iw.a.a;
                iw.a.a((iw) jlVar, jsonGenerator);
            } else if (jlVar instanceof iy) {
                iy.a aVar2 = iy.a.a;
                iy.a.a((iy) jlVar, jsonGenerator);
            } else if (jlVar instanceof ir) {
                ir.a aVar3 = ir.a.a;
                ir.a.a((ir) jlVar, jsonGenerator);
            } else {
                jsonGenerator.writeStartObject();
                jsonGenerator.writeFieldName("name");
                Cif.g.a.a(jlVar.k, jsonGenerator);
                if (jlVar.l != null) {
                    jsonGenerator.writeFieldName("path_lower");
                    Cif.a(Cif.g.a).a(jlVar.l, jsonGenerator);
                }
                if (jlVar.m != null) {
                    jsonGenerator.writeFieldName("path_display");
                    Cif.a(Cif.g.a).a(jlVar.m, jsonGenerator);
                }
                if (jlVar.n != null) {
                    jsonGenerator.writeFieldName("parent_shared_folder_id");
                    Cif.a(Cif.g.a).a(jlVar.n, jsonGenerator);
                }
                jsonGenerator.writeEndObject();
            }
        }

        public final /* synthetic */ Object h(JsonParser jsonParser) {
            return a(jsonParser, false);
        }
    }

    public jl(String str, String str2, String str3, String str4) {
        if (str == null) {
            throw new IllegalArgumentException("Required value for 'name' is null");
        }
        this.k = str;
        this.l = str2;
        this.m = str3;
        if (str4 == null || Pattern.matches("[-_0-9a-zA-Z:]+", str4)) {
            this.n = str4;
            return;
        }
        throw new IllegalArgumentException("String 'parentSharedFolderId' does not match pattern");
    }

    public static a a(String str) {
        return new a(str);
    }

    public String a() {
        return this.k;
    }

    public String b() {
        return this.l;
    }

    public String c() {
        return this.m;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!obj.getClass().equals(getClass())) {
            return false;
        }
        jl jlVar = (jl) obj;
        if ((this.k == jlVar.k || this.k.equals(jlVar.k)) && ((this.l == jlVar.l || (this.l != null && this.l.equals(jlVar.l))) && (this.m == jlVar.m || (this.m != null && this.m.equals(jlVar.m))))) {
            if (this.n == jlVar.n) {
                return true;
            }
            if (this.n != null && this.n.equals(jlVar.n)) {
                return true;
            }
        }
        return false;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.k, this.l, this.m, this.n});
    }

    public String toString() {
        return b.a.a(this);
    }
}
