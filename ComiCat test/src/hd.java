// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;

final class hd
{
    static final class a extends ie
    {

        private ie a;

        public final Object a(JsonParser jsonparser)
        {
            hq hq1 = null;
            d(jsonparser);
            Object obj = null;
            while (jsonparser.getCurrentToken() == JsonToken.FIELD_NAME) 
            {
                String s = jsonparser.getCurrentName();
                jsonparser.nextToken();
                if ("error".equals(s))
                {
                    obj = a.a(jsonparser);
                } else
                if ("user_message".equals(s))
                {
                    hq1 = (hq)hq.a.a(jsonparser);
                } else
                {
                    f(jsonparser);
                }
            }
            if (obj == null)
            {
                throw new JsonParseException(jsonparser, "Required field \"error\" missing.");
            } else
            {
                obj = new hd(obj, hq1);
                e(jsonparser);
                return obj;
            }
        }

        public final void a(Object obj, JsonGenerator jsongenerator)
        {
            throw new UnsupportedOperationException("Error wrapper serialization not supported.");
        }

        public a(ie ie1)
        {
            a = ie1;
        }
    }


    final Object a;
    hq b;

    public hd(Object obj, hq hq)
    {
        if (obj == null)
        {
            throw new NullPointerException("error");
        } else
        {
            a = obj;
            b = hq;
            return;
        }
    }
}
