package android.support.design.widget;

import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.GradientDrawable;
import android.graphics.drawable.LayerDrawable;
import android.support.design.widget.AnimationUtils;
import android.view.View;
import android.view.animation.Animation;
import android.view.animation.AnimationUtils;
import android.view.animation.Transformation;
import defpackage.a;

class FloatingActionButtonEclairMr1 extends FloatingActionButtonImpl {
    private int mAnimationDuration;
    private Drawable mBorderDrawable;
    /* access modifiers changed from: private */
    public float mElevation;
    /* access modifiers changed from: private */
    public boolean mIsHiding;
    /* access modifiers changed from: private */
    public float mPressedTranslationZ;
    private Drawable mRippleDrawable;
    ShadowDrawableWrapper mShadowDrawable;
    private Drawable mShapeDrawable;
    private StateListAnimator mStateListAnimator = new StateListAnimator();

    abstract class BaseShadowAnimation extends Animation {
        private float mShadowSizeDiff;
        private float mShadowSizeStart;

        private BaseShadowAnimation() {
        }

        /* access modifiers changed from: protected */
        public void applyTransformation(float f, Transformation transformation) {
            FloatingActionButtonEclairMr1.this.mShadowDrawable.setShadowSize(this.mShadowSizeStart + (this.mShadowSizeDiff * f));
        }

        /* access modifiers changed from: protected */
        public abstract float getTargetShadowSize();

        public void reset() {
            super.reset();
            this.mShadowSizeStart = FloatingActionButtonEclairMr1.this.mShadowDrawable.getShadowSize();
            this.mShadowSizeDiff = getTargetShadowSize() - this.mShadowSizeStart;
        }
    }

    class ElevateToTranslationZAnimation extends BaseShadowAnimation {
        private ElevateToTranslationZAnimation() {
            super();
        }

        /* access modifiers changed from: protected */
        public float getTargetShadowSize() {
            return FloatingActionButtonEclairMr1.this.mElevation + FloatingActionButtonEclairMr1.this.mPressedTranslationZ;
        }
    }

    class ResetElevationAnimation extends BaseShadowAnimation {
        private ResetElevationAnimation() {
            super();
        }

        /* access modifiers changed from: protected */
        public float getTargetShadowSize() {
            return FloatingActionButtonEclairMr1.this.mElevation;
        }
    }

    FloatingActionButtonEclairMr1(View view, ShadowViewDelegate shadowViewDelegate) {
        super(view, shadowViewDelegate);
        this.mAnimationDuration = view.getResources().getInteger(17694720);
        this.mStateListAnimator.setTarget(view);
        this.mStateListAnimator.addState(PRESSED_ENABLED_STATE_SET, setupAnimation(new ElevateToTranslationZAnimation()));
        this.mStateListAnimator.addState(FOCUSED_ENABLED_STATE_SET, setupAnimation(new ElevateToTranslationZAnimation()));
        this.mStateListAnimator.addState(EMPTY_STATE_SET, setupAnimation(new ResetElevationAnimation()));
    }

    private static ColorStateList createColorStateList(int i) {
        return new ColorStateList(new int[][]{FOCUSED_ENABLED_STATE_SET, PRESSED_ENABLED_STATE_SET, new int[0]}, new int[]{i, i, 0});
    }

    private Animation setupAnimation(Animation animation) {
        animation.setInterpolator(AnimationUtils.FAST_OUT_SLOW_IN_INTERPOLATOR);
        animation.setDuration((long) this.mAnimationDuration);
        return animation;
    }

    private void updatePadding() {
        Rect rect = new Rect();
        this.mShadowDrawable.getPadding(rect);
        this.mShadowViewDelegate.setShadowPadding(rect.left, rect.top, rect.right, rect.bottom);
    }

