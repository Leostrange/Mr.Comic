// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.util.Arrays;

public final class jm
{
    public static final class a extends ig
    {

        public static final a a = new a();

        public static jm a(JsonParser jsonparser, boolean flag)
        {
            Object obj1 = null;
            Object obj;
            if (!flag)
            {
                d(jsonparser);
                obj = b(jsonparser);
            } else
            {
                obj = null;
            }
            if (obj == null)
            {
                obj = obj1;
                while (jsonparser.getCurrentToken() == JsonToken.FIELD_NAME) 
                {
                    String s = jsonparser.getCurrentName();
                    jsonparser.nextToken();
                    if ("path_root".equals(s))
                    {
                        obj = (String)if.a(if.g.a).a(jsonparser);
                    } else
                    {
                        f(jsonparser);
                    }
                }
                obj = new jm(((String) (obj)));
                if (!flag)
                {
                    e(jsonparser);
                }
                return ((jm) (obj));
            } else
            {
                throw new JsonParseException(jsonparser, (new StringBuilder("No subtype found that matches tag: \"")).append(((String) (obj))).append("\"").toString());
            }
        }

        public static void a(jm jm1, JsonGenerator jsongenerator, boolean flag)
        {
            if (!flag)
            {
                jsongenerator.writeStartObject();
            }
            if (jm1.a != null)
            {
                jsongenerator.writeFieldName("path_root");
                if.a(if.g.a).a(jm1.a, jsongenerator);
            }
            if (!flag)
            {
                jsongenerator.writeEndObject();
            }
        }

        public final void b(Object obj, JsonGenerator jsongenerator)
        {
            a((jm)obj, jsongenerator, false);
        }

        public final Object h(JsonParser jsonparser)
        {
            return a(jsonparser, false);
        }


        public a()
        {
        }
    }


    protected final String a;

    public jm()
    {
        this(null);
    }

    public jm(String s)
    {
        a = s;
    }

    public final boolean equals(Object obj)
    {
        if (obj != this)
        {
            if (obj.getClass().equals(getClass()))
            {
                if (a != ((jm) (obj = (jm)obj)).a && (a == null || !a.equals(((jm) (obj)).a)))
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
            a
        });
    }

    public final String toString()
    {
        return a.a.a(this);
    }
}
