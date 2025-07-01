// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.box.androidsdk.content.requests;

import com.box.androidsdk.content.BoxFutureTask;
import com.box.androidsdk.content.models.BoxIteratorCollaborations;
import com.box.androidsdk.content.models.BoxObject;
import com.box.androidsdk.content.models.BoxSession;
import java.util.HashMap;

// Referenced classes of package com.box.androidsdk.content.requests:
//            BoxRequest, BoxCacheableRequest, BoxRequestsShare, BoxResponse

public static class mQueryMap extends BoxRequest
    implements BoxCacheableRequest
{

    private static final long serialVersionUID = 0x70be1f2741234cfdL;

    protected void onSendCompleted(BoxResponse boxresponse)
    {
        super.onSendCompleted(boxresponse);
        super.handleUpdateCache(boxresponse);
    }

    public BoxIteratorCollaborations sendForCachedResult()
    {
        return (BoxIteratorCollaborations)super.handleSendForCachedResult();
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
        super(com/box/androidsdk/content/models/BoxIteratorCollaborations, s, boxsession);
        mRequestMethod = mRequestMethod;
        mQueryMap.put("status", com.box.androidsdk.content.models.s.mQueryMap.mQueryMap());
    }
}
