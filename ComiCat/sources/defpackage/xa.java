package defpackage;

import java.io.Serializable;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;

/* renamed from: xa  reason: default package */
/* compiled from: FastCollection */
public abstract class xa<E> implements Collection<E>, wt, xi {
    /* access modifiers changed from: private */
    public static final Object a = new Object();

    /* renamed from: xa$a */
    /* compiled from: FastCollection */
    public interface a {
        a a();

        a c();
    }

    /* renamed from: xa$b */
    /* compiled from: FastCollection */
    public class b implements Serializable, Collection {

        /* renamed from: xa$b$a */
        /* compiled from: FastCollection */
        class a implements Iterator {
            private final Object[] b;
            private int c;
            private Object d;

            public a(Object[] objArr) {
                this.b = objArr;
            }

            public final boolean hasNext() {
                return this.c < this.b.length;
            }

            public final Object next() {
                Object[] objArr = this.b;
                int i = this.c;
                this.c = i + 1;
                Object obj = objArr[i];
                this.d = obj;
                return obj;
            }

            public final void remove() {
                if (this.d == null) {
                    throw new IllegalStateException();
                }
                b.this.remove(this.d);
                this.d = null;
            }
        }

        /* renamed from: xa$b$b  reason: collision with other inner class name */
        /* compiled from: FastCollection */
        class C0010b implements Iterator {
            private final Object[] b;
            private int c;
            private int d;

            public C0010b(Object[] objArr) {
                this.b = objArr;
            }

            public final boolean hasNext() {
                return this.c < this.b.length;
            }

            public final Object next() {
                Object[] objArr = this.b;
                int i = this.c;
                this.c = i + 1;
                return objArr[i];
            }

            public final void remove() {
                if (this.c == 0) {
                    throw new IllegalStateException();
                } else if (this.b[this.c - 1] == xa.a) {
                    throw new IllegalStateException();
                } else {
                    this.b[this.c - 1] = xa.a;
                    this.d++;
                    synchronized (b.this) {
                        ((List) xa.this).remove(this.c - this.d);
                    }
                }
            }
        }

        private b() {
        }

        public /* synthetic */ b(xa xaVar, byte b) {
            this();
        }

        public final synchronized boolean add(Object obj) {
            return xa.this.add(obj);
        }

        public final synchronized boolean addAll(Collection collection) {
            return xa.this.addAll(collection);
        }

        public final synchronized void clear() {
            xa.this.clear();
        }

        public final synchronized boolean contains(Object obj) {
            return xa.this.contains(obj);
        }

        public final synchronized boolean containsAll(Collection collection) {
            return xa.this.containsAll(collection);
        }

        public final synchronized boolean isEmpty() {
            return xa.this.isEmpty();
        }

        public final synchronized Iterator iterator() {
            return xa.this instanceof List ? new C0010b(xa.this.toArray()) : new a(xa.this.toArray());
        }

        public final synchronized boolean remove(Object obj) {
            return xa.this.remove(obj);
        }

        public final synchronized boolean removeAll(Collection collection) {
            return xa.this.removeAll(collection);
        }

        public final synchronized boolean retainAll(Collection collection) {
            return xa.this.retainAll(collection);
        }

        public final synchronized int size() {
            return xa.this.size();
        }

        public final synchronized Object[] toArray() {
            return xa.this.toArray();
        }

        public final synchronized Object[] toArray(Object[] objArr) {
            return xa.this.toArray(objArr);
        }

        public final synchronized String toString() {
            return xa.this.toString();
        }
    }

    protected xa() {
    }

    private static boolean a(Collection collection, Object obj, xb xbVar) {
        if ((collection instanceof xa) && ((xa) collection).e().equals(xbVar)) {
            return collection.contains(obj);
        }
        for (Object a2 : collection) {
            if (xbVar.a(obj, a2)) {
                return true;
            }
        }
        return false;
    }

    public abstract E a(a aVar);

    public boolean add(E e) {
        throw new UnsupportedOperationException();
    }

