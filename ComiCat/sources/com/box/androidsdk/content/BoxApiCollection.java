package com.box.androidsdk.content;

import com.box.androidsdk.content.models.BoxSession;
import com.box.androidsdk.content.requests.BoxRequestsCollections;

public class BoxApiCollection extends BoxApi {
    public BoxApiCollection(BoxSession boxSession) {
        super(boxSession);
    }

    /* access modifiers changed from: protected */
    public String getCollectionItemsUrl(String str) {
        return String.format("%s/%s/items", new Object[]{getCollectionsUrl(), str});
    }

    public BoxRequestsCollections.GetCollections getCollectionsRequest() {
        return new BoxRequestsCollections.GetCollections(getCollectionsUrl(), this.mSession);
    }

    /* access modifiers changed from: protected */
    public String getCollectionsUrl() {
        return String.format("%s/collections", new Object[]{getBaseUri()});
    }

    public BoxRequestsCollections.GetCollectionItems getItemsRequest(String str) {
        return new BoxRequestsCollections.GetCollectionItems(str, getCollectionItemsUrl(str), this.mSession);
    }
}
