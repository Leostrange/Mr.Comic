package android.support.design.widget;

import android.annotation.TargetApi;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.drawable.Drawable;
import android.support.design.widget.ValueAnimatorCompat;
import android.support.v4.view.ViewPager;
import android.support.v7.app.ActionBar;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityNodeInfo;
import android.widget.HorizontalScrollView;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import android.widget.Toast;
import defpackage.a;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Iterator;

public class TabLayout extends HorizontalScrollView {
    private static final int ANIMATION_DURATION = 300;
    private static final int DEFAULT_HEIGHT = 48;
    private static final int FIXED_WRAP_GUTTER_MIN = 16;
    public static final int GRAVITY_CENTER = 1;
    public static final int GRAVITY_FILL = 0;
    private static final int MAX_TAB_TEXT_LINES = 2;
    public static final int MODE_FIXED = 1;
    public static final int MODE_SCROLLABLE = 0;
    private static final int MOTION_NON_ADJACENT_OFFSET = 24;
    private static final int TAB_MIN_WIDTH_MARGIN = 56;
    private int mContentInsetStart;
    /* access modifiers changed from: private */
    public ValueAnimatorCompat mIndicatorAnimator;
    /* access modifiers changed from: private */
    public int mMode;
    private OnTabSelectedListener mOnTabSelectedListener;
    private final int mRequestedTabMaxWidth;
    private ValueAnimatorCompat mScrollAnimator;
    private Tab mSelectedTab;
    /* access modifiers changed from: private */
    public final int mTabBackgroundResId;
    private View.OnClickListener mTabClickListener;
    /* access modifiers changed from: private */
    public int mTabGravity;
    /* access modifiers changed from: private */
    public int mTabMaxWidth;
    /* access modifiers changed from: private */
    public final int mTabMinWidth;
    /* access modifiers changed from: private */
    public int mTabPaddingBottom;
    /* access modifiers changed from: private */
    public int mTabPaddingEnd;
    /* access modifiers changed from: private */
    public int mTabPaddingStart;
    /* access modifiers changed from: private */
    public int mTabPaddingTop;
    private final SlidingTabStrip mTabStrip;
    /* access modifiers changed from: private */
    public int mTabTextAppearance;
    /* access modifiers changed from: private */
    public ColorStateList mTabTextColors;
    private final ArrayList<Tab> mTabs;

    @Retention(RetentionPolicy.SOURCE)
    public @interface Mode {
    }

    public interface OnTabSelectedListener {
        void onTabReselected(Tab tab);

        void onTabSelected(Tab tab);

        void onTabUnselected(Tab tab);
    }

    class SlidingTabStrip extends LinearLayout {
        private int mIndicatorLeft = -1;
        private int mIndicatorRight = -1;
        private int mSelectedIndicatorHeight;
        private final Paint mSelectedIndicatorPaint;
        /* access modifiers changed from: private */
        public int mSelectedPosition = -1;
        /* access modifiers changed from: private */
        public float mSelectionOffset;

        SlidingTabStrip(Context context) {
            super(context);
            setWillNotDraw(false);
            this.mSelectedIndicatorPaint = new Paint();
        }

        /* access modifiers changed from: private */
        public void setIndicatorPosition(int i, int i2) {
            if (i != this.mIndicatorLeft || i2 != this.mIndicatorRight) {
                this.mIndicatorLeft = i;
                this.mIndicatorRight = i2;
                bh.d(this);
            }
        }

        private void updateIndicatorPosition() {
            int i;
            int i2;
            View childAt = getChildAt(this.mSelectedPosition);
            if (childAt == null || childAt.getWidth() <= 0) {
                i = -1;
                i2 = -1;
            } else {
                i = childAt.getLeft();
                i2 = childAt.getRight();
                if (this.mSelectionOffset > 0.0f && this.mSelectedPosition < getChildCount() - 1) {
                    View childAt2 = getChildAt(this.mSelectedPosition + 1);
                    i = (int) ((((float) i) * (1.0f - this.mSelectionOffset)) + (this.mSelectionOffset * ((float) childAt2.getLeft())));
                    i2 = (int) ((((float) i2) * (1.0f - this.mSelectionOffset)) + (((float) childAt2.getRight()) * this.mSelectionOffset));
                }
            }
            setIndicatorPosition(i, i2);
        }

