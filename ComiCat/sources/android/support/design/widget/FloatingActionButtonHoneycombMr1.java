package android.support.design.widget;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.view.View;

class FloatingActionButtonHoneycombMr1 extends FloatingActionButtonEclairMr1 {
    /* access modifiers changed from: private */
    public boolean mIsHiding;

    FloatingActionButtonHoneycombMr1(View view, ShadowViewDelegate shadowViewDelegate) {
        super(view, shadowViewDelegate);
    }

    /* access modifiers changed from: package-private */
    public void hide() {
        if (!this.mIsHiding) {
            this.mView.animate().scaleX(0.0f).scaleY(0.0f).alpha(0.0f).setDuration(200).setInterpolator(AnimationUtils.FAST_OUT_SLOW_IN_INTERPOLATOR).setListener(new AnimatorListenerAdapter() {
                public void onAnimationCancel(Animator animator) {
                    boolean unused = FloatingActionButtonHoneycombMr1.this.mIsHiding = false;
                }

                public void onAnimationEnd(Animator animator) {
                    boolean unused = FloatingActionButtonHoneycombMr1.this.mIsHiding = false;
                    FloatingActionButtonHoneycombMr1.this.mView.setVisibility(8);
                }

                public void onAnimationStart(Animator animator) {
                    boolean unused = FloatingActionButtonHoneycombMr1.this.mIsHiding = true;
                }
            });
        }
    }

    /* access modifiers changed from: package-private */
    public void show() {
        this.mView.animate().scaleX(1.0f).scaleY(1.0f).alpha(1.0f).setDuration(200).setInterpolator(AnimationUtils.FAST_OUT_SLOW_IN_INTERPOLATOR).setListener((Animator.AnimatorListener) null);
    }
}
