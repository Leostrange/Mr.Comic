package com.box.androidsdk.content.models;

import com.box.androidsdk.content.utils.IStreamPosition;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;

public class BoxIteratorEnterpriseEvents extends BoxIteratorBoxEntity<BoxEnterpriseEvent> implements IStreamPosition {
    public static final String FIELD_CHUNK_SIZE = "chunk_size";
    public static final String FIELD_NEXT_STREAM_POSITION = "next_stream_position";
    private static final long serialVersionUID = 940295540206254689L;

    public Long getChunkSize() {
        return getPropertyAsLong("chunk_size");
    }

    public Long getNextStreamPosition() {
        return Long.valueOf(Long.parseLong(getPropertyAsString("next_stream_position").replace("\"", "")));
    }

    public ArrayList<BoxEnterpriseEvent> getWithoutDuplicates() {
        HashSet hashSet = new HashSet(size());
        ArrayList<BoxEnterpriseEvent> arrayList = new ArrayList<>(size());
        Iterator it = iterator();
        while (it.hasNext()) {
            BoxEnterpriseEvent boxEnterpriseEvent = (BoxEnterpriseEvent) it.next();
            if (!hashSet.contains(boxEnterpriseEvent.getId())) {
                arrayList.add(boxEnterpriseEvent);
            }
        }
        return arrayList;
    }
}