    /* access modifiers changed from: package-private */
    public void hide() {
        if (!this.mIsHiding) {
            Animation loadAnimation = AnimationUtils.loadAnimation(this.mView.getContext(), a.C0000a.fab_out);
            loadAnimation.setInterpolator(AnimationUtils.FAST_OUT_SLOW_IN_INTERPOLATOR);
            loadAnimation.setDuration(200);
            loadAnimation.setAnimationListener(new AnimationUtils.AnimationListenerAdapter() {
                public void onAnimationEnd(Animation animation) {
                    boolean unused = FloatingActionButtonEclairMr1.this.mIsHiding = false;
                    FloatingActionButtonEclairMr1.this.mView.setVisibility(8);
                }

                public void onAnimationStart(Animation animation) {
                    boolean unused = FloatingActionButtonEclairMr1.this.mIsHiding = true;
                }
            });
            this.mView.startAnimation(loadAnimation);
        }
    }

    /* access modifiers changed from: package-private */
    public void jumpDrawableToCurrentState() {
        this.mStateListAnimator.jumpToCurrentState();
    }

    /* access modifiers changed from: package-private */
    public void onDrawableStateChanged(int[] iArr) {
        this.mStateListAnimator.setState(iArr);
    }

    /* access modifiers changed from: package-private */
    public void setBackgroundDrawable(Drawable drawable, ColorStateList colorStateList, PorterDuff.Mode mode, int i, int i2) {
        Drawable[] drawableArr;
        this.mShapeDrawable = i.c(drawable);
        i.a(this.mShapeDrawable, colorStateList);
        if (mode != null) {
            i.a(this.mShapeDrawable, mode);
        }
        GradientDrawable gradientDrawable = new GradientDrawable();
        gradientDrawable.setShape(1);
        gradientDrawable.setColor(-1);
        gradientDrawable.setCornerRadius(this.mShadowViewDelegate.getRadius());
        this.mRippleDrawable = i.c(gradientDrawable);
        i.a(this.mRippleDrawable, createColorStateList(i));
        i.a(this.mRippleDrawable, PorterDuff.Mode.MULTIPLY);
        if (i2 > 0) {
            this.mBorderDrawable = createBorderDrawable(i2, colorStateList);
            drawableArr = new Drawable[]{this.mBorderDrawable, this.mShapeDrawable, this.mRippleDrawable};
        } else {
            this.mBorderDrawable = null;
            drawableArr = new Drawable[]{this.mShapeDrawable, this.mRippleDrawable};
        }
        this.mShadowDrawable = new ShadowDrawableWrapper(this.mView.getResources(), new LayerDrawable(drawableArr), this.mShadowViewDelegate.getRadius(), this.mElevation, this.mElevation + this.mPressedTranslationZ);
        this.mShadowDrawable.setAddPaddingForCorners(false);
        this.mShadowViewDelegate.setBackgroundDrawable(this.mShadowDrawable);
        updatePadding();
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

    /* access modifiers changed from: package-private */
    public void setElevation(float f) {
        if (this.mElevation != f && this.mShadowDrawable != null) {
            this.mShadowDrawable.setShadowSize(f, this.mPressedTranslationZ + f);
            this.mElevation = f;
            updatePadding();
        }
    }

    /* access modifiers changed from: package-private */
    public void setPressedTranslationZ(float f) {
        if (this.mPressedTranslationZ != f && this.mShadowDrawable != null) {
            this.mPressedTranslationZ = f;
            this.mShadowDrawable.setMaxShadowSize(this.mElevation + f);
            updatePadding();
        }
    }

    /* access modifiers changed from: package-private */
    public void setRippleColor(int i) {
        i.a(this.mRippleDrawable, createColorStateList(i));
    }

    /* access modifiers changed from: package-private */
    public void show() {
        Animation loadAnimation = android.view.animation.AnimationUtils.loadAnimation(this.mView.getContext(), a.C0000a.fab_in);
        loadAnimation.setDuration(200);
        loadAnimation.setInterpolator(AnimationUtils.FAST_OUT_SLOW_IN_INTERPOLATOR);
        this.mView.startAnimation(loadAnimation);
    }
}
