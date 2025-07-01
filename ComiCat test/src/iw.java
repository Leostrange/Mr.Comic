// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.util.Arrays;
import java.util.Date;
import java.util.Iterator;
import java.util.List;
import java.util.regex.Pattern;

public final class iw extends jl
{
    static final class a extends ig
    {

        public static final a a = new a();

        public static iw a(JsonParser jsonparser, boolean flag)
        {
            Object obj = null;
            if (!flag)
            {
                d(jsonparser);
                String s = b(jsonparser);
                obj = s;
                if ("file".equals(s))
                {
                    obj = null;
                }
            }
            if (obj == null)
            {
                String s6 = null;
                String s5 = null;
                Date date1 = null;
                Date date = null;
                String s4 = null;
                String s3 = null;
                String s2 = null;
                String s1 = null;
                jj jj1 = null;
                ix ix1 = null;
                List list = null;
                Boolean boolean1 = null;
                obj = null;
                Long long1 = null;
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
                    if ("client_modified".equals(s7))
                    {
                        date1 = (Date)if.b.a.a(jsonparser);
                    } else
                    if ("server_modified".equals(s7))
                    {
                        date = (Date)if.b.a.a(jsonparser);
                    } else
                    if ("rev".equals(s7))
                    {
                        s4 = (String)if.g.a.a(jsonparser);
                    } else
                    if ("size".equals(s7))
                    {
                        long1 = (Long)if.e.a.a(jsonparser);
                    } else
                    if ("path_lower".equals(s7))
                    {
                        s3 = (String)if.a(if.g.a).a(jsonparser);
                    } else
                    if ("path_display".equals(s7))
                    {
                        s2 = (String)if.a(if.g.a).a(jsonparser);
                    } else
                    if ("parent_shared_folder_id".equals(s7))
                    {
                        s1 = (String)if.a(if.g.a).a(jsonparser);
                    } else
                    if ("media_info".equals(s7))
                    {
                        jj1 = (jj)if.a(jj.a.a).a(jsonparser);
                    } else
                    if ("sharing_info".equals(s7))
                    {
                        ix1 = (ix)if.a(ix.a.a).a(jsonparser);
                    } else
                    if ("property_groups".equals(s7))
                    {
                        list = (List)if.a(if.b(js.a.a)).a(jsonparser);
                    } else
                    if ("has_explicit_shared_members".equals(s7))
                    {
                        boolean1 = (Boolean)if.a(if.a.a).a(jsonparser);
                    } else
                    if ("content_hash".equals(s7))
                    {
                        obj = (String)if.a(if.g.a).a(jsonparser);
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
                if (date1 == null)
                {
                    throw new JsonParseException(jsonparser, "Required field \"client_modified\" missing.");
                }
                if (date == null)
                {
                    throw new JsonParseException(jsonparser, "Required field \"server_modified\" missing.");
                }
                if (s4 == null)
                {
                    throw new JsonParseException(jsonparser, "Required field \"rev\" missing.");
                }
                if (long1 == null)
                {
                    throw new JsonParseException(jsonparser, "Required field \"size\" missing.");
                }
                obj = new iw(s6, s5, date1, date, s4, long1.longValue(), s3, s2, s1, jj1, ix1, list, boolean1, ((String) (obj)));
                if (!flag)
                {
                    e(jsonparser);
                }
                return ((iw) (obj));
            } else
            {
                throw new JsonParseException(jsonparser, (new StringBuilder("No subtype found that matches tag: \"")).append(((String) (obj))).append("\"").toString());
            }
        }

        public static void a(iw iw1, JsonGenerator jsongenerator)
        {
            jsongenerator.writeStartObject();
            jsongenerator.writeStringField(".tag", "file");
            jsongenerator.writeFieldName("name");
            if.g.a.a(iw1.k, jsongenerator);
            jsongenerator.writeFieldName("id");
            if.g.a.a(iw1.a, jsongenerator);
            jsongenerator.writeFieldName("client_modified");
            if.b.a.a(iw1.b, jsongenerator);
            jsongenerator.writeFieldName("server_modified");
            if.b.a.a(iw1.c, jsongenerator);
            jsongenerator.writeFieldName("rev");
            if.g.a.a(iw1.d, jsongenerator);
            jsongenerator.writeFieldName("size");
            if.e.a.a(Long.valueOf(iw1.e), jsongenerator);
            if (iw1.l != null)
            {
                jsongenerator.writeFieldName("path_lower");
                if.a(if.g.a).a(iw1.l, jsongenerator);
            }
            if (iw1.m != null)
            {
                jsongenerator.writeFieldName("path_display");
                if.a(if.g.a).a(iw1.m, jsongenerator);
            }
            if (iw1.n != null)
            {
                jsongenerator.writeFieldName("parent_shared_folder_id");
                if.a(if.g.a).a(iw1.n, jsongenerator);
            }
            if (iw1.f != null)
            {
                jsongenerator.writeFieldName("media_info");
                if.a(jj.a.a).a(iw1.f, jsongenerator);
            }
            if (iw1.g != null)
            {
                jsongenerator.writeFieldName("sharing_info");
                if.a(ix.a.a).a(iw1.g, jsongenerator);
            }
            if (iw1.h != null)
            {
                jsongenerator.writeFieldName("property_groups");
                if.a(if.b(js.a.a)).a(iw1.h, jsongenerator);
            }
            if (iw1.i != null)
            {
                jsongenerator.writeFieldName("has_explicit_shared_members");
                if.a(if.a.a).a(iw1.i, jsongenerator);
            }
            if (iw1.j != null)
            {
                jsongenerator.writeFieldName("content_hash");
                if.a(if.g.a).a(iw1.j, jsongenerator);
            }
            jsongenerator.writeEndObject();
        }

        public final void b(Object obj, JsonGenerator jsongenerator)
        {
            a((iw)obj, jsongenerator);
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
    protected final Date b;
    protected final Date c;
    protected final String d;
    protected final long e;
    protected final jj f;
    protected final ix g;
    protected final List h;
    protected final Boolean i;
    protected final String j;

    public iw(String s, String s1, Date date, Date date1, String s2, long l, 
            String s3, String s4, String s5, jj jj1, ix ix1, List list, Boolean boolean1, 
            String s6)
    {
label0:
        {
            super(s, s3, s4, s5);
            if (s1 == null)
            {
                throw new IllegalArgumentException("Required value for 'id' is null");
            }
            if (s1.length() <= 0)
            {
                throw new IllegalArgumentException("String 'id' is shorter than 1");
            }
            a = s1;
            if (date == null)
            {
                throw new IllegalArgumentException("Required value for 'clientModified' is null");
            }
            b = ik.a(date);
            if (date1 == null)
            {
                throw new IllegalArgumentException("Required value for 'serverModified' is null");
            }
            c = ik.a(date1);
            if (s2 == null)
            {
                throw new IllegalArgumentException("Required value for 'rev' is null");
            }
            if (s2.length() < 9)
            {
                throw new IllegalArgumentException("String 'rev' is shorter than 9");
            }
            if (!Pattern.matches("[0-9a-f]+", s2))
            {
                throw new IllegalArgumentException("String 'rev' does not match pattern");
            }
            d = s2;
            e = l;
            f = jj1;
            g = ix1;
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
        h = list;
        i = boolean1;
        if (s6 != null)
        {
            if (s6.length() < 64)
            {
                throw new IllegalArgumentException("String 'contentHash' is shorter than 64");
            }
            if (s6.length() > 64)
            {
                throw new IllegalArgumentException("String 'contentHash' is longer than 64");
            }
        }
        j = s6;
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

    public final long d()
    {
        return e;
    }

    public final String e()
    {
        return j;
    }

    public final boolean equals(Object obj)
    {
        if (obj != this)
        {
            if (obj.getClass().equals(getClass()))
            {
                if (k != ((iw) (obj = (iw)obj)).k && !k.equals(((iw) (obj)).k) || a != ((iw) (obj)).a && !a.equals(((iw) (obj)).a) || b != ((iw) (obj)).b && !b.equals(((iw) (obj)).b) || c != ((iw) (obj)).c && !c.equals(((iw) (obj)).c) || d != ((iw) (obj)).d && !d.equals(((iw) (obj)).d) || e != ((iw) (obj)).e || l != ((iw) (obj)).l && (l == null || !l.equals(((iw) (obj)).l)) || m != ((iw) (obj)).m && (m == null || !m.equals(((iw) (obj)).m)) || n != ((iw) (obj)).n && (n == null || !n.equals(((iw) (obj)).n)) || f != ((iw) (obj)).f && (f == null || !f.equals(((iw) (obj)).f)) || g != ((iw) (obj)).g && (g == null || !g.equals(((iw) (obj)).g)) || h != ((iw) (obj)).h && (h == null || !h.equals(((iw) (obj)).h)) || i != ((iw) (obj)).i && (i == null || !i.equals(((iw) (obj)).i)) || j != ((iw) (obj)).j && (j == null || !j.equals(((iw) (obj)).j)))
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
            a, b, c, d, Long.valueOf(e), f, g, h, i, j
        }) + super.hashCode() * 31;
    }

    public final String toString()
    {
        return a.a.a(this);
    }
}
