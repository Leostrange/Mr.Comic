package defpackage;

import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import defpackage.Cif;
import defpackage.jz;
import defpackage.kc;
import defpackage.kd;
import java.util.Arrays;

/* renamed from: kb  reason: default package */
/* compiled from: FullAccount */
public final class kb extends jy {
    protected final String g;
    protected final String h;
    protected final String i;
    protected final kc j;
    protected final String k;
    protected final boolean l;
    protected final jz m;

    /* renamed from: kb$a */
    /* compiled from: FullAccount */
    static class a extends ig<kb> {
        public static final a a = new a();

        a() {
        }

        public final /* synthetic */ void b(Object obj, JsonGenerator jsonGenerator) {
            kb kbVar = (kb) obj;
            jsonGenerator.writeStartObject();
            jsonGenerator.writeFieldName("account_id");
            Cif.g.a.a(kbVar.a, jsonGenerator);
            jsonGenerator.writeFieldName("name");
            kd.a.a.b(kbVar.b, jsonGenerator);
            jsonGenerator.writeFieldName("email");
            Cif.g.a.a(kbVar.c, jsonGenerator);
            jsonGenerator.writeFieldName("email_verified");
            Cif.a.a.a(Boolean.valueOf(kbVar.d), jsonGenerator);
            jsonGenerator.writeFieldName("disabled");
            Cif.a.a.a(Boolean.valueOf(kbVar.f), jsonGenerator);
            jsonGenerator.writeFieldName("locale");
            Cif.g.a.a(kbVar.h, jsonGenerator);
            jsonGenerator.writeFieldName("referral_link");
            Cif.g.a.a(kbVar.i, jsonGenerator);
            jsonGenerator.writeFieldName("is_paired");
            Cif.a.a.a(Boolean.valueOf(kbVar.l), jsonGenerator);
            jsonGenerator.writeFieldName("account_type");
            jz.a aVar = jz.a.a;
            jz.a.a(kbVar.m, jsonGenerator);
            if (kbVar.e != null) {
                jsonGenerator.writeFieldName("profile_photo_url");
                Cif.a(Cif.g.a).a(kbVar.e, jsonGenerator);
            }
            if (kbVar.g != null) {
                jsonGenerator.writeFieldName("country");
                Cif.a(Cif.g.a).a(kbVar.g, jsonGenerator);
            }
            if (kbVar.j != null) {
                jsonGenerator.writeFieldName("team");
                Cif.a(kc.a.a).a(kbVar.j, jsonGenerator);
            }
            if (kbVar.k != null) {
                jsonGenerator.writeFieldName("team_member_id");
                Cif.a(Cif.g.a).a(kbVar.k, jsonGenerator);
            }
            jsonGenerator.writeEndObject();
        }

