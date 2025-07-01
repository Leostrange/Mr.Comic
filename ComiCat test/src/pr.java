// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import java.util.Collection;
import java.util.Iterator;
import java.util.NoSuchElementException;

public final class pr
{

    static final pz a = new pz() {

        public final boolean hasNext()
        {
            return false;
        }

        public final boolean hasPrevious()
        {
            return false;
        }

        public final Object next()
        {
            throw new NoSuchElementException();
        }

        public final int nextIndex()
        {
            return 0;
        }

        public final Object previous()
        {
            throw new NoSuchElementException();
        }

        public final int previousIndex()
        {
            return -1;
        }

    };
    private static final Iterator b = new Iterator() {

        public final boolean hasNext()
        {
            return false;
        }

        public final Object next()
        {
            throw new NoSuchElementException();
        }

        public final void remove()
        {
            po.a(false);
        }

    };

    public static Iterator a(Iterator iterator, pd pd)
    {
        pg.a(pd);
        return new px(iterator, pd) {

            final pd a;

            final Object a(Object obj)
            {
                return a.a(obj);
            }

            
            {
                a = pd1;
                super(iterator);
            }
        };
    }

    static void a(Iterator iterator)
    {
        pg.a(iterator);
        for (; iterator.hasNext(); iterator.remove())
        {
            iterator.next();
        }

    }

    public static boolean a(Iterator iterator, Collection collection)
    {
        collection = pi.a(collection);
        pg.a(collection);
        boolean flag = false;
        do
        {
            if (!iterator.hasNext())
            {
                break;
            }
            if (collection.a(iterator.next()))
            {
                iterator.remove();
                flag = true;
            }
        } while (true);
        return flag;
    }

}
