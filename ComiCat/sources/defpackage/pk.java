package defpackage;

import defpackage.pt;
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

/* renamed from: pk  reason: default package */
/* compiled from: AbstractMapBasedMultimap */
abstract class pk<K, V> extends pm<K, V> implements Serializable {
    /* access modifiers changed from: private */
    public transient Map<K, Collection<V>> a;
    private transient int b;

    /* renamed from: pk$a */
    /* compiled from: AbstractMapBasedMultimap */
    class a extends pt.c<K, Collection<V>> {
        final transient Map<K, Collection<V>> a;

        /* renamed from: pk$a$a  reason: collision with other inner class name */
        /* compiled from: AbstractMapBasedMultimap */
        class C0008a extends pt.b<K, Collection<V>> {
            C0008a() {
            }

            /* access modifiers changed from: package-private */
            public final Map<K, Collection<V>> a() {
                return a.this;
            }

            public final boolean contains(Object obj) {
                return pp.a(a.this.a.entrySet(), obj);
            }

            public final Iterator<Map.Entry<K, Collection<V>>> iterator() {
                return new b();
            }

            public final boolean remove(Object obj) {
                if (!contains(obj)) {
                    return false;
                }
                pk.a(pk.this, ((Map.Entry) obj).getKey());
                return true;
            }
        }

        /* renamed from: pk$a$b */
        /* compiled from: AbstractMapBasedMultimap */
        class b implements Iterator<Map.Entry<K, Collection<V>>> {
            final Iterator<Map.Entry<K, Collection<V>>> a = a.this.a.entrySet().iterator();
            Collection<V> b;

            b() {
            }

            public final boolean hasNext() {
                return this.a.hasNext();
            }

            public final /* synthetic */ Object next() {
                Map.Entry next = this.a.next();
                this.b = (Collection) next.getValue();
                a aVar = a.this;
                Object key = next.getKey();
                return pt.a(key, pk.this.a(key, (Collection) next.getValue()));
            }

            public final void remove() {
                this.a.remove();
                pk.b(pk.this, this.b.size());
                this.b.clear();
            }
        }

        a(Map<K, Collection<V>> map) {
            this.a = map;
        }

        /* access modifiers changed from: protected */
        public final Set<Map.Entry<K, Collection<V>>> a() {
            return new C0008a();
        }

        public void clear() {
            if (this.a == pk.this.a) {
                pk.this.d();
            } else {
                pr.a(new b());
            }
        }

        public boolean containsKey(Object obj) {
            return pt.b(this.a, obj);
        }

        public boolean equals(Object obj) {
            return this == obj || this.a.equals(obj);
        }

        public /* synthetic */ Object get(Object obj) {
            Collection collection = (Collection) pt.a(this.a, obj);
            if (collection == null) {
                return null;
            }
            return pk.this.a(obj, collection);
        }

        public int hashCode() {
            return this.a.hashCode();
        }

        public Set<K> keySet() {
            return pk.this.g();
        }

        public /* synthetic */ Object remove(Object obj) {
            Collection remove = this.a.remove(obj);
            if (remove == null) {
                return null;
            }
            Collection c = pk.this.c();
            c.addAll(remove);
            pk.b(pk.this, remove.size());
            remove.clear();
            return c;
        }

        public int size() {
            return this.a.size();
        }

        public String toString() {
            return this.a.toString();
        }
    }

    /* renamed from: pk$b */
    /* compiled from: AbstractMapBasedMultimap */
    class b extends pt.d<K, Collection<V>> {
        b(Map<K, Collection<V>> map) {
            super(map);
        }

        public void clear() {
            pr.a(iterator());
        }

        public boolean containsAll(Collection<?> collection) {
            return this.c.keySet().containsAll(collection);
        }

        public boolean equals(Object obj) {
            return this == obj || this.c.keySet().equals(obj);
        }

        public int hashCode() {
            return this.c.keySet().hashCode();
        }

