package android.support.design.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.os.Parcel;
import android.os.Parcelable;
import android.support.design.widget.CoordinatorLayout;
import android.support.design.widget.ValueAnimatorCompat;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.AnimationUtils;
import android.view.animation.Interpolator;
import android.widget.LinearLayout;
import defpackage.a;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

@CoordinatorLayout.DefaultBehavior(Behavior.class)
public class AppBarLayout extends LinearLayout {
    private static final int INVALID_SCROLL_RANGE = -1;
    private int mDownPreScrollRange;
    private int mDownScrollRange;
    boolean mHaveChildWithInterpolator;
    private bw mLastInsets;
    /* access modifiers changed from: private */
    public final List<WeakReference<OnOffsetChangedListener>> mListeners;
    private float mTargetElevation;
    private int mTotalScrollRange;

    public static class Behavior extends ViewOffsetBehavior<AppBarLayout> {
        private static final int INVALID_POSITION = -1;
        private ValueAnimatorCompat mAnimator;
        private Runnable mFlingRunnable;
        private int mOffsetDelta;
        private int mOffsetToChildIndexOnLayout = -1;
        private boolean mOffsetToChildIndexOnLayoutIsMinHeight;
        private float mOffsetToChildIndexOnLayoutPerc;
        /* access modifiers changed from: private */
        public cs mScroller;
        private boolean mSkipNestedPreScroll;

        class FlingRunnable implements Runnable {
            private final AppBarLayout mLayout;
            private final CoordinatorLayout mParent;

            FlingRunnable(CoordinatorLayout coordinatorLayout, AppBarLayout appBarLayout) {
                this.mParent = coordinatorLayout;
                this.mLayout = appBarLayout;
            }

            public void run() {
                if (this.mLayout != null && Behavior.this.mScroller != null && Behavior.this.mScroller.g()) {
                    Behavior.this.setAppBarTopBottomOffset(this.mParent, this.mLayout, Behavior.this.mScroller.c());
                    bh.a((View) this.mLayout, (Runnable) this);
                }
            }
        }

        public static class SavedState extends View.BaseSavedState {
            public static final Parcelable.Creator<SavedState> CREATOR = new Parcelable.Creator<SavedState>() {
                public final SavedState createFromParcel(Parcel parcel) {
                    return new SavedState(parcel);
                }

                public final SavedState[] newArray(int i) {
                    return new SavedState[i];
                }
            };
            boolean firstVisibileChildAtMinimumHeight;
            float firstVisibileChildPercentageShown;
            int firstVisibleChildIndex;

            public SavedState(Parcel parcel) {
                super(parcel);
                this.firstVisibleChildIndex = parcel.readInt();
                this.firstVisibileChildPercentageShown = parcel.readFloat();
                this.firstVisibileChildAtMinimumHeight = parcel.readByte() != 0;
            }

            public SavedState(Parcelable parcelable) {
                super(parcelable);
            }

            public void writeToParcel(Parcel parcel, int i) {
                super.writeToParcel(parcel, i);
                parcel.writeInt(this.firstVisibleChildIndex);
                parcel.writeFloat(this.firstVisibileChildPercentageShown);
                parcel.writeByte((byte) (this.firstVisibileChildAtMinimumHeight ? 1 : 0));
            }
        }

        public Behavior() {
        }

        public Behavior(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
        }

        private void animateOffsetTo(final CoordinatorLayout coordinatorLayout, final AppBarLayout appBarLayout, int i) {
            if (this.mAnimator == null) {
                this.mAnimator = ViewUtils.createAnimator();
                this.mAnimator.setInterpolator(AnimationUtils.DECELERATE_INTERPOLATOR);
                this.mAnimator.setUpdateListener(new ValueAnimatorCompat.AnimatorUpdateListener() {
                    public void onAnimationUpdate(ValueAnimatorCompat valueAnimatorCompat) {
                        Behavior.this.setAppBarTopBottomOffset(coordinatorLayout, appBarLayout, valueAnimatorCompat.getAnimatedIntValue());
                    }
                });
            } else {
                this.mAnimator.cancel();
            }
            this.mAnimator.setIntValues(getTopBottomOffsetForScrollingSibling(), i);
            this.mAnimator.start();
        }

