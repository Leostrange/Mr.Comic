package android.support.design.widget;

import android.os.Handler;
import android.os.Looper;
import android.os.SystemClock;
import android.support.design.widget.ValueAnimatorCompat;
import android.view.animation.AccelerateDecelerateInterpolator;
import android.view.animation.Interpolator;

class ValueAnimatorCompatImplEclairMr1 extends ValueAnimatorCompat.Impl {
    private static final int DEFAULT_DURATION = 200;
    private static final int HANDLER_DELAY = 10;
    private static final Handler sHandler = new Handler(Looper.getMainLooper());
    private float mAnimatedFraction;
    private int mDuration = 200;
    private final float[] mFloatValues = new float[2];
    private final int[] mIntValues = new int[2];
    private Interpolator mInterpolator;
    private boolean mIsRunning;
    private ValueAnimatorCompat.Impl.AnimatorListenerProxy mListener;
    private final Runnable mRunnable = new Runnable() {
        public void run() {
            ValueAnimatorCompatImplEclairMr1.this.update();
        }
    };
    private long mStartTime;
    private ValueAnimatorCompat.Impl.AnimatorUpdateListenerProxy mUpdateListener;

    ValueAnimatorCompatImplEclairMr1() {
    }

    /* access modifiers changed from: private */
    public void update() {
        if (this.mIsRunning) {
            float uptimeMillis = ((float) (SystemClock.uptimeMillis() - this.mStartTime)) / ((float) this.mDuration);
            if (this.mInterpolator != null) {
                uptimeMillis = this.mInterpolator.getInterpolation(uptimeMillis);
            }
            this.mAnimatedFraction = uptimeMillis;
            if (this.mUpdateListener != null) {
                this.mUpdateListener.onAnimationUpdate();
            }
            if (SystemClock.uptimeMillis() >= this.mStartTime + ((long) this.mDuration)) {
                this.mIsRunning = false;
                if (this.mListener != null) {
                    this.mListener.onAnimationEnd();
                }
            }
        }
        if (this.mIsRunning) {
            sHandler.postDelayed(this.mRunnable, 10);
        }
    }

    public void cancel() {
        this.mIsRunning = false;
        sHandler.removeCallbacks(this.mRunnable);
        if (this.mListener != null) {
            this.mListener.onAnimationCancel();
        }
    }

    public void end() {
        if (this.mIsRunning) {
            this.mIsRunning = false;
            sHandler.removeCallbacks(this.mRunnable);
            this.mAnimatedFraction = 1.0f;
            if (this.mUpdateListener != null) {
                this.mUpdateListener.onAnimationUpdate();
            }
            if (this.mListener != null) {
                this.mListener.onAnimationEnd();
            }
        }
    }

    public float getAnimatedFloatValue() {
        return AnimationUtils.lerp(this.mFloatValues[0], this.mFloatValues[1], getAnimatedFraction());
    }

    public float getAnimatedFraction() {
        return this.mAnimatedFraction;
    }

    public int getAnimatedIntValue() {
        return AnimationUtils.lerp(this.mIntValues[0], this.mIntValues[1], getAnimatedFraction());
    }

    public boolean isRunning() {
        return this.mIsRunning;
    }

    public void setDuration(int i) {
        this.mDuration = i;
    }

    public void setFloatValues(float f, float f2) {
        this.mFloatValues[0] = f;
        this.mFloatValues[1] = f2;
    }

    public void setIntValues(int i, int i2) {
        this.mIntValues[0] = i;
        this.mIntValues[1] = i2;
    }

    public void setInterpolator(Interpolator interpolator) {
        this.mInterpolator = interpolator;
    }

    public void setListener(ValueAnimatorCompat.Impl.AnimatorListenerProxy animatorListenerProxy) {
        this.mListener = animatorListenerProxy;
    }

    public void setUpdateListener(ValueAnimatorCompat.Impl.AnimatorUpdateListenerProxy animatorUpdateListenerProxy) {
        this.mUpdateListener = animatorUpdateListenerProxy;
    }

    public void start() {
        if (!this.mIsRunning) {
            if (this.mInterpolator == null) {
                this.mInterpolator = new AccelerateDecelerateInterpolator();
            }
            this.mStartTime = SystemClock.uptimeMillis();
            this.mIsRunning = true;
            if (this.mListener != null) {
                this.mListener.onAnimationStart();
            }
            sHandler.postDelayed(this.mRunnable, 10);
        }
    }
}
