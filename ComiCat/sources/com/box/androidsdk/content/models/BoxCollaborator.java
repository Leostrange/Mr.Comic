package com.box.androidsdk.content.models;

import com.eclipsesource.json.JsonObject;
import java.util.Date;

public abstract class BoxCollaborator extends BoxEntity {
    public static final String FIELD_CREATED_AT = "created_at";
    public static final String FIELD_MODIFIED_AT = "modified_at";
    public static final String FIELD_NAME = "name";
    private static final long serialVersionUID = 4995483369186543255L;

    public BoxCollaborator() {
    }

    public BoxCollaborator(JsonObject jsonObject) {
        super(jsonObject);
    }

    public Date getCreatedAt() {
        return getPropertyAsDate("created_at");
    }

    public Date getModifiedAt() {
        return getPropertyAsDate("modified_at");
    }

    public String getName() {
        return getPropertyAsString("name");
    }
}
