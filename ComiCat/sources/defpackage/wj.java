package defpackage;

/* renamed from: wj  reason: default package */
/* compiled from: AllocatorContext */
public abstract class wj extends wl {
    public static final wr<Class<? extends wj>> a = new wr(wm.class) {
    };
    private static volatile wj e = new wm();

    /* renamed from: wj$a */
    /* compiled from: AllocatorContext */
    static class a extends wj {
        private wj e;

        private a() {
        }

        /* synthetic */ a(byte b) {
            this();
        }

        /* access modifiers changed from: protected */
        public final wi a(wp wpVar) {
            return this.e.a(wpVar);
        }
    }

    static {
        wp.a(new wp() {
            /* access modifiers changed from: protected */
            public final Object a() {
                return new a((byte) 0);
            }
        }, a.class);
    }

    protected wj() {
    }

    public static wj a() {
        return e;
    }

    /* access modifiers changed from: protected */
    public abstract wi a(wp wpVar);
}
