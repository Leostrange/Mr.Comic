package defpackage;

import defpackage.pe;
import defpackage.pw;
import java.util.AbstractCollection;
import java.util.AbstractMap;
import java.util.Collection;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;

/* renamed from: pt  reason: default package */
/* compiled from: Maps */
public final class pt {
    static final pe.a a = new pe.a(pp.a, "=", (byte) 0);

    /* renamed from: pt$a */
    /* compiled from: Maps */
    enum a implements pd<Map.Entry<?, ?>, Object> {
    }

    /* renamed from: pt$b */
    /* compiled from: Maps */
    static abstract class b<K, V> extends pw.a<Map.Entry<K, V>> {
        b() {
        }

        /* access modifiers changed from: package-private */
        public abstract Map<K, V> a();

        public void clear() {
            a().clear();
        }

        public boolean contains(Object obj) {
            if (!(obj instanceof Map.Entry)) {
                return false;
            }
            Map.Entry entry = (Map.Entry) obj;
            Object key = entry.getKey();
            Object a = pt.a(a(), key);
            if (pf.a(a, entry.getValue())) {
                return a != null || a().containsKey(key);
            }
            return false;
        }

        public boolean isEmpty() {
            return a().isEmpty();
        }

        public boolean remove(Object obj) {
            if (contains(obj)) {
                return a().keySet().remove(((Map.Entry) obj).getKey());
            }
            return false;
        }

        public boolean removeAll(Collection<?> collection) {
            try {
                return super.removeAll((Collection) pg.a(collection));
            } catch (UnsupportedOperationException e) {
                return pw.a((Set<?>) this, collection.iterator());
            }
        }

        public boolean retainAll(Collection<?> collection) {
            try {
                return super.retainAll((Collection) pg.a(collection));
            } catch (UnsupportedOperationException e) {
                HashSet hashSet = new HashSet(pt.a(collection.size()));
                for (Object next : collection) {
                    if (contains(next)) {
                        hashSet.add(((Map.Entry) next).getKey());
                    }
                }
                return a().keySet().retainAll(hashSet);
            }
        }

        public int size() {
            return a().size();
        }
    }

    /* renamed from: pt$c */
    /* compiled from: Maps */
    static abstract class c<K, V> extends AbstractMap<K, V> {
        private transient Set<Map.Entry<K, V>> a;
        private transient Set<K> b;
        private transient Collection<V> c;

        c() {
        }

        /* access modifiers changed from: package-private */
        public abstract Set<Map.Entry<K, V>> a();

        /* access modifiers changed from: package-private */
        public Set<K> b() {
            return new d(this);
        }

        public Set<Map.Entry<K, V>> entrySet() {
            Set<Map.Entry<K, V>> set = this.a;
            if (set != null) {
                return set;
            }
            Set<Map.Entry<K, V>> a2 = a();
            this.a = a2;
            return a2;
        }

        public Set<K> keySet() {
            Set<K> set = this.b;
            if (set != null) {
                return set;
            }
            Set<K> b2 = b();
            this.b = b2;
            return b2;
        }

        public Collection<V> values() {
            Collection<V> collection = this.c;
            if (collection != null) {
                return collection;
            }
            e eVar = new e(this);
            this.c = eVar;
            return eVar;
        }
    }

    /* renamed from: pt$d */
    /* compiled from: Maps */
    static class d<K, V> extends pw.a<K> {
        final Map<K, V> c;

        d(Map<K, V> map) {
            this.c = (Map) pg.a(map);
        }

        public void clear() {
            this.c.clear();
        }

        public boolean contains(Object obj) {
            return this.c.containsKey(obj);
        }

        public boolean isEmpty() {
            return this.c.isEmpty();
        }

        public Iterator<K> iterator() {
            return pt.a(this.c.entrySet().iterator());
        }

        public boolean remove(Object obj) {
            if (!contains(obj)) {
                return false;
            }
            this.c.remove(obj);
            return true;
        }

        public int size() {
            return this.c.size();
        }
    }

    /* renamed from: pt$e */
    /* compiled from: Maps */
    static class e<K, V> extends AbstractCollection<V> {
        final Map<K, V> a;

        e(Map<K, V> map) {
            this.a = (Map) pg.a(map);
        }

        public final void clear() {
            this.a.clear();
        }

        public final boolean contains(Object obj) {
            return this.a.containsValue(obj);
        }

        public final boolean isEmpty() {
            return this.a.isEmpty();
        }

        public final Iterator<V> iterator() {
            return pt.b(this.a.entrySet().iterator());
        }

        public final boolean remove(Object obj) {
            try {
                return super.remove(obj);
            } catch (UnsupportedOperationException e) {
                for (Map.Entry next : this.a.entrySet()) {
                    if (pf.a(obj, next.getValue())) {
                        this.a.remove(next.getKey());
                        return true;
                    }
                }
                return false;
            }
        }

        public final boolean removeAll(Collection<?> collection) {
            try {
                return super.removeAll((Collection) pg.a(collection));
            } catch (UnsupportedOperationException e) {
                HashSet hashSet = new HashSet();
                for (Map.Entry next : this.a.entrySet()) {
                    if (collection.contains(next.getValue())) {
                        hashSet.add(next.getKey());
                    }
                }
                return this.a.keySet().removeAll(hashSet);
            }
        }

        public final boolean retainAll(Collection<?> collection) {
            try {
                return super.retainAll((Collection) pg.a(collection));
            } catch (UnsupportedOperationException e) {
                HashSet hashSet = new HashSet();
                for (Map.Entry next : this.a.entrySet()) {
                    if (collection.contains(next.getValue())) {
                        hashSet.add(next.getKey());
                    }
                }
                return this.a.keySet().retainAll(hashSet);
            }
        }

        public final int size() {
            return this.a.size();
        }
    }

    static int a(int i) {
        if (i < 3) {
            if (i >= 0) {
                return i + 1;
            }
            throw new IllegalArgumentException("expectedSize" + " cannot be negative but was: " + i);
        } else if (i < 1073741824) {
            return (i / 3) + i;
        } else {
            return Integer.MAX_VALUE;
        }
    }

    static <V> V a(Map<?, V> map, Object obj) {
        pg.a(map);
        try {
            return map.get(obj);
        } catch (ClassCastException | NullPointerException e2) {
            return null;
        }
    }

    static <K, V> Iterator<K> a(Iterator<Map.Entry<K, V>> it) {
        return pr.a(it, a.a);
    }

    public static <K, V> Map.Entry<K, V> a(K k, V v) {
        return new pq(k, v);
    }

    static <K, V> Iterator<V> b(Iterator<Map.Entry<K, V>> it) {
        return pr.a(it, a.b);
    }

    static boolean b(Map<?, ?> map, Object obj) {
        pg.a(map);
        try {
            return map.containsKey(obj);
        } catch (ClassCastException | NullPointerException e2) {
            return false;
        }
    }

    static <V> V c(Map<?, V> map, Object obj) {
        pg.a(map);
        try {
            return map.remove(obj);
        } catch (ClassCastException | NullPointerException e2) {
            return null;
        }
    }
}
