// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.box.androidsdk.content.models;

import com.eclipsesource.json.JsonObject;
import java.util.Date;

// Referenced classes of package com.box.androidsdk.content.models:
//            BoxJsonObject, BoxEntity, BoxItem

public class BoxRecentItem extends BoxJsonObject
{

    protected static final String FIELD_INTERACTED_AT = "interacted_at";
    protected static final String FIELD_INTERACTION_TYPE = "interaction_type";
    protected static final String FIELD_ITEM = "item";
    protected static final String FIELD_ITERACTION_SHARED_LINK = "interaction_shared_link";
    private static final String TYPE = "recent_item";
    private static final long serialVersionUID = 0xdb5311e152c39969L;

    public BoxRecentItem()
    {
    }

    public BoxRecentItem(JsonObject jsonobject)
    {
        super(jsonobject);
    }

    public Date getInteractedAt()
    {
        return getPropertyAsDate("interacted_at");
    }

    public String getInteractionSharedLink()
    {
        return getPropertyAsString("interaction_shared_link");
    }

    public String getInteractionType()
    {
        return getPropertyAsString("interaction_type");
    }

    public BoxItem getItem()
    {
        return (BoxItem)getPropertyAsJsonObject(BoxEntity.getBoxJsonObjectCreator(), "item");
    }

    public String getType()
    {
        return getPropertyAsString("recent_item");
    }
}
