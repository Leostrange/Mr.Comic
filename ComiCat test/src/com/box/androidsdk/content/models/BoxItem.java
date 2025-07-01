// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.box.androidsdk.content.models;

import android.text.TextUtils;
import com.eclipsesource.json.JsonArray;
import com.eclipsesource.json.JsonObject;
import com.eclipsesource.json.JsonValue;
import java.util.ArrayList;
import java.util.Date;
import java.util.EnumSet;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;

// Referenced classes of package com.box.androidsdk.content.models:
//            BoxEntity, BoxFile, BoxBookmark, BoxFolder, 
//            BoxUser, BoxCollection, BoxIteratorBoxEntity, BoxJsonObject, 
//            BoxIterator, BoxSharedLink, BoxPermission

public abstract class BoxItem extends BoxEntity
{
    public static final class Permission extends Enum
    {

        private static final Permission $VALUES[];
        public static final Permission CAN_COMMENT;
        public static final Permission CAN_DELETE;
        public static final Permission CAN_DOWNLOAD;
        public static final Permission CAN_INVITE_COLLABORATOR;
        public static final Permission CAN_PREVIEW;
        public static final Permission CAN_RENAME;
        public static final Permission CAN_SET_SHARE_ACCESS;
        public static final Permission CAN_SHARE;
        public static final Permission CAN_UPLOAD;
        private final String value;

        public static Permission fromString(String s)
        {
            if (!TextUtils.isEmpty(s))
            {
                Permission apermission[] = values();
                int j = apermission.length;
                for (int i = 0; i < j; i++)
                {
                    Permission permission = apermission[i];
                    if (s.equalsIgnoreCase(permission.name()))
                    {
                        return permission;
                    }
                }

            }
            throw new IllegalArgumentException(String.format(Locale.ENGLISH, "No enum with text %s found", new Object[] {
                s
            }));
        }

        public static Permission valueOf(String s)
        {
            return (Permission)Enum.valueOf(com/box/androidsdk/content/models/BoxItem$Permission, s);
        }

        public static Permission[] values()
        {
            return (Permission[])$VALUES.clone();
        }

        public final String toString()
        {
            return value;
        }

        static 
        {
            CAN_PREVIEW = new Permission("CAN_PREVIEW", 0, "can_preview");
            CAN_DOWNLOAD = new Permission("CAN_DOWNLOAD", 1, "can_download");
            CAN_UPLOAD = new Permission("CAN_UPLOAD", 2, "can_upload");
            CAN_INVITE_COLLABORATOR = new Permission("CAN_INVITE_COLLABORATOR", 3, "can_invite_collaborator");
            CAN_RENAME = new Permission("CAN_RENAME", 4, "can_rename");
            CAN_DELETE = new Permission("CAN_DELETE", 5, "can_delete");
            CAN_SHARE = new Permission("CAN_SHARE", 6, "can_share");
            CAN_SET_SHARE_ACCESS = new Permission("CAN_SET_SHARE_ACCESS", 7, "can_set_share_access");
            CAN_COMMENT = new Permission("CAN_COMMENT", 8, "can_comment");
            $VALUES = (new Permission[] {
                CAN_PREVIEW, CAN_DOWNLOAD, CAN_UPLOAD, CAN_INVITE_COLLABORATOR, CAN_RENAME, CAN_DELETE, CAN_SHARE, CAN_SET_SHARE_ACCESS, CAN_COMMENT
            });
        }

        private Permission(String s, int i, String s1)
        {
            super(s, i);
            value = s1;
        }
    }


