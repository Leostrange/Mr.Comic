// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.box.androidsdk.content.models;

import com.eclipsesource.json.JsonObject;
import java.util.Date;

// Referenced classes of package com.box.androidsdk.content.models:
//            BoxEntity, BoxUser

public class BoxFileVersion extends BoxEntity
{

    public static final String ALL_FIELDS[] = {
        "name", "size", "sha1", "modified_by", "created_at", "modified_at", "deleted_at"
    };
    public static final String FIELD_CREATED_AT = "created_at";
    public static final String FIELD_DELETED_AT = "deleted_at";
    public static final String FIELD_MODIFIED_AT = "modified_at";
    public static final String FIELD_MODIFIED_BY = "modified_by";
    public static final String FIELD_NAME = "name";
    public static final String FIELD_SHA1 = "sha1";
    public static final String FIELD_SIZE = "size";
    public static final String TYPE = "file_version";
    private static final long serialVersionUID = 0xf1ee69f29a34aef4L;

    public BoxFileVersion()
    {
    }

    private BoxUser parseUserInfo(JsonObject jsonobject)
    {
        BoxUser boxuser = new BoxUser();
        boxuser.createFromJson(jsonobject);
        return boxuser;
    }

    public Date getCreatedAt()
    {
        return getPropertyAsDate("created_at");
    }

    public Date getDeletedAt()
    {
        return getPropertyAsDate("deleted_at");
    }

    public Date getModifiedAt()
    {
        return getPropertyAsDate("modified_at");
    }

    public BoxUser getModifiedBy()
    {
        return (BoxUser)getPropertyAsJsonObject(BoxEntity.getBoxJsonObjectCreator(), "modified_by");
    }

    public String getName()
    {
        return getPropertyAsString("name");
    }

    public String getSha1()
    {
        return getPropertyAsString("sha1");
    }

    public Long getSize()
    {
        return getPropertyAsLong("size");
    }

}
