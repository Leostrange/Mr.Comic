package com.box.androidsdk.content.models;

import com.eclipsesource.json.JsonObject;

public class BoxGroup extends BoxCollaborator {
    public static final String TYPE = "group";
    private static final long serialVersionUID = 5872741782856508553L;

    public BoxGroup() {
    }

    public BoxGroup(JsonObject jsonObject) {
        super(jsonObject);
    }

    public static BoxGroup createFromId(String str) {
        JsonObject jsonObject = new JsonObject();
        jsonObject.add(BoxEntity.FIELD_ID, str);
        jsonObject.add("type", "user");
        return new BoxGroup(jsonObject);
    }
}
