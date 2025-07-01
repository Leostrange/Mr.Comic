// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.util.Arrays;

public final class kd
{
    public static final class a extends ig
    {

        public static final a a = new a();

        public final void b(Object obj, JsonGenerator jsongenerator)
        {
            obj = (kd)obj;
            jsongenerator.writeStartObject();
            jsongenerator.writeFieldName("given_name");
            if.g.a.a(((kd) (obj)).a, jsongenerator);
            jsongenerator.writeFieldName("surname");
            if.g.a.a(((kd) (obj)).b, jsongenerator);
            jsongenerator.writeFieldName("familiar_name");
            if.g.a.a(((kd) (obj)).c, jsongenerator);
            jsongenerator.writeFieldName("display_name");
            if.g.a.a(((kd) (obj)).d, jsongenerator);
            jsongenerator.writeFieldName("abbreviated_name");
            if.g.a.a(((kd) (obj)).e, jsongenerator);
            jsongenerator.writeEndObject();
        }

        public final Object h(JsonParser jsonparser)
        {
            Object obj = null;
            d(jsonparser);
            String s = b(jsonparser);
            if (s == null)
            {
                s = null;
                String s1 = null;
                String s2 = null;
                String s3 = null;
                while (jsonparser.getCurrentToken() == JsonToken.FIELD_NAME) 
                {
                    String s4 = jsonparser.getCurrentName();
                    jsonparser.nextToken();
                    if ("given_name".equals(s4))
                    {
                        s3 = (String)if.g.a.a(jsonparser);
                    } else
                    if ("surname".equals(s4))
                    {
                        s2 = (String)if.g.a.a(jsonparser);
                    } else
                    if ("familiar_name".equals(s4))
                    {
                        s1 = (String)if.g.a.a(jsonparser);
                    } else
                    if ("display_name".equals(s4))
                    {
                        s = (String)if.g.a.a(jsonparser);
                    } else
                    if ("abbreviated_name".equals(s4))
                    {
                        obj = (String)if.g.a.a(jsonparser);
                    } else
                    {
                        f(jsonparser);
                    }
                }
                if (s3 == null)
                {
                    throw new JsonParseException(jsonparser, "Required field \"given_name\" missing.");
                }
                if (s2 == null)
                {
                    throw new JsonParseException(jsonparser, "Required field \"surname\" missing.");
                }
                if (s1 == null)
                {
                    throw new JsonParseException(jsonparser, "Required field \"familiar_name\" missing.");
                }
                if (s == null)
                {
                    throw new JsonParseException(jsonparser, "Required field \"display_name\" missing.");
                }
                if (obj == null)
                {
                    throw new JsonParseException(jsonparser, "Required field \"abbreviated_name\" missing.");
                } else
                {
                    obj = new kd(s3, s2, s1, s, ((String) (obj)));
                    e(jsonparser);
                    return obj;
                }
            } else
            {
                throw new JsonParseException(jsonparser, (new StringBuilder("No subtype found that matches tag: \"")).append(s).append("\"").toString());
            }
        }


        public a()
        {
        }
    }


    protected final String a;
    protected final String b;
    protected final String c;
    protected final String d;
    protected final String e;

    public kd(String s, String s1, String s2, String s3, String s4)
    {
        if (s == null)
        {
            throw new IllegalArgumentException("Required value for 'givenName' is null");
        }
        a = s;
        if (s1 == null)
        {
            throw new IllegalArgumentException("Required value for 'surname' is null");
        }
        b = s1;
        if (s2 == null)
        {
            throw new IllegalArgumentException("Required value for 'familiarName' is null");
        }
        c = s2;
        if (s3 == null)
        {
            throw new IllegalArgumentException("Required value for 'displayName' is null");
        }
        d = s3;
        if (s4 == null)
        {
            throw new IllegalArgumentException("Required value for 'abbreviatedName' is null");
        } else
        {
            e = s4;
            return;
        }
    }

    public final String a()
    {
        return d;
    }

    public final boolean equals(Object obj)
    {
        if (obj != this)
        {
            if (obj.getClass().equals(getClass()))
            {
                if (a != ((kd) (obj = (kd)obj)).a && !a.equals(((kd) (obj)).a) || b != ((kd) (obj)).b && !b.equals(((kd) (obj)).b) || c != ((kd) (obj)).c && !c.equals(((kd) (obj)).c) || d != ((kd) (obj)).d && !d.equals(((kd) (obj)).d) || e != ((kd) (obj)).e && !e.equals(((kd) (obj)).e))
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
            a, b, c, d, e
        });
    }

    public final String toString()
    {
        return a.a.a(this);
    }
}
