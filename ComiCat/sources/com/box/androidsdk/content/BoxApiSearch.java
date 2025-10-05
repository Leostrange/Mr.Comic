package com.box.androidsdk.content;

import com.box.androidsdk.content.models.BoxSession;
import com.box.androidsdk.content.requests.BoxRequestsSearch;

public class BoxApiSearch extends BoxApi {
    public BoxApiSearch(BoxSession boxSession) {
        super(boxSession);
    }

    public BoxRequestsSearch.Search getSearchRequest(String str) {
        return new BoxRequestsSearch.Search(str, getSearchUrl(), this.mSession);
    }

    /* access modifiers changed from: protected */
    public String getSearchUrl() {
        return String.format("%s/search", new Object[]{getBaseUri()});
    }
}
