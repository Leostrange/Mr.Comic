// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.util.Arrays;

public final class ja
{
    static final class a extends ig
    {

        public static final a a = new a();

        public final void b(Object obj, JsonGenerator jsongenerator)
        {
            obj = (ja)obj;
            jsongenerator.writeStartObject();
            jsongenerator.writeFieldName("latitude");
            if.c.a.a(Double.valueOf(((ja) (obj)).a), jsongenerator);
            jsongenerator.writeFieldName("longitude");
            if.c.a.a(Double.valueOf(((ja) (obj)).b), jsongenerator);
            jsongenerator.writeEndObject();
        }

        public final Object h(JsonParser jsonparser)
        {
            d(jsonparser);
            Object obj = b(jsonparser);
            if (obj == null)
            {
                Double double1 = null;
                obj = null;
                while (jsonparser.getCurrentToken() == JsonToken.FIELD_NAME) 
                {
                    String s = jsonparser.getCurrentName();
                    jsonparser.nextToken();
                    if ("latitude".equals(s))
                    {
                        obj = (Double)if.c.a.a(jsonparser);
                    } else
                    if ("longitude".equals(s))
                    {
                        double1 = (Double)if.c.a.a(jsonparser);
                    } else
                    {
                        f(jsonparser);
                    }
                }
                if (obj == null)
                {
                    throw new JsonParseException(jsonparser, "Required field \"latitude\" missing.");
                }
                if (double1 == null)
                {
                    throw new JsonParseException(jsonparser, "Required field \"longitude\" missing.");
                } else
                {
                    obj = new ja(((Double) (obj)).doubleValue(), double1.doubleValue());
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


    protected final double a;
    protected final double b;

    public ja(double d, double d1)
    {
        a = d;
        b = d1;
    }

    public final boolean equals(Object obj)
    {
        if (obj != this)
        {
            if (obj.getClass().equals(getClass()))
            {
                if (a != ((ja) (obj = (ja)obj)).a || b != ((ja) (obj)).b)
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
            Double.valueOf(a), Double.valueOf(b)
        });
    }

    public final String toString()
    {
        return a.a.a(this);
    }
}
