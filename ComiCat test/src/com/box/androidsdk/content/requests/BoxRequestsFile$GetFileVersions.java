// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.box.androidsdk.content.requests;

import com.box.androidsdk.content.BoxFutureTask;
import com.box.androidsdk.content.models.BoxFileVersion;
import com.box.androidsdk.content.models.BoxIteratorFileVersions;
import com.box.androidsdk.content.models.BoxObject;
import com.box.androidsdk.content.models.BoxSession;

// Referenced classes of package com.box.androidsdk.content.requests:
//            BoxRequestItem, BoxCacheableRequest, BoxRequestsFile

public static class setFields extends BoxRequestItem
    implements BoxCacheableRequest
{

    private static final long serialVersionUID = 0x70be1f2741234ccaL;

    public BoxIteratorFileVersions sendForCachedResult()
    {
        return (BoxIteratorFileVersions)super.handleSendForCachedResult();
    }

    public volatile BoxObject sendForCachedResult()
    {
        return sendForCachedResult();
    }

    public BoxFutureTask toTaskForCachedResult()
    {
        return super.handleToTaskForCachedResult();
    }

    public I(String s, String s1, BoxSession boxsession)
    {
        super(com/box/androidsdk/content/models/BoxIteratorFileVersions, s, s1, boxsession);
        mRequestMethod = mRequestMethod;
        setFields(BoxFileVersion.ALL_FIELDS);
    }
}
