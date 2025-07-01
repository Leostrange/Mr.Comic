// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.box.androidsdk.content.requests;

import com.box.androidsdk.content.BoxFutureTask;
import com.box.androidsdk.content.models.BoxIteratorEvents;
import com.box.androidsdk.content.models.BoxSession;

// Referenced classes of package com.box.androidsdk.content.requests:
//            BoxRequestEvent, BoxRequestsEvent, BoxRequest

public static class  extends BoxRequestEvent
{

    private static final long serialVersionUID = 0x70be1f2741234cf3L;

    public volatile BoxRequest setStreamType(String s)
    {
        return setStreamType(s);
    }

    public setStreamType setStreamType(String s)
    {
        return (setStreamType)super.setStreamType(s);
    }

    public volatile BoxFutureTask toTaskForCachedResult()
    {
        return super.toTaskForCachedResult();
    }

    public (String s, BoxSession boxsession)
    {
        super(com/box/androidsdk/content/models/BoxIteratorEvents, s, boxsession);
    }
}
