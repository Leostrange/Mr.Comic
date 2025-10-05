package com.box.androidsdk.content.models;

import com.eclipsesource.json.JsonObject;
import java.util.Date;

public class BoxRecentItem extends BoxJsonObject {
    protected static final String FIELD_INTERACTED_AT = "interacted_at";
    protected static final String FIELD_INTERACTION_TYPE = "interaction_type";
    protected static final String FIELD_ITEM = "item";
    protected static final String FIELD_ITERACTION_SHARED_LINK = "interaction_shared_link";
    private static final String TYPE = "recent_item";
    private static final long serialVersionUID = -2642748896882484887L;

    public BoxRecentItem() {
    }

    public BoxRecentItem(JsonObject jsonObject) {
        super(jsonObject);
    }

    public Date getInteractedAt() {
        return getPropertyAsDate(FIELD_INTERACTED_AT);
    }

    public String getInteractionSharedLink() {
        return getPropertyAsString(FIELD_ITERACTION_SHARED_LINK);
    }

    public String getInteractionType() {
        return getPropertyAsString(FIELD_INTERACTION_TYPE);
    }

    public BoxItem getItem() {
        return (BoxItem) getPropertyAsJsonObject(BoxEntity.getBoxJsonObjectCreator(), "item");
    }

    public String getType() {
        return getPropertyAsString(TYPE);
    }
}
