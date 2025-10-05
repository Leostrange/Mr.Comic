package com.box.androidsdk.content.models;

import android.text.TextUtils;
import com.eclipsesource.json.JsonObject;
import java.util.List;
import java.util.Locale;

public class BoxUser extends BoxCollaborator {
    public static final String[] ALL_FIELDS = {"type", BoxEntity.FIELD_ID, "name", FIELD_LOGIN, "created_at", "modified_at", "role", FIELD_LANGUAGE, FIELD_TIMEZONE, FIELD_SPACE_AMOUNT, FIELD_SPACE_USED, FIELD_MAX_UPLOAD_SIZE, FIELD_TRACKING_CODES, FIELD_CAN_SEE_MANAGED_USERS, FIELD_IS_SYNC_ENABLED, FIELD_IS_EXTERNAL_COLLAB_RESTRICTED, "status", FIELD_JOB_TITLE, FIELD_PHONE, FIELD_ADDRESS, FIELD_AVATAR_URL, FIELD_IS_EXEMPT_FROM_DEVICE_LIMITS, FIELD_IS_EXEMPT_FROM_LOGIN_VERIFICATION, "enterprise", FIELD_HOSTNAME, FIELD_MY_TAGS};
    public static final String FIELD_ADDRESS = "address";
    public static final String FIELD_AVATAR_URL = "avatar_url";
    public static final String FIELD_CAN_SEE_MANAGED_USERS = "can_see_managed_users";
    public static final String FIELD_ENTERPRISE = "enterprise";
    public static final String FIELD_HOSTNAME = "hostname";
    public static final String FIELD_IS_EXEMPT_FROM_DEVICE_LIMITS = "is_exempt_from_device_limits";
    public static final String FIELD_IS_EXEMPT_FROM_LOGIN_VERIFICATION = "is_exempt_from_login_verification";
    public static final String FIELD_IS_EXTERNAL_COLLAB_RESTRICTED = "is_external_collab_restricted";
    public static final String FIELD_IS_SYNC_ENABLED = "is_sync_enabled";
    public static final String FIELD_JOB_TITLE = "job_title";
    public static final String FIELD_LANGUAGE = "language";
    public static final String FIELD_LOGIN = "login";
    public static final String FIELD_MAX_UPLOAD_SIZE = "max_upload_size";
    public static final String FIELD_MY_TAGS = "my_tags";
    public static final String FIELD_PHONE = "phone";
    public static final String FIELD_ROLE = "role";
    public static final String FIELD_SPACE_AMOUNT = "space_amount";
    public static final String FIELD_SPACE_USED = "space_used";
    public static final String FIELD_STATUS = "status";
    public static final String FIELD_TIMEZONE = "timezone";
    public static final String FIELD_TRACKING_CODES = "tracking_codes";
    public static final String TYPE = "user";
    private static final long serialVersionUID = -9176113409457879123L;

    public enum Role {
        ADMIN("admin"),
        COADMIN("coadmin"),
        USER("user");
        
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
        ACTIVE("active"),
        INACTIVE("inactive"),
        CANNOT_DELETE_EDIT("cannot_delete_edit"),
        CANNOT_DELETE_EDIT_UPLOAD("cannot_delete_edit_upload");
        
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

    public BoxUser() {
    }

    public BoxUser(JsonObject jsonObject) {
        super(jsonObject);
    }

    public static BoxUser createFromId(String str) {
        JsonObject jsonObject = new JsonObject();
        jsonObject.add(BoxEntity.FIELD_ID, str);
        jsonObject.add("type", "user");
        BoxUser boxUser = new BoxUser();
        boxUser.createFromJson(jsonObject);
        return boxUser;
    }

    public String getAddress() {
        return getPropertyAsString(FIELD_ADDRESS);
    }

    public String getAvatarURL() {
        return getPropertyAsString(FIELD_AVATAR_URL);
    }

    public Boolean getCanSeeManagedUsers() {
        return getPropertyAsBoolean(FIELD_CAN_SEE_MANAGED_USERS);
    }

    public BoxEnterprise getEnterprise() {
        return (BoxEnterprise) getPropertyAsJsonObject(BoxJsonObject.getBoxJsonObjectCreator(BoxEnterprise.class), "enterprise");
    }

    public String getHostname() {
        return getPropertyAsString(FIELD_HOSTNAME);
    }

    public Boolean getIsExemptFromDeviceLimits() {
        return getPropertyAsBoolean(FIELD_IS_EXEMPT_FROM_DEVICE_LIMITS);
    }

    public Boolean getIsExemptFromLoginVerification() {
        return getPropertyAsBoolean(FIELD_IS_EXEMPT_FROM_LOGIN_VERIFICATION);
    }

    public Boolean getIsExternalCollabRestricted() {
        return getPropertyAsBoolean(FIELD_IS_EXTERNAL_COLLAB_RESTRICTED);
    }

    public Boolean getIsSyncEnabled() {
        return getPropertyAsBoolean(FIELD_IS_SYNC_ENABLED);
    }

    public String getJobTitle() {
        return getPropertyAsString(FIELD_JOB_TITLE);
    }

    public String getLanguage() {
        return getPropertyAsString(FIELD_LANGUAGE);
    }

    public String getLogin() {
        return getPropertyAsString(FIELD_LOGIN);
    }

    public Long getMaxUploadSize() {
        return getPropertyAsLong(FIELD_MAX_UPLOAD_SIZE);
    }

    public List<String> getMyTags() {
        return getPropertyAsStringArray(FIELD_MY_TAGS);
    }

    public String getPhone() {
        return getPropertyAsString(FIELD_PHONE);
    }

    public Role getRole() {
        return Role.fromString(getPropertyAsString("role"));
    }

    public Long getSpaceAmount() {
        return getPropertyAsLong(FIELD_SPACE_AMOUNT);
    }

    public Long getSpaceUsed() {
        return getPropertyAsLong(FIELD_SPACE_USED);
    }

    public Status getStatus() {
        return Status.fromString(getPropertyAsString("status"));
    }

    public String getTimezone() {
        return getPropertyAsString(FIELD_TIMEZONE);
    }

    public List<String> getTrackingCodes() {
        return getPropertyAsStringArray(FIELD_TRACKING_CODES);
    }
}
