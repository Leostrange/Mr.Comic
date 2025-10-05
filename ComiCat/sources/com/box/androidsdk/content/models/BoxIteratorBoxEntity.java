package com.box.androidsdk.content.models;

import com.box.androidsdk.content.models.BoxEntity;
import com.box.androidsdk.content.models.BoxJsonObject;
import com.eclipsesource.json.JsonObject;

public class BoxIteratorBoxEntity<E extends BoxEntity> extends BoxIterator<E> {
    private static final long serialVersionUID = 8036181424029520417L;
    private transient BoxJsonObject.BoxJsonObjectCreator<E> representationCreator;

    public BoxIteratorBoxEntity() {
    }

    public BoxIteratorBoxEntity(JsonObject jsonObject) {
        super(jsonObject);
    }

    /* access modifiers changed from: protected */
    public BoxJsonObject.BoxJsonObjectCreator<E> getObjectCreator() {
        if (this.representationCreator != null) {
            return this.representationCreator;
        }
        this.representationCreator = BoxEntity.getBoxJsonObjectCreator();
        return this.representationCreator;
    }
}