        private void dispatchOffsetUpdates(AppBarLayout appBarLayout) {
            List access$200 = appBarLayout.mListeners;
            int size = access$200.size();
            for (int i = 0; i < size; i++) {
                WeakReference weakReference = (WeakReference) access$200.get(i);
                OnOffsetChangedListener onOffsetChangedListener = weakReference != null ? (OnOffsetChangedListener) weakReference.get() : null;
                if (onOffsetChangedListener != null) {
                    onOffsetChangedListener.onOffsetChanged(appBarLayout, getTopAndBottomOffset());
                }
            }
        }

        private boolean fling(CoordinatorLayout coordinatorLayout, AppBarLayout appBarLayout, int i, int i2, float f) {
            if (this.mFlingRunnable != null) {
                appBarLayout.removeCallbacks(this.mFlingRunnable);
            }
            if (this.mScroller == null) {
                this.mScroller = cs.a(appBarLayout.getContext(), (Interpolator) null);
            }
            this.mScroller.a(getTopBottomOffsetForScrollingSibling(), 0, Math.round(f), 0, 0, i, i2);
            if (this.mScroller.g()) {
                this.mFlingRunnable = new FlingRunnable(coordinatorLayout, appBarLayout);
                bh.a((View) appBarLayout, this.mFlingRunnable);
                return true;
            }
            this.mFlingRunnable = null;
            return false;
        }

        private int interpolateOffset(AppBarLayout appBarLayout, int i) {
            int i2;
            int abs = Math.abs(i);
            int childCount = appBarLayout.getChildCount();
            int i3 = 0;
            while (i3 < childCount) {
                View childAt = appBarLayout.getChildAt(i3);
                LayoutParams layoutParams = (LayoutParams) childAt.getLayoutParams();
                Interpolator scrollInterpolator = layoutParams.getScrollInterpolator();
                if (abs < childAt.getTop() || abs > childAt.getBottom()) {
                    i3++;
                } else if (scrollInterpolator == null) {
                    return i;
                } else {
                    int scrollFlags = layoutParams.getScrollFlags();
                    if ((scrollFlags & 1) != 0) {
                        i2 = childAt.getHeight() + 0;
                        if ((scrollFlags & 2) != 0) {
                            i2 -= bh.r(childAt);
                        }
                    } else {
                        i2 = 0;
                    }
                    if (i2 <= 0) {
                        return i;
                    }
                    return Integer.signum(i) * (Math.round(scrollInterpolator.getInterpolation(((float) (abs - childAt.getTop())) / ((float) i2)) * ((float) i2)) + childAt.getTop());
                }
            }
            return i;
        }

        private int scroll(CoordinatorLayout coordinatorLayout, AppBarLayout appBarLayout, int i, int i2, int i3) {
            return setAppBarTopBottomOffset(coordinatorLayout, appBarLayout, getTopBottomOffsetForScrollingSibling() - i, i2, i3);
        }

        public /* bridge */ /* synthetic */ int getLeftAndRightOffset() {
            return super.getLeftAndRightOffset();
        }

        public /* bridge */ /* synthetic */ int getTopAndBottomOffset() {
            return super.getTopAndBottomOffset();
        }

        /* access modifiers changed from: package-private */
        public final int getTopBottomOffsetForScrollingSibling() {
            return getTopAndBottomOffset() + this.mOffsetDelta;
        }

        public boolean onLayoutChild(CoordinatorLayout coordinatorLayout, AppBarLayout appBarLayout, int i) {
            boolean onLayoutChild = super.onLayoutChild(coordinatorLayout, appBarLayout, i);
            if (this.mOffsetToChildIndexOnLayout >= 0) {
                View childAt = appBarLayout.getChildAt(this.mOffsetToChildIndexOnLayout);
                int i2 = -childAt.getBottom();
                setTopAndBottomOffset(this.mOffsetToChildIndexOnLayoutIsMinHeight ? bh.r(childAt) + i2 : Math.round(((float) childAt.getHeight()) * this.mOffsetToChildIndexOnLayoutPerc) + i2);
                this.mOffsetToChildIndexOnLayout = -1;
            }
            dispatchOffsetUpdates(appBarLayout);
            return onLayoutChild;
        }

