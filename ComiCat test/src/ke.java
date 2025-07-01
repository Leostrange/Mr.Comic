// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.util.Arrays;

public class ke
{
    public static final class a extends ig
    {

        public static final a a = new a();

        public final void b(Object obj, JsonGenerator jsongenerator)
        {
            obj = (ke)obj;
            jsongenerator.writeStartObject();
            jsongenerator.writeFieldName("id");
            if.g.a.a(((ke) (obj)).b, jsongenerator);
            jsongenerator.writeFieldName("name");
            if.g.a.a(((ke) (obj)).c, jsongenerator);
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
                    if ("id".equals(s1))
                    {
                        obj = (String)if.g.a.a(jsonparser);
                    } else
                    if ("name".equals(s1))
                    {
                        s = (String)if.g.a.a(jsonparser);
                    } else
                    {
                        f(jsonparser);
                    }
                }
                if (obj == null)
                {
                    throw new JsonParseException(jsonparser, "Required field \"id\" missing.");
                }
                if (s == null)
                {
                    throw new JsonParseException(jsonparser, "Required field \"name\" missing.");
                } else
                {
                    obj = new ke(((String) (obj)), s);
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


    protected final String b;
    protected final String c;

    public ke(String s, String s1)
    {
        if (s == null)
        {
            throw new IllegalArgumentException("Required value for 'id' is null");
        }
        b = s;
        if (s1 == null)
        {
            throw new IllegalArgumentException("Required value for 'name' is null");
        } else
        {
            c = s1;
            return;
        }
    }

    public boolean equals(Object obj)
    {
        if (obj != this)
        {
            if (obj.getClass().equals(getClass()))
            {
                if (b != ((ke) (obj = (ke)obj)).b && !b.equals(((ke) (obj)).b) || c != ((ke) (obj)).c && !c.equals(((ke) (obj)).c))
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
            b, c
        });
    }

    public String toString()
    {
        return a.a.a(this);
    }
}