    public boolean addAll(Collection<? extends E> collection) {
        boolean z = false;
        for (Object add : collection) {
            if (add(add)) {
                z = true;
            }
        }
        return z;
    }

    public final ww b() {
        ww a2 = ww.a((Object) "{");
        a c = c();
        a d = d();
        while (true) {
            c = c.c();
            if (c == d) {
                return a2.a("}");
            }
            a2 = a2.b(a(c));
            if (c.c() != d) {
                a2 = a2.a(", ");
            }
        }
    }

    public abstract void b(a aVar);

    public abstract a c();

    public void clear() {
        a c = c();
        for (a a2 = d().a(); a2 != c; a2 = a2.a()) {
            b(a2);
        }
    }

    public boolean contains(Object obj) {
        xb e = e();
        a c = c();
        a d = d();
        do {
            c = c.c();
            if (c == d) {
                return false;
            }
        } while (!e.a(obj, a(c)));
        return true;
    }

    public boolean containsAll(Collection<?> collection) {
        for (Object contains : collection) {
            if (!contains(contains)) {
                return false;
            }
        }
        return true;
    }

    public abstract a d();

    public xb<? super E> e() {
        return xb.c;
    }

    public boolean equals(Object obj) {
        if (this instanceof List) {
            if (obj instanceof List) {
                List list = (List) obj;
                if (list != this) {
                    if (size() == list.size()) {
                        Iterator it = list.iterator();
                        xb e = e();
                        a c = c();
                        a d = d();
                        do {
                            c = c.c();
                            if (c != d) {
                            }
                        } while (e.a(a(c), it.next()));
                    }
                }
                return true;
            }
            return false;
        } else if (obj instanceof List) {
            return false;
        } else {
            if (!(obj instanceof Collection)) {
                return false;
            }
            Collection collection = (Collection) obj;
            return this == collection || (size() == collection.size() && containsAll(collection));
        }
    }

    public int hashCode() {
        int i;
        if (!(this instanceof List)) {
            xb e = e();
            int i2 = 0;
            a c = c();
            a d = d();
            while (true) {
                c = c.c();
                if (c == d) {
                    break;
                }
                i2 = i + e.a(a(c));
            }
        } else {
            xb e2 = e();
            i = 1;
            a c2 = c();
            a d2 = d();
            while (true) {
                c2 = c2.c();
                if (c2 == d2) {
                    break;
                }
                i = (i * 31) + e2.a(a(c2));
            }
        }
        return i;
    }

    public final boolean isEmpty() {
        return size() == 0;
    }

    public Iterator<E> iterator() {
        return xc.a(this);
    }

    public boolean remove(Object obj) {
        xb e = e();
        a c = c();
        a d = d();
        do {
            c = c.c();
            if (c == d) {
                return false;
            }
        } while (!e.a(obj, a(c)));
        b(c);
        return true;
    }

    public boolean removeAll(Collection<?> collection) {
        a c = c();
        boolean z = false;
        a a2 = d().a();
        while (a2 != c) {
            a a3 = a2.a();
            if (a(collection, a(a2), e())) {
                b(a2);
                z = true;
            }
            a2 = a3;
        }
        return z;
    }

    public boolean retainAll(Collection<?> collection) {
        a c = c();
        boolean z = false;
        a a2 = d().a();
        while (a2 != c) {
            a a3 = a2.a();
            if (!a(collection, a(a2), e())) {
                b(a2);
                z = true;
            }
            a2 = a3;
        }
        return z;
    }

    public abstract int size();

    public Object[] toArray() {
        return toArray(new Object[size()]);
    }

    public <T> T[] toArray(T[] tArr) {
        int size = size();
        if (tArr.length < size) {
            throw new UnsupportedOperationException("Destination array too small");
        }
        if (tArr.length > size) {
            tArr[size] = null;
        }
        int i = 0;
        a c = c();
        a d = d();
        while (true) {
            c = c.c();
            if (c == d) {
                return tArr;
            }
            tArr[i] = a(c);
            i++;
        }
    }

    public final String toString() {
        return b().toString();
    }
}
