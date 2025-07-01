// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.util.Arrays;

public final class kc extends ke
{
    static final class a extends ig
    {

        public static final a a = new a();

        public final void b(Object obj, JsonGenerator jsongenerator)
        {
            obj = (kc)obj;
            jsongenerator.writeStartObject();
            jsongenerator.writeFieldName("id");
            if.g.a.a(((kc) (obj)).b, jsongenerator);
            jsongenerator.writeFieldName("name");
            if.g.a.a(((kc) (obj)).c, jsongenerator);
            jsongenerator.writeFieldName("sharing_policies");
            jx.a.a.b(((kc) (obj)).a, jsongenerator);
            jsongenerator.writeEndObject();
        }

        public final Object h(JsonParser jsonparser)
        {
            d(jsonparser);
            Object obj = b(jsonparser);
            if (obj == null)
            {
                jx jx1 = null;
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
                    if ("sharing_policies".equals(s1))
                    {
                        jx1 = (jx)jx.a.a.a(jsonparser);
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
                }
                if (jx1 == null)
                {
                    throw new JsonParseException(jsonparser, "Required field \"sharing_policies\" missing.");
                } else
                {
                    obj = new kc(((String) (obj)), s, jx1);
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


    protected final jx a;

    public kc(String s, String s1, jx jx1)
    {
        super(s, s1);
        if (jx1 == null)
        {
            throw new IllegalArgumentException("Required value for 'sharingPolicies' is null");
        } else
        {
            a = jx1;
            return;
        }
    }

    public final boolean equals(Object obj)
    {
        if (obj != this)
        {
            if (obj.getClass().equals(getClass()))
            {
                if (b != ((kc) (obj = (kc)obj)).b && !b.equals(((kc) (obj)).b) || c != ((kc) (obj)).c && !c.equals(((kc) (obj)).c) || a != ((kc) (obj)).a && !a.equals(((kc) (obj)).a))
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
        }) + super.hashCode() * 31;
    }

    public final String toString()
    {
        return a.a.a(this);
    }
}
