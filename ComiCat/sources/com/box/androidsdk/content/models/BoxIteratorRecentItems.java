package com.box.androidsdk.content.models;

import com.box.androidsdk.content.models.BoxJsonObject;
import com.eclipsesource.json.JsonObject;

public class BoxIteratorRecentItems extends BoxIterator<BoxRecentItem> {
    private static final long serialVersionUID = -2642748896882484555L;
    private transient BoxJsonObject.BoxJsonObjectCreator<BoxRecentItem> representationCreator;

    public BoxIteratorRecentItems() {
    }

    public BoxIteratorRecentItems(JsonObject jsonObject) {
        super(jsonObject);
    }

    /* access modifiers changed from: protected */
    public BoxJsonObject.BoxJsonObjectCreator<BoxRecentItem> getObjectCreator() {
        if (this.representationCreator != null) {
            return this.representationCreator;
        }
        this.representationCreator = BoxJsonObject.getBoxJsonObjectCreator(BoxRecentItem.class);
        return this.representationCreator;
    }
}
