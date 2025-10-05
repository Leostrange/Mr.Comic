package com.box.androidsdk.content.models;

import android.text.TextUtils;
import com.box.androidsdk.content.models.BoxSharedLink;
import com.eclipsesource.json.JsonArray;
import com.eclipsesource.json.JsonObject;
import com.eclipsesource.json.JsonValue;
import java.util.ArrayList;
import java.util.Date;
import java.util.EnumSet;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;

public abstract class BoxItem extends BoxEntity {
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
    private static final long serialVersionUID = 4876182952337609430L;
    protected transient EnumSet<Permission> mPermissions = null;

    public enum Permission {
        CAN_PREVIEW("can_preview"),
        CAN_DOWNLOAD(BoxSharedLink.Permissions.FIELD_CAN_DOWNLOAD),
        CAN_UPLOAD("can_upload"),
        CAN_INVITE_COLLABORATOR("can_invite_collaborator"),
        CAN_RENAME("can_rename"),
        CAN_DELETE("can_delete"),
        CAN_SHARE("can_share"),
        CAN_SET_SHARE_ACCESS("can_set_share_access"),
        CAN_COMMENT("can_comment");
        
        private final String value;

        private Permission(String str) {
            this.value = str;
        }

        public static Permission fromString(String str) {
            if (!TextUtils.isEmpty(str)) {
                for (Permission permission : values()) {
                    if (str.equalsIgnoreCase(permission.name())) {
                        return permission;
                    }
                }
            }
            throw new IllegalArgumentException(String.format(Locale.ENGLISH, "No enum with text %s found", new Object[]{str}));
        }

        public final String toString() {
            return this.value;
        }
    }

    public BoxItem() {
    }

    public BoxItem(JsonObject jsonObject) {
        super(jsonObject);
    }

    @Deprecated
    public static BoxItem createBoxItemFromJson(JsonObject jsonObject) {
        BoxEntity boxEntity = new BoxEntity();
        boxEntity.createFromJson(jsonObject);
        if (boxEntity.getType().equals(BoxFile.TYPE)) {
            BoxFile boxFile = new BoxFile();
            boxFile.createFromJson(jsonObject);
            return boxFile;
        } else if (boxEntity.getType().equals(BoxBookmark.TYPE)) {
            BoxBookmark boxBookmark = new BoxBookmark();
            boxBookmark.createFromJson(jsonObject);
            return boxBookmark;
        } else if (!boxEntity.getType().equals(BoxFolder.TYPE)) {
            return null;
        } else {
            BoxFolder boxFolder = new BoxFolder();
            boxFolder.createFromJson(jsonObject);
            return boxFolder;
        }
    }

    @Deprecated
    public static BoxItem createBoxItemFromJson(String str) {
        BoxEntity boxEntity = new BoxEntity();
        boxEntity.createFromJson(str);
        if (boxEntity.getType().equals(BoxFile.TYPE)) {
            BoxFile boxFile = new BoxFile();
            boxFile.createFromJson(str);
            return boxFile;
        } else if (boxEntity.getType().equals(BoxBookmark.TYPE)) {
            BoxBookmark boxBookmark = new BoxBookmark();
            boxBookmark.createFromJson(str);
            return boxBookmark;
        } else if (!boxEntity.getType().equals(BoxFolder.TYPE)) {
            return null;
        } else {
            BoxFolder boxFolder = new BoxFolder();
            boxFolder.createFromJson(str);
            return boxFolder;
        }
    }

    private List<BoxFolder> parsePathCollection(JsonObject jsonObject) {
        ArrayList arrayList = new ArrayList(jsonObject.get(BoxIterator.FIELD_TOTAL_COUNT).asInt());
        Iterator<JsonValue> it = jsonObject.get(BoxIterator.FIELD_ENTRIES).asArray().iterator();
        while (it.hasNext()) {
            JsonObject asObject = it.next().asObject();
            BoxFolder boxFolder = new BoxFolder();
            boxFolder.createFromJson(asObject);
            arrayList.add(boxFolder);
        }
        return arrayList;
    }

    private List<String> parseTags(JsonArray jsonArray) {
        ArrayList arrayList = new ArrayList();
        Iterator<JsonValue> it = jsonArray.iterator();
        while (it.hasNext()) {
            arrayList.add(it.next().asString());
        }
        return arrayList;
    }

