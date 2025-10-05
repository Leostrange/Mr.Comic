package android.support.design.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.support.design.widget.AppBarLayout;
import android.support.design.widget.ValueAnimatorCompat;
import android.support.v7.widget.Toolbar;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.widget.FrameLayout;
import defpackage.a;

public class CollapsingToolbarLayout extends FrameLayout {
    private static final int SCRIM_ANIMATION_DURATION = 600;
    /* access modifiers changed from: private */
    public final CollapsingTextHelper mCollapsingTextHelper;
    /* access modifiers changed from: private */
    public Drawable mContentScrim;
    /* access modifiers changed from: private */
    public int mCurrentOffset;
    private View mDummyView;
    private int mExpandedMarginBottom;
    private int mExpandedMarginLeft;
    private int mExpandedMarginRight;
    private int mExpandedMarginTop;
    /* access modifiers changed from: private */
    public bw mLastInsets;
    private AppBarLayout.OnOffsetChangedListener mOnOffsetChangedListener;
    private boolean mRefreshToolbar;
    private int mScrimAlpha;
    private ValueAnimatorCompat mScrimAnimator;
    private boolean mScrimsAreShown;
    /* access modifiers changed from: private */
    public Drawable mStatusBarScrim;
    private final Rect mTmpRect;
    private Toolbar mToolbar;
    private int mToolbarId;

    public static class LayoutParams extends FrameLayout.LayoutParams {
        public static final int COLLAPSE_MODE_OFF = 0;
        public static final int COLLAPSE_MODE_PARALLAX = 2;
        public static final int COLLAPSE_MODE_PIN = 1;
        private static final float DEFAULT_PARALLAX_MULTIPLIER = 0.5f;
        int mCollapseMode = 0;
        float mParallaxMult = DEFAULT_PARALLAX_MULTIPLIER;

        public LayoutParams(int i, int i2) {
            super(i, i2);
        }

        public LayoutParams(int i, int i2, int i3) {
            super(i, i2, i3);
        }

        public LayoutParams(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, a.h.CollapsingAppBarLayout_LayoutParams);
            this.mCollapseMode = obtainStyledAttributes.getInt(a.h.CollapsingAppBarLayout_LayoutParams_layout_collapseMode, 0);
            setParallaxMultiplier(obtainStyledAttributes.getFloat(a.h.CollapsingAppBarLayout_LayoutParams_layout_collapseParallaxMultiplier, DEFAULT_PARALLAX_MULTIPLIER));
            obtainStyledAttributes.recycle();
        }

        public LayoutParams(ViewGroup.LayoutParams layoutParams) {
            super(layoutParams);
        }

        public LayoutParams(ViewGroup.MarginLayoutParams marginLayoutParams) {
            super(marginLayoutParams);
        }

        public LayoutParams(FrameLayout.LayoutParams layoutParams) {
            super(layoutParams);
        }

        public int getCollapseMode() {
            return this.mCollapseMode;
        }

        public float getParallaxMultiplier() {
            return this.mParallaxMult;
        }

        public void setCollapseMode(int i) {
            this.mCollapseMode = i;
        }

