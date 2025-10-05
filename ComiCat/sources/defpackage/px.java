package defpackage;

import java.util.Iterator;

/* renamed from: px  reason: default package */
/* compiled from: TransformedIterator */
abstract class px<F, T> implements Iterator<T> {
    final Iterator<? extends F> b;

    px(Iterator<? extends F> it) {
        this.b = (Iterator) pg.a(it);
    }

    /* access modifiers changed from: package-private */
    public abstract T a(F f);

    public final boolean hasNext() {
        return this.b.hasNext();
    }

    public final T next() {
        return a(this.b.next());
    }

    public final void remove() {
        this.b.remove();
    }
}