        /* access modifiers changed from: package-private */
        public void animateIndicatorToPosition(final int i, int i2) {
            final int i3;
            final int i4;
            boolean z = bh.h(this) == 1;
            View childAt = getChildAt(i);
            final int left = childAt.getLeft();
            final int right = childAt.getRight();
            if (Math.abs(i - this.mSelectedPosition) <= 1) {
                i4 = this.mIndicatorLeft;
                i3 = this.mIndicatorRight;
            } else {
                int access$1400 = TabLayout.this.dpToPx(24);
                if (i < this.mSelectedPosition) {
                    if (!z) {
                        i3 = right + access$1400;
                        i4 = i3;
                    }
                } else if (z) {
                    i3 = right + access$1400;
                    i4 = i3;
                }
                i3 = left - access$1400;
                i4 = i3;
            }
            if (i4 != left || i3 != right) {
                ValueAnimatorCompat access$1102 = TabLayout.this.mIndicatorAnimator = ViewUtils.createAnimator();
                access$1102.setInterpolator(AnimationUtils.FAST_OUT_SLOW_IN_INTERPOLATOR);
                access$1102.setDuration(i2);
                access$1102.setFloatValues(0.0f, 1.0f);
                access$1102.setUpdateListener(new ValueAnimatorCompat.AnimatorUpdateListener() {
                    public void onAnimationUpdate(ValueAnimatorCompat valueAnimatorCompat) {
                        float animatedFraction = valueAnimatorCompat.getAnimatedFraction();
                        SlidingTabStrip.this.setIndicatorPosition(AnimationUtils.lerp(i4, left, animatedFraction), AnimationUtils.lerp(i3, right, animatedFraction));
                    }
                });
                access$1102.setListener(new ValueAnimatorCompat.AnimatorListenerAdapter() {
                    public void onAnimationCancel(ValueAnimatorCompat valueAnimatorCompat) {
                        int unused = SlidingTabStrip.this.mSelectedPosition = i;
                        float unused2 = SlidingTabStrip.this.mSelectionOffset = 0.0f;
                    }

                    public void onAnimationEnd(ValueAnimatorCompat valueAnimatorCompat) {
                        int unused = SlidingTabStrip.this.mSelectedPosition = i;
                        float unused2 = SlidingTabStrip.this.mSelectionOffset = 0.0f;
                    }
                });
                access$1102.start();
            }
        }

        /* access modifiers changed from: package-private */
        public boolean childrenNeedLayout() {
            int childCount = getChildCount();
            for (int i = 0; i < childCount; i++) {
                if (getChildAt(i).getWidth() <= 0) {
                    return true;
                }
            }
            return false;
        }

        public void draw(Canvas canvas) {
            super.draw(canvas);
            if (this.mIndicatorLeft >= 0 && this.mIndicatorRight > this.mIndicatorLeft) {
                canvas.drawRect((float) this.mIndicatorLeft, (float) (getHeight() - this.mSelectedIndicatorHeight), (float) this.mIndicatorRight, (float) getHeight(), this.mSelectedIndicatorPaint);
            }
        }

        /* access modifiers changed from: protected */
        public void onLayout(boolean z, int i, int i2, int i3, int i4) {
            super.onLayout(z, i, i2, i3, i4);
            updateIndicatorPosition();
        }

        /* access modifiers changed from: protected */
        public void onMeasure(int i, int i2) {
            super.onMeasure(i, i2);
            if (View.MeasureSpec.getMode(i) == 1073741824 && TabLayout.this.mMode == 1 && TabLayout.this.mTabGravity == 1) {
                int childCount = getChildCount();
                int makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(0, 0);
                int i3 = 0;
                for (int i4 = 0; i4 < childCount; i4++) {
                    View childAt = getChildAt(i4);
                    childAt.measure(makeMeasureSpec, i2);
                    i3 = Math.max(i3, childAt.getMeasuredWidth());
                }
                if (i3 > 0) {
                    if (i3 * childCount <= getMeasuredWidth() - (TabLayout.this.dpToPx(16) * 2)) {
                        for (int i5 = 0; i5 < childCount; i5++) {
                            LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) getChildAt(i5).getLayoutParams();
                            layoutParams.width = i3;
                            layoutParams.weight = 0.0f;
                        }
                    } else {
                        int unused = TabLayout.this.mTabGravity = 0;
                        TabLayout.this.updateTabViewsLayoutParams();
                    }
                    super.onMeasure(i, i2);
                }
            }
        }

        /* access modifiers changed from: package-private */
        public void setIndicatorPositionFromTabPosition(int i, float f) {
            if (TabLayout.this.mIndicatorAnimator == null || !TabLayout.this.mIndicatorAnimator.isRunning()) {
                this.mSelectedPosition = i;
                this.mSelectionOffset = f;
                updateIndicatorPosition();
            }
        }

