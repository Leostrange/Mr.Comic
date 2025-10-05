package defpackage;

import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;

/* renamed from: hd  reason: default package */
/* compiled from: ApiErrorResponse */
final class hd<T> {
    final T a;
    hq b;

    /* renamed from: hd$a */
    /* compiled from: ApiErrorResponse */
    static final class a<T> extends ie<hd<T>> {
        private ie<T> a;

        public a(ie<T> ieVar) {
            this.a = ieVar;
        }

        public final /* synthetic */ Object a(JsonParser jsonParser) {
            hq hqVar = null;
            d(jsonParser);
            T t = null;
            while (jsonParser.getCurrentToken() == JsonToken.FIELD_NAME) {
                String currentName = jsonParser.getCurrentName();
                jsonParser.nextToken();
                if ("error".equals(currentName)) {
                    t = this.a.a(jsonParser);
                } else if ("user_message".equals(currentName)) {
                    hqVar = hq.a.a(jsonParser);
                } else {
                    f(jsonParser);
                }
            }
            if (t == null) {
                throw new JsonParseException(jsonParser, "Required field \"error\" missing.");
            }
            hd hdVar = new hd(t, hqVar);
            e(jsonParser);
            return hdVar;
        }

        public final /* synthetic */ void a(Object obj, JsonGenerator jsonGenerator) {
            throw new UnsupportedOperationException("Error wrapper serialization not supported.");
        }
    }

    public hd(T t, hq hqVar) {
        if (t == null) {
            throw new NullPointerException("error");
        }
        this.a = t;
        this.b = hqVar;
    }
}
