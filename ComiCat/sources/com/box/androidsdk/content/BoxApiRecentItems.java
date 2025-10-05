package com.box.androidsdk.content;

import com.box.androidsdk.content.models.BoxSession;
import com.box.androidsdk.content.requests.BoxRequestRecentItems;

public class BoxApiRecentItems extends BoxApi {
    private static final String ENDPOINT_NAME = "recent_items";

    public BoxApiRecentItems(BoxSession boxSession) {
        super(boxSession);
    }

    public BoxRequestRecentItems.GetRecentItems getRecentItemsRequest() {
        return new BoxRequestRecentItems.GetRecentItems(getRecentItemsUrl(), this.mSession);
    }

    /* access modifiers changed from: protected */
    public String getRecentItemsUrl() {
        return String.format("%s/recent_items", new Object[]{getBaseUri()});
    }
}
