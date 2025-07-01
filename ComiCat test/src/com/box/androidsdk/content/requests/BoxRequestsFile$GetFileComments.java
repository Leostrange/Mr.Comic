// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.box.androidsdk.content.requests;

import com.box.androidsdk.content.BoxFutureTask;
import com.box.androidsdk.content.models.BoxComment;
import com.box.androidsdk.content.models.BoxIteratorComments;
import com.box.androidsdk.content.models.BoxObject;
import com.box.androidsdk.content.models.BoxSession;
import java.util.HashMap;

// Referenced classes of package com.box.androidsdk.content.requests:
//            BoxRequestItem, BoxCacheableRequest, BoxRequestsFile

public static class setFields extends BoxRequestItem
    implements BoxCacheableRequest
{

    private static final String QUERY_LIMIT = "limit";
    private static final String QUERY_OFFSET = "offset";
    private static final long serialVersionUID = 0x70be1f2741234cc5L;

    public BoxIteratorComments sendForCachedResult()
    {
        return (BoxIteratorComments)super.handleSendForCachedResult();
    }

    public volatile BoxObject sendForCachedResult()
    {
        return sendForCachedResult();
    }

    public void setLimit(int i)
    {
        mQueryMap.put("limit", Integer.toString(i));
    }

    public void setOffset(int i)
    {
        mQueryMap.put("offset", Integer.toString(i));
    }

    public BoxFutureTask toTaskForCachedResult()
    {
        return super.handleToTaskForCachedResult();
    }

    public I(String s, String s1, BoxSession boxsession)
    {
        super(com/box/androidsdk/content/models/BoxIteratorComments, s, s1, boxsession);
        mRequestMethod = mRequestMethod;
        setFields(BoxComment.ALL_FIELDS);
    }
}
