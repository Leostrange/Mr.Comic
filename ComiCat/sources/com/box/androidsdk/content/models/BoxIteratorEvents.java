package com.box.androidsdk.content.models;

import com.box.androidsdk.content.utils.IStreamPosition;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;

public class BoxIteratorEvents extends BoxIteratorBoxEntity<BoxEvent> implements IStreamPosition {
    public static final String FIELD_CHUNK_SIZE = "chunk_size";
    public static final String FIELD_NEXT_STREAM_POSITION = "next_stream_position";
    private static final long serialVersionUID = 2397451459829964208L;

    public Long getChunkSize() {
        return getPropertyAsLong("chunk_size");
    }

    public Long getNextStreamPosition() {
        return getPropertyAsLong("next_stream_position");
    }

    public ArrayList<BoxEvent> getWithoutDuplicates() {
        HashSet hashSet = new HashSet(size());
        ArrayList<BoxEvent> arrayList = new ArrayList<>(size());
        Iterator it = iterator();
        while (it.hasNext()) {
            BoxEvent boxEvent = (BoxEvent) it.next();
            if (!hashSet.contains(boxEvent.getId())) {
                arrayList.add(boxEvent);
            }
        }
        return arrayList;
    }
}
