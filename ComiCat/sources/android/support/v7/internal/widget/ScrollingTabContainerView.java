package android.support.v7.internal.widget;

import android.content.Context;
import android.content.res.Configuration;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.support.v7.app.ActionBar;
import android.support.v7.internal.widget.AdapterViewCompat;
import android.support.v7.widget.AppCompatTextView;
import android.support.v7.widget.LinearLayoutCompat;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityNodeInfo;
import android.view.animation.DecelerateInterpolator;
import android.view.animation.Interpolator;
import android.widget.AbsListView;
import android.widget.BaseAdapter;
import android.widget.HorizontalScrollView;
import android.widget.ImageView;
import android.widget.SpinnerAdapter;
import android.widget.TextView;
import android.widget.Toast;
import defpackage.cv;

public class ScrollingTabContainerView extends HorizontalScrollView implements AdapterViewCompat.b {
    private static final Interpolator l = new DecelerateInterpolator();
    Runnable a;
    public LinearLayoutCompat b;
    public SpinnerCompat c;
    public boolean d;
    int e;
    int f;
    protected bp g;
    protected final c h = new c();
    private b i;
    private int j;
    private int k;

    public class TabView extends LinearLayoutCompat implements View.OnLongClickListener {
        ActionBar.Tab a;
        private final int[] c = {16842964};
        private TextView d;
        private ImageView e;
        private View f;

        public TabView(Context context, ActionBar.Tab tab, boolean z) {
            super(context, (AttributeSet) null, cv.a.actionBarTabStyle);
            this.a = tab;
            es a2 = es.a(context, (AttributeSet) null, this.c, cv.a.actionBarTabStyle);
            if (a2.d(0)) {
                setBackgroundDrawable(a2.a(0));
            }
            a2.a.recycle();
            if (z) {
                setGravity(8388627);
            }
            a();
        }

        public final void a() {
            ActionBar.Tab tab = this.a;
            View customView = tab.getCustomView();
            if (customView != null) {
                ViewParent parent = customView.getParent();
                if (parent != this) {
                    if (parent != null) {
                        ((ViewGroup) parent).removeView(customView);
                    }
                    addView(customView);
                }
                this.f = customView;
                if (this.d != null) {
                    this.d.setVisibility(8);
                }
                if (this.e != null) {
                    this.e.setVisibility(8);
                    this.e.setImageDrawable((Drawable) null);
                    return;
                }
                return;
            }
            if (this.f != null) {
                removeView(this.f);
                this.f = null;
            }
            Drawable icon = tab.getIcon();
            CharSequence text = tab.getText();
            if (icon != null) {
                if (this.e == null) {
                    ImageView imageView = new ImageView(getContext());
                    LinearLayoutCompat.LayoutParams layoutParams = new LinearLayoutCompat.LayoutParams(-2, -2);
                    layoutParams.h = 16;
                    imageView.setLayoutParams(layoutParams);
                    addView(imageView, 0);
                    this.e = imageView;
                }
                this.e.setImageDrawable(icon);
                this.e.setVisibility(0);
            } else if (this.e != null) {
                this.e.setVisibility(8);
                this.e.setImageDrawable((Drawable) null);
            }
            boolean z = !TextUtils.isEmpty(text);
            if (z) {
                if (this.d == null) {
                    AppCompatTextView appCompatTextView = new AppCompatTextView(getContext(), (AttributeSet) null, cv.a.actionBarTabTextStyle);
                    appCompatTextView.setEllipsize(TextUtils.TruncateAt.END);
                    LinearLayoutCompat.LayoutParams layoutParams2 = new LinearLayoutCompat.LayoutParams(-2, -2);
                    layoutParams2.h = 16;
                    appCompatTextView.setLayoutParams(layoutParams2);
                    addView(appCompatTextView);
                    this.d = appCompatTextView;
                }
                this.d.setText(text);
                this.d.setVisibility(0);
            } else if (this.d != null) {
                this.d.setVisibility(8);
                this.d.setText((CharSequence) null);
            }
            if (this.e != null) {
                this.e.setContentDescription(tab.getContentDescription());
            }
            if (z || TextUtils.isEmpty(tab.getContentDescription())) {
                setOnLongClickListener((View.OnLongClickListener) null);
                setLongClickable(false);
                return;
            }
            setOnLongClickListener(this);
        }

        public final ActionBar.Tab getTab() {
            return this.a;
        }

