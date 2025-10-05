package com.box.androidsdk.content.requests;

import com.box.androidsdk.content.models.BoxObject;
import java.io.Serializable;

public class BoxResponse<E extends BoxObject> implements Serializable {
    protected final Exception mException;
    protected final BoxRequest mRequest;
    protected final E mResult;

    public BoxResponse(E e, Exception exc, BoxRequest boxRequest) {
        this.mResult = e;
        this.mException = exc;
        this.mRequest = boxRequest;
    }

    public Exception getException() {
        return this.mException;
    }

    public BoxRequest getRequest() {
        return this.mRequest;
    }

    public E getResult() {
        return this.mResult;
    }

    public boolean isSuccess() {
        return this.mException == null;
    }
}
