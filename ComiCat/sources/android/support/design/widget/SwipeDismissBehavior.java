package android.support.design.widget;

import android.support.design.widget.CoordinatorLayout;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import defpackage.cu;

public class SwipeDismissBehavior<V extends View> extends CoordinatorLayout.Behavior<V> {
    private static final float DEFAULT_ALPHA_END_DISTANCE = 0.5f;
    private static final float DEFAULT_ALPHA_START_DISTANCE = 0.0f;
    private static final float DEFAULT_DRAG_DISMISS_THRESHOLD = 0.5f;
    public static final int STATE_DRAGGING = 1;
    public static final int STATE_IDLE = 0;
    public static final int STATE_SETTLING = 2;
    public static final int SWIPE_DIRECTION_ANY = 2;
    public static final int SWIPE_DIRECTION_END_TO_START = 1;
    public static final int SWIPE_DIRECTION_START_TO_END = 0;
    /* access modifiers changed from: private */
    public float mAlphaEndSwipeDistance = 0.5f;
    /* access modifiers changed from: private */
    public float mAlphaStartSwipeDistance = DEFAULT_ALPHA_START_DISTANCE;
    private final cu.a mDragCallback = new cu.a() {
        private int mOriginalCapturedViewLeft;

        private boolean shouldDismiss(View view, float f) {
            if (f != SwipeDismissBehavior.DEFAULT_ALPHA_START_DISTANCE) {
                boolean z = bh.h(view) == 1;
                if (SwipeDismissBehavior.this.mSwipeDirection == 2) {
                    return true;
                }
                if (SwipeDismissBehavior.this.mSwipeDirection == 0) {
                    return z ? f < SwipeDismissBehavior.DEFAULT_ALPHA_START_DISTANCE : f > SwipeDismissBehavior.DEFAULT_ALPHA_START_DISTANCE;
                }
                if (SwipeDismissBehavior.this.mSwipeDirection == 1) {
                    return z ? f > SwipeDismissBehavior.DEFAULT_ALPHA_START_DISTANCE : f < SwipeDismissBehavior.DEFAULT_ALPHA_START_DISTANCE;
                }
                return false;
            }
            return Math.abs(view.getLeft() - this.mOriginalCapturedViewLeft) >= Math.round(((float) view.getWidth()) * SwipeDismissBehavior.this.mDragDismissThreshold);
        }

        public int clampViewPositionHorizontal(View view, int i, int i2) {
            int width;
            int width2;
            boolean z = bh.h(view) == 1;
            if (SwipeDismissBehavior.this.mSwipeDirection == 0) {
                if (z) {
                    width = this.mOriginalCapturedViewLeft - view.getWidth();
                    width2 = this.mOriginalCapturedViewLeft;
                } else {
                    width = this.mOriginalCapturedViewLeft;
                    width2 = this.mOriginalCapturedViewLeft + view.getWidth();
                }
            } else if (SwipeDismissBehavior.this.mSwipeDirection != 1) {
                width = this.mOriginalCapturedViewLeft - view.getWidth();
                width2 = this.mOriginalCapturedViewLeft + view.getWidth();
            } else if (z) {
                width = this.mOriginalCapturedViewLeft;
                width2 = this.mOriginalCapturedViewLeft + view.getWidth();
            } else {
                width = this.mOriginalCapturedViewLeft - view.getWidth();
                width2 = this.mOriginalCapturedViewLeft;
            }
            return SwipeDismissBehavior.clamp(width, i, width2);
        }

        public int clampViewPositionVertical(View view, int i, int i2) {
            return view.getTop();
        }

        public int getViewHorizontalDragRange(View view) {
            return view.getWidth();
        }

        public void onViewDragStateChanged(int i) {
            if (SwipeDismissBehavior.this.mListener != null) {
                SwipeDismissBehavior.this.mListener.onDragStateChanged(i);
            }
        }

        public void onViewPositionChanged(View view, int i, int i2, int i3, int i4) {
            float width = ((float) view.getWidth()) * SwipeDismissBehavior.this.mAlphaStartSwipeDistance;
            float width2 = ((float) view.getWidth()) * SwipeDismissBehavior.this.mAlphaEndSwipeDistance;
            if (((float) i) <= width) {
                bh.c(view, 1.0f);
            } else if (((float) i) >= width2) {
                bh.c(view, (float) SwipeDismissBehavior.DEFAULT_ALPHA_START_DISTANCE);
            } else {
                bh.c(view, SwipeDismissBehavior.clamp((float) SwipeDismissBehavior.DEFAULT_ALPHA_START_DISTANCE, 1.0f - SwipeDismissBehavior.fraction(width, width2, (float) i), 1.0f));
            }
        }

        public void onViewReleased(View view, float f, float f2) {
            int i;
            int width = view.getWidth();
            boolean z = false;
            if (shouldDismiss(view, f)) {
                i = view.getLeft() < this.mOriginalCapturedViewLeft ? this.mOriginalCapturedViewLeft - width : this.mOriginalCapturedViewLeft + width;
                z = true;
            } else {
                i = this.mOriginalCapturedViewLeft;
            }
            if (SwipeDismissBehavior.this.mViewDragHelper.a(i, view.getTop())) {
                bh.a(view, (Runnable) new SettleRunnable(view, z));
            } else if (z && SwipeDismissBehavior.this.mListener != null) {
                SwipeDismissBehavior.this.mListener.onDismiss(view);
            }
        }

        public boolean tryCaptureView(View view, int i) {
            this.mOriginalCapturedViewLeft = view.getLeft();
            return true;
        }
    };
    /* access modifiers changed from: private */
    public float mDragDismissThreshold = 0.5f;
    private boolean mIgnoreEvents;
    /* access modifiers changed from: private */
    public OnDismissListener mListener;
    private float mSensitivity = DEFAULT_ALPHA_START_DISTANCE;
    private boolean mSensitivitySet;
    /* access modifiers changed from: private */
    public int mSwipeDirection = 2;
    /* access modifiers changed from: private */
    public cu mViewDragHelper;

