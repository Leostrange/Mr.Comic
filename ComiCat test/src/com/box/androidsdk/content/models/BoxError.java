// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.box.androidsdk.content.models;

import com.eclipsesource.json.JsonObject;
import java.util.ArrayList;

// Referenced classes of package com.box.androidsdk.content.models:
//            BoxJsonObject, BoxEntity

public class BoxError extends BoxJsonObject
{
    public static class ErrorContext extends BoxJsonObject
    {

        public static final String FIELD_CONFLICTS = "conflicts";

        public ArrayList getConflicts()
        {
            return getPropertyAsJsonObjectArray(BoxEntity.getBoxJsonObjectCreator(), "conflicts");
        }

        public ErrorContext()
        {
        }
    }


    public static final String FIELD_CODE = "code";
    public static final String FIELD_CONTEXT_INFO = "context_info";
    public static final String FIELD_ERROR = "error";
    public static final String FIELD_ERROR_DESCRIPTION = "error_description";
    public static final String FIELD_HELP_URL = "help_url";
    public static final String FIELD_MESSAGE = "message";
    public static final String FIELD_REQUEST_ID = "request_id";
    public static final String FIELD_STATUS = "status";
    public static final String FIELD_TYPE = "type";

    public BoxError()
    {
    }

    public BoxError(JsonObject jsonobject)
    {
        super(jsonobject);
    }

    public String getCode()
    {
        return getPropertyAsString("code");
    }

    public ErrorContext getContextInfo()
    {
        return (ErrorContext)getPropertyAsJsonObject(BoxJsonObject.getBoxJsonObjectCreator(com/box/androidsdk/content/models/BoxError$ErrorContext), "context_info");
    }

    public String getError()
    {
        String s1 = getPropertyAsString("error");
        String s = s1;
        if (s1 == null)
        {
            s = getCode();
        }
        return s;
    }

    public String getErrorDescription()
    {
        return getPropertyAsString("error_description");
    }

    public String getFieldHelpUrl()
    {
        return getPropertyAsString("help_url");
    }

    public String getMessage()
    {
        return getPropertyAsString("message");
    }

    public String getRequestId()
    {
        return getPropertyAsString("request_id");
    }

    public Integer getStatus()
    {
        return getPropertyAsInt("status");
    }

    public String getType()
    {
        return getPropertyAsString("type");
    }
}
