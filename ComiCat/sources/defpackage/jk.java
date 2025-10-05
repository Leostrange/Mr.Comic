package defpackage;

import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import defpackage.Cif;
import defpackage.is;
import defpackage.ja;
import defpackage.jn;
import defpackage.jp;
import java.util.Arrays;
import java.util.Date;

/* renamed from: jk  reason: default package */
/* compiled from: MediaMetadata */
public class jk {
    protected final is a;
    protected final ja b;
    protected final Date c;

    /* renamed from: jk$a */
    /* compiled from: MediaMetadata */
    static class a extends ig<jk> {
        public static final a a = new a();

        a() {
        }

        private static jk a(JsonParser jsonParser, boolean z) {
            String str;
            jk a2;
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
                Date date = null;
                ja jaVar = null;
                is isVar = null;
                while (jsonParser.getCurrentToken() == JsonToken.FIELD_NAME) {
                    String currentName = jsonParser.getCurrentName();
                    jsonParser.nextToken();
                    if ("dimensions".equals(currentName)) {
                        isVar = (is) Cif.a(is.a.a).a(jsonParser);
                    } else if ("location".equals(currentName)) {
                        jaVar = (ja) Cif.a(ja.a.a).a(jsonParser);
                    } else if ("time_taken".equals(currentName)) {
                        date = (Date) Cif.a(Cif.b.a).a(jsonParser);
                    } else {
                        f(jsonParser);
                    }
                }
                a2 = new jk(isVar, jaVar, date);
            } else if ("".equals(str)) {
                a2 = a(jsonParser, true);
            } else if ("photo".equals(str)) {
                jn.a aVar = jn.a.a;
                a2 = jn.a.a(jsonParser, true);
            } else if ("video".equals(str)) {
                jp.a aVar2 = jp.a.a;
                a2 = jp.a.a(jsonParser, true);
            } else {
                throw new JsonParseException(jsonParser, "No subtype found that matches tag: \"" + str + "\"");
            }
            if (!z) {
                e(jsonParser);
            }
            return a2;
        }

        public final /* synthetic */ void b(Object obj, JsonGenerator jsonGenerator) {
            jk jkVar = (jk) obj;
            if (jkVar instanceof jn) {
                jn.a aVar = jn.a.a;
                jn.a.a((jn) jkVar, jsonGenerator);
            } else if (jkVar instanceof jp) {
                jp.a aVar2 = jp.a.a;
                jp.a.a((jp) jkVar, jsonGenerator);
            } else {
                jsonGenerator.writeStartObject();
                if (jkVar.a != null) {
                    jsonGenerator.writeFieldName("dimensions");
                    Cif.a(is.a.a).a(jkVar.a, jsonGenerator);
                }
                if (jkVar.b != null) {
                    jsonGenerator.writeFieldName("location");
                    Cif.a(ja.a.a).a(jkVar.b, jsonGenerator);
                }
                if (jkVar.c != null) {
                    jsonGenerator.writeFieldName("time_taken");
                    Cif.a(Cif.b.a).a(jkVar.c, jsonGenerator);
                }
                jsonGenerator.writeEndObject();
            }
        }

        public final /* synthetic */ Object h(JsonParser jsonParser) {
            return a(jsonParser, false);
        }
    }

    public jk() {
        this((is) null, (ja) null, (Date) null);
    }

    public jk(is isVar, ja jaVar, Date date) {
        this.a = isVar;
        this.b = jaVar;
        this.c = ik.a(date);
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!obj.getClass().equals(getClass())) {
            return false;
        }
        jk jkVar = (jk) obj;
        if ((this.a == jkVar.a || (this.a != null && this.a.equals(jkVar.a))) && (this.b == jkVar.b || (this.b != null && this.b.equals(jkVar.b)))) {
            if (this.c == jkVar.c) {
                return true;
            }
            if (this.c != null && this.c.equals(jkVar.c)) {
                return true;
            }
        }
        return false;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.a, this.b, this.c});
    }

    public String toString() {
        return a.a.a(this);
    }
}
