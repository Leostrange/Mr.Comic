// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.box.androidsdk.content.models;

import com.eclipsesource.json.JsonObject;

// Referenced classes of package com.box.androidsdk.content.models:
//            BoxJsonObject

public class BoxSimpleMessage extends BoxJsonObject
{

    public static final String FIELD_MESSAGE = "message";
    public static final String MESSAGE_NEW_CHANGE = "new_change";
    public static final String MESSAGE_RECONNECT = "reconnect";
    private static final long serialVersionUID = 0x16938ce5e020b3c4L;

    public BoxSimpleMessage()
    {
    }

    public BoxSimpleMessage(JsonObject jsonobject)
    {
        super(jsonobject);
    }

    public String getMessage()
    {
        return getPropertyAsString("message");
    }
}
