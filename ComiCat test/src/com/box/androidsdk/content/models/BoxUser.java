// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.box.androidsdk.content.models;

import android.text.TextUtils;
import com.eclipsesource.json.JsonObject;
import java.util.List;
import java.util.Locale;

// Referenced classes of package com.box.androidsdk.content.models:
//            BoxCollaborator, BoxEnterprise, BoxJsonObject

public class BoxUser extends BoxCollaborator
{
    public static final class Role extends Enum
    {

        private static final Role $VALUES[];
        public static final Role ADMIN;
        public static final Role COADMIN;
        public static final Role USER;
        private final String mValue;

        public static Role fromString(String s)
        {
            if (!TextUtils.isEmpty(s))
            {
                Role arole[] = values();
                int j = arole.length;
                for (int i = 0; i < j; i++)
                {
                    Role role = arole[i];
                    if (s.equalsIgnoreCase(role.toString()))
                    {
                        return role;
                    }
                }

            }
            throw new IllegalArgumentException(String.format(Locale.ENGLISH, "No enum with text %s found", new Object[] {
                s
            }));
        }

        public static Role valueOf(String s)
        {
            return (Role)Enum.valueOf(com/box/androidsdk/content/models/BoxUser$Role, s);
        }

        public static Role[] values()
        {
            return (Role[])$VALUES.clone();
        }

        public final String toString()
        {
            return mValue;
        }

        static 
        {
            ADMIN = new Role("ADMIN", 0, "admin");
            COADMIN = new Role("COADMIN", 1, "coadmin");
            USER = new Role("USER", 2, "user");
            $VALUES = (new Role[] {
                ADMIN, COADMIN, USER
            });
        }

        private Role(String s, int i, String s1)
        {
            super(s, i);
            mValue = s1;
        }
    }

    public static final class Status extends Enum
    {

        private static final Status $VALUES[];
        public static final Status ACTIVE;
        public static final Status CANNOT_DELETE_EDIT;
        public static final Status CANNOT_DELETE_EDIT_UPLOAD;
        public static final Status INACTIVE;
        private final String mValue;

        public static Status fromString(String s)
        {
            if (!TextUtils.isEmpty(s))
            {
                Status astatus[] = values();
                int j = astatus.length;
                for (int i = 0; i < j; i++)
                {
                    Status status = astatus[i];
                    if (s.equalsIgnoreCase(status.toString()))
                    {
                        return status;
                    }
                }

            }
            throw new IllegalArgumentException(String.format(Locale.ENGLISH, "No enum with text %s found", new Object[] {
                s
            }));
        }

        public static Status valueOf(String s)
        {
            return (Status)Enum.valueOf(com/box/androidsdk/content/models/BoxUser$Status, s);
        }

        public static Status[] values()
        {
            return (Status[])$VALUES.clone();
        }

        public final String toString()
        {
            return mValue;
        }

        static 
        {
            ACTIVE = new Status("ACTIVE", 0, "active");
            INACTIVE = new Status("INACTIVE", 1, "inactive");
            CANNOT_DELETE_EDIT = new Status("CANNOT_DELETE_EDIT", 2, "cannot_delete_edit");
            CANNOT_DELETE_EDIT_UPLOAD = new Status("CANNOT_DELETE_EDIT_UPLOAD", 3, "cannot_delete_edit_upload");
            $VALUES = (new Status[] {
                ACTIVE, INACTIVE, CANNOT_DELETE_EDIT, CANNOT_DELETE_EDIT_UPLOAD
            });
        }

        private Status(String s, int i, String s1)
        {
            super(s, i);
            mValue = s1;
        }
    }


    public static final String ALL_FIELDS[] = {
        "type", "id", "name", "login", "created_at", "modified_at", "role", "language", "timezone", "space_amount", 
        "space_used", "max_upload_size", "tracking_codes", "can_see_managed_users", "is_sync_enabled", "is_external_collab_restricted", "status", "job_title", "phone", "address", 
        "avatar_url", "is_exempt_from_device_limits", "is_exempt_from_login_verification", "enterprise", "hostname", "my_tags"
    };
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
    private static final long serialVersionUID = 0x80a7e578a29087adL;

    public BoxUser()
    {
    }

    public BoxUser(JsonObject jsonobject)
    {
        super(jsonobject);
    }

    public static BoxUser createFromId(String s)
    {
        JsonObject jsonobject = new JsonObject();
        jsonobject.add("id", s);
        jsonobject.add("type", "user");
        s = new BoxUser();
        s.createFromJson(jsonobject);
        return s;
    }

    public String getAddress()
    {
        return getPropertyAsString("address");
    }

    public String getAvatarURL()
    {
        return getPropertyAsString("avatar_url");
    }

    public Boolean getCanSeeManagedUsers()
    {
        return getPropertyAsBoolean("can_see_managed_users");
    }

    public BoxEnterprise getEnterprise()
    {
        return (BoxEnterprise)getPropertyAsJsonObject(BoxJsonObject.getBoxJsonObjectCreator(com/box/androidsdk/content/models/BoxEnterprise), "enterprise");
    }

    public String getHostname()
    {
        return getPropertyAsString("hostname");
    }

    public Boolean getIsExemptFromDeviceLimits()
    {
        return getPropertyAsBoolean("is_exempt_from_device_limits");
    }

    public Boolean getIsExemptFromLoginVerification()
    {
        return getPropertyAsBoolean("is_exempt_from_login_verification");
    }

    public Boolean getIsExternalCollabRestricted()
    {
        return getPropertyAsBoolean("is_external_collab_restricted");
    }

    public Boolean getIsSyncEnabled()
    {
        return getPropertyAsBoolean("is_sync_enabled");
    }

    public String getJobTitle()
    {
        return getPropertyAsString("job_title");
    }

    public String getLanguage()
    {
        return getPropertyAsString("language");
    }

    public String getLogin()
    {
        return getPropertyAsString("login");
    }

    public Long getMaxUploadSize()
    {
        return getPropertyAsLong("max_upload_size");
    }

    public List getMyTags()
    {
        return getPropertyAsStringArray("my_tags");
    }

    public String getPhone()
    {
        return getPropertyAsString("phone");
    }

    public Role getRole()
    {
        return Role.fromString(getPropertyAsString("role"));
    }

    public Long getSpaceAmount()
    {
        return getPropertyAsLong("space_amount");
    }

    public Long getSpaceUsed()
    {
        return getPropertyAsLong("space_used");
    }

    public Status getStatus()
    {
        return Status.fromString(getPropertyAsString("status"));
    }

    public String getTimezone()
    {
        return getPropertyAsString("timezone");
    }

    public List getTrackingCodes()
    {
        return getPropertyAsStringArray("tracking_codes");
    }

}
