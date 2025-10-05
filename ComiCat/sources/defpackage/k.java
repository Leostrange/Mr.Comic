package defpackage;

import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;

/* renamed from: k  reason: default package */
/* compiled from: DrawableWrapper */
public interface k {
    Drawable a();

    void a(Drawable drawable);

    void setTint(int i);

    void setTintList(ColorStateList colorStateList);

    void setTintMode(PorterDuff.Mode mode);
}
