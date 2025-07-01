// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.box.androidsdk.content.models;

import com.eclipsesource.json.JsonObject;

// Referenced classes of package com.box.androidsdk.content.models:
//            BoxJsonObject, BoxSharedLink

public static class A extends BoxJsonObject
{

    public static final String FIELD_CAN_DOWNLOAD = "can_download";
    private static final String FIELD_CAN_PREVIEW = "can_preview";

    public Boolean getCanDownload()
    {
        return getPropertyAsBoolean("can_download");
    }

    public A()
    {
    }

    public A(JsonObject jsonobject)
    {
        super(jsonobject);
    }
}
