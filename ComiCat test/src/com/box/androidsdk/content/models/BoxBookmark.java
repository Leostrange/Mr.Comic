// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.box.androidsdk.content.models;

import com.eclipsesource.json.JsonObject;

// Referenced classes of package com.box.androidsdk.content.models:
//            BoxItem

public class BoxBookmark extends BoxItem
{

    public static final String ALL_FIELDS[] = {
        "type", "id", "sequence_id", "etag", "name", "url", "created_at", "modified_at", "description", "path_collection", 
        "created_by", "modified_by", "trashed_at", "purged_at", "owned_by", "shared_link", "parent", "item_status", "permissions", "comment_count"
    };
    public static final String FIELD_COMMENT_COUNT = "comment_count";
    public static final String FIELD_URL = "url";
    public static final String TYPE = "web_link";

    public BoxBookmark()
    {
    }

    public BoxBookmark(JsonObject jsonobject)
    {
        super(jsonobject);
    }

    public static BoxBookmark createFromId(String s)
    {
        JsonObject jsonobject = new JsonObject();
        jsonobject.add("id", s);
        jsonobject.add("type", "web_link");
        return new BoxBookmark(jsonobject);
    }

    public Long getCommentCount()
    {
        return super.getCommentCount();
    }

    public Long getSize()
    {
        return null;
    }

    public String getUrl()
    {
        return getPropertyAsString("url");
    }

}