        public final /* synthetic */ Object h(JsonParser jsonParser) {
            d(jsonParser);
            String b = b(jsonParser);
            if (b == null) {
                String str = null;
                String str2 = null;
                String str3 = null;
                jz jzVar = null;
                String str4 = null;
                String str5 = null;
                kc kcVar = null;
                String str6 = null;
                Boolean bool = null;
                String str7 = null;
                Boolean bool2 = null;
                Boolean bool3 = null;
                kd kdVar = null;
                while (jsonParser.getCurrentToken() == JsonToken.FIELD_NAME) {
                    String currentName = jsonParser.getCurrentName();
                    jsonParser.nextToken();
                    if ("account_id".equals(currentName)) {
                        str7 = (String) Cif.g.a.a(jsonParser);
                    } else if ("name".equals(currentName)) {
                        kdVar = (kd) kd.a.a.a(jsonParser);
                    } else if ("email".equals(currentName)) {
                        str = (String) Cif.g.a.a(jsonParser);
                    } else if ("email_verified".equals(currentName)) {
                        bool3 = (Boolean) Cif.a.a.a(jsonParser);
                    } else if ("disabled".equals(currentName)) {
                        bool2 = (Boolean) Cif.a.a.a(jsonParser);
                    } else if ("locale".equals(currentName)) {
                        str2 = (String) Cif.g.a.a(jsonParser);
                    } else if ("referral_link".equals(currentName)) {
                        str3 = (String) Cif.g.a.a(jsonParser);
                    } else if ("is_paired".equals(currentName)) {
                        bool = (Boolean) Cif.a.a.a(jsonParser);
                    } else if ("account_type".equals(currentName)) {
                        jz.a aVar = jz.a.a;
                        jzVar = jz.a.h(jsonParser);
                    } else if ("profile_photo_url".equals(currentName)) {
                        str4 = (String) Cif.a(Cif.g.a).a(jsonParser);
                    } else if ("country".equals(currentName)) {
                        str5 = (String) Cif.a(Cif.g.a).a(jsonParser);
                    } else if ("team".equals(currentName)) {
                        kcVar = (kc) Cif.a(kc.a.a).a(jsonParser);
                    } else if ("team_member_id".equals(currentName)) {
                        str6 = (String) Cif.a(Cif.g.a).a(jsonParser);
                    } else {
                        f(jsonParser);
                    }
                }
                if (str7 == null) {
                    throw new JsonParseException(jsonParser, "Required field \"account_id\" missing.");
                } else if (kdVar == null) {
                    throw new JsonParseException(jsonParser, "Required field \"name\" missing.");
                } else if (str == null) {
                    throw new JsonParseException(jsonParser, "Required field \"email\" missing.");
                } else if (bool3 == null) {
                    throw new JsonParseException(jsonParser, "Required field \"email_verified\" missing.");
                } else if (bool2 == null) {
                    throw new JsonParseException(jsonParser, "Required field \"disabled\" missing.");
                } else if (str2 == null) {
                    throw new JsonParseException(jsonParser, "Required field \"locale\" missing.");
                } else if (str3 == null) {
                    throw new JsonParseException(jsonParser, "Required field \"referral_link\" missing.");
                } else if (bool == null) {
                    throw new JsonParseException(jsonParser, "Required field \"is_paired\" missing.");
                } else if (jzVar == null) {
                    throw new JsonParseException(jsonParser, "Required field \"account_type\" missing.");
                } else {
                    kb kbVar = new kb(str7, kdVar, str, bool3.booleanValue(), bool2.booleanValue(), str2, str3, bool.booleanValue(), jzVar, str4, str5, kcVar, str6);
                    e(jsonParser);
                    return kbVar;
                }
            } else {
                throw new JsonParseException(jsonParser, "No subtype found that matches tag: \"" + b + "\"");
            }
        }
    }

    public kb(String str, kd kdVar, String str2, boolean z, boolean z2, String str3, String str4, boolean z3, jz jzVar, String str5, String str6, kc kcVar, String str7) {
        super(str, kdVar, str2, z, z2, str5);
        if (str6 != null) {
            if (str6.length() < 2) {
                throw new IllegalArgumentException("String 'country' is shorter than 2");
            } else if (str6.length() > 2) {
                throw new IllegalArgumentException("String 'country' is longer than 2");
            }
        }
        this.g = str6;
        if (str3 == null) {
            throw new IllegalArgumentException("Required value for 'locale' is null");
        } else if (str3.length() < 2) {
            throw new IllegalArgumentException("String 'locale' is shorter than 2");
        } else {
            this.h = str3;
            if (str4 == null) {
                throw new IllegalArgumentException("Required value for 'referralLink' is null");
            }
            this.i = str4;
            this.j = kcVar;
            this.k = str7;
            this.l = z3;
            if (jzVar == null) {
                throw new IllegalArgumentException("Required value for 'accountType' is null");
            }
            this.m = jzVar;
        }
    }

    public final kd a() {
        return this.b;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!obj.getClass().equals(getClass())) {
            return false;
        }
        kb kbVar = (kb) obj;
        if ((this.a == kbVar.a || this.a.equals(kbVar.a)) && ((this.b == kbVar.b || this.b.equals(kbVar.b)) && ((this.c == kbVar.c || this.c.equals(kbVar.c)) && this.d == kbVar.d && this.f == kbVar.f && ((this.h == kbVar.h || this.h.equals(kbVar.h)) && ((this.i == kbVar.i || this.i.equals(kbVar.i)) && this.l == kbVar.l && ((this.m == kbVar.m || this.m.equals(kbVar.m)) && ((this.e == kbVar.e || (this.e != null && this.e.equals(kbVar.e))) && ((this.g == kbVar.g || (this.g != null && this.g.equals(kbVar.g))) && (this.j == kbVar.j || (this.j != null && this.j.equals(kbVar.j))))))))))) {
            if (this.k == kbVar.k) {
                return true;
            }
            if (this.k != null && this.k.equals(kbVar.k)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{this.g, this.h, this.i, this.j, this.k, Boolean.valueOf(this.l), this.m}) + (super.hashCode() * 31);
    }

    public final String toString() {
        return a.a.a(this);
    }
}
