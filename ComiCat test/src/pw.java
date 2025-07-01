// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import java.util.AbstractSet;
import java.util.Collection;
import java.util.Iterator;
import java.util.Set;

public final class pw
{
    static abstract class a extends AbstractSet
    {

        public boolean removeAll(Collection collection)
        {
            return pw.a(this, collection);
        }

        public boolean retainAll(Collection collection)
        {
            return super.retainAll((Collection)pg.a(collection));
        }

        a()
        {
        }
    }


    static boolean a(Set set, Collection collection)
    {
        pg.a(collection);
        Object obj = collection;
        if (collection instanceof pv)
        {
            obj = ((pv)collection).a();
        }
        if ((obj instanceof Set) && ((Collection) (obj)).size() > set.size())
        {
            return pr.a(set.iterator(), ((Collection) (obj)));
        } else
        {
            return a(set, ((Collection) (obj)).iterator());
        }
    }

    static boolean a(Set set, Iterator iterator)
    {
        boolean flag;
        for (flag = false; iterator.hasNext(); flag |= set.remove(iterator.next())) { }
        return flag;
    }
}
