// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.box.androidsdk.content.models;

import android.text.TextUtils;
import com.eclipsesource.json.JsonObject;
import java.util.Date;
import java.util.Locale;

// Referenced classes of package com.box.androidsdk.content.models:
//            BoxJsonObject, BoxEntity

public class BoxSharedLink extends BoxJsonObject
{
    public static final class Access extends Enum
    {

        private static final Access $VALUES[];
        public static final Access COLLABORATORS;
        public static final Access COMPANY;
        public static final Access DEFAULT;
        public static final Access OPEN;
        private final String mValue;

        public static Access fromString(String s)
        {
            if (!TextUtils.isEmpty(s))
            {
                Access aaccess[] = values();
                int j = aaccess.length;
                for (int i = 0; i < j; i++)
                {
                    Access access = aaccess[i];
                    if (s.equalsIgnoreCase(access.toString()))
                    {
                        return access;
                    }
                }

            }
            throw new IllegalArgumentException(String.format(Locale.ENGLISH, "No enum with text %s found", new Object[] {
                s
            }));
        }

        public static Access valueOf(String s)
        {
            return (Access)Enum.valueOf(com/box/androidsdk/content/models/BoxSharedLink$Access, s);
        }

        public static Access[] values()
        {
            return (Access[])$VALUES.clone();
        }

        public final String toString()
        {
            return mValue;
        }

        static 
        {
            DEFAULT = new Access("DEFAULT", 0, null);
            OPEN = new Access("OPEN", 1, "open");
            COMPANY = new Access("COMPANY", 2, "company");
            COLLABORATORS = new Access("COLLABORATORS", 3, "collaborators");
            $VALUES = (new Access[] {
                DEFAULT, OPEN, COMPANY, COLLABORATORS
            });
        }

        private Access(String s, int i, String s1)
        {
            super(s, i);
            mValue = s1;
        }
    }

    public static class Permissions extends BoxJsonObject
    {

        public static final String FIELD_CAN_DOWNLOAD = "can_download";
        private static final String FIELD_CAN_PREVIEW = "can_preview";

        public Boolean getCanDownload()
        {
            return getPropertyAsBoolean("can_download");
        }

        public Permissions()
        {
        }

        public Permissions(JsonObject jsonobject)
        {
            super(jsonobject);
        }
    }


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
    private static final long serialVersionUID = 0xc0392bab475b444cL;

    public BoxSharedLink()
    {
    }

    public BoxSharedLink(JsonObject jsonobject)
    {
        super(jsonobject);
    }

    public Access getAccess()
    {
        return Access.fromString(getPropertyAsString("access"));
    }

    public Long getDownloadCount()
    {
        return getPropertyAsLong("download_count");
    }

    public String getDownloadURL()
    {
        return getPropertyAsString("download_url");
    }

    public Access getEffectiveAccess()
    {
        return Access.fromString(getPropertyAsString("effective_access"));
    }

    public Boolean getIsPasswordEnabled()
    {
        return getPropertyAsBoolean("is_password_enabled");
    }

    public String getPassword()
    {
        return getPropertyAsString("password");
    }

    public Permissions getPermissions()
    {
        return (Permissions)getPropertyAsJsonObject(BoxEntity.getBoxJsonObjectCreator(com/box/androidsdk/content/models/BoxSharedLink$Permissions), "permissions");
    }

    public Long getPreviewCount()
    {
        return getPropertyAsLong("preview_count");
    }

    public String getURL()
    {
        return getPropertyAsString("url");
    }

    public Date getUnsharedDate()
    {
        return getPropertyAsDate("unshared_at");
    }

    public String getVanityURL()
    {
        return getPropertyAsString("vanity_url");
    }
}