        public Iterator<K> iterator() {
            final Iterator<Map.Entry<K, V>> it = this.c.entrySet().iterator();
            return new Iterator<K>() {
                Map.Entry<K, Collection<V>> a;

                public final boolean hasNext() {
                    return it.hasNext();
                }

                public final K next() {
                    this.a = (Map.Entry) it.next();
                    return this.a.getKey();
                }

                public final void remove() {
                    po.a(this.a != null);
                    Collection value = this.a.getValue();
                    it.remove();
                    pk.b(pk.this, value.size());
                    value.clear();
                }
            };
        }

        public boolean remove(Object obj) {
            int i;
            Collection collection = (Collection) this.c.remove(obj);
            if (collection != null) {
                int size = collection.size();
                collection.clear();
                pk.b(pk.this, size);
                i = size;
            } else {
                i = 0;
            }
            return i > 0;
        }
    }

    /* renamed from: pk$c */
    /* compiled from: AbstractMapBasedMultimap */
    class c extends pk<K, V>.g implements RandomAccess {
        c(K k, List<V> list, pk<K, V>.f fVar) {
            super(k, list, fVar);
        }
    }

    /* renamed from: pk$d */
    /* compiled from: AbstractMapBasedMultimap */
    public class d extends pk<K, V>.a implements SortedMap<K, Collection<V>> {
        SortedSet<K> c;

        d(SortedMap<K, Collection<V>> sortedMap) {
            super(sortedMap);
        }

        /* access modifiers changed from: private */
        /* renamed from: c */
        public SortedSet<K> b() {
            return new e((SortedMap) this.a);
        }

        public final Comparator<? super K> comparator() {
            return ((SortedMap) this.a).comparator();
        }

        public final K firstKey() {
            return ((SortedMap) this.a).firstKey();
        }

        public final SortedMap<K, Collection<V>> headMap(K k) {
            return new d(((SortedMap) this.a).headMap(k));
        }

        public final /* synthetic */ Set keySet() {
            SortedSet<K> sortedSet = this.c;
            if (sortedSet != null) {
                return sortedSet;
            }
            SortedSet<K> c2 = b();
            this.c = c2;
            return c2;
        }

        public final K lastKey() {
            return ((SortedMap) this.a).lastKey();
        }

        public final SortedMap<K, Collection<V>> subMap(K k, K k2) {
            return new d(((SortedMap) this.a).subMap(k, k2));
        }

        public final SortedMap<K, Collection<V>> tailMap(K k) {
            return new d(((SortedMap) this.a).tailMap(k));
        }
    }

    /* renamed from: pk$e */
    /* compiled from: AbstractMapBasedMultimap */
    public class e extends pk<K, V>.b implements SortedSet<K> {
        e(SortedMap<K, Collection<V>> sortedMap) {
            super(sortedMap);
        }

        public final Comparator<? super K> comparator() {
            return ((SortedMap) this.c).comparator();
        }

        public final K first() {
            return ((SortedMap) this.c).firstKey();
        }

        public final SortedSet<K> headSet(K k) {
            return new e(((SortedMap) this.c).headMap(k));
        }

        public final K last() {
            return ((SortedMap) this.c).lastKey();
        }

        public final SortedSet<K> subSet(K k, K k2) {
            return new e(((SortedMap) this.c).subMap(k, k2));
        }

        public final SortedSet<K> tailSet(K k) {
            return new e(((SortedMap) this.c).tailMap(k));
        }
    }

    /* renamed from: pk$f */
    /* compiled from: AbstractMapBasedMultimap */
    class f extends AbstractCollection<V> {
        final K b;
        Collection<V> c;
        final pk<K, V>.f d;
        final Collection<V> e;

        /* renamed from: pk$f$a */
        /* compiled from: AbstractMapBasedMultimap */
        class a implements Iterator<V> {
            final Iterator<V> a;
            final Collection<V> b = f.this.c;

            a() {
                this.a = pk.a((Collection) f.this.c);
            }