        /* access modifiers changed from: package-private */
        public void setSelectedIndicatorColor(int i) {
            this.mSelectedIndicatorPaint.setColor(i);
            bh.d(this);
        }

        /* access modifiers changed from: package-private */
        public void setSelectedIndicatorHeight(int i) {
            this.mSelectedIndicatorHeight = i;
            bh.d(this);
        }
    }

    public static final class Tab {
        public static final int INVALID_POSITION = -1;
        private CharSequence mContentDesc;
        private View mCustomView;
        private Drawable mIcon;
        /* access modifiers changed from: private */
        public final TabLayout mParent;
        private int mPosition = -1;
        private Object mTag;
        private CharSequence mText;

        Tab(TabLayout tabLayout) {
            this.mParent = tabLayout;
        }

        public final CharSequence getContentDescription() {
            return this.mContentDesc;
        }

        /* access modifiers changed from: package-private */
        public final View getCustomView() {
            return this.mCustomView;
        }

        public final Drawable getIcon() {
            return this.mIcon;
        }

        public final int getPosition() {
            return this.mPosition;
        }

        public final Object getTag() {
            return this.mTag;
        }

        public final CharSequence getText() {
            return this.mText;
        }

        public final boolean isSelected() {
            return this.mParent.getSelectedTabPosition() == this.mPosition;
        }

        public final void select() {
            this.mParent.selectTab(this);
        }

        public final Tab setContentDescription(int i) {
            return setContentDescription(this.mParent.getResources().getText(i));
        }

        public final Tab setContentDescription(CharSequence charSequence) {
            this.mContentDesc = charSequence;
            if (this.mPosition >= 0) {
                this.mParent.updateTab(this.mPosition);
            }
            return this;
        }

        public final Tab setCustomView(int i) {
            return setCustomView(LayoutInflater.from(this.mParent.getContext()).inflate(i, (ViewGroup) null));
        }

        public final Tab setCustomView(View view) {
            this.mCustomView = view;
            if (this.mPosition >= 0) {
                this.mParent.updateTab(this.mPosition);
            }
            return this;
        }

        public final Tab setIcon(int i) {
            return setIcon(er.a(this.mParent.getContext(), i));
        }

        public final Tab setIcon(Drawable drawable) {
            this.mIcon = drawable;
            if (this.mPosition >= 0) {
                this.mParent.updateTab(this.mPosition);
            }
            return this;
        }

        /* access modifiers changed from: package-private */
        public final void setPosition(int i) {
            this.mPosition = i;
        }

        public final Tab setTag(Object obj) {
            this.mTag = obj;
            return this;
        }

        public final Tab setText(int i) {
            return setText(this.mParent.getResources().getText(i));
        }

        public final Tab setText(CharSequence charSequence) {
            this.mText = charSequence;
            if (this.mPosition >= 0) {
                this.mParent.updateTab(this.mPosition);
            }
            return this;
        }
    }

    @Retention(RetentionPolicy.SOURCE)
    public @interface TabGravity {
    }

    public static class TabLayoutOnPageChangeListener implements ViewPager.e {
        private int mPreviousScrollState;
        private int mScrollState;
        private final WeakReference<TabLayout> mTabLayoutRef;

        public TabLayoutOnPageChangeListener(TabLayout tabLayout) {
            this.mTabLayoutRef = new WeakReference<>(tabLayout);
        }

        public void onPageScrollStateChanged(int i) {
            this.mPreviousScrollState = this.mScrollState;
            this.mScrollState = i;
        }

        public void onPageScrolled(int i, float f, int i2) {
            boolean z = true;
            TabLayout tabLayout = (TabLayout) this.mTabLayoutRef.get();
            if (tabLayout != null) {
                if (!(this.mScrollState == 1 || (this.mScrollState == 2 && this.mPreviousScrollState == 1))) {
                    z = false;
                }
                tabLayout.setScrollPosition(i, f, z);
            }
        }

        public void onPageSelected(int i) {
            TabLayout tabLayout = (TabLayout) this.mTabLayoutRef.get();
            if (tabLayout != null) {
                tabLayout.selectTab(tabLayout.getTabAt(i), this.mScrollState == 0);
            }
        }
    }

    class TabView extends LinearLayout implements View.OnLongClickListener {
        private ImageView mCustomIconView;
        private TextView mCustomTextView;
        private View mCustomView;
        private ImageView mIconView;
        private final Tab mTab;
        private TextView mTextView;

        public TabView(Context context, Tab tab) {
            super(context);
            this.mTab = tab;
            if (TabLayout.this.mTabBackgroundResId != 0) {
                setBackgroundDrawable(er.a(context, TabLayout.this.mTabBackgroundResId));
            }
            bh.b(this, TabLayout.this.mTabPaddingStart, TabLayout.this.mTabPaddingTop, TabLayout.this.mTabPaddingEnd, TabLayout.this.mTabPaddingBottom);
            setGravity(17);
            update();
        }

        private void updateTextAndIcon(Tab tab, TextView textView, ImageView imageView) {
            Drawable icon = tab.getIcon();
            CharSequence text = tab.getText();
            if (imageView != null) {
                if (icon != null) {
                    imageView.setImageDrawable(icon);
                    imageView.setVisibility(0);
                    setVisibility(0);
                } else {
                    imageView.setVisibility(8);
                    imageView.setImageDrawable((Drawable) null);
                }
                imageView.setContentDescription(tab.getContentDescription());
            }
            boolean z = !TextUtils.isEmpty(text);
            if (textView != null) {
                if (z) {
                    textView.setText(text);
                    textView.setContentDescription(tab.getContentDescription());
                    textView.setVisibility(0);
                    setVisibility(0);
                } else {
                    textView.setVisibility(8);
                    textView.setText((CharSequence) null);
                }
            }
            if (z || TextUtils.isEmpty(tab.getContentDescription())) {
                setOnLongClickListener((View.OnLongClickListener) null);
                setLongClickable(false);
                return;
            }
            setOnLongClickListener(this);
        }

        public Tab getTab() {
            return this.mTab;
        }

        @TargetApi(14)
        public void onInitializeAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
            super.onInitializeAccessibilityEvent(accessibilityEvent);
            accessibilityEvent.setClassName(ActionBar.Tab.class.getName());
        }

        @TargetApi(14)
        public void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
            super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
            accessibilityNodeInfo.setClassName(ActionBar.Tab.class.getName());
        }

        public boolean onLongClick(View view) {
            int[] iArr = new int[2];
            getLocationOnScreen(iArr);
            Context context = getContext();
            int width = getWidth();
            int height = getHeight();
            int i = context.getResources().getDisplayMetrics().widthPixels;
            Toast makeText = Toast.makeText(context, this.mTab.getContentDescription(), 0);
            makeText.setGravity(49, (iArr[0] + (width / 2)) - (i / 2), height);
            makeText.show();
            return true;
        }

        public void onMeasure(int i, int i2) {
            super.onMeasure(i, i2);
            int measuredWidth = getMeasuredWidth();
            if (measuredWidth < TabLayout.this.mTabMinWidth || measuredWidth > TabLayout.this.mTabMaxWidth) {
                super.onMeasure(View.MeasureSpec.makeMeasureSpec(MathUtils.constrain(measuredWidth, TabLayout.this.mTabMinWidth, TabLayout.this.mTabMaxWidth), 1073741824), i2);
            }
        }

        public void setSelected(boolean z) {
            boolean z2 = isSelected() != z;
            super.setSelected(z);
            if (z2 && z) {
                sendAccessibilityEvent(4);
                if (this.mTextView != null) {
                    this.mTextView.setSelected(z);
                }
                if (this.mIconView != null) {
                    this.mIconView.setSelected(z);
                }
            }
        }

        /* access modifiers changed from: package-private */
        public final void update() {
            Tab tab = this.mTab;
            View customView = tab.getCustomView();
            if (customView != null) {
                ViewParent parent = customView.getParent();
                if (parent != this) {
                    if (parent != null) {
                        ((ViewGroup) parent).removeView(customView);
                    }
                    addView(customView);
                }
                this.mCustomView = customView;
                if (this.mTextView != null) {
                    this.mTextView.setVisibility(8);
                }
                if (this.mIconView != null) {
                    this.mIconView.setVisibility(8);
                    this.mIconView.setImageDrawable((Drawable) null);
                }
                this.mCustomTextView = (TextView) customView.findViewById(16908308);
                this.mCustomIconView = (ImageView) customView.findViewById(16908294);
            } else {
                if (this.mCustomView != null) {
                    removeView(this.mCustomView);
                    this.mCustomView = null;
                }
                this.mCustomTextView = null;
                this.mCustomIconView = null;
            }
            if (this.mCustomView == null) {
                if (this.mIconView == null) {
                    ImageView imageView = (ImageView) LayoutInflater.from(getContext()).inflate(a.f.layout_tab_icon, this, false);
                    addView(imageView, 0);
                    this.mIconView = imageView;
                }
                if (this.mTextView == null) {
                    TextView textView = (TextView) LayoutInflater.from(getContext()).inflate(a.f.layout_tab_text, this, false);
                    addView(textView);
                    this.mTextView = textView;
                }
                this.mTextView.setTextAppearance(getContext(), TabLayout.this.mTabTextAppearance);
                if (TabLayout.this.mTabTextColors != null) {
                    this.mTextView.setTextColor(TabLayout.this.mTabTextColors);
                }
                updateTextAndIcon(tab, this.mTextView, this.mIconView);
            } else if (this.mCustomTextView != null || this.mCustomIconView != null) {
                updateTextAndIcon(tab, this.mCustomTextView, this.mCustomIconView);
            }
        }
    }

    public static class ViewPagerOnTabSelectedListener implements OnTabSelectedListener {
        private final ViewPager mViewPager;

        public ViewPagerOnTabSelectedListener(ViewPager viewPager) {
            this.mViewPager = viewPager;
        }

        public void onTabReselected(Tab tab) {
        }

        public void onTabSelected(Tab tab) {
            this.mViewPager.setCurrentItem(tab.getPosition());
        }

        public void onTabUnselected(Tab tab) {
        }
    }

    public TabLayout(Context context) {
        this(context, (AttributeSet) null);
    }

    public TabLayout(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public TabLayout(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.mTabs = new ArrayList<>();
        setHorizontalScrollBarEnabled(false);
        setFillViewport(true);
        this.mTabStrip = new SlidingTabStrip(context);
        addView(this.mTabStrip, -2, -1);
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, a.h.TabLayout, i, a.g.Widget_Design_TabLayout);
        this.mTabStrip.setSelectedIndicatorHeight(obtainStyledAttributes.getDimensionPixelSize(a.h.TabLayout_tabIndicatorHeight, 0));
        this.mTabStrip.setSelectedIndicatorColor(obtainStyledAttributes.getColor(a.h.TabLayout_tabIndicatorColor, 0));
        this.mTabTextAppearance = obtainStyledAttributes.getResourceId(a.h.TabLayout_tabTextAppearance, a.g.TextAppearance_Design_Tab);
        int dimensionPixelSize = obtainStyledAttributes.getDimensionPixelSize(a.h.TabLayout_tabPadding, 0);
        this.mTabPaddingBottom = dimensionPixelSize;
        this.mTabPaddingEnd = dimensionPixelSize;
        this.mTabPaddingTop = dimensionPixelSize;
        this.mTabPaddingStart = dimensionPixelSize;
        this.mTabPaddingStart = obtainStyledAttributes.getDimensionPixelSize(a.h.TabLayout_tabPaddingStart, this.mTabPaddingStart);
        this.mTabPaddingTop = obtainStyledAttributes.getDimensionPixelSize(a.h.TabLayout_tabPaddingTop, this.mTabPaddingTop);
        this.mTabPaddingEnd = obtainStyledAttributes.getDimensionPixelSize(a.h.TabLayout_tabPaddingEnd, this.mTabPaddingEnd);
        this.mTabPaddingBottom = obtainStyledAttributes.getDimensionPixelSize(a.h.TabLayout_tabPaddingBottom, this.mTabPaddingBottom);
        this.mTabTextColors = loadTextColorFromTextAppearance(this.mTabTextAppearance);
        if (obtainStyledAttributes.hasValue(a.h.TabLayout_tabTextColor)) {
            this.mTabTextColors = obtainStyledAttributes.getColorStateList(a.h.TabLayout_tabTextColor);
        }
        if (obtainStyledAttributes.hasValue(a.h.TabLayout_tabSelectedTextColor)) {
            this.mTabTextColors = createColorStateList(this.mTabTextColors.getDefaultColor(), obtainStyledAttributes.getColor(a.h.TabLayout_tabSelectedTextColor, 0));
        }
        this.mTabMinWidth = obtainStyledAttributes.getDimensionPixelSize(a.h.TabLayout_tabMinWidth, 0);
        this.mRequestedTabMaxWidth = obtainStyledAttributes.getDimensionPixelSize(a.h.TabLayout_tabMaxWidth, 0);
        this.mTabBackgroundResId = obtainStyledAttributes.getResourceId(a.h.TabLayout_tabBackground, 0);
        this.mContentInsetStart = obtainStyledAttributes.getDimensionPixelSize(a.h.TabLayout_tabContentStart, 0);
        this.mMode = obtainStyledAttributes.getInt(a.h.TabLayout_tabMode, 1);
        this.mTabGravity = obtainStyledAttributes.getInt(a.h.TabLayout_tabGravity, 0);
        obtainStyledAttributes.recycle();
        applyModeAndGravity();
    }

    private void addTabView(Tab tab, int i, boolean z) {
        TabView createTabView = createTabView(tab);
        this.mTabStrip.addView(createTabView, i, createLayoutParamsForTabs());
        if (z) {
            createTabView.setSelected(true);
        }
    }

    private void addTabView(Tab tab, boolean z) {
        TabView createTabView = createTabView(tab);
        this.mTabStrip.addView(createTabView, createLayoutParamsForTabs());
        if (z) {
            createTabView.setSelected(true);
        }
    }

    private void animateToTab(int i) {
        if (i != -1) {
            if (getWindowToken() == null || !bh.C(this) || this.mTabStrip.childrenNeedLayout()) {
                setScrollPosition(i, 0.0f, true);
                return;
            }
            int scrollX = getScrollX();
            int calculateScrollXForTab = calculateScrollXForTab(i, 0.0f);
            if (scrollX != calculateScrollXForTab) {
                if (this.mScrollAnimator == null) {
                    this.mScrollAnimator = ViewUtils.createAnimator();
                    this.mScrollAnimator.setInterpolator(AnimationUtils.FAST_OUT_SLOW_IN_INTERPOLATOR);
                    this.mScrollAnimator.setDuration(300);
                    this.mScrollAnimator.setUpdateListener(new ValueAnimatorCompat.AnimatorUpdateListener() {
                        public void onAnimationUpdate(ValueAnimatorCompat valueAnimatorCompat) {
                            TabLayout.this.scrollTo(valueAnimatorCompat.getAnimatedIntValue(), 0);
                        }
                    });
                }
                this.mScrollAnimator.setIntValues(scrollX, calculateScrollXForTab);
                this.mScrollAnimator.start();
            }
            this.mTabStrip.animateIndicatorToPosition(i, 300);
        }
    }

    private void applyModeAndGravity() {
        bh.b(this.mTabStrip, this.mMode == 0 ? Math.max(0, this.mContentInsetStart - this.mTabPaddingStart) : 0, 0, 0, 0);
        switch (this.mMode) {
            case 0:
                this.mTabStrip.setGravity(8388611);
                break;
            case 1:
                this.mTabStrip.setGravity(1);
                break;
        }
        updateTabViewsLayoutParams();
    }

    private int calculateScrollXForTab(int i, float f) {
        int i2 = 0;
        if (this.mMode != 0) {
            return 0;
        }
        View childAt = this.mTabStrip.getChildAt(i);
        View childAt2 = i + 1 < this.mTabStrip.getChildCount() ? this.mTabStrip.getChildAt(i + 1) : null;
        int width = childAt != null ? childAt.getWidth() : 0;
        if (childAt2 != null) {
            i2 = childAt2.getWidth();
        }
        return ((((int) ((((float) (i2 + width)) * f) * 0.5f)) + childAt.getLeft()) + (childAt.getWidth() / 2)) - (getWidth() / 2);
    }

    private void configureTab(Tab tab, int i) {
        tab.setPosition(i);
        this.mTabs.add(i, tab);
        int size = this.mTabs.size();
        for (int i2 = i + 1; i2 < size; i2++) {
            this.mTabs.get(i2).setPosition(i2);
        }
    }

    private static ColorStateList createColorStateList(int i, int i2) {
        return new ColorStateList(new int[][]{SELECTED_STATE_SET, EMPTY_STATE_SET}, new int[]{i2, i});
    }

    private LinearLayout.LayoutParams createLayoutParamsForTabs() {
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-2, -1);
        updateTabViewLayoutParams(layoutParams);
        return layoutParams;
    }

    private TabView createTabView(Tab tab) {
        TabView tabView = new TabView(getContext(), tab);
        tabView.setFocusable(true);
        if (this.mTabClickListener == null) {
            this.mTabClickListener = new View.OnClickListener() {
                public void onClick(View view) {
                    ((TabView) view).getTab().select();
                }
            };
        }
        tabView.setOnClickListener(this.mTabClickListener);
        return tabView;
    }

    /* access modifiers changed from: private */
    public int dpToPx(int i) {
        return Math.round(getResources().getDisplayMetrics().density * ((float) i));
    }

    private ColorStateList loadTextColorFromTextAppearance(int i) {
        TypedArray obtainStyledAttributes = getContext().obtainStyledAttributes(i, a.h.TextAppearance);
        try {
            return obtainStyledAttributes.getColorStateList(a.h.TextAppearance_android_textColor);
        } finally {
            obtainStyledAttributes.recycle();
        }
    }

    private void removeTabViewAt(int i) {
        this.mTabStrip.removeViewAt(i);
        requestLayout();
    }

    private void setSelectedTabView(int i) {
        int childCount = this.mTabStrip.getChildCount();
        int i2 = 0;
        while (i2 < childCount) {
            this.mTabStrip.getChildAt(i2).setSelected(i2 == i);
            i2++;
        }
    }

    private void updateAllTabs() {
        int childCount = this.mTabStrip.getChildCount();
        for (int i = 0; i < childCount; i++) {
            updateTab(i);
        }
    }

    /* access modifiers changed from: private */
    public void updateTab(int i) {
        TabView tabView = (TabView) this.mTabStrip.getChildAt(i);
        if (tabView != null) {
            tabView.update();
        }
    }

    private void updateTabViewLayoutParams(LinearLayout.LayoutParams layoutParams) {
        if (this.mMode == 1 && this.mTabGravity == 0) {
            layoutParams.width = 0;
            layoutParams.weight = 1.0f;
            return;
        }
        layoutParams.width = -2;
        layoutParams.weight = 0.0f;
    }

    /* access modifiers changed from: private */
    public void updateTabViewsLayoutParams() {
        int i = 0;
        while (true) {
            int i2 = i;
            if (i2 < this.mTabStrip.getChildCount()) {
                View childAt = this.mTabStrip.getChildAt(i2);
                updateTabViewLayoutParams((LinearLayout.LayoutParams) childAt.getLayoutParams());
                childAt.requestLayout();
                i = i2 + 1;
            } else {
                return;
            }
        }
    }

    public void addTab(Tab tab) {
        addTab(tab, this.mTabs.isEmpty());
    }

    public void addTab(Tab tab, int i) {
        addTab(tab, i, this.mTabs.isEmpty());
    }

    public void addTab(Tab tab, int i, boolean z) {
        if (tab.mParent != this) {
            throw new IllegalArgumentException("Tab belongs to a different TabLayout.");
        }
        addTabView(tab, i, z);
        configureTab(tab, i);
        if (z) {
            tab.select();
        }
    }

    public void addTab(Tab tab, boolean z) {
        if (tab.mParent != this) {
            throw new IllegalArgumentException("Tab belongs to a different TabLayout.");
        }
        addTabView(tab, z);
        configureTab(tab, this.mTabs.size());
        if (z) {
            tab.select();
        }
    }

    public int getSelectedTabPosition() {
        if (this.mSelectedTab != null) {
            return this.mSelectedTab.getPosition();
        }
        return -1;
    }

    public Tab getTabAt(int i) {
        return this.mTabs.get(i);
    }

    public int getTabCount() {
        return this.mTabs.size();
    }

    public int getTabGravity() {
        return this.mTabGravity;
    }

    public int getTabMode() {
        return this.mMode;
    }

    public ColorStateList getTabTextColors() {
        return this.mTabTextColors;
    }

    public Tab newTab() {
        return new Tab(this);
    }

    /* access modifiers changed from: protected */
    public void onMeasure(int i, int i2) {
        int dpToPx = dpToPx(48) + getPaddingTop() + getPaddingBottom();
        switch (View.MeasureSpec.getMode(i2)) {
            case Integer.MIN_VALUE:
                i2 = View.MeasureSpec.makeMeasureSpec(Math.min(dpToPx, View.MeasureSpec.getSize(i2)), 1073741824);
                break;
            case 0:
                i2 = View.MeasureSpec.makeMeasureSpec(dpToPx, 1073741824);
                break;
        }
        super.onMeasure(i, i2);
        if (this.mMode == 1 && getChildCount() == 1) {
            View childAt = getChildAt(0);
            int measuredWidth = getMeasuredWidth();
            if (childAt.getMeasuredWidth() > measuredWidth) {
                childAt.measure(View.MeasureSpec.makeMeasureSpec(measuredWidth, 1073741824), getChildMeasureSpec(i2, getPaddingTop() + getPaddingBottom(), childAt.getLayoutParams().height));
            }
        }
        int i3 = this.mRequestedTabMaxWidth;
        int measuredWidth2 = getMeasuredWidth() - dpToPx(56);
        if (i3 == 0 || i3 > measuredWidth2) {
            i3 = measuredWidth2;
        }
        this.mTabMaxWidth = i3;
    }

    public void removeAllTabs() {
        this.mTabStrip.removeAllViews();
        Iterator<Tab> it = this.mTabs.iterator();
        while (it.hasNext()) {
            it.next().setPosition(-1);
            it.remove();
        }
        this.mSelectedTab = null;
    }

    public void removeTab(Tab tab) {
        if (tab.mParent != this) {
            throw new IllegalArgumentException("Tab does not belong to this TabLayout.");
        }
        removeTabAt(tab.getPosition());
    }

    public void removeTabAt(int i) {
        int position = this.mSelectedTab != null ? this.mSelectedTab.getPosition() : 0;
        removeTabViewAt(i);
        Tab remove = this.mTabs.remove(i);
        if (remove != null) {
            remove.setPosition(-1);
        }
        int size = this.mTabs.size();
        for (int i2 = i; i2 < size; i2++) {
            this.mTabs.get(i2).setPosition(i2);
        }
        if (position == i) {
            selectTab(this.mTabs.isEmpty() ? null : this.mTabs.get(Math.max(0, i - 1)));
        }
    }

    /* access modifiers changed from: package-private */
    public void selectTab(Tab tab) {
        selectTab(tab, true);
    }

    /* access modifiers changed from: package-private */
    public void selectTab(Tab tab, boolean z) {
        if (this.mSelectedTab != tab) {
            int position = tab != null ? tab.getPosition() : -1;
            setSelectedTabView(position);
            if (z) {
                if ((this.mSelectedTab == null || this.mSelectedTab.getPosition() == -1) && position != -1) {
                    setScrollPosition(position, 0.0f, true);
                } else {
                    animateToTab(position);
                }
            }
            if (!(this.mSelectedTab == null || this.mOnTabSelectedListener == null)) {
                this.mOnTabSelectedListener.onTabUnselected(this.mSelectedTab);
            }
            this.mSelectedTab = tab;
            if (this.mSelectedTab != null && this.mOnTabSelectedListener != null) {
                this.mOnTabSelectedListener.onTabSelected(this.mSelectedTab);
            }
        } else if (this.mSelectedTab != null) {
            if (this.mOnTabSelectedListener != null) {
                this.mOnTabSelectedListener.onTabReselected(this.mSelectedTab);
            }
            animateToTab(tab.getPosition());
        }
    }

    public void setOnTabSelectedListener(OnTabSelectedListener onTabSelectedListener) {
        this.mOnTabSelectedListener = onTabSelectedListener;
    }

    public void setScrollPosition(int i, float f, boolean z) {
        if ((this.mIndicatorAnimator == null || !this.mIndicatorAnimator.isRunning()) && i >= 0 && i < this.mTabStrip.getChildCount()) {
            this.mTabStrip.setIndicatorPositionFromTabPosition(i, f);
            scrollTo(calculateScrollXForTab(i, f), 0);
            if (z) {
                setSelectedTabView(Math.round(((float) i) + f));
            }
        }
    }

    public void setTabGravity(int i) {
        if (this.mTabGravity != i) {
            this.mTabGravity = i;
            applyModeAndGravity();
        }
    }

    public void setTabMode(int i) {
        if (i != this.mMode) {
            this.mMode = i;
            applyModeAndGravity();
        }
    }

    public void setTabTextColors(int i, int i2) {
        setTabTextColors(createColorStateList(i, i2));
    }

    public void setTabTextColors(ColorStateList colorStateList) {
        if (this.mTabTextColors != colorStateList) {
            this.mTabTextColors = colorStateList;
            updateAllTabs();
        }
    }

    public void setTabsFromPagerAdapter(bd bdVar) {
        removeAllTabs();
        int count = bdVar.getCount();
        for (int i = 0; i < count; i++) {
            addTab(newTab().setText(bdVar.getPageTitle(i)));
        }
    }

    public void setupWithViewPager(ViewPager viewPager) {
        bd adapter = viewPager.getAdapter();
        if (adapter == null) {
            throw new IllegalArgumentException("ViewPager does not have a PagerAdapter set");
        }
        setTabsFromPagerAdapter(adapter);
        TabLayoutOnPageChangeListener tabLayoutOnPageChangeListener = new TabLayoutOnPageChangeListener(this);
        if (viewPager.a == null) {
            viewPager.a = new ArrayList();
        }
        viewPager.a.add(tabLayoutOnPageChangeListener);
        setOnTabSelectedListener(new ViewPagerOnTabSelectedListener(viewPager));
        if (this.mSelectedTab == null || this.mSelectedTab.getPosition() != viewPager.getCurrentItem()) {
            getTabAt(viewPager.getCurrentItem()).select();
        }
    }
}
