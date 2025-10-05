package com.box.androidsdk.content;

import com.box.androidsdk.content.models.BoxObject;
import com.box.androidsdk.content.requests.BoxCacheableRequest;
import com.box.androidsdk.content.requests.BoxRequest;
import com.box.androidsdk.content.requests.BoxResponse;
import java.util.concurrent.Callable;

public class BoxCacheFutureTask<T extends BoxObject, R extends BoxRequest & BoxCacheableRequest> extends BoxFutureTask<T> {
    public BoxCacheFutureTask(Class<T> cls, final R r, final BoxCache boxCache) {
        super(new Callable<BoxResponse<T>>() {
            public BoxResponse<T> call() {
                BoxObject boxObject;
                Exception exc = null;
                try {
                    boxObject = BoxCache.this.get(r);
                } catch (Exception e) {
                    Exception exc2 = e;
                    boxObject = null;
                    exc = exc2;
                }
                return new BoxResponse<>(boxObject, exc, r);
            }
        }, (BoxRequest) r);
    }
}
