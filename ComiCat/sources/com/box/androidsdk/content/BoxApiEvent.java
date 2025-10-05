package com.box.androidsdk.content;

import com.box.androidsdk.content.models.BoxSession;
import com.box.androidsdk.content.requests.BoxRequestsEvent;
import com.box.androidsdk.content.utils.RealTimeServerConnection;

public class BoxApiEvent extends BoxApi {
    public static final String EVENTS_ENDPOINT = "/events";

    public BoxApiEvent(BoxSession boxSession) {
        super(boxSession);
    }

    public BoxRequestsEvent.GetEnterpriseEvents getEnterpriseEventsRequest() {
        return new BoxRequestsEvent.GetEnterpriseEvents(getEventsUrl(), this.mSession);
    }

    /* access modifiers changed from: protected */
    public String getEventsUrl() {
        return getBaseUri() + EVENTS_ENDPOINT;
    }

    public RealTimeServerConnection getLongPollServerConnection(RealTimeServerConnection.OnChangeListener onChangeListener) {
        return new RealTimeServerConnection(new BoxRequestsEvent.EventRealTimeServerRequest(getEventsUrl(), this.mSession), onChangeListener, this.mSession);
    }

    public BoxRequestsEvent.GetUserEvents getUserEventsRequest() {
        return new BoxRequestsEvent.GetUserEvents(getEventsUrl(), this.mSession);
    }
}
