// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.box.androidsdk.content.requests;

import com.box.androidsdk.content.BoxFutureTask;
import com.box.androidsdk.content.models.BoxObject;
import com.box.androidsdk.content.models.BoxSession;
import com.box.androidsdk.content.models.BoxUser;

// Referenced classes of package com.box.androidsdk.content.requests:
//            BoxRequestItem, BoxCacheableRequest, BoxRequestsUser

public static class mRequestMethod extends BoxRequestItem
    implements BoxCacheableRequest
{

    public volatile BoxObject sendForCachedResult()
    {
        return sendForCachedResult();
    }

    public BoxUser sendForCachedResult()
    {
        return (BoxUser)super.handleSendForCachedResult();
    }

    public BoxFutureTask toTaskForCachedResult()
    {
        return super.handleToTaskForCachedResult();
    }

    public (String s, BoxSession boxsession)
    {
        super(com/box/androidsdk/content/models/BoxUser, null, s, boxsession);
        mRequestMethod = mRequestMethod;
    }
}
