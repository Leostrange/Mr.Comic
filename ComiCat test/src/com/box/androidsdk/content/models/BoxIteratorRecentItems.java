// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.box.androidsdk.content.models;

import com.eclipsesource.json.JsonObject;

// Referenced classes of package com.box.androidsdk.content.models:
//            BoxIterator, BoxRecentItem, BoxJsonObject

public class BoxIteratorRecentItems extends BoxIterator
{

    private static final long serialVersionUID = 0xdb5311e152c39ab5L;
    private transient BoxJsonObject.BoxJsonObjectCreator representationCreator;

    public BoxIteratorRecentItems()
    {
    }

    public BoxIteratorRecentItems(JsonObject jsonobject)
    {
        super(jsonobject);
    }

    protected BoxJsonObject.BoxJsonObjectCreator getObjectCreator()
    {
        if (representationCreator != null)
        {
            return representationCreator;
        } else
        {
            representationCreator = BoxJsonObject.getBoxJsonObjectCreator(com/box/androidsdk/content/models/BoxRecentItem);
            return representationCreator;
        }
    }
}
