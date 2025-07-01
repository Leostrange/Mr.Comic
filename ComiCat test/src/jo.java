// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.util.Arrays;

public class jo
{
    static final class a extends ig
    {

        public static final a a = new a();

        public final void b(Object obj, JsonGenerator jsongenerator)
        {
            obj = (jo)obj;
            jsongenerator.writeStartObject();
            jsongenerator.writeFieldName("read_only");
            if.a.a.a(Boolean.valueOf(((jo) (obj)).e), jsongenerator);
            jsongenerator.writeEndObject();
        }

        public final Object h(JsonParser jsonparser)
        {
            d(jsonparser);
            Object obj = b(jsonparser);
            if (obj == null)
            {
                obj = null;
                while (jsonparser.getCurrentToken() == JsonToken.FIELD_NAME) 
                {
                    String s = jsonparser.getCurrentName();
                    jsonparser.nextToken();
                    if ("read_only".equals(s))
                    {
                        obj = (Boolean)if.a.a.a(jsonparser);
                    } else
                    {
                        f(jsonparser);
                    }
                }
                if (obj == null)
                {
                    throw new JsonParseException(jsonparser, "Required field \"read_only\" missing.");
                } else
                {
                    obj = new jo(((Boolean) (obj)).booleanValue());
                    e(jsonparser);
                    return obj;
                }
            } else
            {
                throw new JsonParseException(jsonparser, (new StringBuilder("No subtype found that matches tag: \"")).append(((String) (obj))).append("\"").toString());
            }
        }


        private a()
        {
        }
    }


    protected final boolean e;

    public jo(boolean flag)
    {
        e = flag;
    }

    public boolean equals(Object obj)
    {
        if (obj != this)
        {
            if (obj.getClass().equals(getClass()))
            {
                if (e != ((jo) (obj = (jo)obj)).e)
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
            Boolean.valueOf(e)
        });
    }

    public String toString()
    {
        return a.a.a(this);
    }
}
