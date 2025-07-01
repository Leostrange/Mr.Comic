// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.eclipsesource.json;

import java.util.Iterator;

// Referenced classes of package com.eclipsesource.json:
//            JsonObject, JsonValue

class val.valuesIterator
    implements Iterator
{

    final JsonObject this$0;
    final Iterator val$namesIterator;
    final Iterator val$valuesIterator;

    public boolean hasNext()
    {
        return val$namesIterator.hasNext();
    }

    public mber next()
    {
        return new mber((String)val$namesIterator.next(), (JsonValue)val$valuesIterator.next());
    }

    public volatile Object next()
    {
        return next();
    }

    public void remove()
    {
        throw new UnsupportedOperationException();
    }

    mber()
    {
        this$0 = final_jsonobject;
        val$namesIterator = iterator;
        val$valuesIterator = Iterator.this;
        super();
    }
}
