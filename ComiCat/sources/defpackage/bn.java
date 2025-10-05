package defpackage;

import android.os.Build;
import android.util.Log;
import android.view.View;
import android.view.ViewParent;

/* renamed from: bn  reason: default package */
/* compiled from: ViewParentCompat */
public final class bn {
    static final b a;

    /* renamed from: bn$a */
    /* compiled from: ViewParentCompat */
    static class a extends e {
        a() {
        }
    }

    /* renamed from: bn$b */
    /* compiled from: ViewParentCompat */
    interface b {
        void a(ViewParent viewParent, View view);

        void a(ViewParent viewParent, View view, int i, int i2, int i3, int i4);

        void a(ViewParent viewParent, View view, int i, int i2, int[] iArr);

        boolean a(ViewParent viewParent, View view, float f, float f2);

        boolean a(ViewParent viewParent, View view, float f, float f2, boolean z);

        boolean a(ViewParent viewParent, View view, View view2, int i);

        void b(ViewParent viewParent, View view, View view2, int i);
    }

    /* renamed from: bn$c */
    /* compiled from: ViewParentCompat */
    static class c extends a {
        c() {
        }
    }

    /* renamed from: bn$d */
    /* compiled from: ViewParentCompat */
    static class d extends c {
        d() {
        }

        public final void a(ViewParent viewParent, View view) {
            try {
                viewParent.onStopNestedScroll(view);
            } catch (AbstractMethodError e) {
                Log.e("ViewParentCompat", "ViewParent " + viewParent + " does not implement interface method onStopNestedScroll", e);
            }
        }

        public final void a(ViewParent viewParent, View view, int i, int i2, int i3, int i4) {
            try {
                viewParent.onNestedScroll(view, i, i2, i3, i4);
            } catch (AbstractMethodError e) {
                Log.e("ViewParentCompat", "ViewParent " + viewParent + " does not implement interface method onNestedScroll", e);
            }
        }

        public final void a(ViewParent viewParent, View view, int i, int i2, int[] iArr) {
            try {
                viewParent.onNestedPreScroll(view, i, i2, iArr);
            } catch (AbstractMethodError e) {
                Log.e("ViewParentCompat", "ViewParent " + viewParent + " does not implement interface method onNestedPreScroll", e);
            }
        }

        public final boolean a(ViewParent viewParent, View view, float f, float f2) {
            return bo.a(viewParent, view, f, f2);
        }

        public final boolean a(ViewParent viewParent, View view, float f, float f2, boolean z) {
            return bo.a(viewParent, view, f, f2, z);
        }

        public final boolean a(ViewParent viewParent, View view, View view2, int i) {
            return bo.a(viewParent, view, view2, i);
        }

        public final void b(ViewParent viewParent, View view, View view2, int i) {
            try {
                viewParent.onNestedScrollAccepted(view, view2, i);
            } catch (AbstractMethodError e) {
                Log.e("ViewParentCompat", "ViewParent " + viewParent + " does not implement interface method onNestedScrollAccepted", e);
            }
        }
    }

    /* renamed from: bn$e */
    /* compiled from: ViewParentCompat */
    static class e implements b {
        e() {
        }

        public void a(ViewParent viewParent, View view) {
            if (viewParent instanceof ba) {
                ((ba) viewParent).onStopNestedScroll(view);
            }
        }

        public void a(ViewParent viewParent, View view, int i, int i2, int i3, int i4) {
            if (viewParent instanceof ba) {
                ((ba) viewParent).onNestedScroll(view, i, i2, i3, i4);
            }
        }

        public void a(ViewParent viewParent, View view, int i, int i2, int[] iArr) {
            if (viewParent instanceof ba) {
                ((ba) viewParent).onNestedPreScroll(view, i, i2, iArr);
            }
        }

        public boolean a(ViewParent viewParent, View view, float f, float f2) {
            if (viewParent instanceof ba) {
                return ((ba) viewParent).onNestedPreFling(view, f, f2);
            }
            return false;
        }

        public boolean a(ViewParent viewParent, View view, float f, float f2, boolean z) {
            if (viewParent instanceof ba) {
                return ((ba) viewParent).onNestedFling(view, f, f2, z);
            }
            return false;
        }

        public boolean a(ViewParent viewParent, View view, View view2, int i) {
            if (viewParent instanceof ba) {
                return ((ba) viewParent).onStartNestedScroll(view, view2, i);
            }
            return false;
        }

        public void b(ViewParent viewParent, View view, View view2, int i) {
            if (viewParent instanceof ba) {
                ((ba) viewParent).onNestedScrollAccepted(view, view2, i);
            }
        }
    }

    static {
        int i = Build.VERSION.SDK_INT;
        if (i >= 21) {
            a = new d();
        } else if (i >= 19) {
            a = new c();
        } else if (i >= 14) {
            a = new a();
        } else {
            a = new e();
        }
    }

    public static void a(ViewParent viewParent, View view) {
        a.a(viewParent, view);
    }

    public static void a(ViewParent viewParent, View view, int i, int i2, int i3, int i4) {
        a.a(viewParent, view, i, i2, i3, i4);
    }

    public static void a(ViewParent viewParent, View view, int i, int i2, int[] iArr) {
        a.a(viewParent, view, i, i2, iArr);
    }

    public static boolean a(ViewParent viewParent, View view, float f, float f2) {
        return a.a(viewParent, view, f, f2);
    }

    public static boolean a(ViewParent viewParent, View view, float f, float f2, boolean z) {
        return a.a(viewParent, view, f, f2, z);
    }

    public static boolean a(ViewParent viewParent, View view, View view2, int i) {
        return a.a(viewParent, view, view2, i);
    }

    public static void b(ViewParent viewParent, View view, View view2, int i) {
        a.b(viewParent, view, view2, i);
    }
}
