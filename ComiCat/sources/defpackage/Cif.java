package defpackage;

import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.text.ParseException;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

/* renamed from: if  reason: invalid class name and default package */
/* compiled from: StoneSerializers */
public final class Cif {

    /* renamed from: if$a */
    /* compiled from: StoneSerializers */
    public static final class a extends ie<Boolean> {
        public static final a a = new a();

        private a() {
        }

        public final /* synthetic */ Object a(JsonParser jsonParser) {
            Boolean valueOf = Boolean.valueOf(jsonParser.getBooleanValue());
            jsonParser.nextToken();
            return valueOf;
        }

        public final /* synthetic */ void a(Object obj, JsonGenerator jsonGenerator) {
            jsonGenerator.writeBoolean(((Boolean) obj).booleanValue());
        }
    }

    /* renamed from: if$b */
    /* compiled from: StoneSerializers */
    public static final class b extends ie<Date> {
        public static final b a = new b();

        private b() {
        }

        private static Date b(JsonParser jsonParser) {
            String c = c(jsonParser);
            jsonParser.nextToken();
            try {
                return ii.a(c);
            } catch (ParseException e) {
                throw new JsonParseException(jsonParser, "Malformed timestamp: '" + c + "'", e);
            }
        }

        public final /* synthetic */ Object a(JsonParser jsonParser) {
            return b(jsonParser);
        }

        public final /* synthetic */ void a(Object obj, JsonGenerator jsonGenerator) {
            jsonGenerator.writeString(ii.a((Date) obj));
        }
    }

    /* renamed from: if$c */
    /* compiled from: StoneSerializers */
    public static final class c extends ie<Double> {
        public static final c a = new c();

        private c() {
        }

        public final /* synthetic */ Object a(JsonParser jsonParser) {
            Double valueOf = Double.valueOf(jsonParser.getDoubleValue());
            jsonParser.nextToken();
            return valueOf;
        }

        public final /* synthetic */ void a(Object obj, JsonGenerator jsonGenerator) {
            jsonGenerator.writeNumber(((Double) obj).doubleValue());
        }
    }

    /* renamed from: if$d */
    /* compiled from: StoneSerializers */
    static final class d<T> extends ie<List<T>> {
        private final ie<T> a;

        public d(ie<T> ieVar) {
            this.a = ieVar;
        }

        public final /* synthetic */ Object a(JsonParser jsonParser) {
            if (jsonParser.getCurrentToken() != JsonToken.START_ARRAY) {
                throw new JsonParseException(jsonParser, "expected array value.");
            }
            jsonParser.nextToken();
            ArrayList arrayList = new ArrayList();
            while (jsonParser.getCurrentToken() != JsonToken.END_ARRAY) {
                arrayList.add(this.a.a(jsonParser));
            }
            if (jsonParser.getCurrentToken() != JsonToken.END_ARRAY) {
                throw new JsonParseException(jsonParser, "expected end of array value.");
            }
            jsonParser.nextToken();
            return arrayList;
        }

        public final /* synthetic */ void a(Object obj, JsonGenerator jsonGenerator) {
            List<Object> list = (List) obj;
            jsonGenerator.writeStartArray(list.size());
            for (Object a2 : list) {
                this.a.a(a2, jsonGenerator);
            }
            jsonGenerator.writeEndArray();
        }
    }

    /* renamed from: if$e */
    /* compiled from: StoneSerializers */
    public static final class e extends ie<Long> {
        public static final e a = new e();

        private e() {
        }

        public final /* synthetic */ Object a(JsonParser jsonParser) {
            Long valueOf = Long.valueOf(jsonParser.getLongValue());
            jsonParser.nextToken();
            return valueOf;
        }

        public final /* synthetic */ void a(Object obj, JsonGenerator jsonGenerator) {
            jsonGenerator.writeNumber(((Long) obj).longValue());
        }
    }

    /* renamed from: if$f */
    /* compiled from: StoneSerializers */
    static final class f<T> extends ie<T> {
        private final ie<T> a;

        public f(ie<T> ieVar) {
            this.a = ieVar;
        }

        public final T a(JsonParser jsonParser) {
            if (jsonParser.getCurrentToken() != JsonToken.VALUE_NULL) {
                return this.a.a(jsonParser);
            }
            jsonParser.nextToken();
            return null;
        }

        public final void a(T t, JsonGenerator jsonGenerator) {
            if (t == null) {
                jsonGenerator.writeNull();
            } else {
                this.a.a(t, jsonGenerator);
            }
        }
    }

    /* renamed from: if$g */
    /* compiled from: StoneSerializers */
    public static final class g extends ie<String> {
        public static final g a = new g();

        private g() {
        }

        public final /* synthetic */ Object a(JsonParser jsonParser) {
            String c = c(jsonParser);
            jsonParser.nextToken();
            return c;
        }

        public final /* synthetic */ void a(Object obj, JsonGenerator jsonGenerator) {
            jsonGenerator.writeString((String) obj);
        }
    }

    /* renamed from: if$h */
    /* compiled from: StoneSerializers */
    public static final class h extends ie<Void> {
        public static final h a = new h();

        private h() {
        }

        public final /* synthetic */ Object a(JsonParser jsonParser) {
            f(jsonParser);
            return null;
        }

        public final /* synthetic */ void a(Object obj, JsonGenerator jsonGenerator) {
            jsonGenerator.writeNull();
        }
    }

    public static <T> ie<T> a(ie<T> ieVar) {
        return new f(ieVar);
    }

    public static <T> ie<List<T>> b(ie<T> ieVar) {
        return new d(ieVar);
    }
}
