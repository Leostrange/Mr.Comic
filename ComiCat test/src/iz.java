// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.util.Arrays;
import java.util.regex.Pattern;

public final class iz extends jo
{
    static final class a extends ig
    {

        public static final a a = new a();

        public final void b(Object obj, JsonGenerator jsongenerator)
        {
            obj = (iz)obj;
            jsongenerator.writeStartObject();
            jsongenerator.writeFieldName("read_only");
            if.a.a.a(Boolean.valueOf(((iz) (obj)).e), jsongenerator);
            if (((iz) (obj)).a != null)
            {
                jsongenerator.writeFieldName("parent_shared_folder_id");
                if.a(if.g.a).a(((iz) (obj)).a, jsongenerator);
            }
            if (((iz) (obj)).b != null)
            {
                jsongenerator.writeFieldName("shared_folder_id");
                if.a(if.g.a).a(((iz) (obj)).b, jsongenerator);
            }
            jsongenerator.writeFieldName("traverse_only");
            if.a.a.a(Boolean.valueOf(((iz) (obj)).c), jsongenerator);
            jsongenerator.writeFieldName("no_access");
            if.a.a.a(Boolean.valueOf(((iz) (obj)).d), jsongenerator);
            jsongenerator.writeEndObject();
        }

        public final Object h(JsonParser jsonparser)
        {
            String s = null;
            d(jsonparser);
            Object obj = b(jsonparser);
            if (obj == null)
            {
                obj = Boolean.valueOf(false);
                Boolean boolean1 = Boolean.valueOf(false);
                String s1 = null;
                Boolean boolean2 = null;
                while (jsonparser.getCurrentToken() == JsonToken.FIELD_NAME) 
                {
                    String s2 = jsonparser.getCurrentName();
                    jsonparser.nextToken();
                    if ("read_only".equals(s2))
                    {
                        boolean2 = (Boolean)if.a.a.a(jsonparser);
                    } else
                    if ("parent_shared_folder_id".equals(s2))
                    {
                        s1 = (String)if.a(if.g.a).a(jsonparser);
                    } else
                    if ("shared_folder_id".equals(s2))
                    {
                        s = (String)if.a(if.g.a).a(jsonparser);
                    } else
                    if ("traverse_only".equals(s2))
                    {
                        boolean1 = (Boolean)if.a.a.a(jsonparser);
                    } else
                    if ("no_access".equals(s2))
                    {
                        obj = (Boolean)if.a.a.a(jsonparser);
                    } else
                    {
                        f(jsonparser);
                    }
                }
                if (boolean2 == null)
                {
                    throw new JsonParseException(jsonparser, "Required field \"read_only\" missing.");
                } else
                {
                    obj = new iz(boolean2.booleanValue(), s1, s, boolean1.booleanValue(), ((Boolean) (obj)).booleanValue());
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
    protected final String b;
    protected final boolean c;
    protected final boolean d;

    public iz(boolean flag, String s, String s1, boolean flag1, boolean flag2)
    {
        super(flag);
        if (s != null && !Pattern.matches("[-_0-9a-zA-Z:]+", s))
        {
            throw new IllegalArgumentException("String 'parentSharedFolderId' does not match pattern");
        }
        a = s;
        if (s1 != null && !Pattern.matches("[-_0-9a-zA-Z:]+", s1))
        {
            throw new IllegalArgumentException("String 'sharedFolderId' does not match pattern");
        } else
        {
            b = s1;
            c = flag1;
            d = flag2;
            return;
        }
    }

    public final boolean equals(Object obj)
    {
        if (obj != this)
        {
            if (obj.getClass().equals(getClass()))
            {
                if (e != ((iz) (obj = (iz)obj)).e || a != ((iz) (obj)).a && (a == null || !a.equals(((iz) (obj)).a)) || b != ((iz) (obj)).b && (b == null || !b.equals(((iz) (obj)).b)) || c != ((iz) (obj)).c || d != ((iz) (obj)).d)
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
            a, b, Boolean.valueOf(c), Boolean.valueOf(d)
        }) + super.hashCode() * 31;
    }

    public final String toString()
    {
        return a.a.a(this);
    }
}
