package com.box.androidsdk.content.models;

import com.eclipsesource.json.JsonObject;

public class BoxEnterprise extends BoxEntity {
    public static final String FIELD_NAME = "name";
    public static final String TYPE = "enterprise";
    private static final long serialVersionUID = -3453999549970888942L;

    public BoxEnterprise() {
    }

    public BoxEnterprise(JsonObject jsonObject) {
        super(jsonObject);
    }

    public String getName() {
        return getPropertyAsString("name");
    }
}
