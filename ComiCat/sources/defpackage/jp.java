package defpackage;

import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import defpackage.Cif;
import defpackage.is;
import defpackage.ja;
import java.util.Arrays;
import java.util.Date;

/* renamed from: jp  reason: default package */
/* compiled from: VideoMetadata */
public final class jp extends jk {
    protected final Long d;

    /* renamed from: jp$a */
    /* compiled from: VideoMetadata */
    static class a extends ig<jp> {
        public static final a a = new a();

        a() {
        }

        public static jp a(JsonParser jsonParser, boolean z) {
            String str;
            if (!z) {
                d(jsonParser);
                str = b(jsonParser);
                if ("video".equals(str)) {
                    str = null;
                }
            } else {
                str = null;
            }
            if (str == null) {
                Long l = null;
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
                    } else if ("duration".equals(currentName)) {
                        l = (Long) Cif.a(Cif.e.a).a(jsonParser);
                    } else {
                        f(jsonParser);
                    }
                }
                jp jpVar = new jp(isVar, jaVar, date, l);
                if (!z) {
                    e(jsonParser);
                }
                return jpVar;
            }
            throw new JsonParseException(jsonParser, "No subtype found that matches tag: \"" + str + "\"");
        }

        public static void a(jp jpVar, JsonGenerator jsonGenerator) {
            jsonGenerator.writeStartObject();
            jsonGenerator.writeStringField(".tag", "video");
            if (jpVar.a != null) {
                jsonGenerator.writeFieldName("dimensions");
                Cif.a(is.a.a).a(jpVar.a, jsonGenerator);
            }
            if (jpVar.b != null) {
                jsonGenerator.writeFieldName("location");
                Cif.a(ja.a.a).a(jpVar.b, jsonGenerator);
            }
            if (jpVar.c != null) {
                jsonGenerator.writeFieldName("time_taken");
                Cif.a(Cif.b.a).a(jpVar.c, jsonGenerator);
            }
            if (jpVar.d != null) {
                jsonGenerator.writeFieldName("duration");
                Cif.a(Cif.e.a).a(jpVar.d, jsonGenerator);
            }
            jsonGenerator.writeEndObject();
        }

        public final /* synthetic */ void b(Object obj, JsonGenerator jsonGenerator) {
            a((jp) obj, jsonGenerator);
        }

        public final /* synthetic */ Object h(JsonParser jsonParser) {
            return a(jsonParser, false);
        }
    }

    public jp() {
        this((is) null, (ja) null, (Date) null, (Long) null);
    }

    public jp(is isVar, ja jaVar, Date date, Long l) {
        super(isVar, jaVar, date);
        this.d = l;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!obj.getClass().equals(getClass())) {
            return false;
        }
        jp jpVar = (jp) obj;
        if ((this.a == jpVar.a || (this.a != null && this.a.equals(jpVar.a))) && ((this.b == jpVar.b || (this.b != null && this.b.equals(jpVar.b))) && (this.c == jpVar.c || (this.c != null && this.c.equals(jpVar.c))))) {
            if (this.d == jpVar.d) {
                return true;
            }
            if (this.d != null && this.d.equals(jpVar.d)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{this.d}) + (super.hashCode() * 31);
    }

    public final String toString() {
        return a.a.a(this);
    }
}