            a(Iterator<V> it) {
                this.a = it;
            }

            /* access modifiers changed from: package-private */
            public final void a() {
                f.this.a();
                if (f.this.c != this.b) {
                    throw new ConcurrentModificationException();
                }
            }

            public boolean hasNext() {
                a();
                return this.a.hasNext();
            }

            public V next() {
                a();
                return this.a.next();
            }

            public void remove() {
                this.a.remove();
                pk.b(pk.this);
                f.this.b();
            }
        }

        f(K k, Collection<V> collection, pk<K, V>.f fVar) {
            this.b = k;
            this.c = collection;
            this.d = fVar;
            this.e = fVar == null ? null : fVar.c;
        }

        /* access modifiers changed from: package-private */
        public final void a() {
            Collection<V> collection;
            if (this.d != null) {
                this.d.a();
                if (this.d.c != this.e) {
                    throw new ConcurrentModificationException();
                }
            } else if (this.c.isEmpty() && (collection = (Collection) pk.this.a.get(this.b)) != null) {
                this.c = collection;
            }
        }

        public boolean add(V v) {
            a();
            boolean isEmpty = this.c.isEmpty();
            boolean add = this.c.add(v);
            if (add) {
                pk.c(pk.this);
                if (isEmpty) {
                    c();
                }
            }
            return add;
        }

        public boolean addAll(Collection<? extends V> collection) {
            if (collection.isEmpty()) {
                return false;
            }
            int size = size();
            boolean addAll = this.c.addAll(collection);
            if (!addAll) {
                return addAll;
            }
            pk.a(pk.this, this.c.size() - size);
            if (size != 0) {
                return addAll;
            }
            c();
            return addAll;
        }

        /* access modifiers changed from: package-private */
        public final void b() {
            while (this.d != null) {
                this = this.d;
            }
            if (this.c.isEmpty()) {
                pk.this.a.remove(this.b);
            }
        }

        /* access modifiers changed from: package-private */
        public final void c() {
            while (this.d != null) {
                this = this.d;
            }
            pk.this.a.put(this.b, this.c);
        }

        public void clear() {
            int size = size();
            if (size != 0) {
                this.c.clear();
                pk.b(pk.this, size);
                b();
            }
        }

        public boolean contains(Object obj) {
            a();
            return this.c.contains(obj);
        }

        public boolean containsAll(Collection<?> collection) {
            a();
            return this.c.containsAll(collection);
        }

        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            a();
            return this.c.equals(obj);
        }

        public int hashCode() {
            a();
            return this.c.hashCode();
        }

        public Iterator<V> iterator() {
            a();
            return new a();
        }

        public boolean remove(Object obj) {
            a();
            boolean remove = this.c.remove(obj);
            if (remove) {
                pk.b(pk.this);
                b();
            }
            return remove;
        }

        public boolean removeAll(Collection<?> collection) {
            if (collection.isEmpty()) {
                return false;
            }
            int size = size();
            boolean removeAll = this.c.removeAll(collection);
            if (!removeAll) {
                return removeAll;
            }
            pk.a(pk.this, this.c.size() - size);
            b();
            return removeAll;
        }

        public boolean retainAll(Collection<?> collection) {
            pg.a(collection);
            int size = size();
            boolean retainAll = this.c.retainAll(collection);
            if (retainAll) {
                pk.a(pk.this, this.c.size() - size);
                b();
            }
            return retainAll;
        }

        public int size() {
            a();
            return this.c.size();
        }

