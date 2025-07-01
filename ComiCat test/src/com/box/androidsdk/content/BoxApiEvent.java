// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.box.androidsdk.content;

import com.box.androidsdk.content.models.BoxSession;
import com.box.androidsdk.content.utils.RealTimeServerConnection;

// Referenced classes of package com.box.androidsdk.content:
//            BoxApi

public class BoxApiEvent extends BoxApi
{

    public static final String EVENTS_ENDPOINT = "/events";

    public BoxApiEvent(BoxSession boxsession)
    {
        super(boxsession);
    }

    public com.box.androidsdk.content.requests.BoxRequestsEvent.GetEnterpriseEvents getEnterpriseEventsRequest()
    {
        return new com.box.androidsdk.content.requests.BoxRequestsEvent.GetEnterpriseEvents(getEventsUrl(), mSession);
    }

    protected String getEventsUrl()
    {
        return (new StringBuilder()).append(getBaseUri()).append("/events").toString();
    }

    public RealTimeServerConnection getLongPollServerConnection(com.box.androidsdk.content.utils.RealTimeServerConnection.OnChangeListener onchangelistener)
    {
        return new RealTimeServerConnection(new com.box.androidsdk.content.requests.BoxRequestsEvent.EventRealTimeServerRequest(getEventsUrl(), mSession), onchangelistener, mSession);
    }

    public com.box.androidsdk.content.requests.BoxRequestsEvent.GetUserEvents getUserEventsRequest()
    {
        return new com.box.androidsdk.content.requests.BoxRequestsEvent.GetUserEvents(getEventsUrl(), mSession);
    }
}
