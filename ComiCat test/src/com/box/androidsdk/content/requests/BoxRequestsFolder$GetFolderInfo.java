// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.box.androidsdk.content.requests;

import com.box.androidsdk.content.BoxFutureTask;
import com.box.androidsdk.content.models.BoxFolder;
import com.box.androidsdk.content.models.BoxObject;
import com.box.androidsdk.content.models.BoxSession;
import java.util.HashMap;

// Referenced classes of package com.box.androidsdk.content.requests:
//            BoxRequestItem, BoxCacheableRequest, BoxRequestsFolder, BoxRequest

public static class mRequestMethod extends BoxRequestItem
    implements BoxCacheableRequest
{

    private static final long serialVersionUID = 0x70be1f2741234cc9L;

    public String getIfNoneMatchEtag()
    {
        return super.getIfNoneMatchEtag();
    }

    public BoxFolder sendForCachedResult()
    {
        return (BoxFolder)super.handleSendForCachedResult();
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

    public g setLimit(int i)
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

    public I(String s, String s1, BoxSession boxsession)
    {
        super(com/box/androidsdk/content/models/BoxFolder, s, s1, boxsession);
        mRequestMethod = mRequestMethod;
    }
}
