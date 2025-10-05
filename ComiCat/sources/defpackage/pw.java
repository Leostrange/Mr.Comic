package defpackage;

import java.util.AbstractSet;
import java.util.Collection;
import java.util.Iterator;
import java.util.Set;

/* renamed from: pw  reason: default package */
/* compiled from: Sets */
public final class pw {

    /* renamed from: pw$a */
    /* compiled from: Sets */
    static abstract class a<E> extends AbstractSet<E> {
        a() {
        }

        public boolean removeAll(Collection<?> collection) {
            return pw.a((Set<?>) this, collection);
        }

        public boolean retainAll(Collection<?> collection) {
            return super.retainAll((Collection) pg.a(collection));
        }
    }

    static boolean a(Set<?> set, Collection<?> collection) {
        pg.a(collection);
        if (collection instanceof pv) {
            collection = ((pv) collection).a();
        }
        return (!(collection instanceof Set) || collection.size() <= set.size()) ? a(set, collection.iterator()) : pr.a(set.iterator(), collection);
    }

    static boolean a(Set<?> set, Iterator<?> it) {
        boolean z = false;
        while (it.hasNext()) {
            z |= set.remove(it.next());
        }
        return z;
    }
}
