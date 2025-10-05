package com.box.androidsdk.content;

import com.box.androidsdk.content.models.BoxObject;
import com.box.androidsdk.content.requests.BoxCacheableRequest;
import com.box.androidsdk.content.requests.BoxRequest;
import com.box.androidsdk.content.requests.BoxResponse;

public interface BoxCache {
    <T extends BoxObject, R extends BoxRequest & BoxCacheableRequest> T get(R r);

    <T extends BoxObject> void put(BoxResponse<T> boxResponse);
}
