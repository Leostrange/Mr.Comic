// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.util.Arrays;
import java.util.regex.Pattern;

public final class jb
{
    static final class a extends ig
    {

        public static final a a = new a();

        public final void b(Object obj, JsonGenerator jsongenerator)
        {
            obj = (jb)obj;
            jsongenerator.writeStartObject();
            jsongenerator.writeFieldName("path");
            if.g.a.a(((jb) (obj)).a, jsongenerator);
            jsongenerator.writeFieldName("recursive");
            if.a.a.a(Boolean.valueOf(((jb) (obj)).b), jsongenerator);
            jsongenerator.writeFieldName("include_media_info");
            if.a.a.a(Boolean.valueOf(((jb) (obj)).c), jsongenerator);
            jsongenerator.writeFieldName("include_deleted");
            if.a.a.a(Boolean.valueOf(((jb) (obj)).d), jsongenerator);
            jsongenerator.writeFieldName("include_has_explicit_shared_members");
            if.a.a.a(Boolean.valueOf(((jb) (obj)).e), jsongenerator);
            jsongenerator.writeEndObject();
        }

        public final Object h(JsonParser jsonparser)
        {
            d(jsonparser);
            Object obj = b(jsonparser);
            if (obj == null)
            {
                obj = Boolean.valueOf(false);
                String s = null;
                Boolean boolean1 = Boolean.valueOf(false);
                Boolean boolean2 = Boolean.valueOf(false);
                Boolean boolean3 = Boolean.valueOf(false);
                while (jsonparser.getCurrentToken() == JsonToken.FIELD_NAME) 
                {
                    String s1 = jsonparser.getCurrentName();
                    jsonparser.nextToken();
                    if ("path".equals(s1))
                    {
                        s = (String)if.g.a.a(jsonparser);
                    } else
                    if ("recursive".equals(s1))
                    {
                        boolean3 = (Boolean)if.a.a.a(jsonparser);
                    } else
                    if ("include_media_info".equals(s1))
                    {
                        boolean2 = (Boolean)if.a.a.a(jsonparser);
                    } else
                    if ("include_deleted".equals(s1))
                    {
                        boolean1 = (Boolean)if.a.a.a(jsonparser);
                    } else
                    if ("include_has_explicit_shared_members".equals(s1))
                    {
                        obj = (Boolean)if.a.a.a(jsonparser);
                    } else
                    {
                        f(jsonparser);
                    }
                }
                if (s == null)
                {
                    throw new JsonParseException(jsonparser, "Required field \"path\" missing.");
                } else
                {
                    obj = new jb(s, boolean3.booleanValue(), boolean2.booleanValue(), boolean1.booleanValue(), ((Boolean) (obj)).booleanValue());
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


    protected final String a;
    protected final boolean b;
    protected final boolean c;
    protected final boolean d;
    protected final boolean e;

    public jb(String s)
    {
        this(s, false, false, false, false);
    }

    public jb(String s, boolean flag, boolean flag1, boolean flag2, boolean flag3)
    {
        if (s == null)
        {
            throw new IllegalArgumentException("Required value for 'path' is null");
        }
        if (!Pattern.matches("(/(.|[\\r\\n])*)?|(ns:[0-9]+(/.*)?)", s))
        {
            throw new IllegalArgumentException("String 'path' does not match pattern");
        } else
        {
            a = s;
            b = flag;
            c = flag1;
            d = flag2;
            e = flag3;
            return;
        }
    }

    public final boolean equals(Object obj)
    {
        if (obj != this)
        {
            if (obj.getClass().equals(getClass()))
            {
                if (a != ((jb) (obj = (jb)obj)).a && !a.equals(((jb) (obj)).a) || b != ((jb) (obj)).b || c != ((jb) (obj)).c || d != ((jb) (obj)).d || e != ((jb) (obj)).e)
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
            a, Boolean.valueOf(b), Boolean.valueOf(c), Boolean.valueOf(d), Boolean.valueOf(e)
        });
    }

    public final String toString()
    {
        return a.a.a(this);
    }
}
