// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.util.Arrays;
import java.util.Date;

public class jk
{
    static final class a extends ig
    {

        public static final a a = new a();

        private static jk a(JsonParser jsonparser, boolean flag)
        {
            Object obj;
            if (!flag)
            {
                d(jsonparser);
                String s = b(jsonparser);
                obj = s;
                if ("".equals(s))
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
                obj = new jk(((is) (obj)), ja1, date);
            } else
            if ("".equals(obj))
            {
                obj = a(jsonparser, true);
            } else
            if ("photo".equals(obj))
            {
                obj = jn.a.a;
                obj = jn.a.a(jsonparser, true);
            } else
            if ("video".equals(obj))
            {
                obj = jp.a.a;
                obj = jp.a.a(jsonparser, true);
            } else
            {
                throw new JsonParseException(jsonparser, (new StringBuilder("No subtype found that matches tag: \"")).append(((String) (obj))).append("\"").toString());
            }
            if (!flag)
            {
                e(jsonparser);
            }
            return ((jk) (obj));
        }

        public final void b(Object obj, JsonGenerator jsongenerator)
        {
            obj = (jk)obj;
            if (obj instanceof jn)
            {
                jn.a a1 = jn.a.a;
                jn.a.a((jn)obj, jsongenerator);
                return;
            }
            if (obj instanceof jp)
            {
                jp.a a2 = jp.a.a;
                jp.a.a((jp)obj, jsongenerator);
                return;
            }
            jsongenerator.writeStartObject();
            if (((jk) (obj)).a != null)
            {
                jsongenerator.writeFieldName("dimensions");
                if.a(is.a.a).a(((jk) (obj)).a, jsongenerator);
            }
            if (((jk) (obj)).b != null)
            {
                jsongenerator.writeFieldName("location");
                if.a(ja.a.a).a(((jk) (obj)).b, jsongenerator);
            }
            if (((jk) (obj)).c != null)
            {
                jsongenerator.writeFieldName("time_taken");
                if.a(if.b.a).a(((jk) (obj)).c, jsongenerator);
            }
            jsongenerator.writeEndObject();
        }

        public final Object h(JsonParser jsonparser)
        {
            return a(jsonparser, false);
        }


        a()
        {
        }
    }


    protected final is a;
    protected final ja b;
    protected final Date c;

    public jk()
    {
        this(null, null, null);
    }

    public jk(is is1, ja ja1, Date date)
    {
        a = is1;
        b = ja1;
        c = ik.a(date);
    }

    public boolean equals(Object obj)
    {
        if (obj != this)
        {
            if (obj.getClass().equals(getClass()))
            {
                if (a != ((jk) (obj = (jk)obj)).a && (a == null || !a.equals(((jk) (obj)).a)) || b != ((jk) (obj)).b && (b == null || !b.equals(((jk) (obj)).b)) || c != ((jk) (obj)).c && (c == null || !c.equals(((jk) (obj)).c)))
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

    public int hashCode()
    {
        return Arrays.hashCode(new Object[] {
            a, b, c
        });
    }

    public String toString()
    {
        return a.a.a(this);
    }
}