    public static final String FIELD_ALLOWED_SHARED_LINK_ACCESS_LEVELS = "allowed_shared_link_access_levels";
    public static final String FIELD_COLLECTIONS = "collections";
    public static final String FIELD_CREATED_AT = "created_at";
    public static final String FIELD_CREATED_BY = "created_by";
    public static final String FIELD_DESCRIPTION = "description";
    public static final String FIELD_ETAG = "etag";
    public static final String FIELD_ITEM_STATUS = "item_status";
    public static final String FIELD_MODIFIED_AT = "modified_at";
    public static final String FIELD_MODIFIED_BY = "modified_by";
    public static final String FIELD_NAME = "name";
    public static final String FIELD_OWNED_BY = "owned_by";
    public static final String FIELD_PARENT = "parent";
    public static final String FIELD_PATH_COLLECTION = "path_collection";
    public static final String FIELD_PERMISSIONS = "permissions";
    public static final String FIELD_PURGED_AT = "purged_at";
    public static final String FIELD_SEQUENCE_ID = "sequence_id";
    public static final String FIELD_SHARED_LINK = "shared_link";
    public static final String FIELD_SYNCED = "synced";
    public static final String FIELD_TAGS = "tags";
    public static final String FIELD_TRASHED_AT = "trashed_at";
    private static final long serialVersionUID = 0x43abae8f5de612d6L;
    protected transient EnumSet mPermissions;

    public BoxItem()
    {
        mPermissions = null;
    }

    public BoxItem(JsonObject jsonobject)
    {
        super(jsonobject);
        mPermissions = null;
    }

    public static BoxItem createBoxItemFromJson(JsonObject jsonobject)
    {
        Object obj = new BoxEntity();
        ((BoxEntity) (obj)).createFromJson(jsonobject);
        if (((BoxEntity) (obj)).getType().equals("file"))
        {
            obj = new BoxFile();
            ((BoxFile) (obj)).createFromJson(jsonobject);
            return ((BoxItem) (obj));
        }
        if (((BoxEntity) (obj)).getType().equals("web_link"))
        {
            obj = new BoxBookmark();
            ((BoxBookmark) (obj)).createFromJson(jsonobject);
            return ((BoxItem) (obj));
        }
        if (((BoxEntity) (obj)).getType().equals("folder"))
        {
            BoxFolder boxfolder = new BoxFolder();
            boxfolder.createFromJson(jsonobject);
            return boxfolder;
        } else
        {
            return null;
        }
    }

    public static BoxItem createBoxItemFromJson(String s)
    {
        Object obj = new BoxEntity();
        ((BoxEntity) (obj)).createFromJson(s);
        if (((BoxEntity) (obj)).getType().equals("file"))
        {
            obj = new BoxFile();
            ((BoxFile) (obj)).createFromJson(s);
            return ((BoxItem) (obj));
        }
        if (((BoxEntity) (obj)).getType().equals("web_link"))
        {
            obj = new BoxBookmark();
            ((BoxBookmark) (obj)).createFromJson(s);
            return ((BoxItem) (obj));
        }
        if (((BoxEntity) (obj)).getType().equals("folder"))
        {
            BoxFolder boxfolder = new BoxFolder();
            boxfolder.createFromJson(s);
            return boxfolder;
        } else
        {
            return null;
        }
    }

    private List parsePathCollection(JsonObject jsonobject)
    {
        ArrayList arraylist = new ArrayList(jsonobject.get("total_count").asInt());
        BoxFolder boxfolder;
        for (jsonobject = jsonobject.get("entries").asArray().iterator(); jsonobject.hasNext(); arraylist.add(boxfolder))
        {
            JsonObject jsonobject1 = ((JsonValue)jsonobject.next()).asObject();
            boxfolder = new BoxFolder();
            boxfolder.createFromJson(jsonobject1);
        }

        return arraylist;
    }

    private List parseTags(JsonArray jsonarray)
    {
        ArrayList arraylist = new ArrayList();
        for (jsonarray = jsonarray.iterator(); jsonarray.hasNext(); arraylist.add(((JsonValue)jsonarray.next()).asString())) { }
        return arraylist;
    }

    private BoxUser parseUserInfo(JsonObject jsonobject)
    {
        BoxUser boxuser = new BoxUser();
        boxuser.createFromJson(jsonobject);
        return boxuser;
    }

