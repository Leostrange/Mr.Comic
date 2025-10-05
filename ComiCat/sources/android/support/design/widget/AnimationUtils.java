package android.support.design.widget;

import android.view.animation.Animation;
import android.view.animation.DecelerateInterpolator;
import android.view.animation.Interpolator;
import android.view.animation.LinearInterpolator;

class AnimationUtils {
    static final Interpolator DECELERATE_INTERPOLATOR = new DecelerateInterpolator();
    static final Interpolator FAST_OUT_SLOW_IN_INTERPOLATOR = new ce();
    static final Interpolator LINEAR_INTERPOLATOR = new LinearInterpolator();

    static class AnimationListenerAdapter implements Animation.AnimationListener {
        AnimationListenerAdapter() {
        }

        public void onAnimationEnd(Animation animation) {
        }

        public void onAnimationRepeat(Animation animation) {
        }

        public void onAnimationStart(Animation animation) {
        }
    }

    AnimationUtils() {
    }

    static float lerp(float f, float f2, float f3) {
        return ((f2 - f) * f3) + f;
    }

    static int lerp(int i, int i2, float f) {
        return Math.round(((float) (i2 - i)) * f) + i;
    }
}
