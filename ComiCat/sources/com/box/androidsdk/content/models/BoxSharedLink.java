package com.box.androidsdk.content.models;

import android.text.TextUtils;
import com.eclipsesource.json.JsonObject;
import java.util.Date;
import java.util.Locale;

public class BoxSharedLink extends BoxJsonObject {
    public static final String FIELD_ACCESS = "access";
    public static final String FIELD_DOWNLOAD_COUNT = "download_count";
    public static final String FIELD_DOWNLOAD_URL = "download_url";
    public static final String FIELD_EFFECTIVE_ACCESS = "effective_access";
    public static final String FIELD_IS_PASSWORD_ENABLED = "is_password_enabled";
    public static final String FIELD_PASSWORD = "password";
    public static final String FIELD_PERMISSIONS = "permissions";
    public static final String FIELD_PREVIEW_COUNT = "preview_count";
    public static final String FIELD_UNSHARED_AT = "unshared_at";
    public static final String FIELD_URL = "url";
    public static final String FIELD_VANITY_URL = "vanity_url";
    private static final long serialVersionUID = -4595593930118314932L;

    public enum Access {
        DEFAULT((String) null),
        OPEN("open"),
        COMPANY("company"),
        COLLABORATORS("collaborators");
        
        private final String mValue;

        private Access(String str) {
            this.mValue = str;
        }

        public static Access fromString(String str) {
            if (!TextUtils.isEmpty(str)) {
                for (Access access : values()) {
                    if (str.equalsIgnoreCase(access.toString())) {
                        return access;
                    }
                }
            }
            throw new IllegalArgumentException(String.format(Locale.ENGLISH, "No enum with text %s found", new Object[]{str}));
        }

        public final String toString() {
            return this.mValue;
        }
    }

    public static class Permissions extends BoxJsonObject {
        public static final String FIELD_CAN_DOWNLOAD = "can_download";
        private static final String FIELD_CAN_PREVIEW = "can_preview";

        public Permissions() {
        }

        public Permissions(JsonObject jsonObject) {
            super(jsonObject);
        }

        public Boolean getCanDownload() {
            return getPropertyAsBoolean(FIELD_CAN_DOWNLOAD);
        }
    }

    public BoxSharedLink() {
    }

    public BoxSharedLink(JsonObject jsonObject) {
        super(jsonObject);
    }

    public Access getAccess() {
        return Access.fromString(getPropertyAsString("access"));
    }

    public Long getDownloadCount() {
        return getPropertyAsLong(FIELD_DOWNLOAD_COUNT);
    }

    public String getDownloadURL() {
        return getPropertyAsString(FIELD_DOWNLOAD_URL);
    }

    public Access getEffectiveAccess() {
        return Access.fromString(getPropertyAsString(FIELD_EFFECTIVE_ACCESS));
    }

    public Boolean getIsPasswordEnabled() {
        return getPropertyAsBoolean(FIELD_IS_PASSWORD_ENABLED);
    }

    public String getPassword() {
        return getPropertyAsString(FIELD_PASSWORD);
    }

    public Permissions getPermissions() {
        return (Permissions) getPropertyAsJsonObject(BoxEntity.getBoxJsonObjectCreator(Permissions.class), "permissions");
    }

    public Long getPreviewCount() {
        return getPropertyAsLong(FIELD_PREVIEW_COUNT);
    }

    public String getURL() {
        return getPropertyAsString("url");
    }

    public Date getUnsharedDate() {
        return getPropertyAsDate(FIELD_UNSHARED_AT);
    }

    public String getVanityURL() {
        return getPropertyAsString(FIELD_VANITY_URL);
    }
}
