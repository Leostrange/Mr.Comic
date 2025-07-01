// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.util.Arrays;
import java.util.regex.Pattern;

public class jl
{
    public static final class a
    {

        protected final String a;
        protected String b;
        protected String c;
        protected String d;

        public final a a(String s)
        {
            b = s;
            return this;
        }

        public final jl a()
        {
            return new jl(a, b, c, d);
        }

        public final a b(String s)
        {
            c = s;
            return this;
        }

        protected a(String s)
        {
            if (s == null)
            {
                throw new IllegalArgumentException("Required value for 'name' is null");
            } else
            {
                a = s;
                b = null;
                c = null;
                d = null;
                return;
            }
        }
    }

    static final class b extends ig
    {

        public static final b a = new b();

        private static jl a(JsonParser jsonparser, boolean flag)
        {
            Object obj;
            if (!flag)
            {
                d(jsonparser);
                String s = b(jsonparser);
                obj = s;
                if ("".equals(s))
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
                obj = new jl(((String) (obj)), s1, s2, s3);
            } else
            if ("".equals(obj))
            {
                obj = a(jsonparser, true);
            } else
            if ("file".equals(obj))
            {
                obj = iw.a.a;
                obj = iw.a.a(jsonparser, true);
            } else
            if ("folder".equals(obj))
            {
                obj = iy.a.a;
                obj = iy.a.a(jsonparser, true);
            } else
            if ("deleted".equals(obj))
            {
                obj = ir.a.a;
                obj = ir.a.a(jsonparser, true);
            } else
            {
                throw new JsonParseException(jsonparser, (new StringBuilder("No subtype found that matches tag: \"")).append(((String) (obj))).append("\"").toString());
            }
            if (!flag)
            {
                e(jsonparser);
            }
            return ((jl) (obj));
        }

        public final void b(Object obj, JsonGenerator jsongenerator)
        {
            obj = (jl)obj;
            if (obj instanceof iw)
            {
                iw.a a1 = iw.a.a;
                iw.a.a((iw)obj, jsongenerator);
                return;
            }
            if (obj instanceof iy)
            {
                iy.a a2 = iy.a.a;
                iy.a.a((iy)obj, jsongenerator);
                return;
            }
            if (obj instanceof ir)
            {
                ir.a a3 = ir.a.a;
                ir.a.a((ir)obj, jsongenerator);
                return;
            }
            jsongenerator.writeStartObject();
            jsongenerator.writeFieldName("name");
            if.g.a.a(((jl) (obj)).k, jsongenerator);
            if (((jl) (obj)).l != null)
            {
                jsongenerator.writeFieldName("path_lower");
                if.a(if.g.a).a(((jl) (obj)).l, jsongenerator);
            }
            if (((jl) (obj)).m != null)
            {
                jsongenerator.writeFieldName("path_display");
                if.a(if.g.a).a(((jl) (obj)).m, jsongenerator);
            }
            if (((jl) (obj)).n != null)
            {
                jsongenerator.writeFieldName("parent_shared_folder_id");
                if.a(if.g.a).a(((jl) (obj)).n, jsongenerator);
            }
            jsongenerator.writeEndObject();
        }

        public final Object h(JsonParser jsonparser)
        {
            return a(jsonparser, false);
        }


        b()
        {
        }
    }


    protected final String k;
    protected final String l;
    protected final String m;
    protected final String n;

    public jl(String s, String s1, String s2, String s3)
    {
        if (s == null)
        {
            throw new IllegalArgumentException("Required value for 'name' is null");
        }
        k = s;
        l = s1;
        m = s2;
        if (s3 != null && !Pattern.matches("[-_0-9a-zA-Z:]+", s3))
        {
            throw new IllegalArgumentException("String 'parentSharedFolderId' does not match pattern");
        } else
        {
            n = s3;
            return;
        }
    }

    public static a a(String s)
    {
        return new a(s);
    }

    public String a()
    {
        return k;
    }

    public String b()
    {
        return l;
    }

    public String c()
    {
        return m;
    }

    public boolean equals(Object obj)
    {
        if (obj != this)
        {
            if (obj.getClass().equals(getClass()))
            {
                if (k != ((jl) (obj = (jl)obj)).k && !k.equals(((jl) (obj)).k) || l != ((jl) (obj)).l && (l == null || !l.equals(((jl) (obj)).l)) || m != ((jl) (obj)).m && (m == null || !m.equals(((jl) (obj)).m)) || n != ((jl) (obj)).n && (n == null || !n.equals(((jl) (obj)).n)))
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
            k, l, m, n
        });
    }

    public String toString()
    {
        return b.a.a(this);
    }
}
