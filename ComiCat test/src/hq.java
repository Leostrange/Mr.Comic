// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;

public final class hq
{

    static final ie a = new ie() {

        public final Object a(JsonParser jsonparser)
        {
            d(jsonparser);
            String s = null;
            Object obj = null;
            while (jsonparser.getCurrentToken() == JsonToken.FIELD_NAME) 
            {
                String s1 = jsonparser.getCurrentName();
                jsonparser.nextToken();
                if ("text".equals(s1))
                {
                    obj = (String)if.g.a.a(jsonparser);
                } else
                if ("locale".equals(s1))
                {
                    s = (String)if.g.a.a(jsonparser);
                } else
                {
                    f(jsonparser);
                }
            }
            if (obj == null)
            {
                throw new JsonParseException(jsonparser, "Required field \"text\" missing.");
            }
            if (s == null)
            {
                throw new JsonParseException(jsonparser, "Required field \"locale\" missing.");
            } else
            {
                obj = new hq(((String) (obj)), s);
                e(jsonparser);
                return obj;
            }
        }

        public final void a(Object obj, JsonGenerator jsongenerator)
        {
            throw new UnsupportedOperationException("Error wrapper serialization not supported.");
        }

    };
    private final String b;
    private final String c;

    public hq(String s, String s1)
    {
        if (s == null)
        {
            throw new NullPointerException("text");
        }
        if (s1 == null)
        {
            throw new NullPointerException("locale");
        } else
        {
            b = s;
            c = s1;
            return;
        }
    }

    public final String toString()
    {
        return b;
    }

}
