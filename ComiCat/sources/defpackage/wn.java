package defpackage;

/* renamed from: wn  reason: default package */
/* compiled from: LocalContext */
public final class wn extends wl {
    final xd a = new xd();

    /* renamed from: wn$a */
    /* compiled from: LocalContext */
    public static class a<T> {
        private T a;
        private boolean b;

        public a(T t) {
            this.a = t;
        }

        public final T a() {
            T t;
            if (!this.b) {
                return this.a;
            }
            for (wl b2 = wl.b(); b2 != null; b2 = b2.c) {
                if ((b2 instanceof wn) && (t = ((wn) b2).a.get(this)) != null) {
                    return t;
                }
            }
            return this.a;
        }

        public String toString() {
            return String.valueOf(a());
        }
    }
}
