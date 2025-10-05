package defpackage;

import defpackage.xa;
import defpackage.xd;
import java.util.Iterator;
import java.util.Set;

/* renamed from: xe  reason: default package */
/* compiled from: FastSet */
public final class xe<E> extends xa<E> implements Set<E>, wv {
    private static final wp a = new wp() {
        public final Object a() {
            return new xe();
        }
    };
    private transient xd b;

    public xe() {
        this(new xd());
    }

    private xe(xd xdVar) {
        this.b = xdVar;
    }

    public final E a(xa.a aVar) {
        return ((xd.a) aVar).getKey();
    }

    public final void a() {
        this.b.a();
    }

    public final boolean add(E e) {
        return this.b.put(e, e) == null;
    }

    public final void b(xa.a aVar) {
        this.b.remove(((xd.a) aVar).getKey());
    }

    public final xa.a c() {
        return this.b.a;
    }

    public final void clear() {
        this.b.clear();
    }

    public final boolean contains(Object obj) {
        return this.b.containsKey(obj);
    }

    public final xa.a d() {
        return this.b.b;
    }

    public final xb<? super E> e() {
        return this.b.c;
    }

    public final Iterator<E> iterator() {
        return this.b.keySet().iterator();
    }

    public final boolean remove(Object obj) {
        return this.b.remove(obj) != null;
    }

    public final int size() {
        return this.b.size();
    }
}
