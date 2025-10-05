package defpackage;

import android.os.Build;
import android.view.ViewGroup;

/* renamed from: bm  reason: default package */
/* compiled from: ViewGroupCompat */
public final class bm {
    static final c a;

    /* renamed from: bm$a */
    /* compiled from: ViewGroupCompat */
    static class a extends f {
        a() {
        }

        public final void a(ViewGroup viewGroup) {
            viewGroup.setMotionEventSplittingEnabled(false);
        }
    }

    /* renamed from: bm$b */
    /* compiled from: ViewGroupCompat */
    static class b extends a {
        b() {
        }
    }

    /* renamed from: bm$c */
    /* compiled from: ViewGroupCompat */
    interface c {
        void a(ViewGroup viewGroup);
    }

    /* renamed from: bm$d */
    /* compiled from: ViewGroupCompat */
    static class d extends b {
        d() {
        }
    }

    /* renamed from: bm$e */
    /* compiled from: ViewGroupCompat */
    static class e extends d {
        e() {
        }
    }

    /* renamed from: bm$f */
    /* compiled from: ViewGroupCompat */
    static class f implements c {
        f() {
        }

        public void a(ViewGroup viewGroup) {
        }
    }

    static {
        int i = Build.VERSION.SDK_INT;
        if (i >= 21) {
            a = new e();
        } else if (i >= 18) {
            a = new d();
        } else if (i >= 14) {
            a = new b();
        } else if (i >= 11) {
            a = new a();
        } else {
            a = new f();
        }
    }

    public static void a(ViewGroup viewGroup) {
        a.a(viewGroup);
    }
}
