package com.box.androidsdk.content.models;

import com.eclipsesource.json.JsonObject;
import java.util.Date;

public class BoxEvent extends BoxEntity {
    public static final String EVENT_TYPE_ADD_LOGIN_ACTIVITY_DEVICE = "ADD_LOGIN_ACTIVITY_DEVICE";
    public static final String EVENT_TYPE_COLLAB_ADD_COLLABORATOR = "COLLAB_ADD_COLLABORATOR";
    public static final String EVENT_TYPE_COLLAB_INVITE_COLLABORATOR = "COLLAB_INVITE_COLLABORATOR";
    public static final String EVENT_TYPE_COMMENT_CREATE = "COMMENT_CREATE";
    public static final String EVENT_TYPE_ITEM_COPY = "ITEM_COPY";
    public static final String EVENT_TYPE_ITEM_CREATE = "ITEM_CREATE";
    public static final String EVENT_TYPE_ITEM_DOWNLOAD = "ITEM_DOWNLOAD";
    public static final String EVENT_TYPE_ITEM_MOVE = "ITEM_MOVE";
    public static final String EVENT_TYPE_ITEM_PREVIEW = "ITEM_PREVIEW";
    public static final String EVENT_TYPE_ITEM_RENAME = "ITEM_RENAME";
    public static final String EVENT_TYPE_ITEM_SHARED = "ITEM_SHARED";
    public static final String EVENT_TYPE_ITEM_SHARED_CREATE = "ITEM_SHARED_CREATE";
    public static final String EVENT_TYPE_ITEM_SHARED_UNSHARE = "ITEM_SHARED_UNSHARE";
    public static final String EVENT_TYPE_ITEM_SYNC = "ITEM_SYNC";
    public static final String EVENT_TYPE_ITEM_TRASH = "ITEM_TRASH";
    public static final String EVENT_TYPE_ITEM_UNDELETE_VIA_TRASH = "ITEM_UNDELETE_VIA_TRASH";
    public static final String EVENT_TYPE_ITEM_UNSYNC = "ITEM_UNSYNC";
    public static final String EVENT_TYPE_ITEM_UPLOAD = "ITEM_UPLOAD";
    public static final String EVENT_TYPE_LOCK_CREATE = "LOCK_CREATE";
    public static final String EVENT_TYPE_LOCK_DESTROY = "LOCK_DESTROY";
    public static final String EVENT_TYPE_TAG_ITEM_CREATE = "TAG_ITEM_CREATE";
    public static final String EVENT_TYPE_TASK_ASSIGNMENT_CREATE = "TASK_ASSIGNMENT_CREATE";
    public static final String FIELD_CREATED_AT = "created_at";
    public static final String FIELD_CREATED_BY = "created_by";
    public static final String FIELD_EVENT_ID = "event_id";
    public static final String FIELD_EVENT_TYPE = "event_type";
    public static final String FIELD_IS_PACKAGE = "is_package";
    public static final String FIELD_RECORDED_AT = "recorded_at";
    public static final String FIELD_SESSION_ID = "session_id";
    public static final String FIELD_SOURCE = "source";
    public static final String FIELD_TYPE = "type";
    public static final String TYPE = "event";
    private static final long serialVersionUID = -2242620054949669032L;

    public enum Type {
        ITEM_CREATE,
        ITEM_UPLOAD,
        COMMENT_CREATE,
        ITEM_DOWNLOAD,
        ITEM_PREVIEW,
        ITEM_MOVE,
        ITEM_COPY,
        TASK_ASSIGNMENT_CREATE,
        LOCK_CREATE,
        LOCK_DESTROY,
        ITEM_TRASH,
        ITEM_UNDELETE_VIA_TRASH,
        COLLAB_ADD_COLLABORATOR,
        COLLAB_REMOVE_COLLABORATOR,
        COLLAB_INVITE_COLLABORATOR,
        COLLAB_ROLE_CHANGE,
        ITEM_SYNC,
        ITEM_UNSYNC,
        ITEM_RENAME,
        ITEM_SHARED_CREATE,
        ITEM_SHARED_UNSHARE,
        ITEM_SHARED,
        TAG_ITEM_CREATE,
        ADD_LOGIN_ACTIVITY_DEVICE,
        REMOVE_LOGIN_ACTIVITY_DEVICE,
        CHANGE_ADMIN_ROLE
    }

    public BoxEvent() {
    }

    public BoxEvent(JsonObject jsonObject) {
        super(jsonObject);
    }

    public Date getCreatedAt() {
        return getPropertyAsDate("created_at");
    }

    public BoxCollaborator getCreatedBy() {
        return (BoxCollaborator) getPropertyAsJsonObject(BoxEntity.getBoxJsonObjectCreator(), "created_by");
    }

    public String getEventId() {
        return getPropertyAsString(FIELD_EVENT_ID);
    }

    public String getEventType() {
        return getPropertyAsString(FIELD_EVENT_TYPE);
    }

    public Boolean getIsPackage() {
        return getPropertyAsBoolean("is_package");
    }

    public Date getRecordedAt() {
        return getPropertyAsDate(FIELD_RECORDED_AT);
    }

    public String getSessionId() {
        return getPropertyAsString(FIELD_SESSION_ID);
    }

    public BoxEntity getSource() {
        return (BoxEntity) getPropertyAsJsonObject(BoxEntity.getBoxJsonObjectCreator(), FIELD_SOURCE);
    }

    public String getType() {
        return getPropertyAsString("type");
    }
}
