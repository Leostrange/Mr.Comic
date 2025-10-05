package android.support.design.widget;

import android.os.Build;
import android.support.design.widget.ValueAnimatorCompat;
import android.view.View;

class ViewUtils {
    static final ValueAnimatorCompat.Creator DEFAULT_ANIMATOR_CREATOR = new ValueAnimatorCompat.Creator() {
        public final ValueAnimatorCompat createAnimator() {
            return new ValueAnimatorCompat(Build.VERSION.SDK_INT >= 12 ? new ValueAnimatorCompatImplHoneycombMr1() : new ValueAnimatorCompatImplEclairMr1());
        }
    };
    private static final ViewUtilsImpl IMPL;

    interface ViewUtilsImpl {
        void setBoundsViewOutlineProvider(View view);
    }

    static class ViewUtilsImplBase implements ViewUtilsImpl {
        private ViewUtilsImplBase() {
        }

        public void setBoundsViewOutlineProvider(View view) {
        }
    }

    static class ViewUtilsImplLollipop implements ViewUtilsImpl {
        private ViewUtilsImplLollipop() {
        }

        public void setBoundsViewOutlineProvider(View view) {
            ViewUtilsLollipop.setBoundsViewOutlineProvider(view);
        }
    }

    static {
        if (Build.VERSION.SDK_INT >= 21) {
            IMPL = new ViewUtilsImplLollipop();
        } else {
            IMPL = new ViewUtilsImplBase();
        }
    }

    ViewUtils() {
    }

    static ValueAnimatorCompat createAnimator() {
        return DEFAULT_ANIMATOR_CREATOR.createAnimator();
    }

    static void setBoundsViewOutlineProvider(View view) {
        IMPL.setBoundsViewOutlineProvider(view);
    }
}
