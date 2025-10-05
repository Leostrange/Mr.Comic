package com.box.androidsdk.content.requests;

import com.box.androidsdk.content.BoxFutureTask;
import com.box.androidsdk.content.models.BoxObject;

public interface BoxCacheableRequest<T extends BoxObject> {
    T sendForCachedResult();

    BoxFutureTask<T> toTaskForCachedResult();
}
