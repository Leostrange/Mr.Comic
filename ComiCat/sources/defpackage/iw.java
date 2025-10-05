package defpackage;

import com.box.androidsdk.content.models.BoxEntity;
import com.box.androidsdk.content.models.BoxFile;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import defpackage.Cif;
import defpackage.ix;
import defpackage.jj;
import defpackage.js;
import java.util.Arrays;
import java.util.Date;
import java.util.List;
import java.util.regex.Pattern;

/* renamed from: iw  reason: default package */
/* compiled from: FileMetadata */
public final class iw extends jl {
    protected final String a;
    protected final Date b;
    protected final Date c;
    protected final String d;
    protected final long e;
    protected final jj f;
    protected final ix g;
    protected final List<js> h;
    protected final Boolean i;
    protected final String j;

    /* renamed from: iw$a */
    /* compiled from: FileMetadata */
    static class a extends ig<iw> {
        public static final a a = new a();

        a() {
        }

        public static iw a(JsonParser jsonParser, boolean z) {
            String str = null;
            if (!z) {
                d(jsonParser);
                str = b(jsonParser);
                if (BoxFile.TYPE.equals(str)) {
                    str = null;
                }
            }
            if (str == null) {
                String str2 = null;
                String str3 = null;
                Date date = null;
                Date date2 = null;
                String str4 = null;
                String str5 = null;
                String str6 = null;
                String str7 = null;
                jj jjVar = null;
                ix ixVar = null;
                List list = null;
                Boolean bool = null;
                String str8 = null;
                Long l = null;
                while (jsonParser.getCurrentToken() == JsonToken.FIELD_NAME) {
                    String currentName = jsonParser.getCurrentName();
                    jsonParser.nextToken();
                    if ("name".equals(currentName)) {
                        str2 = (String) Cif.g.a.a(jsonParser);
                    } else if (BoxEntity.FIELD_ID.equals(currentName)) {
                        str3 = (String) Cif.g.a.a(jsonParser);
                    } else if ("client_modified".equals(currentName)) {
                        date = (Date) Cif.b.a.a(jsonParser);
                    } else if ("server_modified".equals(currentName)) {
                        date2 = (Date) Cif.b.a.a(jsonParser);
                    } else if ("rev".equals(currentName)) {
                        str4 = (String) Cif.g.a.a(jsonParser);
                    } else if ("size".equals(currentName)) {
                        l = (Long) Cif.e.a.a(jsonParser);
                    } else if ("path_lower".equals(currentName)) {
                        str5 = (String) Cif.a(Cif.g.a).a(jsonParser);
                    } else if ("path_display".equals(currentName)) {
                        str6 = (String) Cif.a(Cif.g.a).a(jsonParser);
                    } else if ("parent_shared_folder_id".equals(currentName)) {
                        str7 = (String) Cif.a(Cif.g.a).a(jsonParser);
                    } else if ("media_info".equals(currentName)) {
                        jjVar = (jj) Cif.a(jj.a.a).a(jsonParser);
                    } else if ("sharing_info".equals(currentName)) {
                        ixVar = (ix) Cif.a(ix.a.a).a(jsonParser);
                    } else if ("property_groups".equals(currentName)) {
                        list = (List) Cif.a(Cif.b(js.a.a)).a(jsonParser);
                    } else if ("has_explicit_shared_members".equals(currentName)) {
                        bool = (Boolean) Cif.a(Cif.a.a).a(jsonParser);
                    } else if ("content_hash".equals(currentName)) {
                        str8 = (String) Cif.a(Cif.g.a).a(jsonParser);
                    } else {
                        f(jsonParser);
                    }
                }
                if (str2 == null) {
                    throw new JsonParseException(jsonParser, "Required field \"name\" missing.");
                } else if (str3 == null) {
                    throw new JsonParseException(jsonParser, "Required field \"id\" missing.");
                } else if (date == null) {
                    throw new JsonParseException(jsonParser, "Required field \"client_modified\" missing.");
                } else if (date2 == null) {
                    throw new JsonParseException(jsonParser, "Required field \"server_modified\" missing.");
                } else if (str4 == null) {
                    throw new JsonParseException(jsonParser, "Required field \"rev\" missing.");
                } else if (l == null) {
                    throw new JsonParseException(jsonParser, "Required field \"size\" missing.");
                } else {
                    iw iwVar = new iw(str2, str3, date, date2, str4, l.longValue(), str5, str6, str7, jjVar, ixVar, list, bool, str8);
                    if (!z) {
                        e(jsonParser);
                    }
                    return iwVar;
                }
            } else {
                throw new JsonParseException(jsonParser, "No subtype found that matches tag: \"" + str + "\"");
            }
        }

