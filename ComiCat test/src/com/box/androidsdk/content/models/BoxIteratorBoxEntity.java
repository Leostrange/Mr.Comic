// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.box.androidsdk.content.models;

import com.eclipsesource.json.JsonObject;

// Referenced classes of package com.box.androidsdk.content.models:
//            BoxIterator, BoxEntity

public class BoxIteratorBoxEntity extends BoxIterator
{

    private static final long serialVersionUID = 0x6f86406d79df5221L;
    private transient BoxJsonObject.BoxJsonObjectCreator representationCreator;

    public BoxIteratorBoxEntity()
    {
    }

    public BoxIteratorBoxEntity(JsonObject jsonobject)
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
            representationCreator = BoxEntity.getBoxJsonObjectCreator();
            return representationCreator;
        }
    }
}
