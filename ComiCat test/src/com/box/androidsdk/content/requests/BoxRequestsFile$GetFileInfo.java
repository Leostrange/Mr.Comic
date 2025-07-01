// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.box.androidsdk.content.requests;

import com.box.androidsdk.content.BoxFutureTask;
import com.box.androidsdk.content.models.BoxFile;
import com.box.androidsdk.content.models.BoxObject;
import com.box.androidsdk.content.models.BoxSession;

// Referenced classes of package com.box.androidsdk.content.requests:
//            BoxRequestItem, BoxCacheableRequest, BoxRequestsFile, BoxRequest

public static class mRequestMethod extends BoxRequestItem
    implements BoxCacheableRequest
{

    private static final long serialVersionUID = 0x70be1f2741234cadL;

    public String getIfNoneMatchEtag()
    {
        return super.getIfNoneMatchEtag();
    }

    public BoxFile sendForCachedResult()
    {
        return (BoxFile)super.handleSendForCachedResult();
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

    public (String s, String s1, BoxSession boxsession)
    {
        super(com/box/androidsdk/content/models/BoxFile, s, s1, boxsession);
        mRequestMethod = mRequestMethod;
    }
}
