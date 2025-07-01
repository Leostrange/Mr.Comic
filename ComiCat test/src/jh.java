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

public final class jh
{
    static final class a extends ig
    {

        public static final a a = new a();

        public final void b(Object obj, JsonGenerator jsongenerator)
        {
            obj = (jh)obj;
            jsongenerator.writeStartObject();
            jsongenerator.writeFieldName("entries");
            if.b(jl.b.a).a(((jh) (obj)).a, jsongenerator);
            jsongenerator.writeFieldName("cursor");
            if.g.a.a(((jh) (obj)).b, jsongenerator);
            jsongenerator.writeFieldName("has_more");
            if.a.a.a(Boolean.valueOf(((jh) (obj)).c), jsongenerator);
            jsongenerator.writeEndObject();
        }

        public final Object h(JsonParser jsonparser)
        {
            d(jsonparser);
            Object obj = b(jsonparser);
            if (obj == null)
            {
                Boolean boolean1 = null;
                String s = null;
                obj = null;
                while (jsonparser.getCurrentToken() == JsonToken.FIELD_NAME) 
                {
                    String s1 = jsonparser.getCurrentName();
                    jsonparser.nextToken();
                    if ("entries".equals(s1))
                    {
                        obj = (List)if.b(jl.b.a).a(jsonparser);
                    } else
                    if ("cursor".equals(s1))
                    {
                        s = (String)if.g.a.a(jsonparser);
                    } else
                    if ("has_more".equals(s1))
                    {
                        boolean1 = (Boolean)if.a.a.a(jsonparser);
                    } else
                    {
                        f(jsonparser);
                    }
                }
                if (obj == null)
                {
                    throw new JsonParseException(jsonparser, "Required field \"entries\" missing.");
                }
                if (s == null)
                {
                    throw new JsonParseException(jsonparser, "Required field \"cursor\" missing.");
                }
                if (boolean1 == null)
                {
                    throw new JsonParseException(jsonparser, "Required field \"has_more\" missing.");
                } else
                {
                    obj = new jh(((List) (obj)), s, boolean1.booleanValue());
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


    protected final List a;
    protected final String b;
    protected final boolean c;

    public jh(List list, String s, boolean flag)
    {
        if (list == null)
        {
            throw new IllegalArgumentException("Required value for 'entries' is null");
        }
        for (Iterator iterator = list.iterator(); iterator.hasNext();)
        {
            if ((jl)iterator.next() == null)
            {
                throw new IllegalArgumentException("An item in list 'entries' is null");
            }
        }

        a = list;
        if (s == null)
        {
            throw new IllegalArgumentException("Required value for 'cursor' is null");
        }
        if (s.length() <= 0)
        {
            throw new IllegalArgumentException("String 'cursor' is shorter than 1");
        } else
        {
            b = s;
            c = flag;
            return;
        }
    }

    public final List a()
    {
        return a;
    }

    public final String b()
    {
        return b;
    }

    public final boolean c()
    {
        return c;
    }

    public final boolean equals(Object obj)
    {
        if (obj != this)
        {
            if (obj.getClass().equals(getClass()))
            {
                if (a != ((jh) (obj = (jh)obj)).a && !a.equals(((jh) (obj)).a) || b != ((jh) (obj)).b && !b.equals(((jh) (obj)).b) || c != ((jh) (obj)).c)
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
            a, b, Boolean.valueOf(c)
        });
    }

    public final String toString()
    {
        return a.a.a(this);
    }
}
