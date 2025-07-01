// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.box.androidsdk.content.requests;

import com.box.androidsdk.content.BoxFutureTask;
import com.box.androidsdk.content.models.BoxIteratorItems;
import com.box.androidsdk.content.models.BoxObject;
import com.box.androidsdk.content.models.BoxSession;
import java.util.HashMap;

// Referenced classes of package com.box.androidsdk.content.requests:
//            BoxRequestItem, BoxCacheableRequest, BoxRequestsFolder

public static class mQueryMap extends BoxRequestItem
    implements BoxCacheableRequest
{

    private static final String DEFAULT_LIMIT = "1000";
    private static final String DEFAULT_OFFSET = "0";
    private static final String LIMIT = "limit";
    private static final String OFFSET = "offset";
    private static final long serialVersionUID = 0x70be1f2741234cc4L;

    public BoxIteratorItems sendForCachedResult()
    {
        return (BoxIteratorItems)super.handleSendForCachedResult();
    }

    public volatile BoxObject sendForCachedResult()
    {
        return sendForCachedResult();
    }

    public sendForCachedResult setLimit(int i)
    {
        mQueryMap.put("limit", String.valueOf(i));
        return this;
    }

    public mQueryMap setOffset(int i)
    {
        mQueryMap.put("offset", String.valueOf(i));
        return this;
    }

    public BoxFutureTask toTaskForCachedResult()
    {
        return super.handleToTaskForCachedResult();
    }

    public (String s, String s1, BoxSession boxsession)
    {
        super(com/box/androidsdk/content/models/BoxIteratorItems, s, s1, boxsession);
        mRequestMethod = mRequestMethod;
        mQueryMap.put("limit", "1000");
        mQueryMap.put("offset", "0");
    }
}
