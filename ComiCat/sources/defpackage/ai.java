package defpackage;

/* renamed from: ai  reason: default package */
/* compiled from: Pools */
public final class ai {

    /* renamed from: ai$a */
    /* compiled from: Pools */
    public interface a<T> {
        T a();

        boolean a(T t);
    }

    /* renamed from: ai$b */
    /* compiled from: Pools */
    public static class b<T> implements a<T> {
        private final Object[] a = new Object[30];
        private int b;

        public final T a() {
            if (this.b <= 0) {
                return null;
            }
            int i = this.b - 1;
            T t = this.a[i];
            this.a[i] = null;
            this.b--;
            return t;
        }

        public final boolean a(T t) {
            boolean z;
            int i = 0;
            while (true) {
                if (i >= this.b) {
                    z = false;
                    break;
                } else if (this.a[i] == t) {
                    z = true;
                    break;
                } else {
                    i++;
                }
            }
            if (z) {
                throw new IllegalStateException("Already in the pool!");
            } else if (this.b >= this.a.length) {
                return false;
            } else {
                this.a[this.b] = t;
                this.b++;
                return true;
            }
        }
    }
}
