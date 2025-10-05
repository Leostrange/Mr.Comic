package android.support.design.widget;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ValueAnimator;
import android.support.design.widget.ValueAnimatorCompat;
import android.view.animation.Interpolator;

class ValueAnimatorCompatImplHoneycombMr1 extends ValueAnimatorCompat.Impl {
    final ValueAnimator mValueAnimator = new ValueAnimator();

    ValueAnimatorCompatImplHoneycombMr1() {
    }

    public void cancel() {
        this.mValueAnimator.cancel();
    }

    public void end() {
        this.mValueAnimator.end();
    }

    public float getAnimatedFloatValue() {
        return ((Float) this.mValueAnimator.getAnimatedValue()).floatValue();
    }

    public float getAnimatedFraction() {
        return this.mValueAnimator.getAnimatedFraction();
    }

    public int getAnimatedIntValue() {
        return ((Integer) this.mValueAnimator.getAnimatedValue()).intValue();
    }

    public boolean isRunning() {
        return this.mValueAnimator.isRunning();
    }

    public void setDuration(int i) {
        this.mValueAnimator.setDuration((long) i);
    }

    public void setFloatValues(float f, float f2) {
        this.mValueAnimator.setFloatValues(new float[]{f, f2});
    }

    public void setIntValues(int i, int i2) {
        this.mValueAnimator.setIntValues(new int[]{i, i2});
    }

    public void setInterpolator(Interpolator interpolator) {
        this.mValueAnimator.setInterpolator(interpolator);
    }

    public void setListener(final ValueAnimatorCompat.Impl.AnimatorListenerProxy animatorListenerProxy) {
        this.mValueAnimator.addListener(new AnimatorListenerAdapter() {
            public void onAnimationCancel(Animator animator) {
                animatorListenerProxy.onAnimationCancel();
            }

            public void onAnimationEnd(Animator animator) {
                animatorListenerProxy.onAnimationEnd();
            }

            public void onAnimationStart(Animator animator) {
                animatorListenerProxy.onAnimationStart();
            }
        });
    }

    public void setUpdateListener(final ValueAnimatorCompat.Impl.AnimatorUpdateListenerProxy animatorUpdateListenerProxy) {
        this.mValueAnimator.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() {
            public void onAnimationUpdate(ValueAnimator valueAnimator) {
                animatorUpdateListenerProxy.onAnimationUpdate();
            }
        });
    }

    public void start() {
        this.mValueAnimator.start();
    }
}
