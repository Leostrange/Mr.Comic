package android.support.design.widget;

import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.view.View;
import defpackage.a;

abstract class FloatingActionButtonImpl {
    static final int[] EMPTY_STATE_SET = new int[0];
    static final int[] FOCUSED_ENABLED_STATE_SET = {16842908, 16842910};
    static final int[] PRESSED_ENABLED_STATE_SET = {16842919, 16842910};
    static final int SHOW_HIDE_ANIM_DURATION = 200;
    final ShadowViewDelegate mShadowViewDelegate;
    final View mView;

    FloatingActionButtonImpl(View view, ShadowViewDelegate shadowViewDelegate) {
        this.mView = view;
        this.mShadowViewDelegate = shadowViewDelegate;
    }

    /* access modifiers changed from: package-private */
    public Drawable createBorderDrawable(int i, ColorStateList colorStateList) {
        Resources resources = this.mView.getResources();
        CircularBorderDrawable newCircularDrawable = newCircularDrawable();
        newCircularDrawable.setGradientColors(resources.getColor(a.c.fab_stroke_top_outer_color), resources.getColor(a.c.fab_stroke_top_inner_color), resources.getColor(a.c.fab_stroke_end_inner_color), resources.getColor(a.c.fab_stroke_end_outer_color));
        newCircularDrawable.setBorderWidth((float) i);
        newCircularDrawable.setTintColor(colorStateList.getDefaultColor());
        return newCircularDrawable;
    }

    /* access modifiers changed from: package-private */
    public abstract void hide();

    /* access modifiers changed from: package-private */
    public abstract void jumpDrawableToCurrentState();

    /* access modifiers changed from: package-private */
    public CircularBorderDrawable newCircularDrawable() {
        return new CircularBorderDrawable();
    }

    /* access modifiers changed from: package-private */
    public abstract void onDrawableStateChanged(int[] iArr);

    /* access modifiers changed from: package-private */
    public abstract void setBackgroundDrawable(Drawable drawable, ColorStateList colorStateList, PorterDuff.Mode mode, int i, int i2);

    /* access modifiers changed from: package-private */
    public abstract void setBackgroundTintList(ColorStateList colorStateList);

    /* access modifiers changed from: package-private */
    public abstract void setBackgroundTintMode(PorterDuff.Mode mode);

    /* access modifiers changed from: package-private */
    public abstract void setElevation(float f);

    /* access modifiers changed from: package-private */
    public abstract void setPressedTranslationZ(float f);

    /* access modifiers changed from: package-private */
    public abstract void setRippleColor(int i);

    /* access modifiers changed from: package-private */
    public abstract void show();
}
