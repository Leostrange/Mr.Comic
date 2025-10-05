package com.box.androidsdk.content.models;

import android.text.TextUtils;
import com.eclipsesource.json.JsonObject;
import java.util.Date;

public class BoxFile extends BoxItem {
    public static final String[] ALL_FIELDS = {"type", BoxEntity.FIELD_ID, "file_version", BoxItem.FIELD_SEQUENCE_ID, BoxItem.FIELD_ETAG, "sha1", "name", "created_at", "modified_at", BoxItem.FIELD_DESCRIPTION, "size", BoxItem.FIELD_PATH_COLLECTION, "created_by", "modified_by", BoxItem.FIELD_TRASHED_AT, BoxItem.FIELD_PURGED_AT, "content_created_at", "content_modified_at", BoxItem.FIELD_OWNED_BY, BoxItem.FIELD_SHARED_LINK, "parent", BoxItem.FIELD_ITEM_STATUS, FIELD_VERSION_NUMBER, "comment_count", "permissions", FIELD_EXTENSION, "is_package", BoxItem.FIELD_COLLECTIONS};
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
    private static final long serialVersionUID = -4732748896882484735L;

    public BoxFile() {
    }

    public BoxFile(JsonObject jsonObject) {
        super(jsonObject);
    }

    public static BoxFile createFromId(String str) {
        return createFromIdAndName(str, (String) null);
    }

    public static BoxFile createFromIdAndName(String str, String str2) {
        JsonObject jsonObject = new JsonObject();
        jsonObject.add(BoxEntity.FIELD_ID, str);
        jsonObject.add("type", TYPE);
        if (!TextUtils.isEmpty(str2)) {
            jsonObject.add("name", str2);
        }
        return new BoxFile(jsonObject);
    }

    public Long getCommentCount() {
        return super.getCommentCount();
    }

    public Date getContentCreatedAt() {
        return super.getContentCreatedAt();
    }

    public Date getContentModifiedAt() {
        return super.getContentModifiedAt();
    }

    public String getExtension() {
        return getPropertyAsString(FIELD_EXTENSION);
    }

    public BoxFileVersion getFileVersion() {
        return (BoxFileVersion) getPropertyAsJsonObject(BoxJsonObject.getBoxJsonObjectCreator(BoxFileVersion.class), "file_version");
    }

    public Boolean getIsPackage() {
        return getPropertyAsBoolean("is_package");
    }

    public BoxIteratorRepresentations getRepresentations() {
        return (BoxIteratorRepresentations) getPropertyAsJsonObject(BoxJsonObject.getBoxJsonObjectCreator(BoxIteratorRepresentations.class), FIELD_REPRESENTATIONS);
    }

    public String getSha1() {
        return getPropertyAsString("sha1");
    }

    public Long getSize() {
        return super.getSize();
    }

    public String getVersionNumber() {
        return getPropertyAsString(FIELD_VERSION_NUMBER);
    }
}
