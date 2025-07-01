// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.util.Arrays;

public class jy
{
    static final class a extends ig
    {

        public static final a a = new a();

        public final void b(Object obj, JsonGenerator jsongenerator)
        {
            obj = (jy)obj;
            jsongenerator.writeStartObject();
            jsongenerator.writeFieldName("account_id");
            if.g.a.a(((jy) (obj)).a, jsongenerator);
            jsongenerator.writeFieldName("name");
            kd.a.a.b(((jy) (obj)).b, jsongenerator);
            jsongenerator.writeFieldName("email");
            if.g.a.a(((jy) (obj)).c, jsongenerator);
            jsongenerator.writeFieldName("email_verified");
            if.a.a.a(Boolean.valueOf(((jy) (obj)).d), jsongenerator);
            jsongenerator.writeFieldName("disabled");
            if.a.a.a(Boolean.valueOf(((jy) (obj)).f), jsongenerator);
            if (((jy) (obj)).e != null)
            {
                jsongenerator.writeFieldName("profile_photo_url");
                if.a(if.g.a).a(((jy) (obj)).e, jsongenerator);
            }
            jsongenerator.writeEndObject();
        }

        public final Object h(JsonParser jsonparser)
        {
            Object obj = null;
            d(jsonparser);
            Object obj1 = b(jsonparser);
            if (obj1 == null)
            {
                obj1 = null;
                Boolean boolean1 = null;
                String s = null;
                kd kd1 = null;
                String s1 = null;
                while (jsonparser.getCurrentToken() == JsonToken.FIELD_NAME) 
                {
                    String s2 = jsonparser.getCurrentName();
                    jsonparser.nextToken();
                    if ("account_id".equals(s2))
                    {
                        s1 = (String)if.g.a.a(jsonparser);
                    } else
                    if ("name".equals(s2))
                    {
                        kd1 = (kd)kd.a.a.a(jsonparser);
                    } else
                    if ("email".equals(s2))
                    {
                        s = (String)if.g.a.a(jsonparser);
                    } else
                    if ("email_verified".equals(s2))
                    {
                        boolean1 = (Boolean)if.a.a.a(jsonparser);
                    } else
                    if ("disabled".equals(s2))
                    {
                        obj1 = (Boolean)if.a.a.a(jsonparser);
                    } else
                    if ("profile_photo_url".equals(s2))
                    {
                        obj = (String)if.a(if.g.a).a(jsonparser);
                    } else
                    {
                        f(jsonparser);
                    }
                }
                if (s1 == null)
                {
                    throw new JsonParseException(jsonparser, "Required field \"account_id\" missing.");
                }
                if (kd1 == null)
                {
                    throw new JsonParseException(jsonparser, "Required field \"name\" missing.");
                }
                if (s == null)
                {
                    throw new JsonParseException(jsonparser, "Required field \"email\" missing.");
                }
                if (boolean1 == null)
                {
                    throw new JsonParseException(jsonparser, "Required field \"email_verified\" missing.");
                }
                if (obj1 == null)
                {
                    throw new JsonParseException(jsonparser, "Required field \"disabled\" missing.");
                } else
                {
                    obj = new jy(s1, kd1, s, boolean1.booleanValue(), ((Boolean) (obj1)).booleanValue(), ((String) (obj)));
                    e(jsonparser);
                    return obj;
                }
            } else
            {
                throw new JsonParseException(jsonparser, (new StringBuilder("No subtype found that matches tag: \"")).append(((String) (obj1))).append("\"").toString());
            }
        }


        private a()
        {
        }
    }


    protected final String a;
    protected final kd b;
    protected final String c;
    protected final boolean d;
    protected final String e;
    protected final boolean f;

    public jy(String s, kd kd1, String s1, boolean flag, boolean flag1, String s2)
    {
        if (s == null)
        {
            throw new IllegalArgumentException("Required value for 'accountId' is null");
        }
        if (s.length() < 40)
        {
            throw new IllegalArgumentException("String 'accountId' is shorter than 40");
        }
        if (s.length() > 40)
        {
            throw new IllegalArgumentException("String 'accountId' is longer than 40");
        }
        a = s;
        if (kd1 == null)
        {
            throw new IllegalArgumentException("Required value for 'name' is null");
        }
        b = kd1;
        if (s1 == null)
        {
            throw new IllegalArgumentException("Required value for 'email' is null");
        } else
        {
            c = s1;
            d = flag;
            e = s2;
            f = flag1;
            return;
        }
    }

    public kd a()
    {
        return b;
    }

    public boolean equals(Object obj)
    {
        if (obj != this)
        {
            if (obj.getClass().equals(getClass()))
            {
                if (a != ((jy) (obj = (jy)obj)).a && !a.equals(((jy) (obj)).a) || b != ((jy) (obj)).b && !b.equals(((jy) (obj)).b) || c != ((jy) (obj)).c && !c.equals(((jy) (obj)).c) || d != ((jy) (obj)).d || f != ((jy) (obj)).f || e != ((jy) (obj)).e && (e == null || !e.equals(((jy) (obj)).e)))
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
            a, b, c, Boolean.valueOf(d), e, Boolean.valueOf(f)
        });
    }

    public String toString()
    {
        return a.a.a(this);
    }
}
