package com.box.androidsdk.content.requests;

import com.box.androidsdk.content.models.BoxItem;
import com.box.androidsdk.content.models.BoxSession;
import com.box.androidsdk.content.models.BoxSharedLink;
import com.box.androidsdk.content.requests.BoxRequest;
import com.box.androidsdk.content.utils.BoxDateFormat;
import com.box.androidsdk.content.utils.SdkUtils;
import com.eclipsesource.json.JsonObject;
import com.eclipsesource.json.JsonValue;
import java.util.Date;

public abstract class BoxRequestUpdateSharedItem<E extends BoxItem, R extends BoxRequest<E, R>> extends BoxRequestItemUpdate<E, R> {
    protected BoxRequestUpdateSharedItem(BoxRequestItemUpdate boxRequestItemUpdate) {
        super(boxRequestItemUpdate);
    }

    public BoxRequestUpdateSharedItem(Class<E> cls, String str, String str2, BoxSession boxSession) {
        super(cls, str, str2, boxSession);
        this.mRequestMethod = BoxRequest.Methods.PUT;
    }

    private JsonObject getPermissionsJsonObject() {
        return this.mBodyMap.containsKey("permissions") ? ((BoxSharedLink.Permissions) this.mBodyMap.get("permissions")).toJsonObject() : new JsonObject();
    }

    private JsonObject getSharedLinkJsonObject() {
        return this.mBodyMap.containsKey(BoxItem.FIELD_SHARED_LINK) ? ((BoxSharedLink) this.mBodyMap.get(BoxItem.FIELD_SHARED_LINK)).toJsonObject() : new JsonObject();
    }

    public BoxSharedLink.Access getAccess() {
        if (this.mBodyMap.containsKey(BoxItem.FIELD_SHARED_LINK)) {
            return ((BoxSharedLink) this.mBodyMap.get(BoxItem.FIELD_SHARED_LINK)).getAccess();
        }
        return null;
    }

    /* access modifiers changed from: protected */
    public Boolean getCanDownload() {
        if (this.mBodyMap.containsKey(BoxItem.FIELD_SHARED_LINK)) {
            return ((BoxSharedLink) this.mBodyMap.get(BoxItem.FIELD_SHARED_LINK)).getPermissions().getCanDownload();
        }
        return null;
    }

    public String getPassword() {
        if (this.mBodyMap.containsKey(BoxItem.FIELD_SHARED_LINK)) {
            return ((BoxSharedLink) this.mBodyMap.get(BoxItem.FIELD_SHARED_LINK)).getPassword();
        }
        return null;
    }

    public Date getUnsharedAt() {
        if (this.mBodyMap.containsKey(BoxItem.FIELD_SHARED_LINK)) {
            return ((BoxSharedLink) this.mBodyMap.get(BoxItem.FIELD_SHARED_LINK)).getUnsharedDate();
        }
        return null;
    }

    public R setAccess(BoxSharedLink.Access access) {
        JsonObject sharedLinkJsonObject = getSharedLinkJsonObject();
        sharedLinkJsonObject.add("access", SdkUtils.getAsStringSafely(access));
        this.mBodyMap.put(BoxItem.FIELD_SHARED_LINK, new BoxSharedLink(sharedLinkJsonObject));
        return this;
    }

    /* access modifiers changed from: protected */
    public R setCanDownload(boolean z) {
        JsonObject permissionsJsonObject = getPermissionsJsonObject();
        permissionsJsonObject.add(BoxSharedLink.Permissions.FIELD_CAN_DOWNLOAD, z);
        BoxSharedLink.Permissions permissions = new BoxSharedLink.Permissions(permissionsJsonObject);
        JsonObject sharedLinkJsonObject = getSharedLinkJsonObject();
        sharedLinkJsonObject.add("permissions", (JsonValue) permissions.toJsonObject());
        this.mBodyMap.put(BoxItem.FIELD_SHARED_LINK, new BoxSharedLink(sharedLinkJsonObject));
        return this;
    }

    public R setPassword(String str) {
        JsonObject sharedLinkJsonObject = getSharedLinkJsonObject();
        sharedLinkJsonObject.add(BoxSharedLink.FIELD_PASSWORD, str);
        this.mBodyMap.put(BoxItem.FIELD_SHARED_LINK, new BoxSharedLink(sharedLinkJsonObject));
        return this;
    }

    public R setRemoveUnsharedAtDate() {
        return setUnsharedAt((Date) null);
    }

    public R setUnsharedAt(Date date) {
        JsonObject sharedLinkJsonObject = getSharedLinkJsonObject();
        if (date == null) {
            sharedLinkJsonObject.add(BoxSharedLink.FIELD_UNSHARED_AT, JsonValue.NULL);
        } else {
            sharedLinkJsonObject.add(BoxSharedLink.FIELD_UNSHARED_AT, BoxDateFormat.format(BoxDateFormat.convertToDay(date)));
        }
        this.mBodyMap.put(BoxItem.FIELD_SHARED_LINK, new BoxSharedLink(sharedLinkJsonObject));
        return this;
    }

    public BoxRequestUpdateSharedItem updateSharedLink() {
        return this;
    }
}
