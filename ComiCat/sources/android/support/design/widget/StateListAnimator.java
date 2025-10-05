package android.support.design.widget;

import android.util.StateSet;
import android.view.View;
import android.view.animation.Animation;
import java.lang.ref.WeakReference;
import java.util.ArrayList;

final class StateListAnimator {
    private Animation.AnimationListener mAnimationListener = new Animation.AnimationListener() {
        public void onAnimationEnd(Animation animation) {
            if (StateListAnimator.this.mRunningAnimation == animation) {
                Animation unused = StateListAnimator.this.mRunningAnimation = null;
            }
        }

        public void onAnimationRepeat(Animation animation) {
        }

        public void onAnimationStart(Animation animation) {
        }
    };
    private Tuple mLastMatch = null;
    /* access modifiers changed from: private */
    public Animation mRunningAnimation = null;
    private final ArrayList<Tuple> mTuples = new ArrayList<>();
    private WeakReference<View> mViewRef;

    static class Tuple {
        final Animation mAnimation;
        final int[] mSpecs;

        private Tuple(int[] iArr, Animation animation) {
            this.mSpecs = iArr;
            this.mAnimation = animation;
        }

        /* access modifiers changed from: package-private */
        public Animation getAnimation() {
            return this.mAnimation;
        }

        /* access modifiers changed from: package-private */
        public int[] getSpecs() {
            return this.mSpecs;
        }
    }

    StateListAnimator() {
    }

    private void cancel() {
        if (this.mRunningAnimation != null) {
            View target = getTarget();
            if (target != null && target.getAnimation() == this.mRunningAnimation) {
                target.clearAnimation();
            }
            this.mRunningAnimation = null;
        }
    }

    private void clearTarget() {
        View target = getTarget();
        int size = this.mTuples.size();
        for (int i = 0; i < size; i++) {
            if (target.getAnimation() == this.mTuples.get(i).mAnimation) {
                target.clearAnimation();
            }
        }
        this.mViewRef = null;
        this.mLastMatch = null;
        this.mRunningAnimation = null;
    }

    private void start(Tuple tuple) {
        this.mRunningAnimation = tuple.mAnimation;
        View target = getTarget();
        if (target != null) {
            target.startAnimation(this.mRunningAnimation);
        }
    }

    public final void addState(int[] iArr, Animation animation) {
        Tuple tuple = new Tuple(iArr, animation);
        animation.setAnimationListener(this.mAnimationListener);
        this.mTuples.add(tuple);
    }

    /* access modifiers changed from: package-private */
    public final Animation getRunningAnimation() {
        return this.mRunningAnimation;
    }

    /* access modifiers changed from: package-private */
    public final View getTarget() {
        if (this.mViewRef == null) {
            return null;
        }
        return (View) this.mViewRef.get();
    }

    /* access modifiers changed from: package-private */
    public final ArrayList<Tuple> getTuples() {
        return this.mTuples;
    }

    public final void jumpToCurrentState() {
        View target;
        if (this.mRunningAnimation != null && (target = getTarget()) != null && target.getAnimation() == this.mRunningAnimation) {
            target.clearAnimation();
        }
    }

    /* access modifiers changed from: package-private */
    public final void setState(int[] iArr) {
        Tuple tuple;
        int size = this.mTuples.size();
        int i = 0;
        while (true) {
            if (i >= size) {
                tuple = null;
                break;
            }
            tuple = this.mTuples.get(i);
            if (StateSet.stateSetMatches(tuple.mSpecs, iArr)) {
                break;
            }
            i++;
        }
        if (tuple != this.mLastMatch) {
            if (this.mLastMatch != null) {
                cancel();
            }
            this.mLastMatch = tuple;
            if (tuple != null) {
                start(tuple);
            }
        }
    }

    /* access modifiers changed from: package-private */
    public final void setTarget(View view) {
        View target = getTarget();
        if (target != view) {
            if (target != null) {
                clearTarget();
            }
            if (view != null) {
                this.mViewRef = new WeakReference<>(view);
            }
        }
    }
}