    public ArrayList getAllowedSharedLinkAccessLevels()
    {
        Object obj = getPropertyAsStringArray("allowed_shared_link_access_levels");
        if (obj == null)
        {
            return null;
        }
        ArrayList arraylist = new ArrayList(((ArrayList) (obj)).size());
        for (obj = ((ArrayList) (obj)).iterator(); ((Iterator) (obj)).hasNext(); arraylist.add(BoxSharedLink.Access.fromString((String)((Iterator) (obj)).next()))) { }
        return arraylist;
    }

    public List getCollections()
    {
        return getPropertyAsJsonObjectArray(BoxEntity.getBoxJsonObjectCreator(com/box/androidsdk/content/models/BoxCollection), "collections");
    }

    protected Long getCommentCount()
    {
        return getPropertyAsLong("comment_count");
    }

    protected Date getContentCreatedAt()
    {
        return getPropertyAsDate("content_created_at");
    }

    protected Date getContentModifiedAt()
    {
        return getPropertyAsDate("content_modified_at");
    }

    public Date getCreatedAt()
    {
        return getPropertyAsDate("created_at");
    }

    public BoxUser getCreatedBy()
    {
        return (BoxUser)getPropertyAsJsonObject(BoxEntity.getBoxJsonObjectCreator(com/box/androidsdk/content/models/BoxUser), "created_by");
    }

    public String getDescription()
    {
        return getPropertyAsString("description");
    }

    public String getEtag()
    {
        return getPropertyAsString("etag");
    }

    public Boolean getIsSynced()
    {
        return getPropertyAsBoolean("synced");
    }

    public String getItemStatus()
    {
        return getPropertyAsString("item_status");
    }

    public Date getModifiedAt()
    {
        return getPropertyAsDate("modified_at");
    }

    public BoxUser getModifiedBy()
    {
        return (BoxUser)getPropertyAsJsonObject(BoxEntity.getBoxJsonObjectCreator(com/box/androidsdk/content/models/BoxUser), "modified_by");
    }

    public String getName()
    {
        return getPropertyAsString("name");
    }

    public BoxUser getOwnedBy()
    {
        return (BoxUser)getPropertyAsJsonObject(BoxEntity.getBoxJsonObjectCreator(com/box/androidsdk/content/models/BoxUser), "owned_by");
    }

    public BoxFolder getParent()
    {
        return (BoxFolder)getPropertyAsJsonObject(BoxEntity.getBoxJsonObjectCreator(com/box/androidsdk/content/models/BoxFolder), "parent");
    }

    public BoxIterator getPathCollection()
    {
        return (BoxIterator)getPropertyAsJsonObject(BoxJsonObject.getBoxJsonObjectCreator(com/box/androidsdk/content/models/BoxIteratorBoxEntity), "path_collection");
    }

    public EnumSet getPermissions()
    {
        if (mPermissions == null)
        {
            parsePermissions();
        }
        return mPermissions;
    }

    public Date getPurgedAt()
    {
        return getPropertyAsDate("purged_at");
    }

    public String getSequenceID()
    {
        return getPropertyAsString("sequence_id");
    }

    public BoxSharedLink getSharedLink()
    {
        return (BoxSharedLink)getPropertyAsJsonObject(BoxEntity.getBoxJsonObjectCreator(com/box/androidsdk/content/models/BoxSharedLink), "shared_link");
    }

    public Long getSize()
    {
        return getPropertyAsLong("size");
    }

    public List getTags()
    {
        return getPropertyAsStringArray("tags");
    }

    public Date getTrashedAt()
    {
        return getPropertyAsDate("trashed_at");
    }

    protected EnumSet parsePermissions()
    {
        BoxPermission boxpermission = (BoxPermission)getPropertyAsJsonObject(BoxEntity.getBoxJsonObjectCreator(com/box/androidsdk/content/models/BoxPermission), "permissions");
        if (boxpermission == null)
        {
            return null;
        } else
        {
            mPermissions = boxpermission.getPermissions();
            return mPermissions;
        }
    }
}
