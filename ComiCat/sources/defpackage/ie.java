package defpackage;

import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.nio.charset.Charset;
import org.apache.http.protocol.HTTP;

/* renamed from: ie  reason: default package */
/* compiled from: StoneSerializer */
public abstract class ie<T> {
    private static final Charset a = Charset.forName(HTTP.UTF_8);

    protected static void a(String str, JsonParser jsonParser) {
        if (jsonParser.getCurrentToken() != JsonToken.FIELD_NAME) {
            throw new JsonParseException(jsonParser, "expected field name, but was: " + jsonParser.getCurrentToken());
        } else if (!str.equals(jsonParser.getCurrentName())) {
            throw new JsonParseException(jsonParser, "expected field '" + str + "', but was: '" + jsonParser.getCurrentName() + "'");
        } else {
            jsonParser.nextToken();
        }
    }

    protected static String c(JsonParser jsonParser) {
        if (jsonParser.getCurrentToken() == JsonToken.VALUE_STRING) {
            return jsonParser.getText();
        }
        throw new JsonParseException(jsonParser, "expected string value, but was " + jsonParser.getCurrentToken());
    }

    protected static void d(JsonParser jsonParser) {
        if (jsonParser.getCurrentToken() != JsonToken.START_OBJECT) {
            throw new JsonParseException(jsonParser, "expected object value.");
        }
        jsonParser.nextToken();
    }

    protected static void e(JsonParser jsonParser) {
        if (jsonParser.getCurrentToken() != JsonToken.END_OBJECT) {
            throw new JsonParseException(jsonParser, "expected end of object value.");
        }
        jsonParser.nextToken();
    }

    protected static void f(JsonParser jsonParser) {
        if (jsonParser.getCurrentToken().isStructStart()) {
            jsonParser.skipChildren();
            jsonParser.nextToken();
        } else if (jsonParser.getCurrentToken().isScalarValue()) {
            jsonParser.nextToken();
        } else {
            throw new JsonParseException(jsonParser, "Can't skip JSON value token: " + jsonParser.getCurrentToken());
        }
    }

    protected static void g(JsonParser jsonParser) {
        while (jsonParser.getCurrentToken() != null && !jsonParser.getCurrentToken().isStructEnd()) {
            if (jsonParser.getCurrentToken().isStructStart()) {
                jsonParser.skipChildren();
            } else if (jsonParser.getCurrentToken() == JsonToken.FIELD_NAME) {
                jsonParser.nextToken();
            } else if (jsonParser.getCurrentToken().isScalarValue()) {
                jsonParser.nextToken();
            } else {
                throw new JsonParseException(jsonParser, "Can't skip token: " + jsonParser.getCurrentToken());
            }
        }
    }

    public abstract T a(JsonParser jsonParser);

    public final T a(InputStream inputStream) {
        JsonParser createParser = ii.a.createParser(inputStream);
        createParser.nextToken();
        return a(createParser);
    }

    public final T a(String str) {
        try {
            JsonParser createParser = ii.a.createParser(str);
            createParser.nextToken();
            return a(createParser);
        } catch (JsonParseException e) {
            throw e;
        } catch (IOException e2) {
            throw new IllegalStateException("Impossible I/O exception", e2);
        }
    }

    public final String a(T t) {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        try {
            a(t, (OutputStream) byteArrayOutputStream);
            return new String(byteArrayOutputStream.toByteArray(), a);
        } catch (JsonGenerationException e) {
            throw new IllegalStateException("Impossible JSON exception", e);
        } catch (IOException e2) {
            throw new IllegalStateException("Impossible I/O exception", e2);
        }
    }

    public abstract void a(T t, JsonGenerator jsonGenerator);

    public final void a(T t, OutputStream outputStream) {
        JsonGenerator createGenerator = ii.a.createGenerator(outputStream);
        try {
            a(t, createGenerator);
            createGenerator.flush();
        } catch (JsonGenerationException e) {
            throw new IllegalStateException("Impossible JSON generation exception", e);
        }
    }
}
