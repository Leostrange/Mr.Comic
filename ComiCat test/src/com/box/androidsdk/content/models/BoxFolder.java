// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.box.androidsdk.content.models;

import android.text.TextUtils;
import com.eclipsesource.json.JsonObject;
import java.util.ArrayList;
import java.util.Date;
import java.util.Iterator;
import java.util.Locale;

// Referenced classes of package com.box.androidsdk.content.models:
//            BoxItem, BoxIteratorItems, BoxJsonObject, BoxUploadEmail, 
//            BoxEntity

public class BoxFolder extends BoxItem
{
    public static final class SyncState extends Enum
    {

        private static final SyncState $VALUES[];
        public static final SyncState NOT_SYNCED;
        public static final SyncState PARTIALLY_SYNCED;
        public static final SyncState SYNCED;
        private final String mValue;

        public static SyncState fromString(String s)
        {
            if (!TextUtils.isEmpty(s))
            {
                SyncState asyncstate[] = values();
                int j = asyncstate.length;
                for (int i = 0; i < j; i++)
                {
                    SyncState syncstate = asyncstate[i];
                    if (s.equalsIgnoreCase(syncstate.toString()))
                    {
                        return syncstate;
                    }
                }

            }
            throw new IllegalArgumentException(String.format(Locale.ENGLISH, "No enum with text %s found", new Object[] {
                s
            }));
        }

        public static SyncState valueOf(String s)
        {
            return (SyncState)Enum.valueOf(com/box/androidsdk/content/models/BoxFolder$SyncState, s);
        }

        public static SyncState[] values()
        {
            return (SyncState[])$VALUES.clone();
        }

        public final String toString()
        {
            return mValue;
        }

        static 
        {
            SYNCED = new SyncState("SYNCED", 0, "synced");
            NOT_SYNCED = new SyncState("NOT_SYNCED", 1, "not_synced");
            PARTIALLY_SYNCED = new SyncState("PARTIALLY_SYNCED", 2, "partially_synced");
            $VALUES = (new SyncState[] {
                SYNCED, NOT_SYNCED, PARTIALLY_SYNCED
            });
        }

        private SyncState(String s, int i, String s1)
        {
            super(s, i);
            mValue = s1;
        }
    }


    public static final String ALL_FIELDS[] = {
        "type", "sha1", "id", "sequence_id", "etag", "name", "created_at", "modified_at", "description", "size", 
        "path_collection", "created_by", "modified_by", "trashed_at", "purged_at", "content_created_at", "content_modified_at", "owned_by", "shared_link", "folder_upload_email", 
        "parent", "item_status", "item_collection", "sync_state", "has_collaborations", "permissions", "can_non_owners_invite", "is_externally_owned", "allowed_invitee_roles", "collections"
    };
    public static final String FIELD_ALLOWED_INVITEE_ROLES = "allowed_invitee_roles";
    public static final String FIELD_CAN_NON_OWNERS_INVITE = "can_non_owners_invite";
    public static final String FIELD_CONTENT_CREATED_AT = "content_created_at";
    public static final String FIELD_CONTENT_MODIFIED_AT = "content_modified_at";
    public static final String FIELD_FOLDER_UPLOAD_EMAIL = "folder_upload_email";
    public static final String FIELD_HAS_COLLABORATIONS = "has_collaborations";
    public static final String FIELD_IS_EXTERNALLY_OWNED = "is_externally_owned";
    public static final String FIELD_ITEM_COLLECTION = "item_collection";
    public static final String FIELD_SHA1 = "sha1";
    public static final String FIELD_SIZE = "size";
    public static final String FIELD_SYNC_STATE = "sync_state";
    public static final String TYPE = "folder";
    private static final long serialVersionUID = 0x6f4d06761d67ca4eL;
    private transient ArrayList mCachedAccessLevels;
    private transient ArrayList mCachedAllowedInviteeRoles;

    public BoxFolder()
    {
    }

    public BoxFolder(JsonObject jsonobject)
    {
        super(jsonobject);
    }

    public static BoxFolder createFromId(String s)
    {
        return createFromIdAndName(s, null);
    }

    public static BoxFolder createFromIdAndName(String s, String s1)
    {
        JsonObject jsonobject = new JsonObject();
        jsonobject.add("id", s);
        jsonobject.add("type", "folder");
        if (!TextUtils.isEmpty(s1))
        {
            jsonobject.add("name", s1);
        }
        return new BoxFolder(jsonobject);
    }

    public ArrayList getAllowedInviteeRoles()
    {
        if (mCachedAllowedInviteeRoles != null)
        {
            return mCachedAllowedInviteeRoles;
        }
        Object obj = getPropertyAsStringArray("allowed_invitee_roles");
        if (obj == null)
        {
            return null;
        }
        mCachedAllowedInviteeRoles = new ArrayList(((ArrayList) (obj)).size());
        String s;
        for (obj = ((ArrayList) (obj)).iterator(); ((Iterator) (obj)).hasNext(); mCachedAllowedInviteeRoles.add(BoxCollaboration.Role.fromString(s)))
        {
            s = (String)((Iterator) (obj)).next();
        }

        return mCachedAllowedInviteeRoles;
    }

    public ArrayList getAllowedSharedLinkAccessLevels()
    {
        if (mCachedAccessLevels != null)
        {
            return mCachedAccessLevels;
        }
        Object obj = getPropertyAsStringArray("allowed_shared_link_access_levels");
        if (obj == null)
        {
            return null;
        }
        mCachedAccessLevels = new ArrayList(((ArrayList) (obj)).size());
        String s;
        for (obj = ((ArrayList) (obj)).iterator(); ((Iterator) (obj)).hasNext(); mCachedAccessLevels.add(BoxSharedLink.Access.fromString(s)))
        {
            s = (String)((Iterator) (obj)).next();
        }

        return mCachedAccessLevels;
    }

    public Boolean getCanNonOwnersInvite()
    {
        return getPropertyAsBoolean("can_non_owners_invite");
    }

    public Date getContentCreatedAt()
    {
        return super.getContentCreatedAt();
    }

    public Date getContentModifiedAt()
    {
        return super.getContentModifiedAt();
    }

    public Boolean getHasCollaborations()
    {
        return getPropertyAsBoolean("has_collaborations");
    }

    public Boolean getIsExternallyOwned()
    {
        return getPropertyAsBoolean("is_externally_owned");
    }

    public BoxIteratorItems getItemCollection()
    {
        return (BoxIteratorItems)getPropertyAsJsonObject(BoxJsonObject.getBoxJsonObjectCreator(com/box/androidsdk/content/models/BoxIteratorItems), "item_collection");
    }

    public Long getSize()
    {
        return super.getSize();
    }

    public SyncState getSyncState()
    {
        return SyncState.fromString(getPropertyAsString("sync_state"));
    }

    public BoxUploadEmail getUploadEmail()
    {
        return (BoxUploadEmail)getPropertyAsJsonObject(BoxEntity.getBoxJsonObjectCreator(com/box/androidsdk/content/models/BoxUploadEmail), "folder_upload_email");
    }

}
