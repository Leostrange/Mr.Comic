package com.box.androidsdk.content;

import com.box.androidsdk.content.models.BoxSession;
import com.box.androidsdk.content.models.BoxSharedLink;
import com.box.androidsdk.content.requests.BoxRequestsFolder;

public class BoxApiFolder extends BoxApi {
    public BoxApiFolder(BoxSession boxSession) {
        super(boxSession);
    }

    public BoxRequestsFolder.AddFolderToCollection getAddToCollectionRequest(String str, String str2) {
        return new BoxRequestsFolder.AddFolderToCollection(str, str2, getFolderInfoUrl(str), this.mSession);
    }

    public BoxRequestsFolder.GetCollaborations getCollaborationsRequest(String str) {
        return new BoxRequestsFolder.GetCollaborations(str, getFolderCollaborationsUrl(str), this.mSession);
    }

    public BoxRequestsFolder.CopyFolder getCopyRequest(String str, String str2) {
        return new BoxRequestsFolder.CopyFolder(str, str2, getFolderCopyUrl(str), this.mSession);
    }

    public BoxRequestsFolder.CreateFolder getCreateRequest(String str, String str2) {
        return new BoxRequestsFolder.CreateFolder(str, str2, getFoldersUrl(), this.mSession);
    }

    public BoxRequestsFolder.UpdateSharedFolder getCreateSharedLinkRequest(String str) {
        return (BoxRequestsFolder.UpdateSharedFolder) new BoxRequestsFolder.UpdateSharedFolder(str, getFolderInfoUrl(str), this.mSession).setAccess((BoxSharedLink.Access) null);
    }

    public BoxRequestsFolder.DeleteFolderFromCollection getDeleteFromCollectionRequest(String str) {
        return new BoxRequestsFolder.DeleteFolderFromCollection(str, getFolderInfoUrl(str), this.mSession);
    }

    public BoxRequestsFolder.DeleteFolder getDeleteRequest(String str) {
        return new BoxRequestsFolder.DeleteFolder(str, getFolderInfoUrl(str), this.mSession);
    }

    public BoxRequestsFolder.DeleteTrashedFolder getDeleteTrashedFolderRequest(String str) {
        return new BoxRequestsFolder.DeleteTrashedFolder(str, getTrashedFolderUrl(str), this.mSession);
    }

    public BoxRequestsFolder.UpdateFolder getDisableSharedLinkRequest(String str) {
        return (BoxRequestsFolder.UpdateFolder) new BoxRequestsFolder.UpdateFolder(str, getFolderInfoUrl(str), this.mSession).setSharedLink((BoxSharedLink) null);
    }

    /* access modifiers changed from: protected */
    public String getFolderCollaborationsUrl(String str) {
        return getFolderInfoUrl(str) + "/collaborations";
    }

    /* access modifiers changed from: protected */
    public String getFolderCopyUrl(String str) {
        return getFolderInfoUrl(str) + "/copy";
    }

    /* access modifiers changed from: protected */
    public String getFolderInfoUrl(String str) {
        return String.format("%s/%s", new Object[]{getFoldersUrl(), str});
    }

    /* access modifiers changed from: protected */
    public String getFolderItemsUrl(String str) {
        return getFolderInfoUrl(str) + "/items";
    }

    public BoxRequestsFolder.GetFolderWithAllItems getFolderWithAllItems(String str) {
        BoxRequestsFolder.GetFolderWithAllItems getFolderWithAllItems = new BoxRequestsFolder.GetFolderWithAllItems(str, getFolderInfoUrl(str), getFolderItemsUrl(str), this.mSession);
        getFolderWithAllItems.setMaximumLimit(BoxRequestsFolder.GetFolderWithAllItems.DEFAULT_MAX_LIMIT);
        return getFolderWithAllItems;
    }

    /* access modifiers changed from: protected */
    public String getFoldersUrl() {
        return String.format("%s/folders", new Object[]{getBaseUri()});
    }

    public BoxRequestsFolder.GetFolderInfo getInfoRequest(String str) {
        return new BoxRequestsFolder.GetFolderInfo(str, getFolderInfoUrl(str), this.mSession);
    }

    public BoxRequestsFolder.GetFolderItems getItemsRequest(String str) {
        return new BoxRequestsFolder.GetFolderItems(str, getFolderItemsUrl(str), this.mSession);
    }

    public BoxRequestsFolder.UpdateFolder getMoveRequest(String str, String str2) {
        return (BoxRequestsFolder.UpdateFolder) new BoxRequestsFolder.UpdateFolder(str, getFolderInfoUrl(str), this.mSession).setParentId(str2);
    }

    public BoxRequestsFolder.UpdateFolder getRenameRequest(String str, String str2) {
        return (BoxRequestsFolder.UpdateFolder) new BoxRequestsFolder.UpdateFolder(str, getFolderInfoUrl(str), this.mSession).setName(str2);
    }

    public BoxRequestsFolder.RestoreTrashedFolder getRestoreTrashedFolderRequest(String str) {
        return new BoxRequestsFolder.RestoreTrashedFolder(str, getFolderInfoUrl(str), this.mSession);
    }

    public BoxRequestsFolder.GetTrashedFolder getTrashedFolderRequest(String str) {
        return new BoxRequestsFolder.GetTrashedFolder(str, getTrashedFolderUrl(str), this.mSession);
    }

    /* access modifiers changed from: protected */
    public String getTrashedFolderUrl(String str) {
        return getFolderInfoUrl(str) + "/trash";
    }

    public BoxRequestsFolder.GetTrashedItems getTrashedItemsRequest() {
        return new BoxRequestsFolder.GetTrashedItems(getTrashedItemsUrl(), this.mSession);
    }

    /* access modifiers changed from: protected */
    public String getTrashedItemsUrl() {
        return getFoldersUrl() + "/trash/items";
    }

    public BoxRequestsFolder.UpdateFolder getUpdateRequest(String str) {
        return new BoxRequestsFolder.UpdateFolder(str, getFolderInfoUrl(str), this.mSession);
    }
}
