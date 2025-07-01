// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.fasterxml.jackson.core;


// Referenced classes of package com.fasterxml.jackson.core:
//            JsonProcessingException, JsonParser

public class JsonParseException extends JsonProcessingException
{

    protected transient JsonParser _processor;

    public JsonParseException(JsonParser jsonparser, String s)
    {
        JsonLocation jsonlocation;
        if (jsonparser == null)
        {
            jsonlocation = null;
        } else
        {
            jsonlocation = jsonparser.getCurrentLocation();
        }
        super(s, jsonlocation);
        _processor = jsonparser;
    }

    public JsonParseException(JsonParser jsonparser, String s, Throwable throwable)
    {
        JsonLocation jsonlocation;
        if (jsonparser == null)
        {
            jsonlocation = null;
        } else
        {
            jsonlocation = jsonparser.getCurrentLocation();
        }
        super(s, jsonlocation, throwable);
        _processor = jsonparser;
    }
}
