// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.util.Arrays;

public final class jr
{
    public static final class a extends ig
    {

        public static final a a = new a();

        public final void b(Object obj, JsonGenerator jsongenerator)
        {
            obj = (jr)obj;
            jsongenerator.writeStartObject();
            jsongenerator.writeFieldName("name");
            if.g.a.a(((jr) (obj)).a, jsongenerator);
            jsongenerator.writeFieldName("value");
            if.g.a.a(((jr) (obj)).b, jsongenerator);
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
                    if ("name".equals(s1))
                    {
                        obj = (String)if.g.a.a(jsonparser);
                    } else
                    if ("value".equals(s1))
                    {
                        s = (String)if.g.a.a(jsonparser);
                    } else
                    {
                        f(jsonparser);
                    }
                }
                if (obj == null)
                {
                    throw new JsonParseException(jsonparser, "Required field \"name\" missing.");
                }
                if (s == null)
                {
                    throw new JsonParseException(jsonparser, "Required field \"value\" missing.");
                } else
                {
                    obj = new jr(((String) (obj)), s);
                    e(jsonparser);
                    return obj;
                }
            } else
            {
                throw new JsonParseException(jsonparser, (new StringBuilder("No subtype found that matches tag: \"")).append(((String) (obj))).append("\"").toString());
            }
        }


        public a()
        {
        }
    }


    protected final String a;
    protected final String b;

    public jr(String s, String s1)
    {
        if (s == null)
        {
            throw new IllegalArgumentException("Required value for 'name' is null");
        }
        a = s;
        if (s1 == null)
        {
            throw new IllegalArgumentException("Required value for 'value' is null");
        } else
        {
            b = s1;
            return;
        }
    }

    public final boolean equals(Object obj)
    {
        if (obj != this)
        {
            if (obj.getClass().equals(getClass()))
            {
                if (a != ((jr) (obj = (jr)obj)).a && !a.equals(((jr) (obj)).a) || b != ((jr) (obj)).b && !b.equals(((jr) (obj)).b))
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
