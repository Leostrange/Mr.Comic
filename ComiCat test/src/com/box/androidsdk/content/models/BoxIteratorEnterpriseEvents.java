// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.box.androidsdk.content.models;

import com.box.androidsdk.content.utils.IStreamPosition;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;

// Referenced classes of package com.box.androidsdk.content.models:
//            BoxIteratorBoxEntity, BoxEnterpriseEvent

public class BoxIteratorEnterpriseEvents extends BoxIteratorBoxEntity
    implements IStreamPosition
{

    public static final String FIELD_CHUNK_SIZE = "chunk_size";
    public static final String FIELD_NEXT_STREAM_POSITION = "next_stream_position";
    private static final long serialVersionUID = 0xd0c99cfd9e0ba61L;

    public BoxIteratorEnterpriseEvents()
    {
    }

    public Long getChunkSize()
    {
        return getPropertyAsLong("chunk_size");
    }

    public Long getNextStreamPosition()
    {
        return Long.valueOf(Long.parseLong(getPropertyAsString("next_stream_position").replace("\"", "")));
    }

    public ArrayList getWithoutDuplicates()
    {
        HashSet hashset = new HashSet(size());
        ArrayList arraylist = new ArrayList(size());
        Iterator iterator = iterator();
        do
        {
            if (!iterator.hasNext())
            {
                break;
            }
            BoxEnterpriseEvent boxenterpriseevent = (BoxEnterpriseEvent)iterator.next();
            if (!hashset.contains(boxenterpriseevent.getId()))
            {
                arraylist.add(boxenterpriseevent);
            }
        } while (true);
        return arraylist;
    }
}
