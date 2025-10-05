package defpackage;

import android.graphics.Rect;
import android.os.Build;
import android.view.Gravity;

/* renamed from: ap  reason: default package */
/* compiled from: GravityCompat */
public final class ap {
    static final a a;

    /* renamed from: ap$a */
    /* compiled from: GravityCompat */
    interface a {
        int a(int i, int i2);

        void a(int i, int i2, int i3, Rect rect, Rect rect2, int i4);
    }

    /* renamed from: ap$b */
    /* compiled from: GravityCompat */
    static class b implements a {
        b() {
        }

        public final int a(int i, int i2) {
            return -8388609 & i;
        }

        public final void a(int i, int i2, int i3, Rect rect, Rect rect2, int i4) {
            Gravity.apply(i, i2, i3, rect, rect2);
        }
    }

    /* renamed from: ap$c */
    /* compiled from: GravityCompat */
    static class c implements a {
        c() {
        }

        public final int a(int i, int i2) {
            return Gravity.getAbsoluteGravity(i, i2);
        }

        public final void a(int i, int i2, int i3, Rect rect, Rect rect2, int i4) {
            Gravity.apply(i, i2, i3, rect, rect2, i4);
        }
    }

    static {
        if (Build.VERSION.SDK_INT >= 17) {
            a = new c();
        } else {
            a = new b();
        }
    }

    public static int a(int i, int i2) {
        return a.a(i, i2);
    }

    public static void a(int i, int i2, int i3, Rect rect, Rect rect2, int i4) {
        a.a(i, i2, i3, rect, rect2, i4);
    }
}
