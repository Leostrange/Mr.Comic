package com.box.androidsdk.content;

import com.box.androidsdk.content.models.BoxSession;
import com.box.androidsdk.content.models.BoxSharedLinkSession;
import com.box.androidsdk.content.requests.BoxRequestsShare;

public class BoxApiShare extends BoxApi {
    public BoxApiShare(BoxSession boxSession) {
        super(boxSession);
    }

    /* access modifiers changed from: protected */
    public String getSharedItemsUrl() {
        return String.format("%s/shared_items", new Object[]{getBaseUri()});
    }

    public BoxRequestsShare.GetSharedLink getSharedLinkRequest(String str) {
        return getSharedLinkRequest(str, (String) null);
    }

    public BoxRequestsShare.GetSharedLink getSharedLinkRequest(String str, String str2) {
        BoxSharedLinkSession boxSharedLinkSession = this.mSession instanceof BoxSharedLinkSession ? (BoxSharedLinkSession) this.mSession : new BoxSharedLinkSession(this.mSession);
        boxSharedLinkSession.setSharedLink(str);
        boxSharedLinkSession.setPassword(str2);
        return new BoxRequestsShare.GetSharedLink(getSharedItemsUrl(), boxSharedLinkSession);
    }
}
