package com.box.androidsdk.content.models;

import com.eclipsesource.json.JsonObject;
import java.util.Date;

public class BoxComment extends BoxEntity {
    public static final String[] ALL_FIELDS = {"type", BoxEntity.FIELD_ID, FIELD_IS_REPLY_COMMENT, "message", FIELD_TAGGED_MESSAGE, "created_by", "created_at", "item", "modified_at"};
    public static final String FIELD_CREATED_AT = "created_at";
    public static final String FIELD_CREATED_BY = "created_by";
    public static final String FIELD_IS_REPLY_COMMENT = "is_reply_comment";
    public static final String FIELD_ITEM = "item";
    public static final String FIELD_MESSAGE = "message";
    public static final String FIELD_MODIFIED_AT = "modified_at";
    public static final String FIELD_TAGGED_MESSAGE = "tagged_message";
    public static final String TYPE = "comment";
    private static final long serialVersionUID = 8873984774699405343L;

    public BoxComment() {
    }

    public BoxComment(JsonObject jsonObject) {
        super(jsonObject);
    }

    public Date getCreatedAt() {
        return getPropertyAsDate("created_at");
    }

    public BoxUser getCreatedBy() {
        return (BoxUser) getPropertyAsJsonObject(BoxEntity.getBoxJsonObjectCreator(), "created_by");
    }

    public Boolean getIsReplyComment() {
        return getPropertyAsBoolean(FIELD_IS_REPLY_COMMENT);
    }

    public BoxItem getItem() {
        return (BoxItem) getPropertyAsJsonObject(BoxEntity.getBoxJsonObjectCreator(), "item");
    }

    public String getMessage() {
        return getPropertyAsString("message");
    }

    public Date getModifiedAt() {
        return getPropertyAsDate("modified_at");
    }

    public String getTaggedMessage() {
        return getPropertyAsString(FIELD_TAGGED_MESSAGE);
    }
}
