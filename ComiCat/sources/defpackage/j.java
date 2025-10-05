package defpackage;

import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;

/* renamed from: j  reason: default package */
/* compiled from: DrawableCompatBase */
final class j {
    public static void a(Drawable drawable, int i) {
        if (drawable instanceof k) {
            ((k) drawable).setTint(i);
        }
    }

    public static void a(Drawable drawable, ColorStateList colorStateList) {
        if (drawable instanceof k) {
            ((k) drawable).setTintList(colorStateList);
        }
    }

    public static void a(Drawable drawable, PorterDuff.Mode mode) {
        if (drawable instanceof k) {
            ((k) drawable).setTintMode(mode);
        }
    }
}
