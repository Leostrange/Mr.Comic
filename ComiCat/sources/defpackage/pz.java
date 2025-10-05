package defpackage;

import java.util.ListIterator;

/* renamed from: pz  reason: default package */
/* compiled from: UnmodifiableListIterator */
public abstract class pz<E> extends py<E> implements ListIterator<E> {
    protected pz() {
    }

    @Deprecated
    public final void add(E e) {
        throw new UnsupportedOperationException();
    }

    @Deprecated
    public final void set(E e) {
        throw new UnsupportedOperationException();
    }
}
