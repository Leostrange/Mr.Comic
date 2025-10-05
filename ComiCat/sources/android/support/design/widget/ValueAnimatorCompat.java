package android.support.design.widget;

import android.view.animation.Interpolator;

class ValueAnimatorCompat {
    private final Impl mImpl;

    interface AnimatorListener {
        void onAnimationCancel(ValueAnimatorCompat valueAnimatorCompat);

        void onAnimationEnd(ValueAnimatorCompat valueAnimatorCompat);

        void onAnimationStart(ValueAnimatorCompat valueAnimatorCompat);
    }

    static class AnimatorListenerAdapter implements AnimatorListener {
        AnimatorListenerAdapter() {
        }

        public void onAnimationCancel(ValueAnimatorCompat valueAnimatorCompat) {
        }

        public void onAnimationEnd(ValueAnimatorCompat valueAnimatorCompat) {
        }

        public void onAnimationStart(ValueAnimatorCompat valueAnimatorCompat) {
        }
    }

    interface AnimatorUpdateListener {
        void onAnimationUpdate(ValueAnimatorCompat valueAnimatorCompat);
    }

    interface Creator {
        ValueAnimatorCompat createAnimator();
    }

    static abstract class Impl {

        interface AnimatorListenerProxy {
            void onAnimationCancel();

            void onAnimationEnd();

            void onAnimationStart();
        }

        interface AnimatorUpdateListenerProxy {
            void onAnimationUpdate();
        }

        Impl() {
        }

        /* access modifiers changed from: package-private */
        public abstract void cancel();

        /* access modifiers changed from: package-private */
        public abstract void end();

        /* access modifiers changed from: package-private */
        public abstract float getAnimatedFloatValue();

        /* access modifiers changed from: package-private */
        public abstract float getAnimatedFraction();

        /* access modifiers changed from: package-private */
        public abstract int getAnimatedIntValue();

        /* access modifiers changed from: package-private */
        public abstract boolean isRunning();

        /* access modifiers changed from: package-private */
        public abstract void setDuration(int i);

        /* access modifiers changed from: package-private */
        public abstract void setFloatValues(float f, float f2);

        /* access modifiers changed from: package-private */
        public abstract void setIntValues(int i, int i2);

        /* access modifiers changed from: package-private */
        public abstract void setInterpolator(Interpolator interpolator);

        /* access modifiers changed from: package-private */
        public abstract void setListener(AnimatorListenerProxy animatorListenerProxy);

        /* access modifiers changed from: package-private */
        public abstract void setUpdateListener(AnimatorUpdateListenerProxy animatorUpdateListenerProxy);

        /* access modifiers changed from: package-private */
        public abstract void start();
    }

    ValueAnimatorCompat(Impl impl) {
        this.mImpl = impl;
    }

    public void cancel() {
        this.mImpl.cancel();
    }

    public void end() {
        this.mImpl.end();
    }

    public float getAnimatedFloatValue() {
        return this.mImpl.getAnimatedFloatValue();
    }

    public float getAnimatedFraction() {
        return this.mImpl.getAnimatedFraction();
    }

    public int getAnimatedIntValue() {
        return this.mImpl.getAnimatedIntValue();
    }

    public boolean isRunning() {
        return this.mImpl.isRunning();
    }

    public void setDuration(int i) {
        this.mImpl.setDuration(i);
    }

    public void setFloatValues(float f, float f2) {
        this.mImpl.setFloatValues(f, f2);
    }

    public void setIntValues(int i, int i2) {
        this.mImpl.setIntValues(i, i2);
    }

    public void setInterpolator(Interpolator interpolator) {
        this.mImpl.setInterpolator(interpolator);
    }

    public void setListener(final AnimatorListener animatorListener) {
        if (animatorListener != null) {
            this.mImpl.setListener(new Impl.AnimatorListenerProxy() {
                public void onAnimationCancel() {
                    animatorListener.onAnimationCancel(ValueAnimatorCompat.this);
                }

                public void onAnimationEnd() {
                    animatorListener.onAnimationEnd(ValueAnimatorCompat.this);
                }

                public void onAnimationStart() {
                    animatorListener.onAnimationStart(ValueAnimatorCompat.this);
                }
            });
        } else {
            this.mImpl.setListener((Impl.AnimatorListenerProxy) null);
        }
    }

    public void setUpdateListener(final AnimatorUpdateListener animatorUpdateListener) {
        if (animatorUpdateListener != null) {
            this.mImpl.setUpdateListener(new Impl.AnimatorUpdateListenerProxy() {
                public void onAnimationUpdate() {
                    animatorUpdateListener.onAnimationUpdate(ValueAnimatorCompat.this);
                }
            });
        } else {
            this.mImpl.setUpdateListener((Impl.AnimatorUpdateListenerProxy) null);
        }
    }

    public void start() {
        this.mImpl.start();
    }
}
