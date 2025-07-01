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

public final class iy extends jl
{
    static final class a extends ig
    {

        public static final a a = new a();

        public static iy a(JsonParser jsonparser, boolean flag)
        {
            iz iz1 = null;
            Object obj;
            if (!flag)
            {
                d(jsonparser);
                String s = b(jsonparser);
                obj = s;
                if ("folder".equals(s))
                {
                    obj = null;
                }
            } else
            {
                obj = null;
            }
            if (obj == null)
            {
                Object obj1 = null;
                String s1 = null;
                String s2 = null;
                String s3 = null;
                String s4 = null;
                String s5 = null;
                String s6 = null;
                obj = iz1;
                iz1 = obj1;
                while (jsonparser.getCurrentToken() == JsonToken.FIELD_NAME) 
                {
                    String s7 = jsonparser.getCurrentName();
                    jsonparser.nextToken();
                    if ("name".equals(s7))
                    {
                        s6 = (String)if.g.a.a(jsonparser);
                    } else
                    if ("id".equals(s7))
                    {
                        s5 = (String)if.g.a.a(jsonparser);
                    } else
                    if ("path_lower".equals(s7))
                    {
                        s4 = (String)if.a(if.g.a).a(jsonparser);
                    } else
                    if ("path_display".equals(s7))
                    {
                        s3 = (String)if.a(if.g.a).a(jsonparser);
                    } else
                    if ("parent_shared_folder_id".equals(s7))
                    {
                        s2 = (String)if.a(if.g.a).a(jsonparser);
                    } else
                    if ("shared_folder_id".equals(s7))
                    {
                        s1 = (String)if.a(if.g.a).a(jsonparser);
                    } else
                    if ("sharing_info".equals(s7))
                    {
                        iz1 = (iz)if.a(iz.a.a).a(jsonparser);
                    } else
                    if ("property_groups".equals(s7))
                    {
                        obj = (List)if.a(if.b(js.a.a)).a(jsonparser);
                    } else
                    {
                        f(jsonparser);
                    }
                }
                if (s6 == null)
                {
                    throw new JsonParseException(jsonparser, "Required field \"name\" missing.");
                }
                if (s5 == null)
                {
                    throw new JsonParseException(jsonparser, "Required field \"id\" missing.");
                }
                obj = new iy(s6, s5, s4, s3, s2, s1, iz1, ((List) (obj)));
                if (!flag)
                {
                    e(jsonparser);
                }
                return ((iy) (obj));
            } else
            {
                throw new JsonParseException(jsonparser, (new StringBuilder("No subtype found that matches tag: \"")).append(((String) (obj))).append("\"").toString());
            }
        }

        public static void a(iy iy1, JsonGenerator jsongenerator)
        {
            jsongenerator.writeStartObject();
            jsongenerator.writeStringField(".tag", "folder");
            jsongenerator.writeFieldName("name");
            if.g.a.a(iy1.k, jsongenerator);
            jsongenerator.writeFieldName("id");
            if.g.a.a(iy1.a, jsongenerator);
            if (iy1.l != null)
            {
                jsongenerator.writeFieldName("path_lower");
                if.a(if.g.a).a(iy1.l, jsongenerator);
            }
            if (iy1.m != null)
            {
                jsongenerator.writeFieldName("path_display");
                if.a(if.g.a).a(iy1.m, jsongenerator);
            }
            if (iy1.n != null)
            {
                jsongenerator.writeFieldName("parent_shared_folder_id");
                if.a(if.g.a).a(iy1.n, jsongenerator);
            }
            if (iy1.b != null)
            {
                jsongenerator.writeFieldName("shared_folder_id");
                if.a(if.g.a).a(iy1.b, jsongenerator);
            }
            if (iy1.c != null)
            {
                jsongenerator.writeFieldName("sharing_info");
                if.a(iz.a.a).a(iy1.c, jsongenerator);
            }
            if (iy1.d != null)
            {
                jsongenerator.writeFieldName("property_groups");
                if.a(if.b(js.a.a)).a(iy1.d, jsongenerator);
            }
            jsongenerator.writeEndObject();
        }

        public final void b(Object obj, JsonGenerator jsongenerator)
        {
            a((iy)obj, jsongenerator);
        }

        public final Object h(JsonParser jsonparser)
        {
            return a(jsonparser, false);
        }


        a()
        {
        }
    }


    protected final String a;
    protected final String b;
    protected final iz c;
    protected final List d;

    public iy(String s, String s1, String s2, String s3, String s4, String s5, iz iz1, 
            List list)
    {
label0:
        {
            super(s, s2, s3, s4);
            if (s1 == null)
            {
                throw new IllegalArgumentException("Required value for 'id' is null");
            }
            if (s1.length() <= 0)
            {
                throw new IllegalArgumentException("String 'id' is shorter than 1");
            }
            a = s1;
            if (s5 != null && !Pattern.matches("[-_0-9a-zA-Z:]+", s5))
            {
                throw new IllegalArgumentException("String 'sharedFolderId' does not match pattern");
            }
            b = s5;
            c = iz1;
            if (list == null)
            {
                break label0;
            }
            s = list.iterator();
            do
            {
                if (!s.hasNext())
                {
                    break label0;
                }
            } while ((js)s.next() != null);
            throw new IllegalArgumentException("An item in list 'propertyGroups' is null");
        }
        d = list;
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
                if (k != ((iy) (obj = (iy)obj)).k && !k.equals(((iy) (obj)).k) || a != ((iy) (obj)).a && !a.equals(((iy) (obj)).a) || l != ((iy) (obj)).l && (l == null || !l.equals(((iy) (obj)).l)) || m != ((iy) (obj)).m && (m == null || !m.equals(((iy) (obj)).m)) || n != ((iy) (obj)).n && (n == null || !n.equals(((iy) (obj)).n)) || b != ((iy) (obj)).b && (b == null || !b.equals(((iy) (obj)).b)) || c != ((iy) (obj)).c && (c == null || !c.equals(((iy) (obj)).c)) || d != ((iy) (obj)).d && (d == null || !d.equals(((iy) (obj)).d)))
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
            a, b, c, d
        }) + super.hashCode() * 31;
    }

    public final String toString()
    {
        return a.a.a(this);
    }
}
