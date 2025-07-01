// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.util.Arrays;
import java.util.regex.Pattern;

public final class it
{
    static final class a extends ig
    {

        public static final a a = new a();

        public final void b(Object obj, JsonGenerator jsongenerator)
        {
            obj = (it)obj;
            jsongenerator.writeStartObject();
            jsongenerator.writeFieldName("path");
            if.g.a.a(((it) (obj)).a, jsongenerator);
            if (((it) (obj)).b != null)
            {
                jsongenerator.writeFieldName("rev");
                if.a(if.g.a).a(((it) (obj)).b, jsongenerator);
            }
            jsongenerator.writeEndObject();
        }

        public final Object h(JsonParser jsonparser)
        {
            d(jsonparser);
            Object obj = b(jsonparser);
            if (obj == null)
            {
                String s = null;
                obj = null;
                while (jsonparser.getCurrentToken() == JsonToken.FIELD_NAME) 
                {
                    String s1 = jsonparser.getCurrentName();
                    jsonparser.nextToken();
                    if ("path".equals(s1))
                    {
                        obj = (String)if.g.a.a(jsonparser);
                    } else
                    if ("rev".equals(s1))
                    {
                        s = (String)if.a(if.g.a).a(jsonparser);
                    } else
                    {
                        f(jsonparser);
                    }
                }
                if (obj == null)
                {
                    throw new JsonParseException(jsonparser, "Required field \"path\" missing.");
                } else
                {
                    obj = new it(((String) (obj)), s);
                    e(jsonparser);
                    return obj;
                }
            } else
            {
                throw new JsonParseException(jsonparser, (new StringBuilder("No subtype found that matches tag: \"")).append(((String) (obj))).append("\"").toString());
            }
        }


        a()
        {
        }
    }


    protected final String a;
    protected final String b;

    public it(String s)
    {
        this(s, null);
    }

    public it(String s, String s1)
    {
        if (s == null)
        {
            throw new IllegalArgumentException("Required value for 'path' is null");
        }
        if (!Pattern.matches("(/(.|[\\r\\n])*|id:.*)|(rev:[0-9a-f]{9,})|(ns:[0-9]+(/.*)?)", s))
        {
            throw new IllegalArgumentException("String 'path' does not match pattern");
        }
        a = s;
        if (s1 != null)
        {
            if (s1.length() < 9)
            {
                throw new IllegalArgumentException("String 'rev' is shorter than 9");
            }
            if (!Pattern.matches("[0-9a-f]+", s1))
            {
                throw new IllegalArgumentException("String 'rev' does not match pattern");
            }
        }
        b = s1;
    }

    public final boolean equals(Object obj)
    {
        if (obj != this)
        {
            if (obj.getClass().equals(getClass()))
            {
                if (a != ((it) (obj = (it)obj)).a && !a.equals(((it) (obj)).a) || b != ((it) (obj)).b && (b == null || !b.equals(((it) (obj)).b)))
                {
                    return false;
                }
            } else
            {
                return false;
            }
        }
        return true;
    }

    public final int hashCode()
    {
        return Arrays.hashCode(new Object[] {
            a, b
        });
    }

    public final String toString()
    {
        return a.a.a(this);
    }
}