        public void setParallaxMultiplier(float f) {
            this.mParallaxMult = f;
        }
    }

    class OffsetUpdateListener implements AppBarLayout.OnOffsetChangedListener {
        private OffsetUpdateListener() {
        }

        public void onOffsetChanged(AppBarLayout appBarLayout, int i) {
            int unused = CollapsingToolbarLayout.this.mCurrentOffset = i;
            int b = CollapsingToolbarLayout.this.mLastInsets != null ? CollapsingToolbarLayout.this.mLastInsets.b() : 0;
            int totalScrollRange = appBarLayout.getTotalScrollRange();
            int childCount = CollapsingToolbarLayout.this.getChildCount();
            for (int i2 = 0; i2 < childCount; i2++) {
                View childAt = CollapsingToolbarLayout.this.getChildAt(i2);
                LayoutParams layoutParams = (LayoutParams) childAt.getLayoutParams();
                ViewOffsetHelper access$400 = CollapsingToolbarLayout.getViewOffsetHelper(childAt);
                switch (layoutParams.mCollapseMode) {
                    case 1:
                        if ((CollapsingToolbarLayout.this.getHeight() - b) + i < childAt.getHeight()) {
                            break;
                        } else {
                            access$400.setTopAndBottomOffset(-i);
                            break;
                        }
                    case 2:
                        access$400.setTopAndBottomOffset(Math.round(layoutParams.mParallaxMult * ((float) (-i))));
                        break;
                }
            }
            if (!(CollapsingToolbarLayout.this.mContentScrim == null && CollapsingToolbarLayout.this.mStatusBarScrim == null)) {
                if (CollapsingToolbarLayout.this.getHeight() + i < CollapsingToolbarLayout.this.getScrimTriggerOffset() + b) {
                    CollapsingToolbarLayout.this.showScrim();
                } else {
                    CollapsingToolbarLayout.this.hideScrim();
                }
            }
            if (CollapsingToolbarLayout.this.mStatusBarScrim != null && b > 0) {
                bh.d(CollapsingToolbarLayout.this);
            }
            CollapsingToolbarLayout.this.mCollapsingTextHelper.setExpansionFraction(((float) Math.abs(i)) / ((float) ((CollapsingToolbarLayout.this.getHeight() - bh.r(CollapsingToolbarLayout.this)) - b)));
            if (Math.abs(i) == totalScrollRange) {
                bh.f(appBarLayout, appBarLayout.getTargetElevation());
            } else {
                bh.f(appBarLayout, 0.0f);
            }
        }
    }

    public CollapsingToolbarLayout(Context context) {
        this(context, (AttributeSet) null);
    }

    public CollapsingToolbarLayout(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    public CollapsingToolbarLayout(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        boolean z = true;
        this.mRefreshToolbar = true;
        this.mTmpRect = new Rect();
        this.mCollapsingTextHelper = new CollapsingTextHelper(this);
        this.mCollapsingTextHelper.setExpandedTextVerticalGravity(80);
        this.mCollapsingTextHelper.setTextSizeInterpolator(AnimationUtils.DECELERATE_INTERPOLATOR);
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, a.h.CollapsingToolbarLayout, i, a.g.Widget_Design_CollapsingToolbar);
        int dimensionPixelSize = obtainStyledAttributes.getDimensionPixelSize(a.h.CollapsingToolbarLayout_expandedTitleMargin, 0);
        this.mExpandedMarginBottom = dimensionPixelSize;
        this.mExpandedMarginRight = dimensionPixelSize;
        this.mExpandedMarginTop = dimensionPixelSize;
        this.mExpandedMarginLeft = dimensionPixelSize;
        z = bh.h(this) != 1 ? false : z;
        if (obtainStyledAttributes.hasValue(a.h.CollapsingToolbarLayout_expandedTitleMarginStart)) {
            int dimensionPixelSize2 = obtainStyledAttributes.getDimensionPixelSize(a.h.CollapsingToolbarLayout_expandedTitleMarginStart, 0);
            if (z) {
                this.mExpandedMarginRight = dimensionPixelSize2;
            } else {
                this.mExpandedMarginLeft = dimensionPixelSize2;
            }
        }
        if (obtainStyledAttributes.hasValue(a.h.CollapsingToolbarLayout_expandedTitleMarginEnd)) {
            int dimensionPixelSize3 = obtainStyledAttributes.getDimensionPixelSize(a.h.CollapsingToolbarLayout_expandedTitleMarginEnd, 0);
            if (z) {
                this.mExpandedMarginLeft = dimensionPixelSize3;
            } else {
                this.mExpandedMarginRight = dimensionPixelSize3;
            }
        }
        if (obtainStyledAttributes.hasValue(a.h.CollapsingToolbarLayout_expandedTitleMarginTop)) {
            this.mExpandedMarginTop = obtainStyledAttributes.getDimensionPixelSize(a.h.CollapsingToolbarLayout_expandedTitleMarginTop, 0);
        }
        if (obtainStyledAttributes.hasValue(a.h.CollapsingToolbarLayout_expandedTitleMarginBottom)) {
            this.mExpandedMarginBottom = obtainStyledAttributes.getDimensionPixelSize(a.h.CollapsingToolbarLayout_expandedTitleMarginBottom, 0);
        }
        this.mCollapsingTextHelper.setExpandedTextAppearance(obtainStyledAttributes.getResourceId(a.h.CollapsingToolbarLayout_expandedTitleTextAppearance, a.g.TextAppearance_AppCompat_Title));
        this.mCollapsingTextHelper.setCollapsedTextAppearance(obtainStyledAttributes.getResourceId(a.h.CollapsingToolbarLayout_collapsedTitleTextAppearance, a.g.TextAppearance_AppCompat_Widget_ActionBar_Title));
        setContentScrim(obtainStyledAttributes.getDrawable(a.h.CollapsingToolbarLayout_contentScrim));
        setStatusBarScrim(obtainStyledAttributes.getDrawable(a.h.CollapsingToolbarLayout_statusBarScrim));
        this.mToolbarId = obtainStyledAttributes.getResourceId(a.h.CollapsingToolbarLayout_toolbarId, -1);
        obtainStyledAttributes.recycle();
        setWillNotDraw(false);
        bh.a((View) this, (bc) new bc() {
            public bw onApplyWindowInsets(View view, bw bwVar) {
                bw unused = CollapsingToolbarLayout.this.mLastInsets = bwVar;
                CollapsingToolbarLayout.this.requestLayout();
                return bwVar.f();
            }
        });
    }

    private void animateScrim(int i) {
        ensureToolbar();
        if (this.mScrimAnimator == null) {
            this.mScrimAnimator = ViewUtils.createAnimator();
            this.mScrimAnimator.setDuration(SCRIM_ANIMATION_DURATION);
            this.mScrimAnimator.setInterpolator(AnimationUtils.FAST_OUT_SLOW_IN_INTERPOLATOR);
            this.mScrimAnimator.setUpdateListener(new ValueAnimatorCompat.AnimatorUpdateListener() {
                public void onAnimationUpdate(ValueAnimatorCompat valueAnimatorCompat) {
                    CollapsingToolbarLayout.this.setScrimAlpha(valueAnimatorCompat.getAnimatedIntValue());
                }
            });
        } else if (this.mScrimAnimator.isRunning()) {
            this.mScrimAnimator.cancel();
        }
        this.mScrimAnimator.setIntValues(this.mScrimAlpha, i);
        this.mScrimAnimator.start();
    }

    private void ensureToolbar() {
        Toolbar toolbar;
        Toolbar toolbar2;
        if (this.mRefreshToolbar) {
            int childCount = getChildCount();
            int i = 0;
            Toolbar toolbar3 = null;
            while (true) {
                if (i >= childCount) {
                    toolbar = null;
                    break;
                }
                View childAt = getChildAt(i);
                if (childAt instanceof Toolbar) {
                    if (this.mToolbarId == -1) {
                        toolbar = (Toolbar) childAt;
                        break;
                    } else if (this.mToolbarId == childAt.getId()) {
                        toolbar = (Toolbar) childAt;
                        break;
                    } else if (toolbar3 == null) {
                        toolbar2 = (Toolbar) childAt;
                        i++;
                        toolbar3 = toolbar2;
                    }
                }
                toolbar2 = toolbar3;
                i++;
                toolbar3 = toolbar2;
            }
            if (toolbar != null) {
                toolbar3 = toolbar;
            }
            if (toolbar3 != null) {
                this.mToolbar = toolbar3;
                this.mDummyView = new View(getContext());
                this.mToolbar.addView(this.mDummyView, -1, -1);
            } else {
                this.mToolbar = null;
                this.mDummyView = null;
            }
            this.mRefreshToolbar = false;
        }
    }

    /* access modifiers changed from: private */
    public static ViewOffsetHelper getViewOffsetHelper(View view) {
        ViewOffsetHelper viewOffsetHelper = (ViewOffsetHelper) view.getTag(a.e.view_offset_helper);
        if (viewOffsetHelper != null) {
            return viewOffsetHelper;
        }
        ViewOffsetHelper viewOffsetHelper2 = new ViewOffsetHelper(view);
        view.setTag(a.e.view_offset_helper, viewOffsetHelper2);
        return viewOffsetHelper2;
    }

    /* access modifiers changed from: private */
    public void hideScrim() {
        if (this.mScrimsAreShown) {
            if (!bh.C(this) || isInEditMode()) {
                setScrimAlpha(0);
            } else {
                animateScrim(0);
            }
            this.mScrimsAreShown = false;
        }
    }

    /* access modifiers changed from: private */
    public void setScrimAlpha(int i) {
        if (i != this.mScrimAlpha) {
            if (!(this.mContentScrim == null || this.mToolbar == null)) {
                bh.d(this.mToolbar);
            }
            this.mScrimAlpha = i;
            bh.d(this);
        }
    }

    /* access modifiers changed from: private */
    public void showScrim() {
        if (!this.mScrimsAreShown) {
            if (!bh.C(this) || isInEditMode()) {
                setScrimAlpha(255);
            } else {
                animateScrim(255);
            }
            this.mScrimsAreShown = true;
        }
    }

    /* access modifiers changed from: protected */
    public boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return layoutParams instanceof LayoutParams;
    }

    public void draw(Canvas canvas) {
        super.draw(canvas);
        ensureToolbar();
        if (this.mToolbar == null && this.mContentScrim != null && this.mScrimAlpha > 0) {
            this.mContentScrim.mutate().setAlpha(this.mScrimAlpha);
            this.mContentScrim.draw(canvas);
        }
        this.mCollapsingTextHelper.draw(canvas);
        if (this.mStatusBarScrim != null && this.mScrimAlpha > 0) {
            int b = this.mLastInsets != null ? this.mLastInsets.b() : 0;
            if (b > 0) {
                this.mStatusBarScrim.setBounds(0, -this.mCurrentOffset, getWidth(), b - this.mCurrentOffset);
                this.mStatusBarScrim.mutate().setAlpha(this.mScrimAlpha);
                this.mStatusBarScrim.draw(canvas);
            }
        }
    }

    /* access modifiers changed from: protected */
    public boolean drawChild(Canvas canvas, View view, long j) {
        ensureToolbar();
        if (view == this.mToolbar && this.mContentScrim != null && this.mScrimAlpha > 0) {
            this.mContentScrim.mutate().setAlpha(this.mScrimAlpha);
            this.mContentScrim.draw(canvas);
        }
        return super.drawChild(canvas, view, j);
    }

    /* access modifiers changed from: protected */
    public LayoutParams generateDefaultLayoutParams() {
        return new LayoutParams(super.generateDefaultLayoutParams());
    }

    public FrameLayout.LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        return new LayoutParams(getContext(), attributeSet);
    }

    /* access modifiers changed from: protected */
    public FrameLayout.LayoutParams generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return new LayoutParams(layoutParams);
    }

    public Drawable getContentScrim() {
        return this.mContentScrim;
    }

    /* access modifiers changed from: package-private */
    public final int getScrimTriggerOffset() {
        return bh.r(this) * 2;
    }

    public Drawable getStatusBarScrim() {
        return this.mStatusBarScrim;
    }

    /* access modifiers changed from: protected */
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        ViewParent parent = getParent();
        if (parent instanceof AppBarLayout) {
            if (this.mOnOffsetChangedListener == null) {
                this.mOnOffsetChangedListener = new OffsetUpdateListener();
            }
            ((AppBarLayout) parent).addOnOffsetChangedListener(this.mOnOffsetChangedListener);
        }
    }

    /* access modifiers changed from: protected */
    public void onDetachedFromWindow() {
        ViewParent parent = getParent();
        if (this.mOnOffsetChangedListener != null && (parent instanceof AppBarLayout)) {
            ((AppBarLayout) parent).removeOnOffsetChangedListener(this.mOnOffsetChangedListener);
        }
        super.onDetachedFromWindow();
    }

    /* access modifiers changed from: protected */
    public void onLayout(boolean z, int i, int i2, int i3, int i4) {
        int b;
        super.onLayout(z, i, i2, i3, i4);
        int childCount = getChildCount();
        for (int i5 = 0; i5 < childCount; i5++) {
            View childAt = getChildAt(i5);
            if (this.mLastInsets != null && !bh.x(childAt) && childAt.getTop() < (b = this.mLastInsets.b())) {
                childAt.offsetTopAndBottom(b);
            }
            getViewOffsetHelper(childAt).onViewLayout();
        }
        if (this.mDummyView != null) {
            ViewGroupUtils.getDescendantRect(this, this.mDummyView, this.mTmpRect);
            this.mCollapsingTextHelper.setCollapsedBounds(this.mTmpRect.left, i4 - this.mTmpRect.height(), this.mTmpRect.right, i4);
            this.mCollapsingTextHelper.setExpandedBounds(this.mExpandedMarginLeft + i, this.mTmpRect.bottom + this.mExpandedMarginTop, i3 - this.mExpandedMarginRight, i4 - this.mExpandedMarginBottom);
            this.mCollapsingTextHelper.recalculate();
        }
        if (this.mToolbar != null) {
            setMinimumHeight(this.mToolbar.getHeight());
        }
    }

    /* access modifiers changed from: protected */
    public void onMeasure(int i, int i2) {
        ensureToolbar();
        super.onMeasure(i, i2);
    }

    /* access modifiers changed from: protected */
    public void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        if (this.mContentScrim != null) {
            this.mContentScrim.setBounds(0, 0, i, i2);
        }
    }

    public void setCollapsedTitleTextAppearance(int i) {
        this.mCollapsingTextHelper.setCollapsedTextAppearance(i);
    }

    public void setCollapsedTitleTextColor(int i) {
        this.mCollapsingTextHelper.setCollapsedTextColor(i);
    }

    public void setContentScrim(Drawable drawable) {
        if (this.mContentScrim != drawable) {
            if (this.mContentScrim != null) {
                this.mContentScrim.setCallback((Drawable.Callback) null);
            }
            this.mContentScrim = drawable;
            drawable.setBounds(0, 0, getWidth(), getHeight());
            drawable.setCallback(this);
            drawable.mutate().setAlpha(this.mScrimAlpha);
            bh.d(this);
        }
    }

    public void setContentScrimColor(int i) {
        setContentScrim(new ColorDrawable(i));
    }

    public void setContentScrimResource(int i) {
        setContentScrim(e.getDrawable(getContext(), i));
    }

    public void setExpandedTitleColor(int i) {
        this.mCollapsingTextHelper.setExpandedTextColor(i);
    }

    public void setExpandedTitleTextAppearance(int i) {
        this.mCollapsingTextHelper.setExpandedTextAppearance(i);
    }

    public void setStatusBarScrim(Drawable drawable) {
        if (this.mStatusBarScrim != drawable) {
            if (this.mStatusBarScrim != null) {
                this.mStatusBarScrim.setCallback((Drawable.Callback) null);
            }
            this.mStatusBarScrim = drawable;
            drawable.setCallback(this);
            drawable.mutate().setAlpha(this.mScrimAlpha);
            bh.d(this);
        }
    }

    public void setStatusBarScrimColor(int i) {
        setStatusBarScrim(new ColorDrawable(i));
    }

    public void setStatusBarScrimResource(int i) {
        setStatusBarScrim(e.getDrawable(getContext(), i));
    }

    public void setTitle(CharSequence charSequence) {
        this.mCollapsingTextHelper.setText(charSequence);
    }
}