        public static void a(iw iwVar, JsonGenerator jsonGenerator) {
            jsonGenerator.writeStartObject();
            jsonGenerator.writeStringField(".tag", BoxFile.TYPE);
            jsonGenerator.writeFieldName("name");
            Cif.g.a.a(iwVar.k, jsonGenerator);
            jsonGenerator.writeFieldName(BoxEntity.FIELD_ID);
            Cif.g.a.a(iwVar.a, jsonGenerator);
            jsonGenerator.writeFieldName("client_modified");
            Cif.b.a.a(iwVar.b, jsonGenerator);
            jsonGenerator.writeFieldName("server_modified");
            Cif.b.a.a(iwVar.c, jsonGenerator);
            jsonGenerator.writeFieldName("rev");
            Cif.g.a.a(iwVar.d, jsonGenerator);
            jsonGenerator.writeFieldName("size");
            Cif.e.a.a(Long.valueOf(iwVar.e), jsonGenerator);
            if (iwVar.l != null) {
                jsonGenerator.writeFieldName("path_lower");
                Cif.a(Cif.g.a).a(iwVar.l, jsonGenerator);
            }
            if (iwVar.m != null) {
                jsonGenerator.writeFieldName("path_display");
                Cif.a(Cif.g.a).a(iwVar.m, jsonGenerator);
            }
            if (iwVar.n != null) {
                jsonGenerator.writeFieldName("parent_shared_folder_id");
                Cif.a(Cif.g.a).a(iwVar.n, jsonGenerator);
            }
            if (iwVar.f != null) {
                jsonGenerator.writeFieldName("media_info");
                Cif.a(jj.a.a).a(iwVar.f, jsonGenerator);
            }
            if (iwVar.g != null) {
                jsonGenerator.writeFieldName("sharing_info");
                Cif.a(ix.a.a).a(iwVar.g, jsonGenerator);
            }
            if (iwVar.h != null) {
                jsonGenerator.writeFieldName("property_groups");
                Cif.a(Cif.b(js.a.a)).a(iwVar.h, jsonGenerator);
            }
            if (iwVar.i != null) {
                jsonGenerator.writeFieldName("has_explicit_shared_members");
                Cif.a(Cif.a.a).a(iwVar.i, jsonGenerator);
            }
            if (iwVar.j != null) {
                jsonGenerator.writeFieldName("content_hash");
                Cif.a(Cif.g.a).a(iwVar.j, jsonGenerator);
            }
            jsonGenerator.writeEndObject();
        }

        public final /* synthetic */ void b(Object obj, JsonGenerator jsonGenerator) {
            a((iw) obj, jsonGenerator);
        }

        public final /* synthetic */ Object h(JsonParser jsonParser) {
            return a(jsonParser, false);
        }
    }

    public iw(String str, String str2, Date date, Date date2, String str3, long j2, String str4, String str5, String str6, jj jjVar, ix ixVar, List<js> list, Boolean bool, String str7) {
        super(str, str4, str5, str6);
        if (str2 == null) {
            throw new IllegalArgumentException("Required value for 'id' is null");
        } else if (str2.length() <= 0) {
            throw new IllegalArgumentException("String 'id' is shorter than 1");
        } else {
            this.a = str2;
            if (date == null) {
                throw new IllegalArgumentException("Required value for 'clientModified' is null");
            }
            this.b = ik.a(date);
            if (date2 == null) {
                throw new IllegalArgumentException("Required value for 'serverModified' is null");
            }
            this.c = ik.a(date2);
            if (str3 == null) {
                throw new IllegalArgumentException("Required value for 'rev' is null");
            } else if (str3.length() < 9) {
                throw new IllegalArgumentException("String 'rev' is shorter than 9");
            } else if (!Pattern.matches("[0-9a-f]+", str3)) {
                throw new IllegalArgumentException("String 'rev' does not match pattern");
            } else {
                this.d = str3;
                this.e = j2;
                this.f = jjVar;
                this.g = ixVar;
                if (list != null) {
                    for (js jsVar : list) {
                        if (jsVar == null) {
                            throw new IllegalArgumentException("An item in list 'propertyGroups' is null");
                        }
                    }
                }
                this.h = list;
                this.i = bool;
                if (str7 != null) {
                    if (str7.length() < 64) {
                        throw new IllegalArgumentException("String 'contentHash' is shorter than 64");
                    } else if (str7.length() > 64) {
                        throw new IllegalArgumentException("String 'contentHash' is longer than 64");
                    }
                }
                this.j = str7;
            }
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

    public final long d() {
        return this.e;
    }

    public final String e() {
        return this.j;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!obj.getClass().equals(getClass())) {
            return false;
        }
        iw iwVar = (iw) obj;
        if ((this.k == iwVar.k || this.k.equals(iwVar.k)) && ((this.a == iwVar.a || this.a.equals(iwVar.a)) && ((this.b == iwVar.b || this.b.equals(iwVar.b)) && ((this.c == iwVar.c || this.c.equals(iwVar.c)) && ((this.d == iwVar.d || this.d.equals(iwVar.d)) && this.e == iwVar.e && ((this.l == iwVar.l || (this.l != null && this.l.equals(iwVar.l))) && ((this.m == iwVar.m || (this.m != null && this.m.equals(iwVar.m))) && ((this.n == iwVar.n || (this.n != null && this.n.equals(iwVar.n))) && ((this.f == iwVar.f || (this.f != null && this.f.equals(iwVar.f))) && ((this.g == iwVar.g || (this.g != null && this.g.equals(iwVar.g))) && ((this.h == iwVar.h || (this.h != null && this.h.equals(iwVar.h))) && (this.i == iwVar.i || (this.i != null && this.i.equals(iwVar.i)))))))))))))) {
            if (this.j == iwVar.j) {
                return true;
            }
            if (this.j != null && this.j.equals(iwVar.j)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{this.a, this.b, this.c, this.d, Long.valueOf(this.e), this.f, this.g, this.h, this.i, this.j}) + (super.hashCode() * 31);
    }

    public final String toString() {
        return a.a.a(this);
    }
}
