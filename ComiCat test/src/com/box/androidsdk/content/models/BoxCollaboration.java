// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.box.androidsdk.content.models;

import android.text.TextUtils;
import com.eclipsesource.json.JsonObject;
import java.util.Date;
import java.util.Locale;

// Referenced classes of package com.box.androidsdk.content.models:
//            BoxEntity, BoxCollaborator, BoxFolder

public class BoxCollaboration extends BoxEntity
{
    public static final class Role extends Enum
    {

        private static final Role $VALUES[];
        public static final Role CO_OWNER;
        public static final Role EDITOR;
        public static final Role OWNER;
        public static final Role PREVIEWER;
        public static final Role PREVIEWER_UPLOADER;
        public static final Role UPLOADER;
        public static final Role VIEWER;
        public static final Role VIEWER_UPLOADER;
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
            return (Role)Enum.valueOf(com/box/androidsdk/content/models/BoxCollaboration$Role, s);
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
            OWNER = new Role("OWNER", 0, "owner");
            CO_OWNER = new Role("CO_OWNER", 1, "co-owner");
            EDITOR = new Role("EDITOR", 2, "editor");
            VIEWER_UPLOADER = new Role("VIEWER_UPLOADER", 3, "viewer uploader");
            PREVIEWER_UPLOADER = new Role("PREVIEWER_UPLOADER", 4, "previewer uploader");
            VIEWER = new Role("VIEWER", 5, "viewer");
            PREVIEWER = new Role("PREVIEWER", 6, "previewer");
            UPLOADER = new Role("UPLOADER", 7, "uploader");
            $VALUES = (new Role[] {
                OWNER, CO_OWNER, EDITOR, VIEWER_UPLOADER, PREVIEWER_UPLOADER, VIEWER, PREVIEWER, UPLOADER
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
        public static final Status ACCEPTED;
        public static final Status PENDING;
        public static final Status REJECTED;
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
            return (Status)Enum.valueOf(com/box/androidsdk/content/models/BoxCollaboration$Status, s);
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
            ACCEPTED = new Status("ACCEPTED", 0, "accepted");
            PENDING = new Status("PENDING", 1, "pending");
            REJECTED = new Status("REJECTED", 2, "rejected");
            $VALUES = (new Status[] {
                ACCEPTED, PENDING, REJECTED
            });
        }

        private Status(String s, int i, String s1)
        {
            super(s, i);
            mValue = s1;
        }
    }


    public static final String ALL_FIELDS[] = {
        "type", "id", "created_by", "created_at", "modified_at", "expires_at", "status", "accessible_by", "role", "acknowledged_at", 
        "item"
    };
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
    private static final long serialVersionUID = 0x70c53a24a2833d03L;

    public BoxCollaboration()
    {
    }

    public BoxCollaboration(JsonObject jsonobject)
    {
        super(jsonobject);
    }

    public BoxCollaborator getAccessibleBy()
    {
        return (BoxCollaborator)getPropertyAsJsonObject(BoxEntity.getBoxJsonObjectCreator(), "accessible_by");
    }

    public Date getAcknowledgedAt()
    {
        return getPropertyAsDate("acknowledged_at");
    }

    public Date getCreatedAt()
    {
        return getPropertyAsDate("created_at");
    }

    public BoxCollaborator getCreatedBy()
    {
        return (BoxCollaborator)getPropertyAsJsonObject(BoxEntity.getBoxJsonObjectCreator(), "created_by");
    }

    public Date getExpiresAt()
    {
        return getPropertyAsDate("expires_at");
    }

    public BoxFolder getItem()
    {
        return (BoxFolder)getPropertyAsJsonObject(BoxEntity.getBoxJsonObjectCreator(), "item");
    }

    public Date getModifiedAt()
    {
        return getPropertyAsDate("modified_at");
    }

    public Role getRole()
    {
        return Role.fromString(getPropertyAsString("role"));
    }

    public Status getStatus()
    {
        return Status.fromString(getPropertyAsString("status"));
    }

}
