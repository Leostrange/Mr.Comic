// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.box.androidsdk.content.models;

import com.eclipsesource.json.JsonArray;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;

// Referenced classes of package com.box.androidsdk.content.models:
//            BoxJsonObject

public class BoxArray
    implements Collection
{

    protected final Collection collection = new ArrayList();

    public BoxArray()
    {
    }

    public boolean add(BoxJsonObject boxjsonobject)
    {
        return collection.add(boxjsonobject);
    }

    public volatile boolean add(Object obj)
    {
        return add((BoxJsonObject)obj);
    }

    public boolean addAll(Collection collection1)
    {
        return collection.addAll(collection1);
    }

    public void clear()
    {
        collection.clear();
    }

    public boolean contains(Object obj)
    {
        return collection.contains(obj);
    }

    public boolean containsAll(Collection collection1)
    {
        return collection.containsAll(collection1);
    }

    public boolean equals(Object obj)
    {
        return collection.equals(obj);
    }

    public BoxJsonObject get(int i)
    {
        if (collection instanceof List)
        {
            return (BoxJsonObject)((List)collection).get(i);
        }
        if (i < 0)
        {
            throw new IndexOutOfBoundsException();
        }
        for (Iterator iterator1 = iterator(); iterator1.hasNext(); iterator1.next())
        {
            if (i == 0)
            {
                return (BoxJsonObject)iterator1.next();
            }
        }

        throw new IndexOutOfBoundsException();
    }

    public int hashCode()
    {
        return collection.hashCode();
    }

    public boolean isEmpty()
    {
        return collection.isEmpty();
    }

    public Iterator iterator()
    {
        return collection.iterator();
    }

    public boolean remove(Object obj)
    {
        return collection.remove(obj);
    }

    public boolean removeAll(Collection collection1)
    {
        return collection.removeAll(collection1);
    }

    public boolean retainAll(Collection collection1)
    {
        return collection.retainAll(collection1);
    }

    public int size()
    {
        return collection.size();
    }

    public Object[] toArray()
    {
        return collection.toArray();
    }

    public Object[] toArray(Object aobj[])
    {
        return collection.toArray(aobj);
    }

    public String toJson()
    {
        JsonArray jsonarray = new JsonArray();
        for (int i = 0; i < size(); i++)
        {
            jsonarray.add(get(i).toJsonObject());
        }

        return jsonarray.toString();
    }
}
