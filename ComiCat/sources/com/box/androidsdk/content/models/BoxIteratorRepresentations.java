package com.box.androidsdk.content.models;

import com.box.androidsdk.content.models.BoxJsonObject;
import java.util.ArrayList;

public class BoxIteratorRepresentations extends BoxIterator<BoxRepresentation> {
    private static final long serialVersionUID = -4986439348667936122L;
    private transient BoxJsonObject.BoxJsonObjectCreator<BoxRepresentation> representationCreator;

    @Deprecated
    public Long fullSize() {
        return null;
    }

    /* access modifiers changed from: protected */
    public BoxJsonObject.BoxJsonObjectCreator<BoxRepresentation> getObjectCreator() {
        if (this.representationCreator != null) {
            return this.representationCreator;
        }
        this.representationCreator = BoxJsonObject.getBoxJsonObjectCreator(BoxRepresentation.class);
        return this.representationCreator;
    }

    @Deprecated
    public ArrayList<BoxOrder> getSortOrders() {
        return null;
    }

    @Deprecated
    public Long limit() {
        return null;
    }

    @Deprecated
    public Long offset() {
        return null;
    }
}
