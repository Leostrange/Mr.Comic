package android.support.design.widget;

import android.animation.Animator;
import android.animation.ObjectAnimator;
import android.animation.StateListAnimator;
import android.annotation.TargetApi;
import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.LayerDrawable;
import android.graphics.drawable.RippleDrawable;
import android.view.View;
import android.view.animation.AnimationUtils;
import android.view.animation.Interpolator;

@TargetApi(21)
class FloatingActionButtonLollipop extends FloatingActionButtonHoneycombMr1 {
    private Drawable mBorderDrawable;
    private Interpolator mInterpolator;
    private RippleDrawable mRippleDrawable;
    private Drawable mShapeDrawable;

    FloatingActionButtonLollipop(View view, ShadowViewDelegate shadowViewDelegate) {
        super(view, shadowViewDelegate);
        if (!view.isInEditMode()) {
            this.mInterpolator = AnimationUtils.loadInterpolator(this.mView.getContext(), 17563661);
        }
    }

    private Animator setupAnimator(Animator animator) {
        animator.setInterpolator(this.mInterpolator);
        return animator;
    }

    /* access modifiers changed from: package-private */
    public void jumpDrawableToCurrentState() {
    }

    /* access modifiers changed from: package-private */
    public CircularBorderDrawable newCircularDrawable() {
        return new CircularBorderDrawableLollipop();
    }

    /* access modifiers changed from: package-private */
    public void onDrawableStateChanged(int[] iArr) {
    }

    /* access modifiers changed from: package-private */
    public void setBackgroundDrawable(Drawable drawable, ColorStateList colorStateList, PorterDuff.Mode mode, int i, int i2) {
        Drawable drawable2;
        this.mShapeDrawable = i.c(drawable);
        i.a(this.mShapeDrawable, colorStateList);
        if (mode != null) {
            i.a(this.mShapeDrawable, mode);
        }
        if (i2 > 0) {
            this.mBorderDrawable = createBorderDrawable(i2, colorStateList);
            drawable2 = new LayerDrawable(new Drawable[]{this.mBorderDrawable, this.mShapeDrawable});
        } else {
            this.mBorderDrawable = null;
            drawable2 = this.mShapeDrawable;
        }
        this.mRippleDrawable = new RippleDrawable(ColorStateList.valueOf(i), drawable2, (Drawable) null);
        this.mShadowViewDelegate.setBackgroundDrawable(this.mRippleDrawable);
        this.mShadowViewDelegate.setShadowPadding(0, 0, 0, 0);
    }

    /* access modifiers changed from: package-private */
    public void setBackgroundTintList(ColorStateList colorStateList) {
        i.a(this.mShapeDrawable, colorStateList);
        if (this.mBorderDrawable != null) {
            i.a(this.mBorderDrawable, colorStateList);
        }
    }

    /* access modifiers changed from: package-private */
    public void setBackgroundTintMode(PorterDuff.Mode mode) {
        i.a(this.mShapeDrawable, mode);
    }

    public void setElevation(float f) {
        bh.f(this.mView, f);
    }

    /* access modifiers changed from: package-private */
    public void setPressedTranslationZ(float f) {
        StateListAnimator stateListAnimator = new StateListAnimator();
        stateListAnimator.addState(PRESSED_ENABLED_STATE_SET, setupAnimator(ObjectAnimator.ofFloat(this.mView, "translationZ", new float[]{f})));
        stateListAnimator.addState(FOCUSED_ENABLED_STATE_SET, setupAnimator(ObjectAnimator.ofFloat(this.mView, "translationZ", new float[]{f})));
        stateListAnimator.addState(EMPTY_STATE_SET, setupAnimator(ObjectAnimator.ofFloat(this.mView, "translationZ", new float[]{0.0f})));
        this.mView.setStateListAnimator(stateListAnimator);
    }

    /* access modifiers changed from: package-private */
    public void setRippleColor(int i) {
        this.mRippleDrawable.setColor(ColorStateList.valueOf(i));
    }
}
