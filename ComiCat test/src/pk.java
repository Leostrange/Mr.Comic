// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import java.io.Serializable;
import java.util.AbstractCollection;
import java.util.Collection;
import java.util.Comparator;
import java.util.ConcurrentModificationException;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import java.util.Map;
import java.util.RandomAccess;
import java.util.Set;
import java.util.SortedMap;
import java.util.SortedSet;

abstract class pk extends pm
    implements Serializable
{
    class a extends pt.c
    {

        final transient Map a;
        final pk b;

        protected final Set a()
        {
            return new a(this);
        }

        public void clear()
        {
            if (a == pk.a(b))
            {
                b.d();
                return;
            } else
            {
                pr.a(new b(this));
                return;
            }
        }

        public boolean containsKey(Object obj)
        {
            return pt.b(a, obj);
        }

        public boolean equals(Object obj)
        {
            return this == obj || a.equals(obj);
        }

        public Object get(Object obj)
        {
            Collection collection = (Collection)pt.a(a, obj);
            if (collection == null)
            {
                return null;
            } else
            {
                return b.a(obj, collection);
            }
        }

        public int hashCode()
        {
            return a.hashCode();
        }

        public Set keySet()
        {
            return b.g();
        }

        public Object remove(Object obj)
        {
            obj = (Collection)a.remove(obj);
            if (obj == null)
            {
                return null;
            } else
            {
                Collection collection = b.c();
                collection.addAll(((Collection) (obj)));
                pk.b(b, ((Collection) (obj)).size());
                ((Collection) (obj)).clear();
                return collection;
            }
        }

        public int size()
        {
            return a.size();
        }

        public String toString()
        {
            return a.toString();
        }

        a(Map map)
        {
            b = pk.this;
            super();
            a = map;
        }
    }

    final class a.a extends pt.b
    {

        final a a;

        final Map a()
        {
            return a;
        }

        public final boolean contains(Object obj)
        {
            return pp.a(a.a.entrySet(), obj);
        }

        public final Iterator iterator()
        {
            return new a.b(a);
        }

        public final boolean remove(Object obj)
        {
            if (!contains(obj))
            {
                return false;
            } else
            {
                obj = (java.util.Map.Entry)obj;
                pk.a(a.b, ((java.util.Map.Entry) (obj)).getKey());
                return true;
            }
        }

        a.a(a a1)
        {
            a = a1;
            super();
        }
    }

    final class a.b
        implements Iterator
    {

        final Iterator a;
        Collection b;
        final a c;

        public final boolean hasNext()
        {
            return a.hasNext();
        }

        public final Object next()
        {
            java.util.Map.Entry entry = (java.util.Map.Entry)a.next();
            b = (Collection)entry.getValue();
            a a1 = c;
            Object obj = entry.getKey();
            return pt.a(obj, a1.b.a(obj, (Collection)entry.getValue()));
        }

        public final void remove()
        {
            a.remove();
            pk.b(c.b, b.size());
            b.clear();
        }

        a.b(a a1)
        {
            c = a1;
            super();
            a = c.a.entrySet().iterator();
        }
    }

    class b extends pt.d
    {

        final pk a;

        public void clear()
        {
            pr.a(iterator());
        }

        public boolean containsAll(Collection collection)
        {
            return super.c.keySet().containsAll(collection);
        }

        public boolean equals(Object obj)
        {
            return this == obj || super.c.keySet().equals(obj);
        }

        public int hashCode()
        {
            return super.c.keySet().hashCode();
        }

        public Iterator iterator()
        {
            return new Iterator(this, super.c.entrySet().iterator()) {

                java.util.Map.Entry a;
                final Iterator b;
                final b c;

                public final boolean hasNext()
                {
                    return b.hasNext();
                }

                public final Object next()
                {
                    a = (java.util.Map.Entry)b.next();
                    return a.getKey();
                }

                public final void remove()
                {
                    Collection collection;
                    boolean flag;
                    if (a != null)
                    {
                        flag = true;
                    } else
                    {
                        flag = false;
                    }
                    po.a(flag);
                    collection = (Collection)a.getValue();
                    b.remove();
                    pk.b(c.a, collection.size());
                    collection.clear();
                }

            
            {
                c = b1;
                b = iterator;
                super();
            }
            };
        }

        public boolean remove(Object obj)
        {
            obj = (Collection)super.c.remove(obj);
            int j;
            if (obj != null)
            {
                j = ((Collection) (obj)).size();
                ((Collection) (obj)).clear();
                pk.b(a, j);
            } else
            {
                j = 0;
            }
            return j > 0;
        }

        b(Map map)
        {
            a = pk.this;
            super(map);
        }
    }

    final class c extends g
        implements RandomAccess
    {

        final pk a;

        c(Object obj, List list, f f1)
        {
            a = pk.this;
            super(obj, list, f1);
        }
    }

    public final class d extends a
        implements SortedMap
    {

        SortedSet c;
        final pk d;

        private SortedSet c()
        {
            return d. new e((SortedMap)a);
        }

        final Set b()
        {
            return c();
        }

        public final Comparator comparator()
        {
            return ((SortedMap)a).comparator();
        }

        public final Object firstKey()
        {
            return ((SortedMap)a).firstKey();
        }

        public final SortedMap headMap(Object obj)
        {
            return d. new d(((SortedMap)a).headMap(obj));
        }

        public final Set keySet()
        {
            SortedSet sortedset1 = c;
            SortedSet sortedset = sortedset1;
            if (sortedset1 == null)
            {
                sortedset = c();
                c = sortedset;
            }
            return sortedset;
        }

        public final Object lastKey()
        {
            return ((SortedMap)a).lastKey();
        }

        public final SortedMap subMap(Object obj, Object obj1)
        {
            return d. new d(((SortedMap)a).subMap(obj, obj1));
        }

        public final SortedMap tailMap(Object obj)
        {
            return d. new d(((SortedMap)a).tailMap(obj));
        }

        d(SortedMap sortedmap)
        {
            d = pk.this;
            super(sortedmap);
        }
    }

    public final class e extends b
        implements SortedSet
    {

        final pk b;

        public final Comparator comparator()
        {
            return ((SortedMap)super.c).comparator();
        }

        public final Object first()
        {
            return ((SortedMap)super.c).firstKey();
        }

        public final SortedSet headSet(Object obj)
        {
            return b. new e(((SortedMap)super.c).headMap(obj));
        }

        public final Object last()
        {
            return ((SortedMap)super.c).lastKey();
        }

        public final SortedSet subSet(Object obj, Object obj1)
        {
            return b. new e(((SortedMap)super.c).subMap(obj, obj1));
        }

        public final SortedSet tailSet(Object obj)
        {
            return b. new e(((SortedMap)super.c).tailMap(obj));
        }

        e(SortedMap sortedmap)
        {
            b = pk.this;
            super(sortedmap);
        }
    }

    class f extends AbstractCollection
    {

        final Object b;
        Collection c;
        final f d;
        final Collection e;
        final pk f;

        final void a()
        {
            if (d != null)
            {
                d.a();
                if (d.c != e)
                {
                    throw new ConcurrentModificationException();
                }
            } else
            if (c.isEmpty())
            {
                Collection collection = (Collection)pk.a(f).get(b);
                if (collection != null)
                {
                    c = collection;
                }
            }
        }

        public boolean add(Object obj)
        {
            a();
            boolean flag = c.isEmpty();
            boolean flag1 = c.add(obj);
            if (flag1)
            {
                pk.c(f);
                if (flag)
                {
                    c();
                }
            }
            return flag1;
        }

        public boolean addAll(Collection collection)
        {
            boolean flag;
            if (collection.isEmpty())
            {
                flag = false;
            } else
            {
                int j = size();
                boolean flag1 = c.addAll(collection);
                flag = flag1;
                if (flag1)
                {
                    int k = c.size();
                    pk.a(f, k - j);
                    flag = flag1;
                    if (j == 0)
                    {
                        c();
                        return flag1;
                    }
                }
            }
            return flag;
        }

        final void b()
        {
            f f1;
            for (f1 = this; f1.d != null; f1 = f1.d) { }
            if (f1.c.isEmpty())
            {
                pk.a(f1.f).remove(f1.b);
            }
        }

        final void c()
        {
            f f1;
            for (f1 = this; f1.d != null; f1 = f1.d) { }
            pk.a(f1.f).put(f1.b, f1.c);
        }

        public void clear()
        {
            int j = size();
            if (j == 0)
            {
                return;
            } else
            {
                c.clear();
                pk.b(f, j);
                b();
                return;
            }
        }

        public boolean contains(Object obj)
        {
            a();
            return c.contains(obj);
        }

        public boolean containsAll(Collection collection)
        {
            a();
            return c.containsAll(collection);
        }

        public boolean equals(Object obj)
        {
            if (obj == this)
            {
                return true;
            } else
            {
                a();
                return c.equals(obj);
            }
        }

        public int hashCode()
        {
            a();
            return c.hashCode();
        }

        public Iterator iterator()
        {
            a();
            return new a(this);
        }

        public boolean remove(Object obj)
        {
            a();
            boolean flag = c.remove(obj);
            if (flag)
            {
                pk.b(f);
                b();
            }
            return flag;
        }

        public boolean removeAll(Collection collection)
        {
            boolean flag;
            if (collection.isEmpty())
            {
                flag = false;
            } else
            {
                int j = size();
                boolean flag1 = c.removeAll(collection);
                flag = flag1;
                if (flag1)
                {
                    int k = c.size();
                    pk.a(f, k - j);
                    b();
                    return flag1;
                }
            }
            return flag;
        }

        public boolean retainAll(Collection collection)
        {
            pg.a(collection);
            int j = size();
            boolean flag = c.retainAll(collection);
            if (flag)
            {
                int k = c.size();
                pk.a(f, k - j);
                b();
            }
            return flag;
        }

        public int size()
        {
            a();
            return c.size();
        }

        public String toString()
        {
            a();
            return c.toString();
        }

        f(Object obj, Collection collection, f f1)
        {
            f = pk.this;
            super();
            b = obj;
            c = collection;
            d = f1;
            if (f1 == null)
            {
                pk1 = null;
            } else
            {
                pk1 = f1.c;
            }
            e = pk.this;
        }
    }

    class f.a
        implements Iterator
    {

        final Iterator a;
        final Collection b;
        final f c;

        final void a()
        {
            c.a();
            if (c.c != b)
            {
                throw new ConcurrentModificationException();
            } else
            {
                return;
            }
        }

        public boolean hasNext()
        {
            a();
            return a.hasNext();
        }

        public Object next()
        {
            a();
            return a.next();
        }

        public void remove()
        {
            a.remove();
            pk.b(c.f);
            c.b();
        }

        f.a(f f1)
        {
            c = f1;
            super();
            b = c.c;
            a = pk.a(f1.c);
        }

        f.a(f f1, Iterator iterator)
        {
            c = f1;
            super();
            b = c.c;
            a = iterator;
        }
    }

    class g extends f
        implements List
    {

        final pk g;

        public void add(int j, Object obj)
        {
            a();
            boolean flag = super.c.isEmpty();
            ((List)super.c).add(j, obj);
            pk.c(g);
            if (flag)
            {
                c();
            }
        }

        public boolean addAll(int j, Collection collection)
        {
            boolean flag;
            if (collection.isEmpty())
            {
                flag = false;
            } else
            {
                int k = size();
                boolean flag1 = ((List)super.c).addAll(j, collection);
                flag = flag1;
                if (flag1)
                {
                    j = super.c.size();
                    pk.a(g, j - k);
                    flag = flag1;
                    if (k == 0)
                    {
                        c();
                        return flag1;
                    }
                }
            }
            return flag;
        }

        public Object get(int j)
        {
            a();
            return ((List)super.c).get(j);
        }

        public int indexOf(Object obj)
        {
            a();
            return ((List)super.c).indexOf(obj);
        }

        public int lastIndexOf(Object obj)
        {
            a();
            return ((List)super.c).lastIndexOf(obj);
        }

        public ListIterator listIterator()
        {
            a();
            return new a(this);
        }

        public ListIterator listIterator(int j)
        {
            a();
            return new a(this, j);
        }

        public Object remove(int j)
        {
            a();
            Object obj = ((List)super.c).remove(j);
            pk.b(g);
            b();
            return obj;
        }

        public Object set(int j, Object obj)
        {
            a();
            return ((List)super.c).set(j, obj);
        }

        public List subList(int j, int k)
        {
            a();
            pk pk1 = g;
            Object obj1 = super.b;
            List list = ((List)super.c).subList(j, k);
            Object obj;
            if (super.d == null)
            {
                obj = this;
            } else
            {
                obj = super.d;
            }
            return pk.a(pk1, obj1, list, ((f) (obj)));
        }

        g(Object obj, List list, f f1)
        {
            g = pk.this;
            super(obj, list, f1);
        }
    }

    final class g.a extends f.a
        implements ListIterator
    {

        final g d;

        private ListIterator b()
        {
            ((f.a)this).a();
            return (ListIterator)super.a;
        }

        public final void add(Object obj)
        {
            boolean flag = d.isEmpty();
            b().add(obj);
            pk.c(d.g);
            if (flag)
            {
                d.c();
            }
        }

        public final boolean hasPrevious()
        {
            return b().hasPrevious();
        }

        public final int nextIndex()
        {
            return b().nextIndex();
        }

        public final Object previous()
        {
            return b().previous();
        }

        public final int previousIndex()
        {
            return b().previousIndex();
        }

        public final void set(Object obj)
        {
            b().set(obj);
        }

        g.a(g g1)
        {
            d = g1;
            super(g1);
        }

        public g.a(g g1, int j)
        {
            d = g1;
            super(g1, ((List)((f) (g1)).c).listIterator(j));
        }
    }

    final class h extends f
        implements Set
    {

        final pk a;

        public final boolean removeAll(Collection collection)
        {
            boolean flag;
            if (collection.isEmpty())
            {
                flag = false;
            } else
            {
                int j = size();
                boolean flag1 = pw.a((Set)c, collection);
                flag = flag1;
                if (flag1)
                {
                    int k = c.size();
                    pk.a(a, k - j);
                    b();
                    return flag1;
                }
            }
            return flag;
        }

        h(Object obj, Set set)
        {
            a = pk.this;
            super(obj, set, null);
        }
    }

    public final class i extends f
        implements SortedSet
    {

        final pk a;

        public final Comparator comparator()
        {
            return ((SortedSet)super.c).comparator();
        }

        public final Object first()
        {
            a();
            return ((SortedSet)super.c).first();
        }

        public final SortedSet headSet(Object obj)
        {
            a();
            pk pk1 = a;
            Object obj1 = super.b;
            SortedSet sortedset = ((SortedSet)super.c).headSet(obj);
            if (super.d == null)
            {
                obj = this;
            } else
            {
                obj = super.d;
            }
            return pk1. new i(obj1, sortedset, ((f) (obj)));
        }

        public final Object last()
        {
            a();
            return ((SortedSet)super.c).last();
        }

        public final SortedSet subSet(Object obj, Object obj1)
        {
            a();
            pk pk1 = a;
            Object obj2 = super.b;
            obj1 = ((SortedSet)super.c).subSet(obj, obj1);
            if (super.d == null)
            {
                obj = this;
            } else
            {
                obj = super.d;
            }
            return pk1. new i(obj2, ((SortedSet) (obj1)), ((f) (obj)));
        }

        public final SortedSet tailSet(Object obj)
        {
            a();
            pk pk1 = a;
            Object obj1 = super.b;
            SortedSet sortedset = ((SortedSet)super.c).tailSet(obj);
            if (super.d == null)
            {
                obj = this;
            } else
            {
                obj = super.d;
            }
            return pk1. new i(obj1, sortedset, ((f) (obj)));
        }

        i(Object obj, SortedSet sortedset, f f1)
        {
            a = pk.this;
            super(obj, sortedset, f1);
        }
    }


    private transient Map a;
    private transient int b;

    protected pk(Map map)
    {
        if (!map.isEmpty())
        {
            throw new IllegalArgumentException();
        } else
        {
            a = map;
            return;
        }
    }

    static int a(pk pk1, int j)
    {
        j = pk1.b + j;
        pk1.b = j;
        return j;
    }

    static int a(pk pk1, Object obj)
    {
        obj = (Collection)pt.c(pk1.a, obj);
        int j = 0;
        if (obj != null)
        {
            j = ((Collection) (obj)).size();
            ((Collection) (obj)).clear();
            pk1.b = pk1.b - j;
        }
        return j;
    }

    static Iterator a(Collection collection)
    {
        if (collection instanceof List)
        {
            return ((List)collection).listIterator();
        } else
        {
            return collection.iterator();
        }
    }

    private List a(Object obj, List list, f f1)
    {
        if (list instanceof RandomAccess)
        {
            return new c(obj, list, f1);
        } else
        {
            return new g(obj, list, f1);
        }
    }

    static List a(pk pk1, Object obj, List list, f f1)
    {
        return pk1.a(obj, list, f1);
    }

    static Map a(pk pk1)
    {
        return pk1.a;
    }

    static int b(pk pk1)
    {
        int j = pk1.b;
        pk1.b = j - 1;
        return j;
    }

    static int b(pk pk1, int j)
    {
        j = pk1.b - j;
        pk1.b = j;
        return j;
    }

    static int c(pk pk1)
    {
        int j = pk1.b;
        pk1.b = j + 1;
        return j;
    }

    final Collection a(Object obj, Collection collection)
    {
        if (collection instanceof SortedSet)
        {
            return new i(obj, (SortedSet)collection, null);
        }
        if (collection instanceof Set)
        {
            return new h(obj, (Set)collection);
        }
        if (collection instanceof List)
        {
            return a(obj, (List)collection, null);
        } else
        {
            return new f(obj, collection, null);
        }
    }

    public boolean a(Object obj, Object obj1)
    {
        Collection collection = (Collection)a.get(obj);
        if (collection == null)
        {
            collection = c();
            if (collection.add(obj1))
            {
                b = b + 1;
                a.put(obj, collection);
                return true;
            } else
            {
                throw new AssertionError("New Collection violated the Collection spec");
            }
        }
        if (collection.add(obj1))
        {
            b = b + 1;
            return true;
        } else
        {
            return false;
        }
    }

    public Collection b(Object obj)
    {
        Collection collection1 = (Collection)a.get(obj);
        Collection collection = collection1;
        if (collection1 == null)
        {
            collection = c();
        }
        return a(obj, collection);
    }

    abstract Collection c();

    public void d()
    {
        for (Iterator iterator = a.values().iterator(); iterator.hasNext(); ((Collection)iterator.next()).clear()) { }
        a.clear();
        b = 0;
    }

    final Set e()
    {
        if (a instanceof SortedMap)
        {
            return new e((SortedMap)a);
        } else
        {
            return new b(a);
        }
    }

    final Map f()
    {
        if (a instanceof SortedMap)
        {
            return new d((SortedMap)a);
        } else
        {
            return new a(a);
        }
    }
}
