package com.box.androidsdk.content.models;

public class BoxOrder extends BoxJsonObject {
    public static final String FIELD_BY = "by";
    public static final String FIELD_DIRECTION = "direction";

    public String getBy() {
        return getPropertyAsString(FIELD_BY);
    }

    public String getDirection() {
        return getPropertyAsString(FIELD_DIRECTION);
    }
}