        public boolean onNestedFling(CoordinatorLayout coordinatorLayout, AppBarLayout appBarLayout, View view, float f, float f2, boolean z) {
            int i;
            if (!z) {
                return fling(coordinatorLayout, appBarLayout, -appBarLayout.getTotalScrollRange(), 0, -f2);
            }
            if (f2 < 0.0f) {
                i = (-appBarLayout.getTotalScrollRange()) + appBarLayout.getDownNestedPreScrollRange();
                if (getTopBottomOffsetForScrollingSibling() > i) {
                    return false;
                }
            } else {
                i = -appBarLayout.getUpNestedPreScrollRange();
                if (getTopBottomOffsetForScrollingSibling() < i) {
                    return false;
                }
            }
            if (getTopBottomOffsetForScrollingSibling() == i) {
                return false;
            }
            animateOffsetTo(coordinatorLayout, appBarLayout, i);
            return true;
        }

        public void onNestedPreScroll(CoordinatorLayout coordinatorLayout, AppBarLayout appBarLayout, View view, int i, int i2, int[] iArr) {
            int i3;
            int i4;
            if (i2 != 0 && !this.mSkipNestedPreScroll) {
                if (i2 < 0) {
                    i3 = -appBarLayout.getTotalScrollRange();
                    i4 = i3 + appBarLayout.getDownNestedPreScrollRange();
                } else {
                    i3 = -appBarLayout.getUpNestedPreScrollRange();
                    i4 = 0;
                }
                iArr[1] = scroll(coordinatorLayout, appBarLayout, i2, i3, i4);
            }
        }

        public void onNestedScroll(CoordinatorLayout coordinatorLayout, AppBarLayout appBarLayout, View view, int i, int i2, int i3, int i4) {
            if (i4 < 0) {
                scroll(coordinatorLayout, appBarLayout, i4, -appBarLayout.getDownNestedScrollRange(), 0);
                this.mSkipNestedPreScroll = true;
                return;
            }
            this.mSkipNestedPreScroll = false;
        }

        public void onRestoreInstanceState(CoordinatorLayout coordinatorLayout, AppBarLayout appBarLayout, Parcelable parcelable) {
            if (parcelable instanceof SavedState) {
                SavedState savedState = (SavedState) parcelable;
                super.onRestoreInstanceState(coordinatorLayout, appBarLayout, savedState.getSuperState());
                this.mOffsetToChildIndexOnLayout = savedState.firstVisibleChildIndex;
                this.mOffsetToChildIndexOnLayoutPerc = savedState.firstVisibileChildPercentageShown;
                this.mOffsetToChildIndexOnLayoutIsMinHeight = savedState.firstVisibileChildAtMinimumHeight;
                return;
            }
            super.onRestoreInstanceState(coordinatorLayout, appBarLayout, parcelable);
            this.mOffsetToChildIndexOnLayout = -1;
        }

        public Parcelable onSaveInstanceState(CoordinatorLayout coordinatorLayout, AppBarLayout appBarLayout) {
            boolean z = false;
            Parcelable onSaveInstanceState = super.onSaveInstanceState(coordinatorLayout, appBarLayout);
            int topAndBottomOffset = getTopAndBottomOffset();
            int childCount = appBarLayout.getChildCount();
            int i = 0;
            while (i < childCount) {
                View childAt = appBarLayout.getChildAt(i);
                int bottom = childAt.getBottom() + topAndBottomOffset;
                if (childAt.getTop() + topAndBottomOffset > 0 || bottom < 0) {
                    i++;
                } else {
                    SavedState savedState = new SavedState(onSaveInstanceState);
                    savedState.firstVisibleChildIndex = i;
                    if (bottom == bh.r(childAt)) {
                        z = true;
                    }
                    savedState.firstVisibileChildAtMinimumHeight = z;
                    savedState.firstVisibileChildPercentageShown = ((float) bottom) / ((float) childAt.getHeight());
                    return savedState;
                }
            }
            return onSaveInstanceState;
        }

