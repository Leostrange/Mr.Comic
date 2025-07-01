// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.box.androidsdk.content.requests;

import com.box.androidsdk.content.BoxFutureTask;
import com.box.androidsdk.content.models.BoxIteratorEnterpriseEvents;
import com.box.androidsdk.content.models.BoxIteratorEvents;
import com.box.androidsdk.content.models.BoxIteratorRealTimeServers;
import com.box.androidsdk.content.models.BoxSession;
import com.box.androidsdk.content.models.BoxSimpleMessage;
import com.box.androidsdk.content.utils.BoxDateFormat;
import java.util.Date;
import java.util.HashMap;

// Referenced classes of package com.box.androidsdk.content.requests:
//            BoxRequest, BoxRequestEvent

public class BoxRequestsEvent
{
    public static class EventRealTimeServerRequest extends BoxRequest
    {

        private static final long serialVersionUID = 0x70be1f2741234cf4L;

        public EventRealTimeServerRequest(String s, BoxSession boxsession)
        {
            super(com/box/androidsdk/content/models/BoxIteratorRealTimeServers, s, boxsession);
            mRequestUrlString = s;
            mRequestMethod = BoxRequest.Methods.OPTIONS;
        }
    }

    public static class GetEnterpriseEvents extends BoxRequestEvent
    {

        public static final String FIELD_CREATED_AFTER = "created_after";
        public static final String FIELD_CREATED_BEFORE = "created_before";
        protected static final String STREAM_TYPE = "admin_logs";
        private static final long serialVersionUID = 0x70be1f2741234cf3L;

        public GetEnterpriseEvents setCreatedAfter(Date date)
        {
            mQueryMap.put("created_after", BoxDateFormat.format(date));
            return this;
        }

        public GetEnterpriseEvents setCreatedBefore(Date date)
        {
            mQueryMap.put("created_before", BoxDateFormat.format(date));
            return this;
        }

        public volatile BoxFutureTask toTaskForCachedResult()
        {
            return super.toTaskForCachedResult();
        }

        public GetEnterpriseEvents(String s, BoxSession boxsession)
        {
            super(com/box/androidsdk/content/models/BoxIteratorEnterpriseEvents, s, boxsession);
            setStreamType("admin_logs");
        }
    }

    public static class GetUserEvents extends BoxRequestEvent
    {

        private static final long serialVersionUID = 0x70be1f2741234cf3L;

        public volatile BoxRequest setStreamType(String s)
        {
            return setStreamType(s);
        }

        public GetUserEvents setStreamType(String s)
        {
            return (GetUserEvents)super.setStreamType(s);
        }

        public volatile BoxFutureTask toTaskForCachedResult()
        {
            return super.toTaskForCachedResult();
        }

        public GetUserEvents(String s, BoxSession boxsession)
        {
            super(com/box/androidsdk/content/models/BoxIteratorEvents, s, boxsession);
        }
    }

    public static class LongPollMessageRequest extends BoxRequest
    {

        private static final long serialVersionUID = 0x70be1f2741234d05L;

        public LongPollMessageRequest(String s, BoxSession boxsession)
        {
            super(com/box/androidsdk/content/models/BoxSimpleMessage, s, boxsession);
            mRequestUrlString = s;
            mRequestMethod = BoxRequest.Methods.GET;
        }
    }


    public BoxRequestsEvent()
    {
    }
}
