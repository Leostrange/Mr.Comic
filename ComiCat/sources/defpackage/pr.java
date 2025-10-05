package defpackage;

import java.util.Collection;
import java.util.Iterator;
import java.util.NoSuchElementException;

/* renamed from: pr  reason: default package */
/* compiled from: Iterators */
public final class pr {
    static final pz<Object> a = new pz<Object>() {
        public final boolean hasNext() {
            return false;
        }

        public final boolean hasPrevious() {
            return false;
        }

        public final Object next() {
            throw new NoSuchElementException();
        }

        public final int nextIndex() {
            return 0;
        }

        public final Object previous() {
            throw new NoSuchElementException();
        }

        public final int previousIndex() {
            return -1;
        }
    };
    private static final Iterator<Object> b = new Iterator<Object>() {
        public final boolean hasNext() {
            return false;
        }

        public final Object next() {
            throw new NoSuchElementException();
        }

        public final void remove() {
            po.a(false);
        }
    };

    public static <F, T> Iterator<T> a(Iterator<F> it, final pd<? super F, ? extends T> pdVar) {
        pg.a(pdVar);
        return new px<F, T>(it) {
            /* access modifiers changed from: package-private */
            public final T a(F f) {
                return pdVar.a(f);
            }
        };
    }

    static void a(Iterator<?> it) {
        pg.a(it);
        while (it.hasNext()) {
            it.next();
            it.remove();
        }
    }

    public static boolean a(Iterator<?> it, Collection<?> collection) {
        ph<T> a2 = pi.a(collection);
        pg.a(a2);
        boolean z = false;
        while (it.hasNext()) {
            if (a2.a(it.next())) {
                it.remove();
                z = true;
            }
        }
        return z;
    }
}
