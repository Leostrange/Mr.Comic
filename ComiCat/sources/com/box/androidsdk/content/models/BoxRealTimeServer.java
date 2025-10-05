package com.box.androidsdk.content.models;

public class BoxRealTimeServer extends BoxEntity {
    public static final String FIELD_MAX_RETRIES = "max_retries";
    public static final String FIELD_RETRY_TIMEOUT = "retry_timeout";
    public static final String FIELD_TTL = "ttl";
    public static final String FIELD_TYPE = "type";
    public static final String FIELD_URL = "url";
    public static final String TYPE = "realtime_server";
    private static final long serialVersionUID = -6591493101188395748L;

    public Long getFieldRetryTimeout() {
        return getPropertyAsLong(FIELD_RETRY_TIMEOUT);
    }

    public Long getMaxRetries() {
        return getPropertyAsLong(FIELD_MAX_RETRIES);
    }

    public Long getTTL() {
        return getPropertyAsLong(FIELD_TTL);
    }

    public String getType() {
        return getPropertyAsString(TYPE);
    }

    public String getUrl() {
        return getPropertyAsString("url");
    }
}
