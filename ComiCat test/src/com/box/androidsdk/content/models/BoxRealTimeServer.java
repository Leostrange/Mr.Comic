// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.box.androidsdk.content.models;


// Referenced classes of package com.box.androidsdk.content.models:
//            BoxEntity

public class BoxRealTimeServer extends BoxEntity
{

    public static final String FIELD_MAX_RETRIES = "max_retries";
    public static final String FIELD_RETRY_TIMEOUT = "retry_timeout";
    public static final String FIELD_TTL = "ttl";
    public static final String FIELD_TYPE = "type";
    public static final String FIELD_URL = "url";
    public static final String TYPE = "realtime_server";
    private static final long serialVersionUID = 0xa4864ff29c3a4d1cL;

    public BoxRealTimeServer()
    {
    }

    public Long getFieldRetryTimeout()
    {
        return getPropertyAsLong("retry_timeout");
    }

    public Long getMaxRetries()
    {
        return getPropertyAsLong("max_retries");
    }

    public Long getTTL()
    {
        return getPropertyAsLong("ttl");
    }

    public String getType()
    {
        return getPropertyAsString("realtime_server");
    }

    public String getUrl()
    {
        return getPropertyAsString("url");
    }
}
