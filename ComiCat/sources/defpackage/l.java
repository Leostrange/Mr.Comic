package defpackage;

import android.content.res.ColorStateList;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.Region;
import android.graphics.drawable.Drawable;

/* renamed from: l  reason: default package */
/* compiled from: DrawableWrapperDonut */
class l extends Drawable implements Drawable.Callback, k {
    static final PorterDuff.Mode a = PorterDuff.Mode.SRC_IN;
    Drawable b;
    private ColorStateList c;
    private PorterDuff.Mode d = a;
    private int e;
    private PorterDuff.Mode f;
    private boolean g;

    l(Drawable drawable) {
        a(drawable);
    }

    private boolean a(int[] iArr) {
        if (!(this.c == null || this.d == null)) {
            int colorForState = this.c.getColorForState(iArr, this.c.getDefaultColor());
            PorterDuff.Mode mode = this.d;
            if (!(this.g && colorForState == this.e && mode == this.f)) {
                setColorFilter(colorForState, mode);
                this.e = colorForState;
                this.f = mode;
                this.g = true;
                return true;
            }
        }
        return false;
    }

    public final Drawable a() {
        return this.b;
    }

    public final void a(Drawable drawable) {
        if (this.b != null) {
            this.b.setCallback((Drawable.Callback) null);
        }
        this.b = drawable;
        if (drawable != null) {
            drawable.setCallback(this);
        }
        invalidateSelf();
    }

    public void draw(Canvas canvas) {
        this.b.draw(canvas);
    }

    public int getChangingConfigurations() {
        return this.b.getChangingConfigurations();
    }

    public Drawable getCurrent() {
        return this.b.getCurrent();
    }

    public int getIntrinsicHeight() {
        return this.b.getIntrinsicHeight();
    }

    public int getIntrinsicWidth() {
        return this.b.getIntrinsicWidth();
    }

    public int getMinimumHeight() {
        return this.b.getMinimumHeight();
    }

    public int getMinimumWidth() {
        return this.b.getMinimumWidth();
    }

    public int getOpacity() {
        return this.b.getOpacity();
    }

    public boolean getPadding(Rect rect) {
        return this.b.getPadding(rect);
    }

    public int[] getState() {
        return this.b.getState();
    }

    public Region getTransparentRegion() {
        return this.b.getTransparentRegion();
    }

    public void invalidateDrawable(Drawable drawable) {
        invalidateSelf();
    }

    public boolean isStateful() {
        return (this.c != null && this.c.isStateful()) || this.b.isStateful();
    }

    public Drawable mutate() {
        Drawable drawable = this.b;
        Drawable mutate = drawable.mutate();
        if (mutate != drawable) {
            a(mutate);
        }
        return this;
    }

    /* access modifiers changed from: protected */
    public void onBoundsChange(Rect rect) {
        this.b.setBounds(rect);
    }

    /* access modifiers changed from: protected */
    public boolean onLevelChange(int i) {
        return this.b.setLevel(i);
    }

    public void scheduleDrawable(Drawable drawable, Runnable runnable, long j) {
        scheduleSelf(runnable, j);
    }

    public void setAlpha(int i) {
        this.b.setAlpha(i);
    }

    public void setChangingConfigurations(int i) {
        this.b.setChangingConfigurations(i);
    }

    public void setColorFilter(ColorFilter colorFilter) {
        this.b.setColorFilter(colorFilter);
    }

    public void setDither(boolean z) {
        this.b.setDither(z);
    }

    public void setFilterBitmap(boolean z) {
        this.b.setFilterBitmap(z);
    }

    public boolean setState(int[] iArr) {
        return a(iArr) || this.b.setState(iArr);
    }

    public void setTint(int i) {
        setTintList(ColorStateList.valueOf(i));
    }

    public void setTintList(ColorStateList colorStateList) {
        this.c = colorStateList;
        a(getState());
    }

    public void setTintMode(PorterDuff.Mode mode) {
        this.d = mode;
        a(getState());
    }

    public boolean setVisible(boolean z, boolean z2) {
        return super.setVisible(z, z2) || this.b.setVisible(z, z2);
    }

    public void unscheduleDrawable(Drawable drawable, Runnable runnable) {
        unscheduleSelf(runnable);
    }
}
