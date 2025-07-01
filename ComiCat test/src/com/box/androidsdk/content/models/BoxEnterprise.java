// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.box.androidsdk.content.models;

import com.eclipsesource.json.JsonObject;

// Referenced classes of package com.box.androidsdk.content.models:
//            BoxEntity

public class BoxEnterprise extends BoxEntity
{

    public static final String FIELD_NAME = "name";
    public static final String TYPE = "enterprise";
    private static final long serialVersionUID = 0xd010edb599a04712L;

    public BoxEnterprise()
    {
    }

    public BoxEnterprise(JsonObject jsonobject)
    {
        super(jsonobject);
    }

    public String getName()
    {
        return getPropertyAsString("name");
    }
}
