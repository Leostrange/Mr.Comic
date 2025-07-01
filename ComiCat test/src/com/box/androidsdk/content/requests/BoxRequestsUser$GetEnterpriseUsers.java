// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.box.androidsdk.content.requests;

import com.box.androidsdk.content.BoxFutureTask;
import com.box.androidsdk.content.models.BoxIteratorUsers;
import com.box.androidsdk.content.models.BoxObject;
import com.box.androidsdk.content.models.BoxSession;
import java.util.HashMap;

// Referenced classes of package com.box.androidsdk.content.requests:
//            BoxRequestItem, BoxCacheableRequest, BoxRequestsUser

public static class mRequestMethod extends BoxRequestItem
    implements BoxCacheableRequest
{

    protected static final String QUERY_FILTER_TERM = "filter_term";
    protected static final String QUERY_LIMIT = "limit";
    protected static final String QUERY_OFFSET = "offset";
    private static final long serialVersionUID = 0x70be1f2741234cc8L;

    public String getFilterTerm()
    {
        return (String)mQueryMap.get("filter_term");
    }

    public long getLimit()
    {
        return Long.valueOf((String)mQueryMap.get("limit")).longValue();
    }

    public long getOffset()
    {
        return Long.valueOf((String)mQueryMap.get("offset")).longValue();
    }

    public BoxIteratorUsers sendForCachedResult()
    {
        return (BoxIteratorUsers)super.handleSendForCachedResult();
    }

    public volatile BoxObject sendForCachedResult()
    {
        return sendForCachedResult();
    }

    public sendForCachedResult setFilterTerm(String s)
    {
        mQueryMap.put("filter_term", s);
        return this;
    }

    public mQueryMap setLimit(long l)
    {
        mQueryMap.put("limit", Long.toString(l));
        return this;
    }

    public mQueryMap setOffset(long l)
    {
        mQueryMap.put("offset", Long.toString(l));
        return this;
    }

    public BoxFutureTask toTaskForCachedResult()
    {
        return super.handleToTaskForCachedResult();
    }

    public (String s, BoxSession boxsession)
    {
        super(com/box/androidsdk/content/models/BoxIteratorUsers, null, s, boxsession);
        mRequestMethod = mRequestMethod;
    }
}
