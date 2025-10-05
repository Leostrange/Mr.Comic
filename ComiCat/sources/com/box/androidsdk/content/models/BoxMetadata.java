package com.box.androidsdk.content.models;

import com.eclipsesource.json.JsonObject;
import java.util.List;

public class BoxMetadata extends BoxJsonObject {
    public static final String FIELD_PARENT = "parent";
    public static final String FIELD_SCOPE = "scope";
    public static final String FIELD_TEMPLATE = "template";
    private List<String> mMetadataKeys;

    public BoxMetadata() {
    }

    public BoxMetadata(JsonObject jsonObject) {
        super(jsonObject);
    }

    public String getParent() {
        return getPropertyAsString("parent");
    }

    public String getScope() {
        return getPropertyAsString(FIELD_SCOPE);
    }

    public String getTemplate() {
        return getPropertyAsString(FIELD_TEMPLATE);
    }
}
