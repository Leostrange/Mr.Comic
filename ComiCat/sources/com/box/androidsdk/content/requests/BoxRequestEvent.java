package com.box.androidsdk.content.requests;

import com.box.androidsdk.content.BoxException;
import com.box.androidsdk.content.BoxFutureTask;
import com.box.androidsdk.content.models.BoxJsonObject;
import com.box.androidsdk.content.models.BoxObject;
import com.box.androidsdk.content.models.BoxSession;
import com.box.androidsdk.content.requests.BoxRequest;
import com.box.androidsdk.content.utils.IStreamPosition;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.util.Collection;

abstract class BoxRequestEvent<E extends BoxJsonObject, R extends BoxRequest<E, R>> extends BoxRequest<E, R> implements BoxCacheableRequest<E> {
    public static final String FIELD_LIMIT = "stream_limit";
    public static final String FIELD_STREAM_POSITION = "stream_position";
    public static final String FIELD_STREAM_TYPE = "stream_type";
    public static final String STREAM_TYPE_ALL = "all";
    public static final String STREAM_TYPE_CHANGES = "changes";
    public static final String STREAM_TYPE_SYNC = "sync";
    private E mListEvents;

    public BoxRequestEvent(Class<E> cls, String str, BoxSession boxSession) {
        super(cls, str, boxSession);
        this.mRequestUrlString = str;
        this.mRequestMethod = BoxRequest.Methods.GET;
        setRequestHandler(createRequestHandler(this));
    }

    public static BoxRequest.BoxRequestHandler<BoxRequestEvent> createRequestHandler(BoxRequestEvent boxRequestEvent) {
        return new BoxRequest.BoxRequestHandler<BoxRequestEvent>(boxRequestEvent) {
            public final <T extends BoxObject> T onResponse(Class<T> cls, BoxHttpResponse boxHttpResponse) {
                if (Thread.currentThread().isInterrupted()) {
                    disconnectForInterrupt(boxHttpResponse);
                    throw new BoxException("Request cancelled ", (Throwable) new InterruptedException());
                } else if (boxHttpResponse.getResponseCode() == 429) {
                    return retryRateLimited(boxHttpResponse);
                } else {
                    String contentType = boxHttpResponse.getContentType();
                    T t = (BoxObject) cls.newInstance();
                    if (!(t instanceof BoxJsonObject) || !contentType.contains(BoxRequest.ContentTypes.JSON.toString())) {
                        return t;
                    }
                    String stringBody = boxHttpResponse.getStringBody();
                    stringBody.charAt(stringBody.indexOf("event") - 1);
                    stringBody.charAt(stringBody.indexOf("user") - 1);
                    ((BoxJsonObject) t).createFromJson(stringBody);
                    return t;
                }
            }
        };
    }

    private void readObject(ObjectInputStream objectInputStream) {
        objectInputStream.defaultReadObject();
        this.mRequestHandler = createRequestHandler(this);
    }

    private void writeObject(ObjectOutputStream objectOutputStream) {
        objectOutputStream.defaultWriteObject();
    }

    public E onSend() {
        if (this.mListEvents == null) {
            return (BoxJsonObject) super.onSend();
        }
        ((Collection) this.mListEvents).addAll((Collection) super.onSend());
        return this.mListEvents;
    }

    /* access modifiers changed from: protected */
    public void onSendCompleted(BoxResponse<E> boxResponse) {
        super.onSendCompleted(boxResponse);
        super.handleUpdateCache(boxResponse);
    }

    public E sendForCachedResult() {
        return (BoxJsonObject) super.handleSendForCachedResult();
    }

    public R setLimit(int i) {
        this.mQueryMap.put(FIELD_LIMIT, Integer.toString(i));
        return this;
    }

    public R setPreviousListEvents(E e) {
        this.mListEvents = e;
        setStreamPosition(((IStreamPosition) this.mListEvents).getNextStreamPosition().toString());
        return this;
    }

    public R setStreamPosition(String str) {
        this.mQueryMap.put(FIELD_STREAM_POSITION, str);
        return this;
    }

    /* access modifiers changed from: protected */
    public R setStreamType(String str) {
        this.mQueryMap.put(FIELD_STREAM_TYPE, str);
        return this;
    }

    public BoxFutureTask<E> toTaskForCachedResult() {
        return super.handleToTaskForCachedResult();
    }
}
