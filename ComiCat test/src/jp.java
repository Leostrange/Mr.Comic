// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.util.Arrays;
import java.util.Date;

public final class jp extends jk
{
    static final class a extends ig
    {

        public static final a a = new a();

        public static jp a(JsonParser jsonparser, boolean flag)
        {
            Object obj;
            if (!flag)
            {
                d(jsonparser);
                String s = b(jsonparser);
                obj = s;
                if ("video".equals(s))
                {
                    obj = null;
                }
            } else
            {
                obj = null;
            }
            if (obj == null)
            {
                Long long1 = null;
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
                    if ("duration".equals(s1))
                    {
                        long1 = (Long)if.a(if.e.a).a(jsonparser);
                    } else
                    {
                        f(jsonparser);
                    }
                }
                obj = new jp(((is) (obj)), ja1, date, long1);
                if (!flag)
                {
                    e(jsonparser);
                }
                return ((jp) (obj));
            } else
            {
                throw new JsonParseException(jsonparser, (new StringBuilder("No subtype found that matches tag: \"")).append(((String) (obj))).append("\"").toString());
            }
        }

        public static void a(jp jp1, JsonGenerator jsongenerator)
        {
            jsongenerator.writeStartObject();
            jsongenerator.writeStringField(".tag", "video");
            if (jp1.a != null)
            {
                jsongenerator.writeFieldName("dimensions");
                if.a(is.a.a).a(jp1.a, jsongenerator);
            }
            if (jp1.b != null)
            {
                jsongenerator.writeFieldName("location");
                if.a(ja.a.a).a(jp1.b, jsongenerator);
            }
            if (jp1.c != null)
            {
                jsongenerator.writeFieldName("time_taken");
                if.a(if.b.a).a(jp1.c, jsongenerator);
            }
            if (jp1.d != null)
            {
                jsongenerator.writeFieldName("duration");
                if.a(if.e.a).a(jp1.d, jsongenerator);
            }
            jsongenerator.writeEndObject();
        }

        public final void b(Object obj, JsonGenerator jsongenerator)
        {
            a((jp)obj, jsongenerator);
        }

        public final Object h(JsonParser jsonparser)
        {
            return a(jsonparser, false);
        }


        a()
        {
        }
    }


    protected final Long d;

    public jp()
    {
        this(null, null, null, null);
    }

    public jp(is is1, ja ja1, Date date, Long long1)
    {
        super(is1, ja1, date);
        d = long1;
    }

    public final boolean equals(Object obj)
    {
        if (obj != this)
        {
            if (obj.getClass().equals(getClass()))
            {
                if (a != ((jp) (obj = (jp)obj)).a && (a == null || !a.equals(((jp) (obj)).a)) || b != ((jp) (obj)).b && (b == null || !b.equals(((jp) (obj)).b)) || c != ((jp) (obj)).c && (c == null || !c.equals(((jp) (obj)).c)) || d != ((jp) (obj)).d && (d == null || !d.equals(((jp) (obj)).d)))
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
            d
        }) + super.hashCode() * 31;
    }

    public final String toString()
    {
        return a.a.a(this);
    }
}
