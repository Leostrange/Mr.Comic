package com.box.androidsdk.content.models;

import com.eclipsesource.json.JsonObject;

public class BoxCollection extends BoxEntity {
    public static final String FIELD_COLLECTION_TYPE = "collection_type";
    public static final String FIELD_NAME = "name";
    public static final String TYPE = "collection";

    public BoxCollection() {
    }

    public BoxCollection(JsonObject jsonObject) {
        super(jsonObject);
    }

    public static BoxCollection createFromId(String str) {
        JsonObject jsonObject = new JsonObject();
        jsonObject.add(BoxEntity.FIELD_ID, str);
        return new BoxCollection(jsonObject);
    }

    public String getCollectionType() {
        return getPropertyAsString(FIELD_COLLECTION_TYPE);
    }

    public String getName() {
        return getPropertyAsString("name");
    }
}
