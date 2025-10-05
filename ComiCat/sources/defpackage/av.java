package defpackage;

import android.os.Build;
import android.view.ViewGroup;

/* renamed from: av  reason: default package */
/* compiled from: MarginLayoutParamsCompat */
public final class av {
    static final a a;

    /* renamed from: av$a */
    /* compiled from: MarginLayoutParamsCompat */
    interface a {
        int a(ViewGroup.MarginLayoutParams marginLayoutParams);

        int b(ViewGroup.MarginLayoutParams marginLayoutParams);
    }

    /* renamed from: av$b */
    /* compiled from: MarginLayoutParamsCompat */
    static class b implements a {
        b() {
        }

        public final int a(ViewGroup.MarginLayoutParams marginLayoutParams) {
            return marginLayoutParams.leftMargin;
        }

        public final int b(ViewGroup.MarginLayoutParams marginLayoutParams) {
            return marginLayoutParams.rightMargin;
        }
    }

    /* renamed from: av$c */
    /* compiled from: MarginLayoutParamsCompat */
    static class c implements a {
        c() {
        }

        public final int a(ViewGroup.MarginLayoutParams marginLayoutParams) {
            return marginLayoutParams.getMarginStart();
        }

        public final int b(ViewGroup.MarginLayoutParams marginLayoutParams) {
            return marginLayoutParams.getMarginEnd();
        }
    }

    static {
        if (Build.VERSION.SDK_INT >= 17) {
            a = new c();
        } else {
            a = new b();
        }
    }

    public static int a(ViewGroup.MarginLayoutParams marginLayoutParams) {
        return a.a(marginLayoutParams);
    }

    public static int b(ViewGroup.MarginLayoutParams marginLayoutParams) {
        return a.b(marginLayoutParams);
    }
}