        public String toString() {
            a();
            return this.c.toString();
        }
    }

    /* renamed from: pk$g */
    /* compiled from: AbstractMapBasedMultimap */
    class g extends pk<K, V>.f implements List<V> {

        /* renamed from: pk$g$a */
        /* compiled from: AbstractMapBasedMultimap */
        class a extends pk<K, V>.f.a implements ListIterator<V> {
            a() {
                super();
            }

            public a(int i) {
                super(((List) g.this.c).listIterator(i));
            }

            /* JADX WARNING: type inference failed for: r1v0, types: [pk$f$a, pk$g$a] */
            private ListIterator<V> b() {
                a();
                return (ListIterator) this.a;
            }

            public final void add(V v) {
                boolean isEmpty = g.this.isEmpty();
                b().add(v);
                pk.c(pk.this);
                if (isEmpty) {
                    g.this.c();
                }
            }

            public final boolean hasPrevious() {
                return b().hasPrevious();
            }

            public final int nextIndex() {
                return b().nextIndex();
            }

            public final V previous() {
                return b().previous();
            }

            public final int previousIndex() {
                return b().previousIndex();
            }

            public final void set(V v) {
                b().set(v);
            }
        }

        g(K k, List<V> list, pk<K, V>.f fVar) {
            super(k, list, fVar);
        }

        public void add(int i, V v) {
            a();
            boolean isEmpty = this.c.isEmpty();
            ((List) this.c).add(i, v);
            pk.c(pk.this);
            if (isEmpty) {
                c();
            }
        }

        public boolean addAll(int i, Collection<? extends V> collection) {
            if (collection.isEmpty()) {
                return false;
            }
            int size = size();
            boolean addAll = ((List) this.c).addAll(i, collection);
            if (!addAll) {
                return addAll;
            }
            pk.a(pk.this, this.c.size() - size);
            if (size != 0) {
                return addAll;
            }
            c();
            return addAll;
        }

        public V get(int i) {
            a();
            return ((List) this.c).get(i);
        }

        public int indexOf(Object obj) {
            a();
            return ((List) this.c).indexOf(obj);
        }

        public int lastIndexOf(Object obj) {
            a();
            return ((List) this.c).lastIndexOf(obj);
        }

        public ListIterator<V> listIterator() {
            a();
            return new a();
        }

        public ListIterator<V> listIterator(int i) {
            a();
            return new a(i);
        }

        public V remove(int i) {
            a();
            V remove = ((List) this.c).remove(i);
            pk.b(pk.this);
            b();
            return remove;
        }

        public V set(int i, V v) {
            a();
            return ((List) this.c).set(i, v);
        }

        public List<V> subList(int i, int i2) {
            a();
            pk pkVar = pk.this;
            K k = this.b;
            List subList = ((List) this.c).subList(i, i2);
            pk<K, V>.f fVar = this.d;
            this = this;
            if (fVar != null) {
                this = this.d;
            }
            return pkVar.a(k, subList, this);
        }
    }

    /* renamed from: pk$h */
    /* compiled from: AbstractMapBasedMultimap */
    class h extends pk<K, V>.f implements Set<V> {
        h(K k, Set<V> set) {
            super(k, set, (pk<K, V>.f) null);
        }

        public final boolean removeAll(Collection<?> collection) {
            if (collection.isEmpty()) {
                return false;
            }
            int size = size();
            boolean a2 = pw.a((Set<?>) (Set) this.c, collection);
            if (!a2) {
                return a2;
            }
            pk.a(pk.this, this.c.size() - size);
            b();
            return a2;
        }
    }

    /* renamed from: pk$i */
    /* compiled from: AbstractMapBasedMultimap */
    public class i extends pk<K, V>.f implements SortedSet<V> {
        i(K k, SortedSet<V> sortedSet, pk<K, V>.f fVar) {
            super(k, sortedSet, fVar);
        }

        public final Comparator<? super V> comparator() {
            return ((SortedSet) this.c).comparator();
        }

        public final V first() {
            a();
            return ((SortedSet) this.c).first();
        }

        public final SortedSet<V> headSet(V v) {
            a();
            pk pkVar = pk.this;
            K k = this.b;
            SortedSet headSet = ((SortedSet) this.c).headSet(v);
            pk<K, V>.f fVar = this.d;
            this = this;
            if (fVar != null) {
                this = this.d;
            }
            return new i(k, headSet, this);
        }

        public final V last() {
            a();
            return ((SortedSet) this.c).last();
        }

        public final SortedSet<V> subSet(V v, V v2) {
            a();
            pk pkVar = pk.this;
            K k = this.b;
            SortedSet subSet = ((SortedSet) this.c).subSet(v, v2);
            pk<K, V>.f fVar = this.d;
            this = this;
            if (fVar != null) {
                this = this.d;
            }
            return new i(k, subSet, this);
        }

        public final SortedSet<V> tailSet(V v) {
            a();
            pk pkVar = pk.this;
            K k = this.b;
            SortedSet tailSet = ((SortedSet) this.c).tailSet(v);
            pk<K, V>.f fVar = this.d;
            this = this;
            if (fVar != null) {
                this = this.d;
            }
            return new i(k, tailSet, this);
        }
    }

    protected pk(Map<K, Collection<V>> map) {
        if (!map.isEmpty()) {
            throw new IllegalArgumentException();
        }
        this.a = map;
    }

    static /* synthetic */ int a(pk pkVar, int i2) {
        int i3 = pkVar.b + i2;
        pkVar.b = i3;
        return i3;
    }

    static /* synthetic */ int a(pk pkVar, Object obj) {
        Collection collection = (Collection) pt.c(pkVar.a, obj);
        int i2 = 0;
        if (collection != null) {
            i2 = collection.size();
            collection.clear();
            pkVar.b -= i2;
        }
        return i2;
    }

    static /* synthetic */ Iterator a(Collection collection) {
        return collection instanceof List ? ((List) collection).listIterator() : collection.iterator();
    }

    /* access modifiers changed from: private */
    public List<V> a(K k, List<V> list, pk<K, V>.f fVar) {
        return list instanceof RandomAccess ? new c(k, list, fVar) : new g(k, list, fVar);
    }

    static /* synthetic */ int b(pk pkVar) {
        int i2 = pkVar.b;
        pkVar.b = i2 - 1;
        return i2;
    }

    static /* synthetic */ int b(pk pkVar, int i2) {
        int i3 = pkVar.b - i2;
        pkVar.b = i3;
        return i3;
    }

    static /* synthetic */ int c(pk pkVar) {
        int i2 = pkVar.b;
        pkVar.b = i2 + 1;
        return i2;
    }

    /* access modifiers changed from: package-private */
    public final Collection<V> a(K k, Collection<V> collection) {
        return collection instanceof SortedSet ? new i(k, (SortedSet) collection, (pk<K, V>.f) null) : collection instanceof Set ? new h(k, (Set) collection) : collection instanceof List ? a(k, (List) collection, (pk<K, V>.f) null) : new f(k, collection, (pk<K, V>.f) null);
    }

    public boolean a(K k, V v) {
        Collection collection = this.a.get(k);
        if (collection == null) {
            Collection c2 = c();
            if (c2.add(v)) {
                this.b++;
                this.a.put(k, c2);
                return true;
            }
            throw new AssertionError("New Collection violated the Collection spec");
        } else if (!collection.add(v)) {
            return false;
        } else {
            this.b++;
            return true;
        }
    }

    public Collection<V> b(K k) {
        Collection collection = this.a.get(k);
        if (collection == null) {
            collection = c();
        }
        return a(k, collection);
    }

    /* access modifiers changed from: package-private */
    public abstract Collection<V> c();

    public void d() {
        for (Collection<V> clear : this.a.values()) {
            clear.clear();
        }
        this.a.clear();
        this.b = 0;
    }

    /* access modifiers changed from: package-private */
    public final Set<K> e() {
        return this.a instanceof SortedMap ? new e((SortedMap) this.a) : new b(this.a);
    }

    /* access modifiers changed from: package-private */
    public final Map<K, Collection<V>> f() {
        return this.a instanceof SortedMap ? new d((SortedMap) this.a) : new a(this.a);
    }
}
