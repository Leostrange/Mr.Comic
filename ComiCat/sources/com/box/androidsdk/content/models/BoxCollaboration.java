package com.box.androidsdk.content.models;

import android.text.TextUtils;
import com.eclipsesource.json.JsonObject;
import java.util.Date;
import java.util.Locale;

public class BoxCollaboration extends BoxEntity {
    public static final String[] ALL_FIELDS = {"type", BoxEntity.FIELD_ID, "created_by", "created_at", "modified_at", FIELD_EXPIRES_AT, "status", "accessible_by", "role", FIELD_ACKNOWLEDGED_AT, "item"};
    public static final String FIELD_ACCESSIBLE_BY = "accessible_by";
    public static final String FIELD_ACKNOWLEDGED_AT = "acknowledged_at";
    public static final String FIELD_CREATED_AT = "created_at";
    public static final String FIELD_CREATED_BY = "created_by";
    public static final String FIELD_EXPIRES_AT = "expires_at";
    public static final String FIELD_ITEM = "item";
    public static final String FIELD_MODIFIED_AT = "modified_at";
    public static final String FIELD_ROLE = "role";
    public static final String FIELD_STATUS = "status";
    public static final String TYPE = "collaboration";
    private static final long serialVersionUID = 8125965031679671555L;

    public enum Role {
        OWNER("owner"),
        CO_OWNER("co-owner"),
        EDITOR("editor"),
        VIEWER_UPLOADER("viewer uploader"),
        PREVIEWER_UPLOADER("previewer uploader"),
        VIEWER("viewer"),
        PREVIEWER("previewer"),
        UPLOADER("uploader");
        
        private final String mValue;

        private Role(String str) {
            this.mValue = str;
        }

        public static Role fromString(String str) {
            if (!TextUtils.isEmpty(str)) {
                for (Role role : values()) {
                    if (str.equalsIgnoreCase(role.toString())) {
                        return role;
                    }
                }
            }
            throw new IllegalArgumentException(String.format(Locale.ENGLISH, "No enum with text %s found", new Object[]{str}));
        }

        public final String toString() {
            return this.mValue;
        }
    }

    public enum Status {
        ACCEPTED("accepted"),
        PENDING("pending"),
        REJECTED("rejected");
        
        private final String mValue;

        private Status(String str) {
            this.mValue = str;
        }

        public static Status fromString(String str) {
            if (!TextUtils.isEmpty(str)) {
                for (Status status : values()) {
                    if (str.equalsIgnoreCase(status.toString())) {
                        return status;
                    }
                }
            }
            throw new IllegalArgumentException(String.format(Locale.ENGLISH, "No enum with text %s found", new Object[]{str}));
        }

        public final String toString() {
            return this.mValue;
        }
    }

    public BoxCollaboration() {
    }

    public BoxCollaboration(JsonObject jsonObject) {
        super(jsonObject);
    }

    public BoxCollaborator getAccessibleBy() {
        return (BoxCollaborator) getPropertyAsJsonObject(BoxEntity.getBoxJsonObjectCreator(), "accessible_by");
    }

    public Date getAcknowledgedAt() {
        return getPropertyAsDate(FIELD_ACKNOWLEDGED_AT);
    }

    public Date getCreatedAt() {
        return getPropertyAsDate("created_at");
    }

    public BoxCollaborator getCreatedBy() {
        return (BoxCollaborator) getPropertyAsJsonObject(BoxEntity.getBoxJsonObjectCreator(), "created_by");
    }

    public Date getExpiresAt() {
        return getPropertyAsDate(FIELD_EXPIRES_AT);
    }

    public BoxFolder getItem() {
        return (BoxFolder) getPropertyAsJsonObject(BoxEntity.getBoxJsonObjectCreator(), "item");
    }

    public Date getModifiedAt() {
        return getPropertyAsDate("modified_at");
    }

    public Role getRole() {
        return Role.fromString(getPropertyAsString("role"));
    }

    public Status getStatus() {
        return Status.fromString(getPropertyAsString("status"));
    }
}
