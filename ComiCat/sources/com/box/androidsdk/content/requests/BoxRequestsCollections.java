package com.box.androidsdk.content.requests;

import com.box.androidsdk.content.BoxFutureTask;
import com.box.androidsdk.content.models.BoxIteratorCollections;
import com.box.androidsdk.content.models.BoxIteratorItems;
import com.box.androidsdk.content.models.BoxSession;

public class BoxRequestsCollections {

    public static class GetCollectionItems extends BoxRequestList<BoxIteratorItems, GetCollectionItems> implements BoxCacheableRequest<BoxIteratorItems> {
        private static final long serialVersionUID = 8123965031279971507L;

        public GetCollectionItems(String str, String str2, BoxSession boxSession) {
            super(BoxIteratorItems.class, str, str2, boxSession);
        }

        public BoxIteratorItems sendForCachedResult() {
            return (BoxIteratorItems) handleSendForCachedResult();
        }

        public BoxFutureTask<BoxIteratorItems> toTaskForCachedResult() {
            return handleToTaskForCachedResult();
        }
    }

    public static class GetCollections extends BoxRequestList<BoxIteratorCollections, GetCollections> implements BoxCacheableRequest<BoxIteratorCollections> {
        private static final long serialVersionUID = 8123965031279971506L;

        public GetCollections(String str, BoxSession boxSession) {
            super(BoxIteratorCollections.class, (String) null, str, boxSession);
        }

        public BoxIteratorCollections sendForCachedResult() {
            return (BoxIteratorCollections) super.handleSendForCachedResult();
        }

        public BoxFutureTask<BoxIteratorCollections> toTaskForCachedResult() {
            return super.handleToTaskForCachedResult();
        }
    }
}