        public boolean onStartNestedScroll(CoordinatorLayout coordinatorLayout, AppBarLayout appBarLayout, View view, View view2, int i) {
            boolean z = (i & 2) != 0 && appBarLayout.hasScrollableChildren() && coordinatorLayout.getHeight() - view2.getHeight() <= appBarLayout.getHeight();
            if (z && this.mAnimator != null) {
                this.mAnimator.cancel();
            }
            return z;
        }

        public void onStopNestedScroll(CoordinatorLayout coordinatorLayout, AppBarLayout appBarLayout, View view) {
            this.mSkipNestedPreScroll = false;
        }

        /* access modifiers changed from: package-private */
        public final int setAppBarTopBottomOffset(CoordinatorLayout coordinatorLayout, AppBarLayout appBarLayout, int i) {
            return setAppBarTopBottomOffset(coordinatorLayout, appBarLayout, i, Integer.MIN_VALUE, Integer.MAX_VALUE);
        }

        /* access modifiers changed from: package-private */
        public final int setAppBarTopBottomOffset(CoordinatorLayout coordinatorLayout, AppBarLayout appBarLayout, int i, int i2, int i3) {
            int constrain;
            int topBottomOffsetForScrollingSibling = getTopBottomOffsetForScrollingSibling();
            if (i2 == 0 || topBottomOffsetForScrollingSibling < i2 || topBottomOffsetForScrollingSibling > i3 || topBottomOffsetForScrollingSibling == (constrain = MathUtils.constrain(i, i2, i3))) {
                return 0;
            }
            int interpolateOffset = appBarLayout.hasChildWithInterpolator() ? interpolateOffset(appBarLayout, constrain) : constrain;
            boolean topAndBottomOffset = setTopAndBottomOffset(interpolateOffset);
            int i4 = topBottomOffsetForScrollingSibling - constrain;
            this.mOffsetDelta = constrain - interpolateOffset;
            if (!topAndBottomOffset && appBarLayout.hasChildWithInterpolator()) {
                coordinatorLayout.dispatchDependentViewsChanged(appBarLayout);
            }
            dispatchOffsetUpdates(appBarLayout);
            return i4;
        }

        public /* bridge */ /* synthetic */ boolean setLeftAndRightOffset(int i) {
            return super.setLeftAndRightOffset(i);
        }

        public /* bridge */ /* synthetic */ boolean setTopAndBottomOffset(int i) {
            return super.setTopAndBottomOffset(i);
        }
    }

    public static class LayoutParams extends LinearLayout.LayoutParams {
        static final int FLAG_QUICK_RETURN = 5;
        public static final int SCROLL_FLAG_ENTER_ALWAYS = 4;
        public static final int SCROLL_FLAG_ENTER_ALWAYS_COLLAPSED = 8;
        public static final int SCROLL_FLAG_EXIT_UNTIL_COLLAPSED = 2;
        public static final int SCROLL_FLAG_SCROLL = 1;
        int mScrollFlags = 1;
        Interpolator mScrollInterpolator;

        @Retention(RetentionPolicy.SOURCE)
        public @interface ScrollFlags {
        }

        public LayoutParams(int i, int i2) {
            super(i, i2);
        }

        public LayoutParams(int i, int i2, float f) {
            super(i, i2, f);
        }

        public LayoutParams(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, a.h.AppBarLayout_LayoutParams);
            this.mScrollFlags = obtainStyledAttributes.getInt(a.h.AppBarLayout_LayoutParams_layout_scrollFlags, 0);
            if (obtainStyledAttributes.hasValue(a.h.AppBarLayout_LayoutParams_layout_scrollInterpolator)) {
                this.mScrollInterpolator = AnimationUtils.loadInterpolator(context, obtainStyledAttributes.getResourceId(a.h.AppBarLayout_LayoutParams_layout_scrollInterpolator, 0));
            }
            obtainStyledAttributes.recycle();
        }

        public LayoutParams(LayoutParams layoutParams) {
            super(layoutParams);
            this.mScrollFlags = layoutParams.mScrollFlags;
            this.mScrollInterpolator = layoutParams.mScrollInterpolator;
        }

