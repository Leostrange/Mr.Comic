// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import java.util.regex.Pattern;

public final class js
{
    public static final class a extends ig
    {

        public static final a a = new a();

        public final void b(Object obj, JsonGenerator jsongenerator)
        {
            obj = (js)obj;
            jsongenerator.writeStartObject();
            jsongenerator.writeFieldName("template_id");
            if.g.a.a(((js) (obj)).a, jsongenerator);
            jsongenerator.writeFieldName("fields");
            if.b(jr.a.a).a(((js) (obj)).b, jsongenerator);
            jsongenerator.writeEndObject();
        }

        public final Object h(JsonParser jsonparser)
        {
            d(jsonparser);
            Object obj = b(jsonparser);
            if (obj == null)
            {
                List list = null;
                obj = null;
                while (jsonparser.getCurrentToken() == JsonToken.FIELD_NAME) 
                {
                    String s = jsonparser.getCurrentName();
                    jsonparser.nextToken();
                    if ("template_id".equals(s))
                    {
                        obj = (String)if.g.a.a(jsonparser);
                    } else
                    if ("fields".equals(s))
                    {
                        list = (List)if.b(jr.a.a).a(jsonparser);
                    } else
                    {
                        f(jsonparser);
                    }
                }
                if (obj == null)
                {
                    throw new JsonParseException(jsonparser, "Required field \"template_id\" missing.");
                }
                if (list == null)
                {
                    throw new JsonParseException(jsonparser, "Required field \"fields\" missing.");
                } else
                {
                    obj = new js(((String) (obj)), list);
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
    protected final List b;

    public js(String s, List list)
    {
        if (s == null)
        {
            throw new IllegalArgumentException("Required value for 'templateId' is null");
        }
        if (s.length() <= 0)
        {
            throw new IllegalArgumentException("String 'templateId' is shorter than 1");
        }
        if (!Pattern.matches("(/|ptid:).*", s))
        {
            throw new IllegalArgumentException("String 'templateId' does not match pattern");
        }
        a = s;
        if (list == null)
        {
            throw new IllegalArgumentException("Required value for 'fields' is null");
        }
        for (s = list.iterator(); s.hasNext();)
        {
            if ((jr)s.next() == null)
            {
                throw new IllegalArgumentException("An item in list 'fields' is null");
            }
        }

        b = list;
    }

    public final boolean equals(Object obj)
    {
        if (obj != this)
        {
            if (obj.getClass().equals(getClass()))
            {
                if (a != ((js) (obj = (js)obj)).a && !a.equals(((js) (obj)).a) || b != ((js) (obj)).b && !b.equals(((js) (obj)).b))
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
