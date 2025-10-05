package com.box.androidsdk.content.models;

import android.text.TextUtils;
import com.box.androidsdk.content.models.BoxCollaboration;
import com.box.androidsdk.content.models.BoxSharedLink;
import com.eclipsesource.json.JsonObject;
import java.util.ArrayList;
import java.util.Date;
import java.util.Iterator;
import java.util.Locale;

public class BoxFolder extends BoxItem {
    public static final String[] ALL_FIELDS = {"type", "sha1", BoxEntity.FIELD_ID, BoxItem.FIELD_SEQUENCE_ID, BoxItem.FIELD_ETAG, "name", "created_at", "modified_at", BoxItem.FIELD_DESCRIPTION, "size", BoxItem.FIELD_PATH_COLLECTION, "created_by", "modified_by", BoxItem.FIELD_TRASHED_AT, BoxItem.FIELD_PURGED_AT, "content_created_at", "content_modified_at", BoxItem.FIELD_OWNED_BY, BoxItem.FIELD_SHARED_LINK, FIELD_FOLDER_UPLOAD_EMAIL, "parent", BoxItem.FIELD_ITEM_STATUS, FIELD_ITEM_COLLECTION, FIELD_SYNC_STATE, FIELD_HAS_COLLABORATIONS, "permissions", FIELD_CAN_NON_OWNERS_INVITE, FIELD_IS_EXTERNALLY_OWNED, FIELD_ALLOWED_INVITEE_ROLES, BoxItem.FIELD_COLLECTIONS};
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
    private static final long serialVersionUID = 8020073615785970254L;
    private transient ArrayList<BoxSharedLink.Access> mCachedAccessLevels;
    private transient ArrayList<BoxCollaboration.Role> mCachedAllowedInviteeRoles;

    public enum SyncState {
        SYNCED(BoxItem.FIELD_SYNCED),
        NOT_SYNCED("not_synced"),
        PARTIALLY_SYNCED("partially_synced");
        
        private final String mValue;

        private SyncState(String str) {
            this.mValue = str;
        }

        public static SyncState fromString(String str) {
            if (!TextUtils.isEmpty(str)) {
                for (SyncState syncState : values()) {
                    if (str.equalsIgnoreCase(syncState.toString())) {
                        return syncState;
                    }
                }
            }
            throw new IllegalArgumentException(String.format(Locale.ENGLISH, "No enum with text %s found", new Object[]{str}));
        }

        public final String toString() {
            return this.mValue;
        }
    }

    public BoxFolder() {
    }

    public BoxFolder(JsonObject jsonObject) {
        super(jsonObject);
    }

    public static BoxFolder createFromId(String str) {
        return createFromIdAndName(str, (String) null);
    }

    public static BoxFolder createFromIdAndName(String str, String str2) {
        JsonObject jsonObject = new JsonObject();
        jsonObject.add(BoxEntity.FIELD_ID, str);
        jsonObject.add("type", TYPE);
        if (!TextUtils.isEmpty(str2)) {
            jsonObject.add("name", str2);
        }
        return new BoxFolder(jsonObject);
    }

    public ArrayList<BoxCollaboration.Role> getAllowedInviteeRoles() {
        if (this.mCachedAllowedInviteeRoles != null) {
            return this.mCachedAllowedInviteeRoles;
        }
        ArrayList<String> propertyAsStringArray = getPropertyAsStringArray(FIELD_ALLOWED_INVITEE_ROLES);
        if (propertyAsStringArray == null) {
            return null;
        }
        this.mCachedAllowedInviteeRoles = new ArrayList<>(propertyAsStringArray.size());
        Iterator<String> it = propertyAsStringArray.iterator();
        while (it.hasNext()) {
            this.mCachedAllowedInviteeRoles.add(BoxCollaboration.Role.fromString(it.next()));
        }
        return this.mCachedAllowedInviteeRoles;
    }

    public ArrayList<BoxSharedLink.Access> getAllowedSharedLinkAccessLevels() {
        if (this.mCachedAccessLevels != null) {
            return this.mCachedAccessLevels;
        }
        ArrayList<String> propertyAsStringArray = getPropertyAsStringArray(BoxItem.FIELD_ALLOWED_SHARED_LINK_ACCESS_LEVELS);
        if (propertyAsStringArray == null) {
            return null;
        }
        this.mCachedAccessLevels = new ArrayList<>(propertyAsStringArray.size());
        Iterator<String> it = propertyAsStringArray.iterator();
        while (it.hasNext()) {
            this.mCachedAccessLevels.add(BoxSharedLink.Access.fromString(it.next()));
        }
        return this.mCachedAccessLevels;
    }

    public Boolean getCanNonOwnersInvite() {
        return getPropertyAsBoolean(FIELD_CAN_NON_OWNERS_INVITE);
    }

    public Date getContentCreatedAt() {
        return super.getContentCreatedAt();
    }

    public Date getContentModifiedAt() {
        return super.getContentModifiedAt();
    }

    public Boolean getHasCollaborations() {
        return getPropertyAsBoolean(FIELD_HAS_COLLABORATIONS);
    }

    public Boolean getIsExternallyOwned() {
        return getPropertyAsBoolean(FIELD_IS_EXTERNALLY_OWNED);
    }

    public BoxIteratorItems getItemCollection() {
        return (BoxIteratorItems) getPropertyAsJsonObject(BoxJsonObject.getBoxJsonObjectCreator(BoxIteratorItems.class), FIELD_ITEM_COLLECTION);
    }

    public Long getSize() {
        return super.getSize();
    }

    public SyncState getSyncState() {
        return SyncState.fromString(getPropertyAsString(FIELD_SYNC_STATE));
    }

    public BoxUploadEmail getUploadEmail() {
        return (BoxUploadEmail) getPropertyAsJsonObject(BoxEntity.getBoxJsonObjectCreator(BoxUploadEmail.class), FIELD_FOLDER_UPLOAD_EMAIL);
    }
}
