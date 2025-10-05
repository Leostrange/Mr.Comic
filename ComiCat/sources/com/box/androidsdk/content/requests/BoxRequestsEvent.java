package com.box.androidsdk.content.requests;

import com.box.androidsdk.content.BoxFutureTask;
import com.box.androidsdk.content.models.BoxIteratorEnterpriseEvents;
import com.box.androidsdk.content.models.BoxIteratorEvents;
import com.box.androidsdk.content.models.BoxIteratorRealTimeServers;
import com.box.androidsdk.content.models.BoxSession;
import com.box.androidsdk.content.models.BoxSimpleMessage;
import com.box.androidsdk.content.requests.BoxRequest;
import com.box.androidsdk.content.utils.BoxDateFormat;
import java.util.Date;

public class BoxRequestsEvent {

    public static class EventRealTimeServerRequest extends BoxRequest<BoxIteratorRealTimeServers, EventRealTimeServerRequest> {
        private static final long serialVersionUID = 8123965031279971572L;

        public EventRealTimeServerRequest(String str, BoxSession boxSession) {
            super(BoxIteratorRealTimeServers.class, str, boxSession);
            this.mRequestUrlString = str;
            this.mRequestMethod = BoxRequest.Methods.OPTIONS;
        }
    }

    public static class GetEnterpriseEvents extends BoxRequestEvent<BoxIteratorEnterpriseEvents, GetEnterpriseEvents> {
        public static final String FIELD_CREATED_AFTER = "created_after";
        public static final String FIELD_CREATED_BEFORE = "created_before";
        protected static final String STREAM_TYPE = "admin_logs";
        private static final long serialVersionUID = 8123965031279971571L;

        public GetEnterpriseEvents(String str, BoxSession boxSession) {
            super(BoxIteratorEnterpriseEvents.class, str, boxSession);
            setStreamType(STREAM_TYPE);
        }

        public GetEnterpriseEvents setCreatedAfter(Date date) {
            this.mQueryMap.put(FIELD_CREATED_AFTER, BoxDateFormat.format(date));
            return this;
        }

        public GetEnterpriseEvents setCreatedBefore(Date date) {
            this.mQueryMap.put(FIELD_CREATED_BEFORE, BoxDateFormat.format(date));
            return this;
        }

        public /* bridge */ /* synthetic */ BoxFutureTask toTaskForCachedResult() {
            return super.toTaskForCachedResult();
        }
    }

    public static class GetUserEvents extends BoxRequestEvent<BoxIteratorEvents, GetUserEvents> {
        private static final long serialVersionUID = 8123965031279971571L;

        public GetUserEvents(String str, BoxSession boxSession) {
            super(BoxIteratorEvents.class, str, boxSession);
        }

        public GetUserEvents setStreamType(String str) {
            return (GetUserEvents) super.setStreamType(str);
        }

        public /* bridge */ /* synthetic */ BoxFutureTask toTaskForCachedResult() {
            return super.toTaskForCachedResult();
        }
    }

    public static class LongPollMessageRequest extends BoxRequest<BoxSimpleMessage, LongPollMessageRequest> {
        private static final long serialVersionUID = 8123965031279971589L;

        public LongPollMessageRequest(String str, BoxSession boxSession) {
            super(BoxSimpleMessage.class, str, boxSession);
            this.mRequestUrlString = str;
            this.mRequestMethod = BoxRequest.Methods.GET;
        }
    }
}
