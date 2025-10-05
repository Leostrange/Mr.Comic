package com.box.androidsdk.content.models;

import com.eclipsesource.json.JsonObject;

public class BoxBookmark extends BoxItem {
    public static final String[] ALL_FIELDS = {"type", BoxEntity.FIELD_ID, BoxItem.FIELD_SEQUENCE_ID, BoxItem.FIELD_ETAG, "name", "url", "created_at", "modified_at", BoxItem.FIELD_DESCRIPTION, BoxItem.FIELD_PATH_COLLECTION, "created_by", "modified_by", BoxItem.FIELD_TRASHED_AT, BoxItem.FIELD_PURGED_AT, BoxItem.FIELD_OWNED_BY, BoxItem.FIELD_SHARED_LINK, "parent", BoxItem.FIELD_ITEM_STATUS, "permissions", "comment_count"};
    public static final String FIELD_COMMENT_COUNT = "comment_count";
    public static final String FIELD_URL = "url";
    public static final String TYPE = "web_link";

    public BoxBookmark() {
    }

    public BoxBookmark(JsonObject jsonObject) {
        super(jsonObject);
    }

    public static BoxBookmark createFromId(String str) {
        JsonObject jsonObject = new JsonObject();
        jsonObject.add(BoxEntity.FIELD_ID, str);
        jsonObject.add("type", TYPE);
        return new BoxBookmark(jsonObject);
    }

    public Long getCommentCount() {
        return super.getCommentCount();
    }

    public Long getSize() {
        return null;
    }

    public String getUrl() {
        return getPropertyAsString("url");
    }
}
