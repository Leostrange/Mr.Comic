// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.util.Arrays;
import java.util.regex.Pattern;

public final class ix extends jo
{
    static final class a extends ig
    {

        public static final a a = new a();

        public final void b(Object obj, JsonGenerator jsongenerator)
        {
            obj = (ix)obj;
            jsongenerator.writeStartObject();
            jsongenerator.writeFieldName("read_only");
            if.a.a.a(Boolean.valueOf(((ix) (obj)).e), jsongenerator);
            jsongenerator.writeFieldName("parent_shared_folder_id");
            if.g.a.a(((ix) (obj)).a, jsongenerator);
            if (((ix) (obj)).b != null)
            {
                jsongenerator.writeFieldName("modified_by");
                if.a(if.g.a).a(((ix) (obj)).b, jsongenerator);
            }
            jsongenerator.writeEndObject();
        }

        public final Object h(JsonParser jsonparser)
        {
            d(jsonparser);
            Object obj = b(jsonparser);
            if (obj == null)
            {
                String s1 = null;
                String s = null;
                obj = null;
                while (jsonparser.getCurrentToken() == JsonToken.FIELD_NAME) 
                {
                    String s2 = jsonparser.getCurrentName();
                    jsonparser.nextToken();
                    if ("read_only".equals(s2))
                    {
                        obj = (Boolean)if.a.a.a(jsonparser);
                    } else
                    if ("parent_shared_folder_id".equals(s2))
                    {
                        s = (String)if.g.a.a(jsonparser);
                    } else
                    if ("modified_by".equals(s2))
                    {
                        s1 = (String)if.a(if.g.a).a(jsonparser);
                    } else
                    {
                        f(jsonparser);
                    }
                }
                if (obj == null)
                {
                    throw new JsonParseException(jsonparser, "Required field \"read_only\" missing.");
                }
                if (s == null)
                {
                    throw new JsonParseException(jsonparser, "Required field \"parent_shared_folder_id\" missing.");
                } else
                {
                    obj = new ix(((Boolean) (obj)).booleanValue(), s, s1);
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

    public ix(boolean flag, String s, String s1)
    {
        super(flag);
        if (s == null)
        {
            throw new IllegalArgumentException("Required value for 'parentSharedFolderId' is null");
        }
        if (!Pattern.matches("[-_0-9a-zA-Z:]+", s))
        {
            throw new IllegalArgumentException("String 'parentSharedFolderId' does not match pattern");
        }
        a = s;
        if (s1 != null)
        {
            if (s1.length() < 40)
            {
                throw new IllegalArgumentException("String 'modifiedBy' is shorter than 40");
            }
            if (s1.length() > 40)
            {
                throw new IllegalArgumentException("String 'modifiedBy' is longer than 40");
            }
        }
        b = s1;
    }

    public final boolean equals(Object obj)
    {
        if (obj != this)
        {
            if (obj.getClass().equals(getClass()))
            {
                if (e != ((ix) (obj = (ix)obj)).e || a != ((ix) (obj)).a && !a.equals(((ix) (obj)).a) || b != ((ix) (obj)).b && (b == null || !b.equals(((ix) (obj)).b)))
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
            a, b
        }) + super.hashCode() * 31;
    }

    public final String toString()
    {
        return a.a.a(this);
    }
}
