// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import java.util.AbstractCollection;
import java.util.AbstractMap;
import java.util.Collection;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;

public final class pt
{
    static abstract class a extends Enum
        implements pd
    {

        public static final a a;
        public static final a b;
        private static final a c[];

        public static a valueOf(String s)
        {
            return (a)Enum.valueOf(pt$a, s);
        }

        public static a[] values()
        {
            return (a[])c.clone();
        }

        static 
        {
            a = new a("KEY") {

                public final Object a(Object obj)
                {
                    return ((java.util.Map.Entry)obj).getKey();
                }

            };
            b = new a("VALUE") {

                public final Object a(Object obj)
                {
                    return ((java.util.Map.Entry)obj).getValue();
                }

            };
            c = (new a[] {
                a, b
            });
        }

        private a(String s, int i)
        {
            super(s, i);
        }

        a(String s, int i, byte byte0)
        {
            this(s, i);
        }
    }

    static abstract class b extends pw.a
    {

        abstract Map a();

        public void clear()
        {
            a().clear();
        }

        public boolean contains(Object obj)
        {
            boolean flag;
label0:
            {
                boolean flag1 = false;
                flag = flag1;
                if (!(obj instanceof java.util.Map.Entry))
                {
                    break label0;
                }
                obj = (java.util.Map.Entry)obj;
                Object obj1 = ((java.util.Map.Entry) (obj)).getKey();
                Object obj2 = pt.a(a(), obj1);
                flag = flag1;
                if (!pf.a(obj2, ((java.util.Map.Entry) (obj)).getValue()))
                {
                    break label0;
                }
                if (obj2 == null)
                {
                    flag = flag1;
                    if (!a().containsKey(obj1))
                    {
                        break label0;
                    }
                }
                flag = true;
            }
            return flag;
        }

        public boolean isEmpty()
        {
            return a().isEmpty();
        }

        public boolean remove(Object obj)
        {
            if (contains(obj))
            {
                obj = (java.util.Map.Entry)obj;
                return a().keySet().remove(((java.util.Map.Entry) (obj)).getKey());
            } else
            {
                return false;
            }
        }

        public boolean removeAll(Collection collection)
        {
            boolean flag;
            try
            {
                flag = super.removeAll((Collection)pg.a(collection));
            }
            catch (UnsupportedOperationException unsupportedoperationexception)
            {
                return pw.a(this, collection.iterator());
            }
            return flag;
        }

        public boolean retainAll(Collection collection)
        {
            boolean flag;
            try
            {
                flag = super.retainAll((Collection)pg.a(collection));
            }
            catch (UnsupportedOperationException unsupportedoperationexception)
            {
                HashSet hashset = new HashSet(pt.a(collection.size()));
                collection = collection.iterator();
                do
                {
                    if (!collection.hasNext())
                    {
                        break;
                    }
                    Object obj = collection.next();
                    if (contains(obj))
                    {
                        hashset.add(((java.util.Map.Entry)obj).getKey());
                    }
                } while (true);
                return a().keySet().retainAll(hashset);
            }
            return flag;
        }

        public int size()
        {
            return a().size();
        }

        b()
        {
        }
    }

    static abstract class c extends AbstractMap
    {

        private transient Set a;
        private transient Set b;
        private transient Collection c;

        abstract Set a();

        Set b()
        {
            return new d(this);
        }

        public Set entrySet()
        {
            Set set1 = a;
            Set set = set1;
            if (set1 == null)
            {
                set = a();
                a = set;
            }
            return set;
        }

        public Set keySet()
        {
            Set set1 = b;
            Set set = set1;
            if (set1 == null)
            {
                set = b();
                b = set;
            }
            return set;
        }

        public Collection values()
        {
            Collection collection = c;
            Object obj = collection;
            if (collection == null)
            {
                obj = new e(this);
                c = ((Collection) (obj));
            }
            return ((Collection) (obj));
        }

        c()
        {
        }
    }

    static class d extends pw.a
    {

        final Map c;

        public void clear()
        {
            c.clear();
        }

        public boolean contains(Object obj)
        {
            return c.containsKey(obj);
        }

        public boolean isEmpty()
        {
            return c.isEmpty();
        }

        public Iterator iterator()
        {
            return pt.a(c.entrySet().iterator());
        }

        public boolean remove(Object obj)
        {
            if (contains(obj))
            {
                c.remove(obj);
                return true;
            } else
            {
                return false;
            }
        }

        public int size()
        {
            return c.size();
        }

