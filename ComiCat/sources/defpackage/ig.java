package defpackage;

import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParser;

/* renamed from: ig  reason: default package */
/* compiled from: StructSerializer */
public abstract class ig<T> extends id<T> {
    public final T a(JsonParser jsonParser) {
        return h(jsonParser);
    }

    public final void a(T t, JsonGenerator jsonGenerator) {
        b(t, jsonGenerator);
    }

    public abstract void b(T t, JsonGenerator jsonGenerator);

    public abstract T h(JsonParser jsonParser);
}
