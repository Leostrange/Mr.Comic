// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.box.androidsdk.content.models;


// Referenced classes of package com.box.androidsdk.content.models:
//            BoxJsonObject

public class BoxOrder extends BoxJsonObject
{

    public static final String FIELD_BY = "by";
    public static final String FIELD_DIRECTION = "direction";

    public BoxOrder()
    {
    }

    public String getBy()
    {
        return getPropertyAsString("by");
    }

    public String getDirection()
    {
        return getPropertyAsString("direction");
    }
}