        public final void onInitializeAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
            super.onInitializeAccessibilityEvent(accessibilityEvent);
            accessibilityEvent.setClassName(ActionBar.Tab.class.getName());
        }

        public final void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
            super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
            if (Build.VERSION.SDK_INT >= 14) {
                accessibilityNodeInfo.setClassName(ActionBar.Tab.class.getName());
            }
        }

        public final boolean onLongClick(View view) {
            int[] iArr = new int[2];
            getLocationOnScreen(iArr);
            Context context = getContext();
            int width = getWidth();
            int height = getHeight();
            int i = context.getResources().getDisplayMetrics().widthPixels;
            Toast makeText = Toast.makeText(context, this.a.getContentDescription(), 0);
            makeText.setGravity(49, (iArr[0] + (width / 2)) - (i / 2), height);
            makeText.show();
            return true;
        }

        public final void onMeasure(int i, int i2) {
            super.onMeasure(i, i2);
            if (ScrollingTabContainerView.this.e > 0 && getMeasuredWidth() > ScrollingTabContainerView.this.e) {
                super.onMeasure(View.MeasureSpec.makeMeasureSpec(ScrollingTabContainerView.this.e, 1073741824), i2);
            }
        }

        public final void setSelected(boolean z) {
            boolean z2 = isSelected() != z;
            super.setSelected(z);
            if (z2 && z) {
                sendAccessibilityEvent(4);
            }
        }
    }

    public class a extends BaseAdapter {
        private a() {
        }

        /* synthetic */ a(ScrollingTabContainerView scrollingTabContainerView, byte b) {
            this();
        }

        public final int getCount() {
            return ScrollingTabContainerView.this.b.getChildCount();
        }

        public final Object getItem(int i) {
            return ((TabView) ScrollingTabContainerView.this.b.getChildAt(i)).a;
        }

        public final long getItemId(int i) {
            return (long) i;
        }

        public final View getView(int i, View view, ViewGroup viewGroup) {
            if (view == null) {
                return ScrollingTabContainerView.this.a((ActionBar.Tab) getItem(i), true);
            }
            TabView tabView = (TabView) view;
            tabView.a = (ActionBar.Tab) getItem(i);
            tabView.a();
            return view;
        }
    }

    class b implements View.OnClickListener {
        private b() {
        }

        /* synthetic */ b(ScrollingTabContainerView scrollingTabContainerView, byte b) {
            this();
        }

        public final void onClick(View view) {
            ((TabView) view).a.select();
            int childCount = ScrollingTabContainerView.this.b.getChildCount();
            for (int i = 0; i < childCount; i++) {
                View childAt = ScrollingTabContainerView.this.b.getChildAt(i);
                childAt.setSelected(childAt == view);
            }
        }
    }

    public class c implements bt {
        private boolean b = false;
        private int c;

        protected c() {
        }

        public final void onAnimationCancel(View view) {
            this.b = true;
        }

        public final void onAnimationEnd(View view) {
            if (!this.b) {
                ScrollingTabContainerView.this.g = null;
                ScrollingTabContainerView.this.setVisibility(this.c);
            }
        }

        public final void onAnimationStart(View view) {
            ScrollingTabContainerView.this.setVisibility(0);
            this.b = false;
        }
    }

    public ScrollingTabContainerView(Context context) {
        super(context);
        setHorizontalScrollBarEnabled(false);
        dg a2 = dg.a(context);
        setContentHeight(a2.b());
        this.f = a2.c();
        LinearLayoutCompat linearLayoutCompat = new LinearLayoutCompat(getContext(), (AttributeSet) null, cv.a.actionBarTabBarStyle);
        linearLayoutCompat.setMeasureWithLargestChildEnabled(true);
        linearLayoutCompat.setGravity(17);
        linearLayoutCompat.setLayoutParams(new LinearLayoutCompat.LayoutParams(-2, -1));
        this.b = linearLayoutCompat;
        addView(this.b, new ViewGroup.LayoutParams(-2, -1));
    }

    private boolean a() {
        return this.c != null && this.c.getParent() == this;
    }

    private boolean b() {
        if (a()) {
            removeView(this.c);
            addView(this.b, new ViewGroup.LayoutParams(-2, -1));
            setTabSelected(this.c.getSelectedItemPosition());
        }
        return false;
    }

    public final TabView a(ActionBar.Tab tab, boolean z) {
        TabView tabView = new TabView(getContext(), tab, z);
        if (z) {
            tabView.setBackgroundDrawable((Drawable) null);
            tabView.setLayoutParams(new AbsListView.LayoutParams(-1, this.j));
        } else {
            tabView.setFocusable(true);
            if (this.i == null) {
                this.i = new b(this, (byte) 0);
            }
            tabView.setOnClickListener(this.i);
        }
        return tabView;
    }

    public final void a(int i2) {
        final View childAt = this.b.getChildAt(i2);
        if (this.a != null) {
            removeCallbacks(this.a);
        }
        this.a = new Runnable() {
            public final void run() {
                ScrollingTabContainerView.this.smoothScrollTo(childAt.getLeft() - ((ScrollingTabContainerView.this.getWidth() - childAt.getWidth()) / 2), 0);
                ScrollingTabContainerView.this.a = null;
            }
        };
        post(this.a);
    }

    public final void a(View view) {
        ((TabView) view).a.select();
    }

    public final void b(int i2) {
        ((TabView) this.b.getChildAt(i2)).a();
        if (this.c != null) {
            ((a) this.c.a).notifyDataSetChanged();
        }
        if (this.d) {
            requestLayout();
        }
    }

    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        if (this.a != null) {
            post(this.a);
        }
    }

    /* access modifiers changed from: protected */
    public void onConfigurationChanged(Configuration configuration) {
        if (Build.VERSION.SDK_INT >= 8) {
            super.onConfigurationChanged(configuration);
        }
        dg a2 = dg.a(getContext());
        setContentHeight(a2.b());
        this.f = a2.c();
    }

    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        if (this.a != null) {
            removeCallbacks(this.a);
        }
    }

    public void onMeasure(int i2, int i3) {
        boolean z = true;
        int mode = View.MeasureSpec.getMode(i2);
        boolean z2 = mode == 1073741824;
        setFillViewport(z2);
        int childCount = this.b.getChildCount();
        if (childCount <= 1 || !(mode == 1073741824 || mode == Integer.MIN_VALUE)) {
            this.e = -1;
        } else {
            if (childCount > 2) {
                this.e = (int) (((float) View.MeasureSpec.getSize(i2)) * 0.4f);
            } else {
                this.e = View.MeasureSpec.getSize(i2) / 2;
            }
            this.e = Math.min(this.e, this.f);
        }
        int makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(this.j, 1073741824);
        if (z2 || !this.d) {
            z = false;
        }
        if (z) {
            this.b.measure(0, makeMeasureSpec);
            if (this.b.getMeasuredWidth() <= View.MeasureSpec.getSize(i2)) {
                b();
            } else if (!a()) {
                if (this.c == null) {
                    SpinnerCompat spinnerCompat = new SpinnerCompat(getContext(), cv.a.actionDropDownStyle);
                    spinnerCompat.setLayoutParams(new LinearLayoutCompat.LayoutParams(-2, -1));
                    spinnerCompat.setOnItemClickListenerInt(this);
                    this.c = spinnerCompat;
                }
                removeView(this.b);
                addView(this.c, new ViewGroup.LayoutParams(-2, -1));
                if (this.c.a == null) {
                    this.c.setAdapter((SpinnerAdapter) new a(this, (byte) 0));
                }
                if (this.a != null) {
                    removeCallbacks(this.a);
                    this.a = null;
                }
                this.c.setSelection(this.k);
            }
        } else {
            b();
        }
        int measuredWidth = getMeasuredWidth();
        super.onMeasure(i2, makeMeasureSpec);
        int measuredWidth2 = getMeasuredWidth();
        if (z2 && measuredWidth != measuredWidth2) {
            setTabSelected(this.k);
        }
    }

    public void setAllowCollapse(boolean z) {
        this.d = z;
    }

    public void setContentHeight(int i2) {
        this.j = i2;
        requestLayout();
    }

    public void setTabSelected(int i2) {
        this.k = i2;
        int childCount = this.b.getChildCount();
        int i3 = 0;
        while (i3 < childCount) {
            View childAt = this.b.getChildAt(i3);
            boolean z = i3 == i2;
            childAt.setSelected(z);
            if (z) {
                a(i2);
            }
            i3++;
        }
        if (this.c != null && i2 >= 0) {
            this.c.setSelection(i2);
        }
    }
}