        public LayoutParams(ViewGroup.LayoutParams layoutParams) {
            super(layoutParams);
        }

        public LayoutParams(ViewGroup.MarginLayoutParams marginLayoutParams) {
            super(marginLayoutParams);
        }

        public LayoutParams(LinearLayout.LayoutParams layoutParams) {
            super(layoutParams);
        }

        public int getScrollFlags() {
            return this.mScrollFlags;
        }

        public Interpolator getScrollInterpolator() {
            return this.mScrollInterpolator;
        }

        public void setScrollFlags(int i) {
            this.mScrollFlags = i;
        }

        public void setScrollInterpolator(Interpolator interpolator) {
            this.mScrollInterpolator = interpolator;
        }
    }

    public interface OnOffsetChangedListener {
        void onOffsetChanged(AppBarLayout appBarLayout, int i);
    }

    public static class ScrollingViewBehavior extends ViewOffsetBehavior<View> {
        private int mOverlayTop;

        public ScrollingViewBehavior() {
        }

        public ScrollingViewBehavior(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, a.h.ScrollingViewBehavior_Params);
            this.mOverlayTop = obtainStyledAttributes.getDimensionPixelSize(a.h.ScrollingViewBehavior_Params_behavior_overlapTop, 0);
            obtainStyledAttributes.recycle();
        }

        private static AppBarLayout findFirstAppBarLayout(List<View> list) {
            int size = list.size();
            for (int i = 0; i < size; i++) {
                View view = list.get(i);
                if (view instanceof AppBarLayout) {
                    return (AppBarLayout) view;
                }
            }
            return null;
        }

        public /* bridge */ /* synthetic */ int getLeftAndRightOffset() {
            return super.getLeftAndRightOffset();
        }

        public int getOverlayTop() {
            return this.mOverlayTop;
        }

        public /* bridge */ /* synthetic */ int getTopAndBottomOffset() {
            return super.getTopAndBottomOffset();
        }

        public boolean layoutDependsOn(CoordinatorLayout coordinatorLayout, View view, View view2) {
            return view2 instanceof AppBarLayout;
        }

        public boolean onDependentViewChanged(CoordinatorLayout coordinatorLayout, View view, View view2) {
            CoordinatorLayout.Behavior behavior = ((CoordinatorLayout.LayoutParams) view2.getLayoutParams()).getBehavior();
            if (!(behavior instanceof Behavior)) {
                return false;
            }
            int topBottomOffsetForScrollingSibling = ((Behavior) behavior).getTopBottomOffsetForScrollingSibling();
            int height = view2.getHeight() - this.mOverlayTop;
            int height2 = coordinatorLayout.getHeight() - view.getHeight();
            if (this.mOverlayTop == 0 || !(view2 instanceof AppBarLayout)) {
                setTopAndBottomOffset(topBottomOffsetForScrollingSibling + (view2.getHeight() - this.mOverlayTop));
                return false;
            }
            setTopAndBottomOffset(AnimationUtils.lerp(height, height2, ((float) Math.abs(topBottomOffsetForScrollingSibling)) / ((float) ((AppBarLayout) view2).getTotalScrollRange())));
            return false;
        }

        public /* bridge */ /* synthetic */ boolean onLayoutChild(CoordinatorLayout coordinatorLayout, View view, int i) {
            return super.onLayoutChild(coordinatorLayout, view, i);
        }

        public boolean onMeasureChild(CoordinatorLayout coordinatorLayout, View view, int i, int i2, int i3, int i4) {
            AppBarLayout findFirstAppBarLayout;
            if (view.getLayoutParams().height != -1) {
                return false;
            }
            List<View> dependencies = coordinatorLayout.getDependencies(view);
            if (dependencies.isEmpty() || (findFirstAppBarLayout = findFirstAppBarLayout(dependencies)) == null || !bh.C(findFirstAppBarLayout)) {
                return false;
            }
            if (bh.x(findFirstAppBarLayout)) {
                bh.a(view, true);
            }
            int size = View.MeasureSpec.getSize(i3);
            if (size == 0) {
                size = coordinatorLayout.getHeight();
            }
            coordinatorLayout.onMeasureChild(view, i, i2, View.MeasureSpec.makeMeasureSpec((size - findFirstAppBarLayout.getMeasuredHeight()) + findFirstAppBarLayout.getTotalScrollRange(), Integer.MIN_VALUE), i4);
            return true;
        }

        public /* bridge */ /* synthetic */ boolean setLeftAndRightOffset(int i) {
            return super.setLeftAndRightOffset(i);
        }

        public void setOverlayTop(int i) {
            this.mOverlayTop = i;
        }

        public /* bridge */ /* synthetic */ boolean setTopAndBottomOffset(int i) {
            return super.setTopAndBottomOffset(i);
        }
    }

    public AppBarLayout(Context context) {
        this(context, (AttributeSet) null);
    }

    public AppBarLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.mTotalScrollRange = -1;
        this.mDownPreScrollRange = -1;
        this.mDownScrollRange = -1;
        setOrientation(1);
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, a.h.AppBarLayout, 0, a.g.Widget_Design_AppBarLayout);
        this.mTargetElevation = (float) obtainStyledAttributes.getDimensionPixelSize(a.h.AppBarLayout_elevation, 0);
        setBackgroundDrawable(obtainStyledAttributes.getDrawable(a.h.AppBarLayout_android_background));
        obtainStyledAttributes.recycle();
        ViewUtils.setBoundsViewOutlineProvider(this);
        this.mListeners = new ArrayList();
        bh.f(this, this.mTargetElevation);
        bh.a((View) this, (bc) new bc() {
            public bw onApplyWindowInsets(View view, bw bwVar) {
                AppBarLayout.this.setWindowInsets(bwVar);
                return bwVar.f();
            }
        });
    }

    /* access modifiers changed from: private */
    public void setWindowInsets(bw bwVar) {
        this.mTotalScrollRange = -1;
        this.mLastInsets = bwVar;
        int i = 0;
        int childCount = getChildCount();
        while (i < childCount) {
            bwVar = bh.b(getChildAt(i), bwVar);
            if (!bwVar.e()) {
                i++;
            } else {
                return;
            }
        }
    }

    public void addOnOffsetChangedListener(OnOffsetChangedListener onOffsetChangedListener) {
        int size = this.mListeners.size();
        int i = 0;
        while (i < size) {
            WeakReference weakReference = this.mListeners.get(i);
            if (weakReference == null || weakReference.get() != onOffsetChangedListener) {
                i++;
            } else {
                return;
            }
        }
        this.mListeners.add(new WeakReference(onOffsetChangedListener));
    }

    /* access modifiers changed from: protected */
    public boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return layoutParams instanceof LayoutParams;
    }

    /* access modifiers changed from: protected */
    public LayoutParams generateDefaultLayoutParams() {
        return new LayoutParams(-1, -2);
    }

    public LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        return new LayoutParams(getContext(), attributeSet);
    }

    /* access modifiers changed from: protected */
    public LayoutParams generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return layoutParams instanceof LinearLayout.LayoutParams ? new LayoutParams((LinearLayout.LayoutParams) layoutParams) : layoutParams instanceof ViewGroup.MarginLayoutParams ? new LayoutParams((ViewGroup.MarginLayoutParams) layoutParams) : new LayoutParams(layoutParams);
    }

    /* access modifiers changed from: package-private */
    public final int getDownNestedPreScrollRange() {
        int i;
        if (this.mDownPreScrollRange != -1) {
            return this.mDownPreScrollRange;
        }
        int i2 = 0;
        int childCount = getChildCount() - 1;
        while (childCount >= 0) {
            View childAt = getChildAt(childCount);
            LayoutParams layoutParams = (LayoutParams) childAt.getLayoutParams();
            int height = bh.C(childAt) ? childAt.getHeight() : childAt.getMeasuredHeight();
            int i3 = layoutParams.mScrollFlags;
            if ((i3 & 5) != 5) {
                if (i2 > 0) {
                    break;
                }
                i = i2;
            } else {
                i = (i3 & 8) != 0 ? bh.r(childAt) + i2 : i2 + height;
            }
            childCount--;
            i2 = i;
        }
        this.mDownPreScrollRange = i2;
        return i2;
    }

    /* access modifiers changed from: package-private */
    public final int getDownNestedScrollRange() {
        if (this.mDownScrollRange != -1) {
            return this.mDownScrollRange;
        }
        int childCount = getChildCount();
        int i = 0;
        for (int i2 = 0; i2 < childCount; i2++) {
            View childAt = getChildAt(i2);
            LayoutParams layoutParams = (LayoutParams) childAt.getLayoutParams();
            int height = bh.C(childAt) ? childAt.getHeight() : childAt.getMeasuredHeight();
            int i3 = layoutParams.mScrollFlags;
            if ((i3 & 1) == 0) {
                break;
            }
            i += height;
            if ((i3 & 2) != 0) {
                return i - bh.r(childAt);
            }
        }
        this.mDownScrollRange = i;
        return i;
    }

    /* access modifiers changed from: package-private */
    public final int getMinimumHeightForVisibleOverlappingContent() {
        int b = this.mLastInsets != null ? this.mLastInsets.b() : 0;
        int r = bh.r(this);
        if (r != 0) {
            return (r * 2) + b;
        }
        int childCount = getChildCount();
        if (childCount > 0) {
            return (bh.r(getChildAt(childCount - 1)) * 2) + b;
        }
        return 0;
    }

    public float getTargetElevation() {
        return this.mTargetElevation;
    }

    public final int getTotalScrollRange() {
        int i;
        if (this.mTotalScrollRange != -1) {
            return this.mTotalScrollRange;
        }
        int childCount = getChildCount();
        int i2 = 0;
        int i3 = 0;
        while (true) {
            if (i2 >= childCount) {
                break;
            }
            View childAt = getChildAt(i2);
            LayoutParams layoutParams = (LayoutParams) childAt.getLayoutParams();
            int height = bh.C(childAt) ? childAt.getHeight() : childAt.getMeasuredHeight();
            int i4 = layoutParams.mScrollFlags;
            if ((i4 & 1) == 0) {
                break;
            }
            i3 += height;
            if ((i4 & 2) != 0) {
                i = i3 - bh.r(childAt);
                break;
            }
            i2++;
        }
        i = i3;
        int b = i - (this.mLastInsets != null ? this.mLastInsets.b() : 0);
        this.mTotalScrollRange = b;
        return b;
    }

    /* access modifiers changed from: package-private */
    public final int getUpNestedPreScrollRange() {
        return getTotalScrollRange();
    }

    /* access modifiers changed from: package-private */
    public final boolean hasChildWithInterpolator() {
        return this.mHaveChildWithInterpolator;
    }

    /* access modifiers changed from: package-private */
    public final boolean hasScrollableChildren() {
        return getTotalScrollRange() != 0;
    }

    /* access modifiers changed from: protected */
    public void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
        this.mTotalScrollRange = -1;
        this.mDownPreScrollRange = -1;
        this.mDownPreScrollRange = -1;
        this.mHaveChildWithInterpolator = false;
        int childCount = getChildCount();
        for (int i5 = 0; i5 < childCount; i5++) {
            if (((LayoutParams) getChildAt(i5).getLayoutParams()).getScrollInterpolator() != null) {
                this.mHaveChildWithInterpolator = true;
                return;
            }
        }
    }

    public void removeOnOffsetChangedListener(OnOffsetChangedListener onOffsetChangedListener) {
        Iterator<WeakReference<OnOffsetChangedListener>> it = this.mListeners.iterator();
        while (it.hasNext()) {
            OnOffsetChangedListener onOffsetChangedListener2 = (OnOffsetChangedListener) it.next().get();
            if (onOffsetChangedListener2 == onOffsetChangedListener || onOffsetChangedListener2 == null) {
                it.remove();
            }
        }
    }

    public void setOrientation(int i) {
        if (i != 1) {
            throw new IllegalArgumentException("AppBarLayout is always vertical and does not support horizontal orientation");
        }
        super.setOrientation(i);
    }

    public void setTargetElevation(float f) {
        this.mTargetElevation = f;
    }
}
