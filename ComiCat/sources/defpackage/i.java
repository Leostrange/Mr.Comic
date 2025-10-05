package defpackage;

import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.GradientDrawable;
import android.os.Build;

/* renamed from: i  reason: default package */
/* compiled from: DrawableCompat */
public final class i {
    static final b a;

    /* renamed from: i$a */
    /* compiled from: DrawableCompat */
    static class a implements b {
        a() {
        }

        public void a(Drawable drawable) {
        }

        public void a(Drawable drawable, float f, float f2) {
        }

        public void a(Drawable drawable, int i) {
            j.a(drawable, i);
        }

        public void a(Drawable drawable, int i, int i2, int i3, int i4) {
        }

        public void a(Drawable drawable, ColorStateList colorStateList) {
            j.a(drawable, colorStateList);
        }

        public void a(Drawable drawable, PorterDuff.Mode mode) {
            j.a(drawable, mode);
        }

        public void a(Drawable drawable, boolean z) {
        }

        public boolean b(Drawable drawable) {
            return false;
        }

        public Drawable c(Drawable drawable) {
            return !(drawable instanceof l) ? new l(drawable) : drawable;
        }
    }

    /* renamed from: i$b */
    /* compiled from: DrawableCompat */
    interface b {
        void a(Drawable drawable);

        void a(Drawable drawable, float f, float f2);

        void a(Drawable drawable, int i);

        void a(Drawable drawable, int i, int i2, int i3, int i4);

        void a(Drawable drawable, ColorStateList colorStateList);

        void a(Drawable drawable, PorterDuff.Mode mode);

        void a(Drawable drawable, boolean z);

        boolean b(Drawable drawable);

        Drawable c(Drawable drawable);
    }

    /* renamed from: i$c */
    /* compiled from: DrawableCompat */
    static class c extends a {
        c() {
        }

        public final void a(Drawable drawable) {
            drawable.jumpToCurrentState();
        }

        public Drawable c(Drawable drawable) {
            return !(drawable instanceof m) ? new m(drawable) : drawable;
        }
    }

    /* renamed from: i$d */
    /* compiled from: DrawableCompat */
    static class d extends c {
        d() {
        }

        public final void a(Drawable drawable, boolean z) {
            drawable.setAutoMirrored(z);
        }

        public final boolean b(Drawable drawable) {
            return drawable.isAutoMirrored();
        }

        public Drawable c(Drawable drawable) {
            return !(drawable instanceof n) ? new n(drawable) : drawable;
        }
    }

    /* renamed from: i$e */
    /* compiled from: DrawableCompat */
    static class e extends d {
        e() {
        }

        public final void a(Drawable drawable, float f, float f2) {
            drawable.setHotspot(f, f2);
        }

        public final void a(Drawable drawable, int i) {
            if (drawable instanceof o) {
                j.a(drawable, i);
            } else {
                drawable.setTint(i);
            }
        }

        public final void a(Drawable drawable, int i, int i2, int i3, int i4) {
            drawable.setHotspotBounds(i, i2, i3, i4);
        }

        public final void a(Drawable drawable, ColorStateList colorStateList) {
            if (drawable instanceof o) {
                j.a(drawable, colorStateList);
            } else {
                drawable.setTintList(colorStateList);
            }
        }

        public final void a(Drawable drawable, PorterDuff.Mode mode) {
            if (drawable instanceof o) {
                j.a(drawable, mode);
            } else {
                drawable.setTintMode(mode);
            }
        }

        public Drawable c(Drawable drawable) {
            return drawable instanceof GradientDrawable ? new o(drawable) : drawable;
        }
    }

    /* renamed from: i$f */
    /* compiled from: DrawableCompat */
    static class f extends e {
        f() {
        }

        public final Drawable c(Drawable drawable) {
            return drawable;
        }
    }

    static {
        int i = Build.VERSION.SDK_INT;
        if (i >= 22) {
            a = new f();
        } else if (i >= 21) {
            a = new e();
        } else if (i >= 19) {
            a = new d();
        } else if (i >= 11) {
            a = new c();
        } else {
            a = new a();
        }
    }

    public static void a(Drawable drawable) {
        a.a(drawable);
    }

    public static void a(Drawable drawable, float f2, float f3) {
        a.a(drawable, f2, f3);
    }

    public static void a(Drawable drawable, int i) {
        a.a(drawable, i);
    }

    public static void a(Drawable drawable, int i, int i2, int i3, int i4) {
        a.a(drawable, i, i2, i3, i4);
    }

    public static void a(Drawable drawable, ColorStateList colorStateList) {
        a.a(drawable, colorStateList);
    }

    public static void a(Drawable drawable, PorterDuff.Mode mode) {
        a.a(drawable, mode);
    }

    public static void a(Drawable drawable, boolean z) {
        a.a(drawable, z);
    }

    public static boolean b(Drawable drawable) {
        return a.b(drawable);
    }

    public static Drawable c(Drawable drawable) {
        return a.c(drawable);
    }

    public static <T extends Drawable> T d(Drawable drawable) {
        return drawable instanceof k ? ((k) drawable).a() : drawable;
    }
}
