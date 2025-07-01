// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.box.androidsdk.content.requests;

import com.box.androidsdk.content.BoxException;
import com.box.androidsdk.content.BoxFutureTask;
import com.box.androidsdk.content.models.BoxBookmark;
import com.box.androidsdk.content.models.BoxEntity;
import com.box.androidsdk.content.models.BoxFile;
import com.box.androidsdk.content.models.BoxFolder;
import com.box.androidsdk.content.models.BoxItem;
import com.box.androidsdk.content.models.BoxObject;
import com.box.androidsdk.content.models.BoxSharedLinkSession;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;

// Referenced classes of package com.box.androidsdk.content.requests:
//            BoxRequestItem, BoxCacheableRequest, BoxRequestsShare, BoxRequest, 
//            BoxHttpResponse

public static class createRequestHandler extends BoxRequestItem
    implements BoxCacheableRequest
{

    private static final long serialVersionUID = 0x70be1f2741234cf5L;

    public static createRequestHandler createRequestHandler(createRequestHandler createrequesthandler)
    {
        return new BoxRequest.BoxRequestHandler(createrequesthandler) {

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
                    BoxEntity boxentity = new BoxEntity();
                    class1 = boxentity;
                    if (s.contains(BoxRequest.ContentTypes.JSON.toString()))
                    {
                        boxhttpresponse = boxhttpresponse.getStringBody();
                        boxentity.createFromJson(boxhttpresponse);
                        if (boxentity.getType().equals("folder"))
                        {
                            class1 = new BoxFolder();
                            class1.createFromJson(boxhttpresponse);
                            return class1;
                        }
                        if (boxentity.getType().equals("file"))
                        {
                            class1 = new BoxFile();
                            class1.createFromJson(boxhttpresponse);
                            return class1;
                        }
                        class1 = boxentity;
                        if (boxentity.getType().equals("web_link"))
                        {
                            class1 = new BoxBookmark();
                            class1.createFromJson(boxhttpresponse);
                            return class1;
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

    public String getIfNoneMatchEtag()
    {
        return super.getIfNoneMatchEtag();
    }

    public BoxItem sendForCachedResult()
    {
        return (BoxItem)super.handleSendForCachedResult();
    }

    public volatile BoxObject sendForCachedResult()
    {
        return sendForCachedResult();
    }

    public volatile BoxRequest setIfNoneMatchEtag(String s)
    {
        return setIfNoneMatchEtag(s);
    }

    public setIfNoneMatchEtag setIfNoneMatchEtag(String s)
    {
        return (setIfNoneMatchEtag)super.setIfNoneMatchEtag(s);
    }

    public BoxFutureTask toTaskForCachedResult()
    {
        return super.handleToTaskForCachedResult();
    }

    public _cls1(String s, BoxSharedLinkSession boxsharedlinksession)
    {
        super(com/box/androidsdk/content/models/BoxItem, null, s, boxsharedlinksession);
        mRequestMethod = mRequestMethod;
        setRequestHandler(createRequestHandler(this));
    }
}
