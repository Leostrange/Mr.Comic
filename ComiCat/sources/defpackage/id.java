package defpackage;

import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;

/* renamed from: id  reason: default package */
/* compiled from: CompositeSerializer */
public abstract class id<T> extends ie<T> {
    protected static String b(JsonParser jsonParser) {
        if (!(jsonParser.getCurrentToken() == JsonToken.FIELD_NAME && ".tag".equals(jsonParser.getCurrentName()))) {
            return null;
        }
        jsonParser.nextToken();
        String c = c(jsonParser);
        jsonParser.nextToken();
        return c;
    }
}
