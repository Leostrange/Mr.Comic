package defpackage;

import java.lang.reflect.Array;
import java.util.Collection;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;

/* renamed from: ag  reason: default package */
/* compiled from: MapCollections */
public abstract class ag<K, V> {
    ag<K, V>.b b;
    ag<K, V>.c c;
    ag<K, V>.e d;

    /* renamed from: ag$a */
    /* compiled from: MapCollections */
    final class a<T> implements Iterator<T> {
        final int a;
        int b;
        int c;
        boolean d = false;

        a(int i) {
            this.a = i;
            this.b = ag.this.a();
        }

        public final boolean hasNext() {
            return this.c < this.b;
        }

        public final T next() {
            T a2 = ag.this.a(this.c, this.a);
            this.c++;
            this.d = true;
            return a2;
        }

        public final void remove() {
            if (!this.d) {
                throw new IllegalStateException();
            }
            this.c--;
            this.b--;
            this.d = false;
            ag.this.a(this.c);
        }
    }

    /* renamed from: ag$b */
    /* compiled from: MapCollections */
    final class b implements Set<Map.Entry<K, V>> {
        b() {
        }

        public final /* synthetic */ boolean add(Object obj) {
            throw new UnsupportedOperationException();
        }

        public final boolean addAll(Collection<? extends Map.Entry<K, V>> collection) {
            int a2 = ag.this.a();
            for (Map.Entry entry : collection) {
                ag.this.a(entry.getKey(), entry.getValue());
            }
            return a2 != ag.this.a();
        }

        public final void clear() {
            ag.this.c();
        }

        public final boolean contains(Object obj) {
            if (!(obj instanceof Map.Entry)) {
                return false;
            }
            Map.Entry entry = (Map.Entry) obj;
            int a2 = ag.this.a(entry.getKey());
            if (a2 >= 0) {
                return ac.a(ag.this.a(a2, 1), entry.getValue());
            }
            return false;
        }

        public final boolean containsAll(Collection<?> collection) {
            for (Object contains : collection) {
                if (!contains(contains)) {
                    return false;
                }
            }
            return true;
        }

        public final boolean equals(Object obj) {
            return ag.a(this, obj);
        }

        public final int hashCode() {
            int a2 = ag.this.a() - 1;
            int i = 0;
            while (a2 >= 0) {
                Object a3 = ag.this.a(a2, 0);
                Object a4 = ag.this.a(a2, 1);
                a2--;
                i += (a4 == null ? 0 : a4.hashCode()) ^ (a3 == null ? 0 : a3.hashCode());
            }
            return i;
        }

        public final boolean isEmpty() {
            return ag.this.a() == 0;
        }

        public final Iterator<Map.Entry<K, V>> iterator() {
            return new d();
        }

        public final boolean remove(Object obj) {
            throw new UnsupportedOperationException();
        }

        public final boolean removeAll(Collection<?> collection) {
            throw new UnsupportedOperationException();
        }

        public final boolean retainAll(Collection<?> collection) {
            throw new UnsupportedOperationException();
        }

        public final int size() {
            return ag.this.a();
        }

        public final Object[] toArray() {
            throw new UnsupportedOperationException();
        }

        public final <T> T[] toArray(T[] tArr) {
            throw new UnsupportedOperationException();
        }
    }

    /* renamed from: ag$c */
    /* compiled from: MapCollections */
    final class c implements Set<K> {
        c() {
        }

        public final boolean add(K k) {
            throw new UnsupportedOperationException();
        }

        public final boolean addAll(Collection<? extends K> collection) {
            throw new UnsupportedOperationException();
        }

        public final void clear() {
            ag.this.c();
        }

        public final boolean contains(Object obj) {
            return ag.this.a(obj) >= 0;
        }

        public final boolean containsAll(Collection<?> collection) {
            Map b = ag.this.b();
            for (Object containsKey : collection) {
                if (!b.containsKey(containsKey)) {
                    return false;
                }
            }
            return true;
        }

        public final boolean equals(Object obj) {
            return ag.a(this, obj);
        }

        public final int hashCode() {
            int i = 0;
            for (int a2 = ag.this.a() - 1; a2 >= 0; a2--) {
                Object a3 = ag.this.a(a2, 0);
                i += a3 == null ? 0 : a3.hashCode();
            }
            return i;
        }

        public final boolean isEmpty() {
            return ag.this.a() == 0;
        }

        public final Iterator<K> iterator() {
            return new a(0);
        }

        public final boolean remove(Object obj) {
            int a2 = ag.this.a(obj);
            if (a2 < 0) {
                return false;
            }
            ag.this.a(a2);
            return true;
        }

        public final boolean removeAll(Collection<?> collection) {
            Map b = ag.this.b();
            int size = b.size();
            for (Object remove : collection) {
                b.remove(remove);
            }
            return size != b.size();
        }

        public final boolean retainAll(Collection<?> collection) {
            return ag.a(ag.this.b(), collection);
        }

        public final int size() {
            return ag.this.a();
        }

        public final Object[] toArray() {
            return ag.this.b(0);
        }

        public final <T> T[] toArray(T[] tArr) {
            return ag.this.a(tArr, 0);
        }
    }

    /* renamed from: ag$d */
    /* compiled from: MapCollections */
    final class d implements Iterator<Map.Entry<K, V>>, Map.Entry<K, V> {
        int a;
        int b;
        boolean c = false;

        d() {
            this.a = ag.this.a() - 1;
            this.b = -1;
        }

