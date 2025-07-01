// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.box.androidsdk.content.models;

import com.eclipsesource.json.JsonObject;

// Referenced classes of package com.box.androidsdk.content.models:
//            BoxEntity

public class BoxCollection extends BoxEntity
{

    public static final String FIELD_COLLECTION_TYPE = "collection_type";
    public static final String FIELD_NAME = "name";
    public static final String TYPE = "collection";

    public BoxCollection()
    {
    }

    public BoxCollection(JsonObject jsonobject)
    {
        super(jsonobject);
    }

    public static BoxCollection createFromId(String s)
    {
        JsonObject jsonobject = new JsonObject();
        jsonobject.add("id", s);
        return new BoxCollection(jsonobject);
    }

    public String getCollectionType()
    {
        return getPropertyAsString("collection_type");
    }

    public String getName()
    {
        return getPropertyAsString("name");
    }
}
