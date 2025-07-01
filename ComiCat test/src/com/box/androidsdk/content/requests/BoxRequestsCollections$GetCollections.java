// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.box.androidsdk.content.requests;

import com.box.androidsdk.content.BoxFutureTask;
import com.box.androidsdk.content.models.BoxIteratorCollections;
import com.box.androidsdk.content.models.BoxObject;
import com.box.androidsdk.content.models.BoxSession;

// Referenced classes of package com.box.androidsdk.content.requests:
//            BoxRequestList, BoxCacheableRequest, BoxRequestsCollections

public static class  extends BoxRequestList
    implements BoxCacheableRequest
{

    private static final long serialVersionUID = 0x70be1f2741234cb2L;

    public BoxIteratorCollections sendForCachedResult()
    {
        return (BoxIteratorCollections)super.handleSendForCachedResult();
    }

    public volatile BoxObject sendForCachedResult()
    {
        return sendForCachedResult();
    }

    public BoxFutureTask toTaskForCachedResult()
    {
        return super.handleToTaskForCachedResult();
    }

    public (String s, BoxSession boxsession)
    {
        super(com/box/androidsdk/content/models/BoxIteratorCollections, null, s, boxsession);
    }
}
