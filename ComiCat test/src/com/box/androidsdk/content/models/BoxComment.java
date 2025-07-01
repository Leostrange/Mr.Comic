// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.box.androidsdk.content.models;

import com.eclipsesource.json.JsonObject;
import java.util.Date;

// Referenced classes of package com.box.androidsdk.content.models:
//            BoxEntity, BoxUser, BoxItem

public class BoxComment extends BoxEntity
{

    public static final String ALL_FIELDS[] = {
        "type", "id", "is_reply_comment", "message", "tagged_message", "created_by", "created_at", "item", "modified_at"
    };
    public static final String FIELD_CREATED_AT = "created_at";
    public static final String FIELD_CREATED_BY = "created_by";
    public static final String FIELD_IS_REPLY_COMMENT = "is_reply_comment";
    public static final String FIELD_ITEM = "item";
    public static final String FIELD_MESSAGE = "message";
    public static final String FIELD_MODIFIED_AT = "modified_at";
    public static final String FIELD_TAGGED_MESSAGE = "tagged_message";
    public static final String TYPE = "comment";
    private static final long serialVersionUID = 0x7b26ba22de2ed01fL;

    public BoxComment()
    {
    }

    public BoxComment(JsonObject jsonobject)
    {
        super(jsonobject);
    }

    public Date getCreatedAt()
    {
        return getPropertyAsDate("created_at");
    }

    public BoxUser getCreatedBy()
    {
        return (BoxUser)getPropertyAsJsonObject(BoxEntity.getBoxJsonObjectCreator(), "created_by");
    }

    public Boolean getIsReplyComment()
    {
        return getPropertyAsBoolean("is_reply_comment");
    }

    public BoxItem getItem()
    {
        return (BoxItem)getPropertyAsJsonObject(BoxEntity.getBoxJsonObjectCreator(), "item");
    }

    public String getMessage()
    {
        return getPropertyAsString("message");
    }

    public Date getModifiedAt()
    {
        return getPropertyAsDate("modified_at");
    }

    public String getTaggedMessage()
    {
        return getPropertyAsString("tagged_message");
    }

}
