// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;

public final class ir extends jl
{
    static final class a extends ig
    {

        public static final a a = new a();

        public static ir a(JsonParser jsonparser, boolean flag)
        {
            Object obj;
            if (!flag)
            {
                d(jsonparser);
                String s = b(jsonparser);
                obj = s;
                if ("deleted".equals(s))
                {
                    obj = null;
                }
            } else
            {
                obj = null;
            }
            if (obj == null)
            {
                String s3 = null;
                String s2 = null;
                String s1 = null;
                obj = null;
                while (jsonparser.getCurrentToken() == JsonToken.FIELD_NAME) 
                {
                    String s4 = jsonparser.getCurrentName();
                    jsonparser.nextToken();
                    if ("name".equals(s4))
                    {
                        obj = (String)if.g.a.a(jsonparser);
                    } else
                    if ("path_lower".equals(s4))
                    {
                        s1 = (String)if.a(if.g.a).a(jsonparser);
                    } else
                    if ("path_display".equals(s4))
                    {
                        s2 = (String)if.a(if.g.a).a(jsonparser);
                    } else
                    if ("parent_shared_folder_id".equals(s4))
                    {
                        s3 = (String)if.a(if.g.a).a(jsonparser);
                    } else
                    {
                        f(jsonparser);
                    }
                }
                if (obj == null)
                {
                    throw new JsonParseException(jsonparser, "Required field \"name\" missing.");
                }
                obj = new ir(((String) (obj)), s1, s2, s3);
                if (!flag)
                {
                    e(jsonparser);
                }
                return ((ir) (obj));
            } else
            {
                throw new JsonParseException(jsonparser, (new StringBuilder("No subtype found that matches tag: \"")).append(((String) (obj))).append("\"").toString());
            }
        }

        public static void a(ir ir1, JsonGenerator jsongenerator)
        {
            jsongenerator.writeStartObject();
            jsongenerator.writeStringField(".tag", "deleted");
            jsongenerator.writeFieldName("name");
            if.g.a.a(ir1.k, jsongenerator);
            if (ir1.l != null)
            {
                jsongenerator.writeFieldName("path_lower");
                if.a(if.g.a).a(ir1.l, jsongenerator);
            }
            if (ir1.m != null)
            {
                jsongenerator.writeFieldName("path_display");
                if.a(if.g.a).a(ir1.m, jsongenerator);
            }
            if (ir1.n != null)
            {
                jsongenerator.writeFieldName("parent_shared_folder_id");
                if.a(if.g.a).a(ir1.n, jsongenerator);
            }
            jsongenerator.writeEndObject();
        }

        public final void b(Object obj, JsonGenerator jsongenerator)
        {
            a((ir)obj, jsongenerator);
        }

        public final Object h(JsonParser jsonparser)
        {
            return a(jsonparser, false);
        }


        a()
        {
        }
    }


    public ir(String s, String s1, String s2, String s3)
    {
        super(s, s1, s2, s3);
    }

    public final String a()
    {
        return k;
    }

    public final String b()
    {
        return l;
    }

    public final String c()
    {
        return m;
    }

    public final boolean equals(Object obj)
    {
        if (obj != this)
        {
            if (obj.getClass().equals(getClass()))
            {
                if (k != ((ir) (obj = (ir)obj)).k && !k.equals(((ir) (obj)).k) || l != ((ir) (obj)).l && (l == null || !l.equals(((ir) (obj)).l)) || m != ((ir) (obj)).m && (m == null || !m.equals(((ir) (obj)).m)) || n != ((ir) (obj)).n && (n == null || !n.equals(((ir) (obj)).n)))
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
