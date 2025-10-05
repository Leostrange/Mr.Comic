package com.box.androidsdk.content.requests;

import com.box.androidsdk.content.BoxFutureTask;
import com.box.androidsdk.content.models.BoxIteratorRecentItems;
import com.box.androidsdk.content.models.BoxSession;

public class BoxRequestRecentItems {

    public static class GetRecentItems extends BoxRequestList<BoxIteratorRecentItems, GetRecentItems> implements BoxCacheableRequest<BoxIteratorRecentItems> {
        private static final String DEFAULT_LIMIT = "100";
        private static final String LIMIT = "limit";
        private static final long serialVersionUID = 8123965031279971506L;

        public GetRecentItems(String str, BoxSession boxSession) {
            super(BoxIteratorRecentItems.class, (String) null, str, boxSession);
            this.mQueryMap.put("limit", DEFAULT_LIMIT);
        }

        public BoxIteratorRecentItems sendForCachedResult() {
            return (BoxIteratorRecentItems) super.handleSendForCachedResult();
        }

        public BoxFutureTask<BoxIteratorRecentItems> toTaskForCachedResult() {
            return super.handleToTaskForCachedResult();
        }
    }
}
