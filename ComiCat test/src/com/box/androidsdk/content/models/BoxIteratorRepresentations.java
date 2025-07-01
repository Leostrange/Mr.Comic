// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.box.androidsdk.content.models;

import java.util.ArrayList;

// Referenced classes of package com.box.androidsdk.content.models:
//            BoxIterator, BoxRepresentation, BoxJsonObject

public class BoxIteratorRepresentations extends BoxIterator
{

    private static final long serialVersionUID = 0xbacc9bd4e89e1286L;
    private transient BoxJsonObject.BoxJsonObjectCreator representationCreator;

    public BoxIteratorRepresentations()
    {
    }

    public Long fullSize()
    {
        return null;
    }

    protected BoxJsonObject.BoxJsonObjectCreator getObjectCreator()
    {
        if (representationCreator != null)
        {
            return representationCreator;
        } else
        {
            representationCreator = BoxJsonObject.getBoxJsonObjectCreator(com/box/androidsdk/content/models/BoxRepresentation);
            return representationCreator;
        }
    }

    public ArrayList getSortOrders()
    {
        return null;
    }

    public Long limit()
    {
        return null;
    }

    public Long offset()
    {
        return null;
    }
}
