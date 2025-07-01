// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.box.androidsdk.content.models;

import android.text.TextUtils;
import com.eclipsesource.json.JsonObject;
import java.util.Date;

// Referenced classes of package com.box.androidsdk.content.models:
//            BoxItem, BoxFileVersion, BoxJsonObject, BoxIteratorRepresentations

public class BoxFile extends BoxItem
{

    public static final String ALL_FIELDS[] = {
        "type", "id", "file_version", "sequence_id", "etag", "sha1", "name", "created_at", "modified_at", "description", 
        "size", "path_collection", "created_by", "modified_by", "trashed_at", "purged_at", "content_created_at", "content_modified_at", "owned_by", "shared_link", 
        "parent", "item_status", "version_number", "comment_count", "permissions", "extension", "is_package", "collections"
    };
    public static final String FIELD_COMMENT_COUNT = "comment_count";
    public static final String FIELD_CONTENT_CREATED_AT = "content_created_at";
    public static final String FIELD_CONTENT_MODIFIED_AT = "content_modified_at";
    public static final String FIELD_EXTENSION = "extension";
    public static final String FIELD_FILE_VERSION = "file_version";
    public static final String FIELD_IS_PACKAGE = "is_package";
    public static final String FIELD_REPRESENTATIONS = "representations";
    public static final String FIELD_SHA1 = "sha1";
    public static final String FIELD_SIZE = "size";
    public static final String FIELD_VERSION_NUMBER = "version_number";
    public static final String TYPE = "file";
    private static final long serialVersionUID = 0xbe51e5f416329a01L;

    public BoxFile()
    {
    }

    public BoxFile(JsonObject jsonobject)
    {
        super(jsonobject);
    }

    public static BoxFile createFromId(String s)
    {
        return createFromIdAndName(s, null);
    }

    public static BoxFile createFromIdAndName(String s, String s1)
    {
        JsonObject jsonobject = new JsonObject();
        jsonobject.add("id", s);
        jsonobject.add("type", "file");
        if (!TextUtils.isEmpty(s1))
        {
            jsonobject.add("name", s1);
        }
        return new BoxFile(jsonobject);
    }

    public Long getCommentCount()
    {
        return super.getCommentCount();
    }

    public Date getContentCreatedAt()
    {
        return super.getContentCreatedAt();
    }

    public Date getContentModifiedAt()
    {
        return super.getContentModifiedAt();
    }

    public String getExtension()
    {
        return getPropertyAsString("extension");
    }

    public BoxFileVersion getFileVersion()
    {
        return (BoxFileVersion)getPropertyAsJsonObject(BoxJsonObject.getBoxJsonObjectCreator(com/box/androidsdk/content/models/BoxFileVersion), "file_version");
    }

    public Boolean getIsPackage()
    {
        return getPropertyAsBoolean("is_package");
    }

    public BoxIteratorRepresentations getRepresentations()
    {
        return (BoxIteratorRepresentations)getPropertyAsJsonObject(BoxJsonObject.getBoxJsonObjectCreator(com/box/androidsdk/content/models/BoxIteratorRepresentations), "representations");
    }

    public String getSha1()
    {
        return getPropertyAsString("sha1");
    }

    public Long getSize()
    {
        return super.getSize();
    }

    public String getVersionNumber()
    {
        return getPropertyAsString("version_number");
    }

}
