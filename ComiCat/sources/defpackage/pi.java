package defpackage;

import java.io.Serializable;
import java.util.Collection;

/* renamed from: pi  reason: default package */
/* compiled from: Predicates */
public final class pi {
    private static final pe a = new pe(",");

    /* renamed from: pi$a */
    /* compiled from: Predicates */
    static class a<T> implements Serializable, ph<T> {
        private final Collection<?> a;

        private a(Collection<?> collection) {
            this.a = (Collection) pg.a(collection);
        }

        /* synthetic */ a(Collection collection, byte b) {
            this(collection);
        }

        public final boolean a(T t) {
            try {
                return this.a.contains(t);
            } catch (ClassCastException | NullPointerException e) {
                return false;
            }
        }

        public final boolean equals(Object obj) {
            if (obj instanceof a) {
                return this.a.equals(((a) obj).a);
            }
            return false;
        }

        public final int hashCode() {
            return this.a.hashCode();
        }

        public final String toString() {
            return "Predicates.in(" + this.a + ")";
        }
    }

    public static <T> ph<T> a(Collection<? extends T> collection) {
        return new a(collection, (byte) 0);
    }
}
