// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.util.Date;

public final class jn extends jk
{
    static final class a extends ig
    {

        public static final a a = new a();

        public static jn a(JsonParser jsonparser, boolean flag)
        {
            Object obj;
            if (!flag)
            {
                d(jsonparser);
                String s = b(jsonparser);
                obj = s;
                if ("photo".equals(s))
                {
                    obj = null;
                }
            } else
            {
                obj = null;
            }
            if (obj == null)
            {
                Date date = null;
                ja ja1 = null;
                obj = null;
                while (jsonparser.getCurrentToken() == JsonToken.FIELD_NAME) 
                {
                    String s1 = jsonparser.getCurrentName();
                    jsonparser.nextToken();
                    if ("dimensions".equals(s1))
                    {
                        obj = (is)if.a(is.a.a).a(jsonparser);
                    } else
                    if ("location".equals(s1))
                    {
                        ja1 = (ja)if.a(ja.a.a).a(jsonparser);
                    } else
                    if ("time_taken".equals(s1))
                    {
                        date = (Date)if.a(if.b.a).a(jsonparser);
                    } else
                    {
                        f(jsonparser);
                    }
                }
                obj = new jn(((is) (obj)), ja1, date);
                if (!flag)
                {
                    e(jsonparser);
                }
                return ((jn) (obj));
            } else
            {
                throw new JsonParseException(jsonparser, (new StringBuilder("No subtype found that matches tag: \"")).append(((String) (obj))).append("\"").toString());
            }
        }

        public static void a(jn jn1, JsonGenerator jsongenerator)
        {
            jsongenerator.writeStartObject();
            jsongenerator.writeStringField(".tag", "photo");
            if (jn1.a != null)
            {
                jsongenerator.writeFieldName("dimensions");
                if.a(is.a.a).a(jn1.a, jsongenerator);
            }
            if (jn1.b != null)
            {
                jsongenerator.writeFieldName("location");
                if.a(ja.a.a).a(jn1.b, jsongenerator);
            }
            if (jn1.c != null)
            {
                jsongenerator.writeFieldName("time_taken");
                if.a(if.b.a).a(jn1.c, jsongenerator);
            }
            jsongenerator.writeEndObject();
        }

        public final void b(Object obj, JsonGenerator jsongenerator)
        {
            a((jn)obj, jsongenerator);
        }

        public final Object h(JsonParser jsonparser)
        {
            return a(jsonparser, false);
        }


        a()
        {
        }
    }


    public jn()
    {
        this(null, null, null);
    }

    public jn(is is1, ja ja1, Date date)
    {
        super(is1, ja1, date);
    }

    public final boolean equals(Object obj)
    {
        if (obj != this)
        {
            if (obj.getClass().equals(getClass()))
            {
                if (a != ((jn) (obj = (jn)obj)).a && (a == null || !a.equals(((jn) (obj)).a)) || b != ((jn) (obj)).b && (b == null || !b.equals(((jn) (obj)).b)) || c != ((jn) (obj)).c && (c == null || !c.equals(((jn) (obj)).c)))
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
        return getClass().toString().hashCode();
    }

    public final String toString()
    {
        return a.a.a(this);
    }
}
