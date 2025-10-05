package defpackage;

import java.util.Iterator;

/* renamed from: py  reason: default package */
/* compiled from: UnmodifiableIterator */
public abstract class py<E> implements Iterator<E> {
    protected py() {
    }

    @Deprecated
    public final void remove() {
        throw new UnsupportedOperationException();
    }
}
