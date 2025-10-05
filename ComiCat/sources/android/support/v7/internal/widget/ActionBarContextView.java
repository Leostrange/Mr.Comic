package android.support.v7.internal.widget;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.support.v7.widget.ActionMenuPresenter;
import android.support.v7.widget.ActionMenuView;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityEvent;
import android.view.animation.DecelerateInterpolator;
import android.view.animation.Interpolator;
import android.widget.LinearLayout;
import android.widget.TextView;
import defpackage.cv;

public class ActionBarContextView extends ee implements bt {
    public View j;
    public boolean k;
    public dl l;
    public int m;
    private CharSequence n;
    private CharSequence o;
    private View p;
    private LinearLayout q;
    private TextView r;
    private TextView s;
    private int t;
    private int u;
    private Drawable v;
    private int w;
    private boolean x;

    public ActionBarContextView(Context context) {
        this(context, (AttributeSet) null);
    }

    public ActionBarContextView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, cv.a.actionModeStyle);
    }

    public ActionBarContextView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        es a = es.a(context, attributeSet, cv.k.ActionMode, i);
        setBackgroundDrawable(a.a(cv.k.ActionMode_background));
        this.t = a.e(cv.k.ActionMode_titleTextStyle, 0);
        this.u = a.e(cv.k.ActionMode_subtitleTextStyle, 0);
        this.h = a.d(cv.k.ActionMode_height, 0);
        this.v = a.a(cv.k.ActionMode_backgroundSplit);
        this.w = a.e(cv.k.ActionMode_closeItemLayout, cv.h.abc_action_mode_close_item_material);
        a.a.recycle();
    }

    private void e() {
        int i = 8;
        boolean z = true;
        if (this.q == null) {
            LayoutInflater.from(getContext()).inflate(cv.h.abc_action_bar_title_item, this);
            this.q = (LinearLayout) getChildAt(getChildCount() - 1);
            this.r = (TextView) this.q.findViewById(cv.f.action_bar_title);
            this.s = (TextView) this.q.findViewById(cv.f.action_bar_subtitle);
            if (this.t != 0) {
                this.r.setTextAppearance(getContext(), this.t);
            }
            if (this.u != 0) {
                this.s.setTextAppearance(getContext(), this.u);
            }
        }
        this.r.setText(this.n);
        this.s.setText(this.o);
        boolean z2 = !TextUtils.isEmpty(this.n);
        if (TextUtils.isEmpty(this.o)) {
            z = false;
        }
        this.s.setVisibility(z ? 0 : 8);
        LinearLayout linearLayout = this.q;
        if (z2 || z) {
            i = 0;
        }
        linearLayout.setVisibility(i);
        if (this.q.getParent() == null) {
            addView(this.q);
        }
    }

    public final /* bridge */ /* synthetic */ void a(int i) {
        super.a(i);
    }

    public final void a(final ew ewVar) {
        if (this.j == null) {
            this.j = LayoutInflater.from(getContext()).inflate(this.w, this, false);
            addView(this.j);
        } else if (this.j.getParent() == null) {
            addView(this.j);
        }
        this.j.findViewById(cv.f.action_mode_close_button).setOnClickListener(new View.OnClickListener() {
            public final void onClick(View view) {
                ewVar.c();
            }
        });
        ds dsVar = (ds) ewVar.b();
        if (this.d != null) {
            this.d.f();
        }
        this.d = new ActionMenuPresenter(getContext());
        this.d.b();
        ViewGroup.LayoutParams layoutParams = new ViewGroup.LayoutParams(-2, -1);
        if (!this.f) {
            dsVar.a((dy) this.d, this.b);
            this.c = (ActionMenuView) this.d.a((ViewGroup) this);
            this.c.setBackgroundDrawable((Drawable) null);
            addView(this.c, layoutParams);
        } else {
            this.d.a(getContext().getResources().getDisplayMetrics().widthPixels);
            this.d.c();
            layoutParams.width = -1;
            layoutParams.height = this.h;
            dsVar.a((dy) this.d, this.b);
            this.c = (ActionMenuView) this.d.a((ViewGroup) this);
            this.c.setBackgroundDrawable(this.v);
            this.e.addView(this.c, layoutParams);
        }
        this.x = true;
    }

    public final boolean a() {
        if (this.d != null) {
            return this.d.d();
        }
        return false;
    }

    public final void b() {
        dl dlVar = this.l;
        if (dlVar != null) {
            this.l = null;
            dlVar.b();
        }
    }

    public final void c() {
        b();
        removeAllViews();
        if (this.e != null) {
            this.e.removeView(this.c);
        }
        this.p = null;
        this.c = null;
        this.x = false;
    }

    public final dl d() {
        bp b = bh.s(this.j).b((float) ((-this.j.getWidth()) - ((ViewGroup.MarginLayoutParams) this.j.getLayoutParams()).leftMargin));
        b.a(200);
        b.a((bt) this);
        b.a((Interpolator) new DecelerateInterpolator());
        dl dlVar = new dl();
        dlVar.a(b);
        if (this.c != null) {
            this.c.getChildCount();
        }
        return dlVar;
    }

    /* access modifiers changed from: protected */
    public ViewGroup.LayoutParams generateDefaultLayoutParams() {
        return new ViewGroup.MarginLayoutParams(-1, -2);
    }

    public ViewGroup.LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        return new ViewGroup.MarginLayoutParams(getContext(), attributeSet);
    }

    public /* bridge */ /* synthetic */ int getAnimatedVisibility() {
        return super.getAnimatedVisibility();
    }

    public /* bridge */ /* synthetic */ int getContentHeight() {
        return super.getContentHeight();
    }

    public CharSequence getSubtitle() {
        return this.o;
    }

    public CharSequence getTitle() {
        return this.n;
    }

    public void onAnimationCancel(View view) {
    }

    public void onAnimationEnd(View view) {
        if (this.m == 2) {
            c();
        }
        this.m = 0;
    }

    public void onAnimationStart(View view) {
    }

    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        if (this.d != null) {
            this.d.e();
            this.d.g();
        }
    }

    public void onInitializeAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        if (Build.VERSION.SDK_INT < 14) {
            return;
        }
        if (accessibilityEvent.getEventType() == 32) {
            accessibilityEvent.setSource(this);
            accessibilityEvent.setClassName(getClass().getName());
            accessibilityEvent.setPackageName(getContext().getPackageName());
            accessibilityEvent.setContentDescription(this.n);
            return;
        }
        super.onInitializeAccessibilityEvent(accessibilityEvent);
    }

    /* access modifiers changed from: protected */
    public void onLayout(boolean z, int i, int i2, int i3, int i4) {
        int childCount;
        boolean a = eu.a(this);
        int paddingRight = a ? (i3 - i) - getPaddingRight() : getPaddingLeft();
        int paddingTop = getPaddingTop();
        int paddingTop2 = ((i4 - i2) - getPaddingTop()) - getPaddingBottom();
        if (!(this.j == null || this.j.getVisibility() == 8)) {
            ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) this.j.getLayoutParams();
            int i5 = a ? marginLayoutParams.rightMargin : marginLayoutParams.leftMargin;
            int i6 = a ? marginLayoutParams.leftMargin : marginLayoutParams.rightMargin;
            int a2 = a(paddingRight, i5, a);
            paddingRight = a(a2 + a(this.j, a2, paddingTop, paddingTop2, a), i6, a);
            if (this.x) {
                this.m = 1;
                bh.a(this.j, (float) ((-this.j.getWidth()) - ((ViewGroup.MarginLayoutParams) this.j.getLayoutParams()).leftMargin));
                bp b = bh.s(this.j).b(0.0f);
                b.a(200);
                b.a((bt) this);
                b.a((Interpolator) new DecelerateInterpolator());
                dl dlVar = new dl();
                dlVar.a(b);
                if (this.c != null && (childCount = this.c.getChildCount()) > 0) {
                    for (int i7 = childCount - 1; i7 >= 0; i7--) {
                        View childAt = this.c.getChildAt(i7);
                        bh.e(childAt, 0.0f);
                        bp s2 = bh.s(childAt);
                        View view = (View) s2.a.get();
                        if (view != null) {
                            bp.b.a(s2, view);
                        }
                        s2.a(300);
                        dlVar.a(s2);
                    }
                }
                this.l = dlVar;
                this.l.a();
                this.x = false;
            }
        }
        if (!(this.q == null || this.p != null || this.q.getVisibility() == 8)) {
            paddingRight += a(this.q, paddingRight, paddingTop, paddingTop2, a);
        }
        if (this.p != null) {
            a(this.p, paddingRight, paddingTop, paddingTop2, a);
        }
        int paddingLeft = a ? getPaddingLeft() : (i3 - i) - getPaddingRight();
        if (this.c != null) {
            a(this.c, paddingLeft, paddingTop, paddingTop2, !a);
        }
    }

    /* access modifiers changed from: protected */
    public void onMeasure(int i, int i2) {
        int i3 = 1073741824;
        int i4 = 0;
        if (View.MeasureSpec.getMode(i) != 1073741824) {
            throw new IllegalStateException(getClass().getSimpleName() + " can only be used with android:layout_width=\"match_parent\" (or fill_parent)");
        } else if (View.MeasureSpec.getMode(i2) == 0) {
            throw new IllegalStateException(getClass().getSimpleName() + " can only be used with android:layout_height=\"wrap_content\"");
        } else {
            int size = View.MeasureSpec.getSize(i);
            int size2 = this.h > 0 ? this.h : View.MeasureSpec.getSize(i2);
            int paddingTop = getPaddingTop() + getPaddingBottom();
            int paddingLeft = (size - getPaddingLeft()) - getPaddingRight();
            int i5 = size2 - paddingTop;
            int makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(i5, Integer.MIN_VALUE);
            if (this.j != null) {
                int a = a(this.j, paddingLeft, makeMeasureSpec);
                ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) this.j.getLayoutParams();
                paddingLeft = a - (marginLayoutParams.rightMargin + marginLayoutParams.leftMargin);
            }
            if (this.c != null && this.c.getParent() == this) {
                paddingLeft = a((View) this.c, paddingLeft, makeMeasureSpec);
            }
            if (this.q != null && this.p == null) {
                if (this.k) {
                    this.q.measure(View.MeasureSpec.makeMeasureSpec(0, 0), makeMeasureSpec);
                    int measuredWidth = this.q.getMeasuredWidth();
                    boolean z = measuredWidth <= paddingLeft;
                    if (z) {
                        paddingLeft -= measuredWidth;
                    }
                    this.q.setVisibility(z ? 0 : 8);
                } else {
                    paddingLeft = a((View) this.q, paddingLeft, makeMeasureSpec);
                }
            }
            if (this.p != null) {
                ViewGroup.LayoutParams layoutParams = this.p.getLayoutParams();
                int i6 = layoutParams.width != -2 ? 1073741824 : Integer.MIN_VALUE;
                if (layoutParams.width >= 0) {
                    paddingLeft = Math.min(layoutParams.width, paddingLeft);
                }
                if (layoutParams.height == -2) {
                    i3 = Integer.MIN_VALUE;
                }
                this.p.measure(View.MeasureSpec.makeMeasureSpec(paddingLeft, i6), View.MeasureSpec.makeMeasureSpec(layoutParams.height >= 0 ? Math.min(layoutParams.height, i5) : i5, i3));
            }
            if (this.h <= 0) {
                int childCount = getChildCount();
                int i7 = 0;
                while (i4 < childCount) {
                    int measuredHeight = getChildAt(i4).getMeasuredHeight() + paddingTop;
                    if (measuredHeight <= i7) {
                        measuredHeight = i7;
                    }
                    i4++;
                    i7 = measuredHeight;
                }
                setMeasuredDimension(size, i7);
                return;
            }
            setMeasuredDimension(size, size2);
        }
    }

    public void setContentHeight(int i) {
        this.h = i;
    }

    public void setCustomView(View view) {
        if (this.p != null) {
            removeView(this.p);
        }
        this.p = view;
        if (this.q != null) {
            removeView(this.q);
            this.q = null;
        }
        if (view != null) {
            addView(view);
        }
        requestLayout();
    }

    public void setSplitToolbar(boolean z) {
        if (this.f != z) {
            if (this.d != null) {
                ViewGroup.LayoutParams layoutParams = new ViewGroup.LayoutParams(-2, -1);
                if (!z) {
                    this.c = (ActionMenuView) this.d.a((ViewGroup) this);
                    this.c.setBackgroundDrawable((Drawable) null);
                    ViewGroup viewGroup = (ViewGroup) this.c.getParent();
                    if (viewGroup != null) {
                        viewGroup.removeView(this.c);
                    }
                    addView(this.c, layoutParams);
                } else {
                    this.d.a(getContext().getResources().getDisplayMetrics().widthPixels);
                    this.d.c();
                    layoutParams.width = -1;
                    layoutParams.height = this.h;
                    this.c = (ActionMenuView) this.d.a((ViewGroup) this);
                    this.c.setBackgroundDrawable(this.v);
                    ViewGroup viewGroup2 = (ViewGroup) this.c.getParent();
                    if (viewGroup2 != null) {
                        viewGroup2.removeView(this.c);
                    }
                    this.e.addView(this.c, layoutParams);
                }
            }
            super.setSplitToolbar(z);
        }
    }

    public /* bridge */ /* synthetic */ void setSplitView(ViewGroup viewGroup) {
        super.setSplitView(viewGroup);
    }

    public /* bridge */ /* synthetic */ void setSplitWhenNarrow(boolean z) {
        super.setSplitWhenNarrow(z);
    }

    public void setSubtitle(CharSequence charSequence) {
        this.o = charSequence;
        e();
    }

    public void setTitle(CharSequence charSequence) {
        this.n = charSequence;
        e();
    }

    public void setTitleOptional(boolean z) {
        if (z != this.k) {
            requestLayout();
        }
        this.k = z;
    }

    public boolean shouldDelayChildPressedState() {
        return false;
    }
}
