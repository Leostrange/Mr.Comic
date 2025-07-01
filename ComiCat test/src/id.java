// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;

public abstract class id extends ie
{

    public id()
    {
    }

    protected static String b(JsonParser jsonparser)
    {
        boolean flag;
        if (jsonparser.getCurrentToken() == JsonToken.FIELD_NAME && ".tag".equals(jsonparser.getCurrentName()))
        {
            flag = true;
        } else
        {
            flag = false;
        }
        if (!flag)
        {
            return null;
        } else
        {
            jsonparser.nextToken();
            String s = c(jsonparser);
            jsonparser.nextToken();
            return s;
        }
    }
}
