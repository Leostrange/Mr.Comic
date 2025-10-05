package com.box.androidsdk.content.models;

import com.eclipsesource.json.JsonObject;
import java.util.Date;

public class BoxFileVersion extends BoxEntity {
    public static final String[] ALL_FIELDS = {"name", "size", "sha1", "modified_by", "created_at", "modified_at", FIELD_DELETED_AT};
    public static final String FIELD_CREATED_AT = "created_at";
    public static final String FIELD_DELETED_AT = "deleted_at";
    public static final String FIELD_MODIFIED_AT = "modified_at";
    public static final String FIELD_MODIFIED_BY = "modified_by";
    public static final String FIELD_NAME = "name";
    public static final String FIELD_SHA1 = "sha1";
    public static final String FIELD_SIZE = "size";
    public static final String TYPE = "file_version";
    private static final long serialVersionUID = -1013756375421636876L;

    private BoxUser parseUserInfo(JsonObject jsonObject) {
        BoxUser boxUser = new BoxUser();
        boxUser.createFromJson(jsonObject);
        return boxUser;
    }

    public Date getCreatedAt() {
        return getPropertyAsDate("created_at");
    }

    public Date getDeletedAt() {
        return getPropertyAsDate(FIELD_DELETED_AT);
    }

    public Date getModifiedAt() {
        return getPropertyAsDate("modified_at");
    }

    public BoxUser getModifiedBy() {
        return (BoxUser) getPropertyAsJsonObject(BoxEntity.getBoxJsonObjectCreator(), "modified_by");
    }

    public String getName() {
        return getPropertyAsString("name");
    }

    public String getSha1() {
        return getPropertyAsString("sha1");
    }

    public Long getSize() {
        return getPropertyAsLong("size");
    }
}
