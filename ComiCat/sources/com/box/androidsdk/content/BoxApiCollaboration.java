package com.box.androidsdk.content;

import com.box.androidsdk.content.models.BoxCollaboration;
import com.box.androidsdk.content.models.BoxCollaborator;
import com.box.androidsdk.content.models.BoxSession;
import com.box.androidsdk.content.requests.BoxRequestsShare;

public class BoxApiCollaboration extends BoxApi {
    public BoxApiCollaboration(BoxSession boxSession) {
        super(boxSession);
    }

    public BoxRequestsShare.AddCollaboration getAddRequest(String str, BoxCollaboration.Role role, BoxCollaborator boxCollaborator) {
        return new BoxRequestsShare.AddCollaboration(getCollaborationsUrl(), str, role, boxCollaborator, this.mSession);
    }

    public BoxRequestsShare.AddCollaboration getAddRequest(String str, BoxCollaboration.Role role, String str2) {
        return new BoxRequestsShare.AddCollaboration(getCollaborationsUrl(), str, role, str2, this.mSession);
    }

    /* access modifiers changed from: protected */
    public String getCollaborationInfoUrl(String str) {
        return String.format("%s/%s", new Object[]{getCollaborationsUrl(), str});
    }

    /* access modifiers changed from: protected */
    public String getCollaborationsUrl() {
        return String.format("%s/collaborations", new Object[]{getBaseUri()});
    }

    public BoxRequestsShare.DeleteCollaboration getDeleteRequest(String str) {
        return new BoxRequestsShare.DeleteCollaboration(str, getCollaborationInfoUrl(str), this.mSession);
    }

    public BoxRequestsShare.GetCollaborationInfo getInfoRequest(String str) {
        return new BoxRequestsShare.GetCollaborationInfo(str, getCollaborationInfoUrl(str), this.mSession);
    }

    public BoxRequestsShare.GetPendingCollaborations getPendingCollaborationsRequest() {
        return new BoxRequestsShare.GetPendingCollaborations(getCollaborationsUrl(), this.mSession);
    }

    public BoxRequestsShare.UpdateOwner getUpdateOwnerRequest(String str) {
        return new BoxRequestsShare.UpdateOwner(str, getCollaborationInfoUrl(str), this.mSession);
    }

    public BoxRequestsShare.UpdateCollaboration getUpdateRequest(String str) {
        return new BoxRequestsShare.UpdateCollaboration(str, getCollaborationInfoUrl(str), this.mSession);
    }
}