    public interface OnDismissListener {
        void onDismiss(View view);

        void onDragStateChanged(int i);
    }

    class SettleRunnable implements Runnable {
        private final boolean mDismiss;
        private final View mView;

        SettleRunnable(View view, boolean z) {
            this.mView = view;
            this.mDismiss = z;
        }

        public void run() {
            if (SwipeDismissBehavior.this.mViewDragHelper != null && SwipeDismissBehavior.this.mViewDragHelper.c()) {
                bh.a(this.mView, (Runnable) this);
            } else if (this.mDismiss && SwipeDismissBehavior.this.mListener != null) {
                SwipeDismissBehavior.this.mListener.onDismiss(this.mView);
            }
        }
    }

    /* access modifiers changed from: private */
    public static float clamp(float f, float f2, float f3) {
        return Math.min(Math.max(f, f2), f3);
    }

    /* access modifiers changed from: private */
    public static int clamp(int i, int i2, int i3) {
        return Math.min(Math.max(i, i2), i3);
    }

    private void ensureViewDragHelper(ViewGroup viewGroup) {
        if (this.mViewDragHelper == null) {
            this.mViewDragHelper = this.mSensitivitySet ? cu.a(viewGroup, this.mSensitivity, this.mDragCallback) : cu.a(viewGroup, this.mDragCallback);
        }
    }

    static float fraction(float f, float f2, float f3) {
        return (f3 - f) / (f2 - f);
    }

    static float lerp(float f, float f2, float f3) {
        return ((f2 - f) * f3) + f;
    }

    public int getDragState() {
        if (this.mViewDragHelper != null) {
            return this.mViewDragHelper.a;
        }
        return 0;
    }

    public boolean onInterceptTouchEvent(CoordinatorLayout coordinatorLayout, V v, MotionEvent motionEvent) {
        switch (ax.a(motionEvent)) {
            case 1:
            case 3:
                if (this.mIgnoreEvents) {
                    this.mIgnoreEvents = false;
                    return false;
                }
                break;
            default:
                this.mIgnoreEvents = !coordinatorLayout.isPointInChildBounds(v, (int) motionEvent.getX(), (int) motionEvent.getY());
                break;
        }
        if (this.mIgnoreEvents) {
            return false;
        }
        ensureViewDragHelper(coordinatorLayout);
        return this.mViewDragHelper.a(motionEvent);
    }

    public boolean onTouchEvent(CoordinatorLayout coordinatorLayout, V v, MotionEvent motionEvent) {
        if (this.mViewDragHelper == null) {
            return false;
        }
        this.mViewDragHelper.b(motionEvent);
        return true;
    }

    public void setDragDismissDistance(float f) {
        this.mDragDismissThreshold = clamp((float) DEFAULT_ALPHA_START_DISTANCE, f, 1.0f);
    }

    public void setEndAlphaSwipeDistance(float f) {
        this.mAlphaEndSwipeDistance = clamp((float) DEFAULT_ALPHA_START_DISTANCE, f, 1.0f);
    }

    public void setListener(OnDismissListener onDismissListener) {
        this.mListener = onDismissListener;
    }

    public void setSensitivity(float f) {
        this.mSensitivity = f;
        this.mSensitivitySet = true;
    }

    public void setStartAlphaSwipeDistance(float f) {
        this.mAlphaStartSwipeDistance = clamp((float) DEFAULT_ALPHA_START_DISTANCE, f, 1.0f);
    }

    public void setSwipeDirection(int i) {
        this.mSwipeDirection = i;
    }
}
