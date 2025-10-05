package defpackage;

/* renamed from: wl  reason: default package */
/* compiled from: Context */
public abstract class wl implements xi {
    private static final ThreadLocal a = new ThreadLocal() {
        /* access modifiers changed from: protected */
        public final Object initialValue() {
            return wl.b;
        }
    };
    public static final wl b = new a((byte) 0);
    wl c;
    wj d;

    /* renamed from: wl$a */
    /* compiled from: Context */
    static final class a extends wl {
        private a() {
        }

        /* synthetic */ a(byte b) {
            this();
        }
    }

    protected wl() {
    }

    public static wl b() {
        return (wl) a.get();
    }

    public String toString() {
        return "Instance of " + getClass().getName();
    }
}
