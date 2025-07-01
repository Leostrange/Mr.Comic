// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.util.Arrays;

public final class is
{
    static final class a extends ig
    {

        public static final a a = new a();

        public final void b(Object obj, JsonGenerator jsongenerator)
        {
            obj = (is)obj;
            jsongenerator.writeStartObject();
            jsongenerator.writeFieldName("height");
            if.e.a.a(Long.valueOf(((is) (obj)).a), jsongenerator);
            jsongenerator.writeFieldName("width");
            if.e.a.a(Long.valueOf(((is) (obj)).b), jsongenerator);
            jsongenerator.writeEndObject();
        }

        public final Object h(JsonParser jsonparser)
        {
            d(jsonparser);
            Object obj = b(jsonparser);
            if (obj == null)
            {
                Long long1 = null;
                obj = null;
                while (jsonparser.getCurrentToken() == JsonToken.FIELD_NAME) 
                {
                    String s = jsonparser.getCurrentName();
                    jsonparser.nextToken();
                    if ("height".equals(s))
                    {
                        obj = (Long)if.e.a.a(jsonparser);
                    } else
                    if ("width".equals(s))
                    {
                        long1 = (Long)if.e.a.a(jsonparser);
                    } else
                    {
                        f(jsonparser);
                    }
                }
                if (obj == null)
                {
                    throw new JsonParseException(jsonparser, "Required field \"height\" missing.");
                }
                if (long1 == null)
                {
                    throw new JsonParseException(jsonparser, "Required field \"width\" missing.");
                } else
                {
                    obj = new is(((Long) (obj)).longValue(), long1.longValue());
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


    protected final long a;
    protected final long b;

    public is(long l, long l1)
    {
        a = l;
        b = l1;
    }

    public final boolean equals(Object obj)
    {
        if (obj != this)
        {
            if (obj.getClass().equals(getClass()))
            {
                if (a != ((is) (obj = (is)obj)).a || b != ((is) (obj)).b)
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
            Long.valueOf(a), Long.valueOf(b)
        });
    }

    public final String toString()
    {
        return a.a.a(this);
    }
}