        public final boolean equals(Object obj) {
            if (!this.c) {
                throw new IllegalStateException("This container does not support retaining Map.Entry objects");
            } else if (!(obj instanceof Map.Entry)) {
                return false;
            } else {
                Map.Entry entry = (Map.Entry) obj;
                return ac.a(entry.getKey(), ag.this.a(this.b, 0)) && ac.a(entry.getValue(), ag.this.a(this.b, 1));
            }
        }

        public final K getKey() {
            if (this.c) {
                return ag.this.a(this.b, 0);
            }
            throw new IllegalStateException("This container does not support retaining Map.Entry objects");
        }

        public final V getValue() {
            if (this.c) {
                return ag.this.a(this.b, 1);
            }
            throw new IllegalStateException("This container does not support retaining Map.Entry objects");
        }

        public final boolean hasNext() {
            return this.b < this.a;
        }

        public final int hashCode() {
            int i = 0;
            if (!this.c) {
                throw new IllegalStateException("This container does not support retaining Map.Entry objects");
            }
            Object a2 = ag.this.a(this.b, 0);
            Object a3 = ag.this.a(this.b, 1);
            int hashCode = a2 == null ? 0 : a2.hashCode();
            if (a3 != null) {
                i = a3.hashCode();
            }
            return i ^ hashCode;
        }

        public final /* bridge */ /* synthetic */ Object next() {
            this.b++;
            this.c = true;
            return this;
        }

        public final void remove() {
            if (!this.c) {
                throw new IllegalStateException();
            }
            ag.this.a(this.b);
            this.b--;
            this.a--;
            this.c = false;
        }

        public final V setValue(V v) {
            if (this.c) {
                return ag.this.a(this.b, v);
            }
            throw new IllegalStateException("This container does not support retaining Map.Entry objects");
        }

        public final String toString() {
            return getKey() + "=" + getValue();
        }
    }

    /* renamed from: ag$e */
    /* compiled from: MapCollections */
    final class e implements Collection<V> {
        e() {
        }

        public final boolean add(V v) {
            throw new UnsupportedOperationException();
        }

        public final boolean addAll(Collection<? extends V> collection) {
            throw new UnsupportedOperationException();
        }

        public final void clear() {
            ag.this.c();
        }

        public final boolean contains(Object obj) {
            return ag.this.b(obj) >= 0;
        }

        public final boolean containsAll(Collection<?> collection) {
            for (Object contains : collection) {
                if (!contains(contains)) {
                    return false;
                }
            }
            return true;
        }

        public final boolean isEmpty() {
            return ag.this.a() == 0;
        }

        public final Iterator<V> iterator() {
            return new a(1);
        }

        public final boolean remove(Object obj) {
            int b = ag.this.b(obj);
            if (b < 0) {
                return false;
            }
            ag.this.a(b);
            return true;
        }

        public final boolean removeAll(Collection<?> collection) {
            int i = 0;
            int a2 = ag.this.a();
            boolean z = false;
            while (i < a2) {
                if (collection.contains(ag.this.a(i, 1))) {
                    ag.this.a(i);
                    i--;
                    a2--;
                    z = true;
                }
                i++;
            }
            return z;
        }

        public final boolean retainAll(Collection<?> collection) {
            int i = 0;
            int a2 = ag.this.a();
            boolean z = false;
            while (i < a2) {
                if (!collection.contains(ag.this.a(i, 1))) {
                    ag.this.a(i);
                    i--;
                    a2--;
                    z = true;
                }
                i++;
            }
            return z;
        }

        public final int size() {
            return ag.this.a();
        }

        public final Object[] toArray() {
            return ag.this.b(1);
        }

        public final <T> T[] toArray(T[] tArr) {
            return ag.this.a(tArr, 1);
        }
    }

    ag() {
    }

    public static <K, V> boolean a(Map<K, V> map, Collection<?> collection) {
        int size = map.size();
        Iterator<K> it = map.keySet().iterator();
        while (it.hasNext()) {
            if (!collection.contains(it.next())) {
                it.remove();
            }
        }
        return size != map.size();
    }

    public static <T> boolean a(Set<T> set, Object obj) {
        if (set == obj) {
            return true;
        }
        if (!(obj instanceof Set)) {
            return false;
        }
        Set set2 = (Set) obj;
        try {
            return set.size() == set2.size() && set.containsAll(set2);
        } catch (NullPointerException e2) {
            return false;
        } catch (ClassCastException e3) {
            return false;
        }
    }

    /* access modifiers changed from: protected */
    public abstract int a();

    /* access modifiers changed from: protected */
    public abstract int a(Object obj);

    /* access modifiers changed from: protected */
    public abstract Object a(int i, int i2);

    /* access modifiers changed from: protected */
    public abstract V a(int i, V v);

    /* access modifiers changed from: protected */
    public abstract void a(int i);

    /* access modifiers changed from: protected */
    public abstract void a(K k, V v);

    public final <T> T[] a(T[] tArr, int i) {
        int a2 = a();
        T[] tArr2 = tArr.length < a2 ? (Object[]) Array.newInstance(tArr.getClass().getComponentType(), a2) : tArr;
        for (int i2 = 0; i2 < a2; i2++) {
            tArr2[i2] = a(i2, i);
        }
        if (tArr2.length > a2) {
            tArr2[a2] = null;
        }
        return tArr2;
    }

    /* access modifiers changed from: protected */
    public abstract int b(Object obj);

    /* access modifiers changed from: protected */
    public abstract Map<K, V> b();

    public final Object[] b(int i) {
        int a2 = a();
        Object[] objArr = new Object[a2];
        for (int i2 = 0; i2 < a2; i2++) {
            objArr[i2] = a(i2, i);
        }
        return objArr;
    }

    /* access modifiers changed from: protected */
    public abstract void c();
}
