package com.box.androidsdk.content.models;

import com.box.androidsdk.content.models.BoxJsonObject;
import com.eclipsesource.json.JsonObject;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;

public abstract class BoxIterator<E extends BoxJsonObject> extends BoxJsonObject implements Iterable<E> {
    public static final String FIELD_ENTRIES = "entries";
    public static final String FIELD_LIMIT = "limit";
    public static final String FIELD_OFFSET = "offset";
    public static final String FIELD_ORDER = "order";
    public static final String FIELD_TOTAL_COUNT = "total_count";
    private static final long serialVersionUID = 8036181424029520417L;

    public BoxIterator() {
    }

    public BoxIterator(JsonObject jsonObject) {
        super(jsonObject);
    }

    public void createFromJson(JsonObject jsonObject) {
        super.createFromJson(jsonObject);
    }

    public Long fullSize() {
        return getPropertyAsLong(FIELD_TOTAL_COUNT);
    }

    public E get(int i) {
        return getAs(getObjectCreator(), i);
    }

    public E getAs(BoxJsonObject.BoxJsonObjectCreator<E> boxJsonObjectCreator, int i) {
        return (BoxJsonObject) getEntries().get(i);
    }

    public ArrayList<E> getEntries() {
        return getPropertyAsJsonObjectArray(getObjectCreator(), FIELD_ENTRIES);
    }

    /* access modifiers changed from: protected */
    public abstract BoxJsonObject.BoxJsonObjectCreator<E> getObjectCreator();

    public ArrayList<BoxOrder> getSortOrders() {
        return getPropertyAsJsonObjectArray(BoxJsonObject.getBoxJsonObjectCreator(BoxOrder.class), FIELD_ORDER);
    }

    public Iterator<E> iterator() {
        return getEntries() == null ? Collections.emptyList().iterator() : getEntries().iterator();
    }

    public Long limit() {
        return getPropertyAsLong(FIELD_LIMIT);
    }

    public Long offset() {
        return getPropertyAsLong(FIELD_OFFSET);
    }

    public int size() {
        if (getEntries() == null) {
            return 0;
        }
        return getEntries().size();
    }
}
