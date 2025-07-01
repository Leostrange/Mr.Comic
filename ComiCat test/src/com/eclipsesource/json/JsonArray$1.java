// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.eclipsesource.json;

import java.util.Iterator;

// Referenced classes of package com.eclipsesource.json:
//            JsonArray, JsonValue

class val.iterator
    implements Iterator
{

    final JsonArray this$0;
    final Iterator val$iterator;

    public boolean hasNext()
    {
        return val$iterator.hasNext();
    }

    public JsonValue next()
    {
        return (JsonValue)val$iterator.next();
    }

    public volatile Object next()
    {
        return next();
    }

    public void remove()
    {
        throw new UnsupportedOperationException();
    }

    tion()
    {
        this$0 = final_jsonarray;
        val$iterator = Iterator.this;
        super();
    }
}
