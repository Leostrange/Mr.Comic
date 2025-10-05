package com.box.androidsdk.content.requests;

import com.box.androidsdk.content.models.BoxIterator;
import com.box.androidsdk.content.models.BoxSession;
import com.box.androidsdk.content.requests.BoxRequest;

public abstract class BoxRequestList<E extends BoxIterator, R extends BoxRequest<E, R>> extends BoxRequestItem<E, R> {
    private static final String DEFAULT_LIMIT = "1000";
    private static final String DEFAULT_OFFSET = "0";
    private static final String LIMIT = "limit";
    private static final String OFFSET = "offset";

    public BoxRequestList(Class<E> cls, String str, String str2, BoxSession boxSession) {
        super(cls, str, str2, boxSession);
        this.mRequestMethod = BoxRequest.Methods.GET;
        this.mQueryMap.put("limit", DEFAULT_LIMIT);
        this.mQueryMap.put("offset", "0");
    }

    public R setLimit(int i) {
        this.mQueryMap.put("limit", String.valueOf(i));
        return this;
    }

    public R setOffset(int i) {
        this.mQueryMap.put("offset", String.valueOf(i));
        return this;
    }
}
