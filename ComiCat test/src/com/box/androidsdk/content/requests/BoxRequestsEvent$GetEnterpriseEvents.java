// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.box.androidsdk.content.requests;

import com.box.androidsdk.content.BoxFutureTask;
import com.box.androidsdk.content.models.BoxIteratorEnterpriseEvents;
import com.box.androidsdk.content.models.BoxSession;
import com.box.androidsdk.content.utils.BoxDateFormat;
import java.util.Date;
import java.util.HashMap;

// Referenced classes of package com.box.androidsdk.content.requests:
//            BoxRequestEvent, BoxRequestsEvent

public static class setStreamType extends BoxRequestEvent
{

    public static final String FIELD_CREATED_AFTER = "created_after";
    public static final String FIELD_CREATED_BEFORE = "created_before";
    protected static final String STREAM_TYPE = "admin_logs";
    private static final long serialVersionUID = 0x70be1f2741234cf3L;

    public setStreamType setCreatedAfter(Date date)
    {
        mQueryMap.put("created_after", BoxDateFormat.format(date));
        return this;
    }

    public mQueryMap setCreatedBefore(Date date)
    {
        mQueryMap.put("created_before", BoxDateFormat.format(date));
        return this;
    }

    public volatile BoxFutureTask toTaskForCachedResult()
    {
        return super.toTaskForCachedResult();
    }

    public (String s, BoxSession boxsession)
    {
        super(com/box/androidsdk/content/models/BoxIteratorEnterpriseEvents, s, boxsession);
        setStreamType("admin_logs");
    }
}
