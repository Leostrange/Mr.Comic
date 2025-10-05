package defpackage;

import android.content.res.ColorStateList;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.Region;
import android.graphics.drawable.Drawable;

/* renamed from: cz  reason: default package */
/* compiled from: DrawableWrapper */
public class cz extends Drawable implements Drawable.Callback {
    private Drawable mDrawable;

    public cz(Drawable drawable) {
        setWrappedDrawable(drawable);
    }

    public void draw(Canvas canvas) {
        this.mDrawable.draw(canvas);
    }

    public int getChangingConfigurations() {
        return this.mDrawable.getChangingConfigurations();
    }

    public Drawable getCurrent() {
        return this.mDrawable.getCurrent();
    }

    public int getIntrinsicHeight() {
        return this.mDrawable.getIntrinsicHeight();
    }

    public int getIntrinsicWidth() {
        return this.mDrawable.getIntrinsicWidth();
    }

    public int getMinimumHeight() {
        return this.mDrawable.getMinimumHeight();
    }

    public int getMinimumWidth() {
        return this.mDrawable.getMinimumWidth();
    }

    public int getOpacity() {
        return this.mDrawable.getOpacity();
    }

    public boolean getPadding(Rect rect) {
        return this.mDrawable.getPadding(rect);
    }

    public int[] getState() {
        return this.mDrawable.getState();
    }

    public Region getTransparentRegion() {
        return this.mDrawable.getTransparentRegion();
    }

    public Drawable getWrappedDrawable() {
        return this.mDrawable;
    }

    public void invalidateDrawable(Drawable drawable) {
        invalidateSelf();
    }

    public boolean isAutoMirrored() {
        return i.b(this.mDrawable);
    }

    public boolean isStateful() {
        return this.mDrawable.isStateful();
    }

    public void jumpToCurrentState() {
        i.a(this.mDrawable);
    }

    public void onBoundsChange(Rect rect) {
        this.mDrawable.setBounds(rect);
    }

    /* access modifiers changed from: protected */
    public boolean onLevelChange(int i) {
        return this.mDrawable.setLevel(i);
    }

    public void scheduleDrawable(Drawable drawable, Runnable runnable, long j) {
        scheduleSelf(runnable, j);
    }

    public void setAlpha(int i) {
        this.mDrawable.setAlpha(i);
    }

    public void setAutoMirrored(boolean z) {
        i.a(this.mDrawable, z);
    }

    public void setChangingConfigurations(int i) {
        this.mDrawable.setChangingConfigurations(i);
    }

    public void setColorFilter(ColorFilter colorFilter) {
        this.mDrawable.setColorFilter(colorFilter);
    }

    public void setDither(boolean z) {
        this.mDrawable.setDither(z);
    }

    public void setFilterBitmap(boolean z) {
        this.mDrawable.setFilterBitmap(z);
    }

    public void setHotspot(float f, float f2) {
        i.a(this.mDrawable, f, f2);
    }

    public void setHotspotBounds(int i, int i2, int i3, int i4) {
        i.a(this.mDrawable, i, i2, i3, i4);
    }

    public boolean setState(int[] iArr) {
        return this.mDrawable.setState(iArr);
    }

    public void setTint(int i) {
        i.a(this.mDrawable, i);
    }

    public void setTintList(ColorStateList colorStateList) {
        i.a(this.mDrawable, colorStateList);
    }

    public void setTintMode(PorterDuff.Mode mode) {
        i.a(this.mDrawable, mode);
    }

    public boolean setVisible(boolean z, boolean z2) {
        return super.setVisible(z, z2) || this.mDrawable.setVisible(z, z2);
    }

    public void setWrappedDrawable(Drawable drawable) {
        if (this.mDrawable != null) {
            this.mDrawable.setCallback((Drawable.Callback) null);
        }
        this.mDrawable = drawable;
        if (drawable != null) {
            drawable.setCallback(this);
        }
    }

    public void unscheduleDrawable(Drawable drawable, Runnable runnable) {
        unscheduleSelf(runnable);
    }
}
