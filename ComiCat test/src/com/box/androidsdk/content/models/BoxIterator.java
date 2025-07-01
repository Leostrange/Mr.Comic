// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.box.androidsdk.content.models;

import com.eclipsesource.json.JsonObject;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;

// Referenced classes of package com.box.androidsdk.content.models:
//            BoxJsonObject, BoxOrder

public abstract class BoxIterator extends BoxJsonObject
    implements Iterable
{

    public static final String FIELD_ENTRIES = "entries";
    public static final String FIELD_LIMIT = "limit";
    public static final String FIELD_OFFSET = "offset";
    public static final String FIELD_ORDER = "order";
    public static final String FIELD_TOTAL_COUNT = "total_count";
    private static final long serialVersionUID = 0x6f86406d79df5221L;

    public BoxIterator()
    {
    }

    public BoxIterator(JsonObject jsonobject)
    {
        super(jsonobject);
    }

    public void createFromJson(JsonObject jsonobject)
    {
        super.createFromJson(jsonobject);
    }

    public Long fullSize()
    {
        return getPropertyAsLong("total_count");
    }

    public BoxJsonObject get(int i)
    {
        return getAs(getObjectCreator(), i);
    }

    public BoxJsonObject getAs(BoxJsonObject.BoxJsonObjectCreator boxjsonobjectcreator, int i)
    {
        return (BoxJsonObject)getEntries().get(i);
    }

    public ArrayList getEntries()
    {
        return getPropertyAsJsonObjectArray(getObjectCreator(), "entries");
    }

    protected abstract BoxJsonObject.BoxJsonObjectCreator getObjectCreator();

    public ArrayList getSortOrders()
    {
        return getPropertyAsJsonObjectArray(BoxJsonObject.getBoxJsonObjectCreator(com/box/androidsdk/content/models/BoxOrder), "order");
    }

    public Iterator iterator()
    {
        if (getEntries() == null)
        {
            return Collections.emptyList().iterator();
        } else
        {
            return getEntries().iterator();
        }
    }

    public Long limit()
    {
        return getPropertyAsLong("limit");
    }

    public Long offset()
    {
        return getPropertyAsLong("offset");
    }

    public int size()
    {
        if (getEntries() == null)
        {
            return 0;
        } else
        {
            return getEntries().size();
        }
    }
}
