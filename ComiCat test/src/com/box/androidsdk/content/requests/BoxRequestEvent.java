// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.box.androidsdk.content.requests;

import com.box.androidsdk.content.BoxException;
import com.box.androidsdk.content.BoxFutureTask;
import com.box.androidsdk.content.models.BoxJsonObject;
import com.box.androidsdk.content.models.BoxObject;
import com.box.androidsdk.content.models.BoxSession;
import com.box.androidsdk.content.utils.IStreamPosition;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.util.Collection;
import java.util.HashMap;

// Referenced classes of package com.box.androidsdk.content.requests:
//            BoxRequest, BoxCacheableRequest, BoxResponse, BoxHttpResponse

abstract class BoxRequestEvent extends BoxRequest
    implements BoxCacheableRequest
{

    public static final String FIELD_LIMIT = "stream_limit";
    public static final String FIELD_STREAM_POSITION = "stream_position";
    public static final String FIELD_STREAM_TYPE = "stream_type";
    public static final String STREAM_TYPE_ALL = "all";
    public static final String STREAM_TYPE_CHANGES = "changes";
    public static final String STREAM_TYPE_SYNC = "sync";
    private BoxJsonObject mListEvents;

    public BoxRequestEvent(Class class1, String s, BoxSession boxsession)
    {
        super(class1, s, boxsession);
        mRequestUrlString = s;
        mRequestMethod = BoxRequest.Methods.GET;
        setRequestHandler(createRequestHandler(this));
    }

    public static BoxRequest.BoxRequestHandler createRequestHandler(BoxRequestEvent boxrequestevent)
    {
        return new BoxRequest.BoxRequestHandler(boxrequestevent) {

            public final BoxObject onResponse(Class class1, BoxHttpResponse boxhttpresponse)
            {
                if (Thread.currentThread().isInterrupted())
                {
                    disconnectForInterrupt(boxhttpresponse);
                    throw new BoxException("Request cancelled ", new InterruptedException());
                }
                if (boxhttpresponse.getResponseCode() == 429)
                {
                    class1 = retryRateLimited(boxhttpresponse);
                } else
                {
                    String s = boxhttpresponse.getContentType();
                    BoxObject boxobject = (BoxObject)class1.newInstance();
                    class1 = boxobject;
                    if (boxobject instanceof BoxJsonObject)
                    {
                        class1 = boxobject;
                        if (s.contains(BoxRequest.ContentTypes.JSON.toString()))
                        {
                            class1 = boxhttpresponse.getStringBody();
                            class1.charAt(class1.indexOf("event") - 1);
                            class1.charAt(class1.indexOf("user") - 1);
                            ((BoxJsonObject)boxobject).createFromJson(class1);
                            return boxobject;
                        }
                    }
                }
                return class1;
            }

        };
    }

    private void readObject(ObjectInputStream objectinputstream)
    {
        objectinputstream.defaultReadObject();
        mRequestHandler = createRequestHandler(this);
    }

    private void writeObject(ObjectOutputStream objectoutputstream)
    {
        objectoutputstream.defaultWriteObject();
    }

    public BoxJsonObject onSend()
    {
        if (mListEvents != null)
        {
            ((Collection)mListEvents).addAll((Collection)super.onSend());
            return mListEvents;
        } else
        {
            return (BoxJsonObject)super.onSend();
        }
    }

    public volatile BoxObject onSend()
    {
        return onSend();
    }

    protected void onSendCompleted(BoxResponse boxresponse)
    {
        super.onSendCompleted(boxresponse);
        super.handleUpdateCache(boxresponse);
    }

    public BoxJsonObject sendForCachedResult()
    {
        return (BoxJsonObject)super.handleSendForCachedResult();
    }

    public volatile BoxObject sendForCachedResult()
    {
        return sendForCachedResult();
    }

    public BoxRequest setLimit(int i)
    {
        mQueryMap.put("stream_limit", Integer.toString(i));
        return this;
    }

    public BoxRequest setPreviousListEvents(BoxJsonObject boxjsonobject)
    {
        mListEvents = boxjsonobject;
        setStreamPosition(((IStreamPosition)mListEvents).getNextStreamPosition().toString());
        return this;
    }

    public BoxRequest setStreamPosition(String s)
    {
        mQueryMap.put("stream_position", s);
        return this;
    }

    protected BoxRequest setStreamType(String s)
    {
        mQueryMap.put("stream_type", s);
        return this;
    }

    public BoxFutureTask toTaskForCachedResult()
    {
        return super.handleToTaskForCachedResult();
    }
}
