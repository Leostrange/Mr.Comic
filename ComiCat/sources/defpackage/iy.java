package defpackage;

import com.box.androidsdk.content.models.BoxEntity;
import com.box.androidsdk.content.models.BoxFolder;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import defpackage.Cif;
import defpackage.iz;
import defpackage.js;
import java.util.Arrays;
import java.util.List;
import java.util.regex.Pattern;

/* renamed from: iy  reason: default package */
/* compiled from: FolderMetadata */
public final class iy extends jl {
    protected final String a;
    protected final String b;
    protected final iz c;
    protected final List<js> d;

    /* renamed from: iy$a */
    /* compiled from: FolderMetadata */
    static class a extends ig<iy> {
        public static final a a = new a();

        a() {
        }

        public static iy a(JsonParser jsonParser, boolean z) {
            String str;
            List list = null;
            if (!z) {
                d(jsonParser);
                str = b(jsonParser);
                if (BoxFolder.TYPE.equals(str)) {
                    str = null;
                }
            } else {
                str = null;
            }
            if (str == null) {
                iz izVar = null;
                String str2 = null;
                String str3 = null;
                String str4 = null;
                String str5 = null;
                String str6 = null;
                String str7 = null;
                while (jsonParser.getCurrentToken() == JsonToken.FIELD_NAME) {
                    String currentName = jsonParser.getCurrentName();
                    jsonParser.nextToken();
                    if ("name".equals(currentName)) {
                        str7 = (String) Cif.g.a.a(jsonParser);
                    } else if (BoxEntity.FIELD_ID.equals(currentName)) {
                        str6 = (String) Cif.g.a.a(jsonParser);
                    } else if ("path_lower".equals(currentName)) {
                        str5 = (String) Cif.a(Cif.g.a).a(jsonParser);
                    } else if ("path_display".equals(currentName)) {
                        str4 = (String) Cif.a(Cif.g.a).a(jsonParser);
                    } else if ("parent_shared_folder_id".equals(currentName)) {
                        str3 = (String) Cif.a(Cif.g.a).a(jsonParser);
                    } else if ("shared_folder_id".equals(currentName)) {
                        str2 = (String) Cif.a(Cif.g.a).a(jsonParser);
                    } else if ("sharing_info".equals(currentName)) {
                        izVar = (iz) Cif.a(iz.a.a).a(jsonParser);
                    } else if ("property_groups".equals(currentName)) {
                        list = (List) Cif.a(Cif.b(js.a.a)).a(jsonParser);
                    } else {
                        f(jsonParser);
                    }
                }
                if (str7 == null) {
                    throw new JsonParseException(jsonParser, "Required field \"name\" missing.");
                } else if (str6 == null) {
                    throw new JsonParseException(jsonParser, "Required field \"id\" missing.");
                } else {
                    iy iyVar = new iy(str7, str6, str5, str4, str3, str2, izVar, list);
                    if (!z) {
                        e(jsonParser);
                    }
                    return iyVar;
                }
            } else {
                throw new JsonParseException(jsonParser, "No subtype found that matches tag: \"" + str + "\"");
            }
        }

        public static void a(iy iyVar, JsonGenerator jsonGenerator) {
            jsonGenerator.writeStartObject();
            jsonGenerator.writeStringField(".tag", BoxFolder.TYPE);
            jsonGenerator.writeFieldName("name");
            Cif.g.a.a(iyVar.k, jsonGenerator);
            jsonGenerator.writeFieldName(BoxEntity.FIELD_ID);
            Cif.g.a.a(iyVar.a, jsonGenerator);
            if (iyVar.l != null) {
                jsonGenerator.writeFieldName("path_lower");
                Cif.a(Cif.g.a).a(iyVar.l, jsonGenerator);
            }
            if (iyVar.m != null) {
                jsonGenerator.writeFieldName("path_display");
                Cif.a(Cif.g.a).a(iyVar.m, jsonGenerator);
            }
            if (iyVar.n != null) {
                jsonGenerator.writeFieldName("parent_shared_folder_id");
                Cif.a(Cif.g.a).a(iyVar.n, jsonGenerator);
            }
            if (iyVar.b != null) {
                jsonGenerator.writeFieldName("shared_folder_id");
                Cif.a(Cif.g.a).a(iyVar.b, jsonGenerator);
            }
            if (iyVar.c != null) {
                jsonGenerator.writeFieldName("sharing_info");
                Cif.a(iz.a.a).a(iyVar.c, jsonGenerator);
            }
            if (iyVar.d != null) {
                jsonGenerator.writeFieldName("property_groups");
                Cif.a(Cif.b(js.a.a)).a(iyVar.d, jsonGenerator);
            }
            jsonGenerator.writeEndObject();
        }

        public final /* synthetic */ void b(Object obj, JsonGenerator jsonGenerator) {
            a((iy) obj, jsonGenerator);
        }

        public final /* synthetic */ Object h(JsonParser jsonParser) {
            return a(jsonParser, false);
        }
    }

    public iy(String str, String str2, String str3, String str4, String str5, String str6, iz izVar, List<js> list) {
        super(str, str3, str4, str5);
        if (str2 == null) {
            throw new IllegalArgumentException("Required value for 'id' is null");
        } else if (str2.length() <= 0) {
            throw new IllegalArgumentException("String 'id' is shorter than 1");
        } else {
            this.a = str2;
            if (str6 == null || Pattern.matches("[-_0-9a-zA-Z:]+", str6)) {
                this.b = str6;
                this.c = izVar;
                if (list != null) {
                    for (js jsVar : list) {
                        if (jsVar == null) {
                            throw new IllegalArgumentException("An item in list 'propertyGroups' is null");
                        }
                    }
                }
                this.d = list;
                return;
            }
            throw new IllegalArgumentException("String 'sharedFolderId' does not match pattern");
        }
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
        iy iyVar = (iy) obj;
        if ((this.k == iyVar.k || this.k.equals(iyVar.k)) && ((this.a == iyVar.a || this.a.equals(iyVar.a)) && ((this.l == iyVar.l || (this.l != null && this.l.equals(iyVar.l))) && ((this.m == iyVar.m || (this.m != null && this.m.equals(iyVar.m))) && ((this.n == iyVar.n || (this.n != null && this.n.equals(iyVar.n))) && ((this.b == iyVar.b || (this.b != null && this.b.equals(iyVar.b))) && (this.c == iyVar.c || (this.c != null && this.c.equals(iyVar.c))))))))) {
            if (this.d == iyVar.d) {
                return true;
            }
            if (this.d != null && this.d.equals(iyVar.d)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{this.a, this.b, this.c, this.d}) + (super.hashCode() * 31);
    }

    public final String toString() {
        return a.a.a(this);
    }
}