    private BoxUser parseUserInfo(JsonObject jsonObject) {
        BoxUser boxUser = new BoxUser();
        boxUser.createFromJson(jsonObject);
        return boxUser;
    }

    public ArrayList<BoxSharedLink.Access> getAllowedSharedLinkAccessLevels() {
        ArrayList<String> propertyAsStringArray = getPropertyAsStringArray(FIELD_ALLOWED_SHARED_LINK_ACCESS_LEVELS);
        if (propertyAsStringArray == null) {
            return null;
        }
        ArrayList<BoxSharedLink.Access> arrayList = new ArrayList<>(propertyAsStringArray.size());
        Iterator<String> it = propertyAsStringArray.iterator();
        while (it.hasNext()) {
            arrayList.add(BoxSharedLink.Access.fromString(it.next()));
        }
        return arrayList;
    }

    public List<BoxCollection> getCollections() {
        return getPropertyAsJsonObjectArray(BoxEntity.getBoxJsonObjectCreator(BoxCollection.class), FIELD_COLLECTIONS);
    }

    /* access modifiers changed from: protected */
    public Long getCommentCount() {
        return getPropertyAsLong("comment_count");
    }

    /* access modifiers changed from: protected */
    public Date getContentCreatedAt() {
        return getPropertyAsDate("content_created_at");
    }

    /* access modifiers changed from: protected */
    public Date getContentModifiedAt() {
        return getPropertyAsDate("content_modified_at");
    }

    public Date getCreatedAt() {
        return getPropertyAsDate("created_at");
    }

    public BoxUser getCreatedBy() {
        return (BoxUser) getPropertyAsJsonObject(BoxEntity.getBoxJsonObjectCreator(BoxUser.class), "created_by");
    }

    public String getDescription() {
        return getPropertyAsString(FIELD_DESCRIPTION);
    }

    public String getEtag() {
        return getPropertyAsString(FIELD_ETAG);
    }

    public Boolean getIsSynced() {
        return getPropertyAsBoolean(FIELD_SYNCED);
    }

    public String getItemStatus() {
        return getPropertyAsString(FIELD_ITEM_STATUS);
    }

    public Date getModifiedAt() {
        return getPropertyAsDate("modified_at");
    }

    public BoxUser getModifiedBy() {
        return (BoxUser) getPropertyAsJsonObject(BoxEntity.getBoxJsonObjectCreator(BoxUser.class), "modified_by");
    }

    public String getName() {
        return getPropertyAsString("name");
    }

    public BoxUser getOwnedBy() {
        return (BoxUser) getPropertyAsJsonObject(BoxEntity.getBoxJsonObjectCreator(BoxUser.class), FIELD_OWNED_BY);
    }

    public BoxFolder getParent() {
        return (BoxFolder) getPropertyAsJsonObject(BoxEntity.getBoxJsonObjectCreator(BoxFolder.class), "parent");
    }

    public BoxIterator<BoxFolder> getPathCollection() {
        return (BoxIterator) getPropertyAsJsonObject(BoxJsonObject.getBoxJsonObjectCreator(BoxIteratorBoxEntity.class), FIELD_PATH_COLLECTION);
    }

    public EnumSet<Permission> getPermissions() {
        if (this.mPermissions == null) {
            parsePermissions();
        }
        return this.mPermissions;
    }

    public Date getPurgedAt() {
        return getPropertyAsDate(FIELD_PURGED_AT);
    }

    public String getSequenceID() {
        return getPropertyAsString(FIELD_SEQUENCE_ID);
    }

    public BoxSharedLink getSharedLink() {
        return (BoxSharedLink) getPropertyAsJsonObject(BoxEntity.getBoxJsonObjectCreator(BoxSharedLink.class), FIELD_SHARED_LINK);
    }

    public Long getSize() {
        return getPropertyAsLong("size");
    }

    public List<String> getTags() {
        return getPropertyAsStringArray(FIELD_TAGS);
    }

    public Date getTrashedAt() {
        return getPropertyAsDate(FIELD_TRASHED_AT);
    }

    /* access modifiers changed from: protected */
    public EnumSet<Permission> parsePermissions() {
        BoxPermission boxPermission = (BoxPermission) getPropertyAsJsonObject(BoxEntity.getBoxJsonObjectCreator(BoxPermission.class), "permissions");
        if (boxPermission == null) {
            return null;
        }
        this.mPermissions = boxPermission.getPermissions();
        return this.mPermissions;
    }
}
