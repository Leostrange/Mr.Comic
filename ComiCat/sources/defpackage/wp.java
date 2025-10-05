package defpackage;

/* renamed from: wp  reason: default package */
/* compiled from: ObjectFactory */
public abstract class wp<T> {
    /* access modifiers changed from: private */
    public static final wi c = new wi() {
        /* access modifiers changed from: protected */
        public final void a(Object obj) {
        }

        /* access modifiers changed from: protected */
        public final Object b() {
            return null;
        }
    };
    private wi<T> a = c;
    boolean b = true;
    private ThreadLocal d = new ThreadLocal() {
        /* access modifiers changed from: protected */
        public final Object initialValue() {
            return wp.c;
        }
    };

    protected wp() {
    }

    public static <T> void a(wp<T> wpVar, Class<T> cls) {
        wu.a().a(wpVar, cls, wp.class);
    }

    private wi<T> d() {
        wi<T> wiVar = (wi) this.d.get();
        if (wiVar.a != null) {
            this.a = wiVar;
            return wiVar;
        }
        wl b2 = wl.b();
        wi<T> a2 = (b2.d == null ? wj.a() : b2.d).a(this);
        this.d.set(a2);
        this.a = a2;
        return a2;
    }

    public abstract T a();

    public final void a(T t) {
        wi<T> wiVar = this.a;
        if (wiVar.a != Thread.currentThread()) {
            wiVar = d();
        }
        wiVar.a(t);
    }

    public final T b() {
        wi<T> wiVar = this.a;
        return wiVar.a == Thread.currentThread() ? wiVar.a() : d().a();
    }

    public void b(T t) {
        if (t instanceof wv) {
            ((wv) t).a();
        } else {
            this.b = false;
        }
    }
}
