// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import com.fasterxml.jackson.core.JsonFactory;
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

public abstract class ie
{

    private static final Charset a = Charset.forName("UTF-8");

    public ie()
    {
    }

    protected static void a(String s, JsonParser jsonparser)
    {
        if (jsonparser.getCurrentToken() != JsonToken.FIELD_NAME)
        {
            throw new JsonParseException(jsonparser, (new StringBuilder("expected field name, but was: ")).append(jsonparser.getCurrentToken()).toString());
        }
        if (!s.equals(jsonparser.getCurrentName()))
        {
            throw new JsonParseException(jsonparser, (new StringBuilder("expected field '")).append(s).append("', but was: '").append(jsonparser.getCurrentName()).append("'").toString());
        } else
        {
            jsonparser.nextToken();
            return;
        }
    }

    protected static String c(JsonParser jsonparser)
    {
        if (jsonparser.getCurrentToken() != JsonToken.VALUE_STRING)
        {
            throw new JsonParseException(jsonparser, (new StringBuilder("expected string value, but was ")).append(jsonparser.getCurrentToken()).toString());
        } else
        {
            return jsonparser.getText();
        }
    }

    protected static void d(JsonParser jsonparser)
    {
        if (jsonparser.getCurrentToken() != JsonToken.START_OBJECT)
        {
            throw new JsonParseException(jsonparser, "expected object value.");
        } else
        {
            jsonparser.nextToken();
            return;
        }
    }

    protected static void e(JsonParser jsonparser)
    {
        if (jsonparser.getCurrentToken() != JsonToken.END_OBJECT)
        {
            throw new JsonParseException(jsonparser, "expected end of object value.");
        } else
        {
            jsonparser.nextToken();
            return;
        }
    }

    protected static void f(JsonParser jsonparser)
    {
        if (jsonparser.getCurrentToken().isStructStart())
        {
            jsonparser.skipChildren();
            jsonparser.nextToken();
            return;
        }
        if (jsonparser.getCurrentToken().isScalarValue())
        {
            jsonparser.nextToken();
            return;
        } else
        {
            throw new JsonParseException(jsonparser, (new StringBuilder("Can't skip JSON value token: ")).append(jsonparser.getCurrentToken()).toString());
        }
    }

    protected static void g(JsonParser jsonparser)
    {
        while (jsonparser.getCurrentToken() != null && !jsonparser.getCurrentToken().isStructEnd()) 
        {
            if (jsonparser.getCurrentToken().isStructStart())
            {
                jsonparser.skipChildren();
            } else
            if (jsonparser.getCurrentToken() == JsonToken.FIELD_NAME)
            {
                jsonparser.nextToken();
            } else
            if (jsonparser.getCurrentToken().isScalarValue())
            {
                jsonparser.nextToken();
            } else
            {
                throw new JsonParseException(jsonparser, (new StringBuilder("Can't skip token: ")).append(jsonparser.getCurrentToken()).toString());
            }
        }
    }

    public abstract Object a(JsonParser jsonparser);

    public final Object a(InputStream inputstream)
    {
        inputstream = ii.a.createParser(inputstream);
        inputstream.nextToken();
        return a(((JsonParser) (inputstream)));
    }

    public final Object a(String s)
    {
        try
        {
            s = ii.a.createParser(s);
            s.nextToken();
            s = ((String) (a(((JsonParser) (s)))));
        }
        // Misplaced declaration of an exception variable
        catch (String s)
        {
            throw s;
        }
        // Misplaced declaration of an exception variable
        catch (String s)
        {
            throw new IllegalStateException("Impossible I/O exception", s);
        }
        return s;
    }

    public final String a(Object obj)
    {
        ByteArrayOutputStream bytearrayoutputstream = new ByteArrayOutputStream();
        try
        {
            a(obj, ((OutputStream) (bytearrayoutputstream)));
        }
        // Misplaced declaration of an exception variable
        catch (Object obj)
        {
            throw new IllegalStateException("Impossible JSON exception", ((Throwable) (obj)));
        }
        // Misplaced declaration of an exception variable
        catch (Object obj)
        {
            throw new IllegalStateException("Impossible I/O exception", ((Throwable) (obj)));
        }
        return new String(bytearrayoutputstream.toByteArray(), a);
    }

    public abstract void a(Object obj, JsonGenerator jsongenerator);

    public final void a(Object obj, OutputStream outputstream)
    {
        outputstream = ii.a.createGenerator(outputstream);
        try
        {
            a(obj, ((JsonGenerator) (outputstream)));
        }
        // Misplaced declaration of an exception variable
        catch (Object obj)
        {
            throw new IllegalStateException("Impossible JSON generation exception", ((Throwable) (obj)));
        }
        outputstream.flush();
    }

}
