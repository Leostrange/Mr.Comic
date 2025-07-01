// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.box.androidsdk.content.models;

import com.eclipsesource.json.JsonObject;
import java.util.List;

// Referenced classes of package com.box.androidsdk.content.models:
//            BoxJsonObject

public class BoxMetadata extends BoxJsonObject
{

    public static final String FIELD_PARENT = "parent";
    public static final String FIELD_SCOPE = "scope";
    public static final String FIELD_TEMPLATE = "template";
    private List mMetadataKeys;

    public BoxMetadata()
    {
    }

    public BoxMetadata(JsonObject jsonobject)
    {
        super(jsonobject);
    }

    public String getParent()
    {
        return getPropertyAsString("parent");
    }

    public String getScope()
    {
        return getPropertyAsString("scope");
    }

    public String getTemplate()
    {
        return getPropertyAsString("template");
    }
}