        d(Map map)
        {
            c = (Map)pg.a(map);
        }
    }

    static final class e extends AbstractCollection
    {

        final Map a;

        public final void clear()
        {
            a.clear();
        }

        public final boolean contains(Object obj)
        {
            return a.containsValue(obj);
        }

        public final boolean isEmpty()
        {
            return a.isEmpty();
        }

        public final Iterator iterator()
        {
            return pt.b(a.entrySet().iterator());
        }

        public final boolean remove(Object obj)
        {
            boolean flag;
            try
            {
                flag = super.remove(obj);
            }
            catch (UnsupportedOperationException unsupportedoperationexception)
            {
                for (Iterator iterator1 = a.entrySet().iterator(); iterator1.hasNext();)
                {
                    java.util.Map.Entry entry = (java.util.Map.Entry)iterator1.next();
                    if (pf.a(obj, entry.getValue()))
                    {
                        a.remove(entry.getKey());
                        return true;
                    }
                }

                return false;
            }
            return flag;
        }

        public final boolean removeAll(Collection collection)
        {
            boolean flag;
            try
            {
                flag = super.removeAll((Collection)pg.a(collection));
            }
            catch (UnsupportedOperationException unsupportedoperationexception)
            {
                HashSet hashset = new HashSet();
                Iterator iterator1 = a.entrySet().iterator();
                do
                {
                    if (!iterator1.hasNext())
                    {
                        break;
                    }
                    java.util.Map.Entry entry = (java.util.Map.Entry)iterator1.next();
                    if (collection.contains(entry.getValue()))
                    {
                        hashset.add(entry.getKey());
                    }
                } while (true);
                return a.keySet().removeAll(hashset);
            }
            return flag;
        }

        public final boolean retainAll(Collection collection)
        {
            boolean flag;
            try
            {
                flag = super.retainAll((Collection)pg.a(collection));
            }
            catch (UnsupportedOperationException unsupportedoperationexception)
            {
                HashSet hashset = new HashSet();
                Iterator iterator1 = a.entrySet().iterator();
                do
                {
                    if (!iterator1.hasNext())
                    {
                        break;
                    }
                    java.util.Map.Entry entry = (java.util.Map.Entry)iterator1.next();
                    if (collection.contains(entry.getValue()))
                    {
                        hashset.add(entry.getKey());
                    }
                } while (true);
                return a.keySet().retainAll(hashset);
            }
            return flag;
        }

        public final int size()
        {
            return a.size();
        }

        e(Map map)
        {
            a = (Map)pg.a(map);
        }
    }


    static final pe.a a;

    static int a(int i)
    {
        if (i < 3)
        {
            if (i < 0)
            {
                throw new IllegalArgumentException((new StringBuilder()).append("expectedSize").append(" cannot be negative but was: ").append(i).toString());
            } else
            {
                return i + 1;
            }
        }
        if (i < 0x40000000)
        {
            return i / 3 + i;
        } else
        {
            return 0x7fffffff;
        }
    }

    static Object a(Map map, Object obj)
    {
        pg.a(map);
        try
        {
            map = ((Map) (map.get(obj)));
        }
        // Misplaced declaration of an exception variable
        catch (Map map)
        {
            return null;
        }
        // Misplaced declaration of an exception variable
        catch (Map map)
        {
            return null;
        }
        return map;
    }

    static Iterator a(Iterator iterator)
    {
        return pr.a(iterator, a.a);
    }

    public static java.util.Map.Entry a(Object obj, Object obj1)
    {
        return new pq(obj, obj1);
    }

    static Iterator b(Iterator iterator)
    {
        return pr.a(iterator, a.b);
    }

    static boolean b(Map map, Object obj)
    {
        pg.a(map);
        boolean flag;
        try
        {
            flag = map.containsKey(obj);
        }
        // Misplaced declaration of an exception variable
        catch (Map map)
        {
            return false;
        }
        // Misplaced declaration of an exception variable
        catch (Map map)
        {
            return false;
        }
        return flag;
    }

    static Object c(Map map, Object obj)
    {
        pg.a(map);
        try
        {
            map = ((Map) (map.remove(obj)));
        }
        // Misplaced declaration of an exception variable
        catch (Map map)
        {
            return null;
        }
        // Misplaced declaration of an exception variable
        catch (Map map)
        {
            return null;
        }
        return map;
    }

    static 
    {
        a = new pe.a(pp.a, "=", (byte)0);
    }
}
