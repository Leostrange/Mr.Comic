package com.box.androidsdk.content.models;

import android.text.TextUtils;
import com.eclipsesource.json.JsonObject;
import com.eclipsesource.json.JsonValue;
import java.util.Locale;

public class BoxUploadEmail extends BoxJsonObject {
    public static final String FIELD_ACCESS = "access";
    public static final String FIELD_EMAIL = "email";
    private static final long serialVersionUID = -1707312180661448119L;

    public enum Access {
        OPEN("open"),
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

    public BoxUploadEmail() {
    }

    public BoxUploadEmail(JsonObject jsonObject) {
        super(jsonObject);
    }

    public static BoxUploadEmail createFromAccess(Access access) {
        JsonObject jsonObject = new JsonObject();
        if (access == null) {
            jsonObject.add("access", JsonValue.NULL);
        } else {
            jsonObject.add("access", access.toString());
        }
        return new BoxUploadEmail(jsonObject);
    }

    public Access getAccess() {
        return Access.fromString(getPropertyAsString("access"));
    }
}
