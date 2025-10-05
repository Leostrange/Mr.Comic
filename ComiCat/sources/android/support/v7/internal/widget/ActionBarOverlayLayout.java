package android.support.v7.internal.widget;

import android.content.Context;
import android.content.res.Configuration;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.support.v4.app.NotificationCompat;
import android.support.v7.widget.Toolbar;
import android.util.AttributeSet;
import android.view.Menu;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.view.animation.Interpolator;
import defpackage.cv;
import defpackage.dy;

public class ActionBarOverlayLayout extends ViewGroup implements ba, ei {
    static final int[] c = {cv.a.actionBarSize, 16842841};
    /* access modifiers changed from: private */
    public final bt A;
    /* access modifiers changed from: private */
    public final bt B;
    private final Runnable C;
    private final Runnable D;
    private final bb E;
    public boolean a;
    public boolean b;
    private int d;
    private int e;
    private ContentFrameLayout f;
    /* access modifiers changed from: private */
    public ActionBarContainer g;
    /* access modifiers changed from: private */
    public ActionBarContainer h;
    private ej i;
    private Drawable j;
    private boolean k;
    private boolean l;
    /* access modifiers changed from: private */
    public boolean m;
    private int n;
    private int o;
    private final Rect p;
    private final Rect q;
    private final Rect r;
    private final Rect s;
    private final Rect t;
    private final Rect u;
    private a v;
    private final int w;
    private cs x;
    /* access modifiers changed from: private */
    public bp y;
    /* access modifiers changed from: private */
    public bp z;

    public static class LayoutParams extends ViewGroup.MarginLayoutParams {
        public LayoutParams() {
            super(-1, -1);
        }

        public LayoutParams(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
        }

        public LayoutParams(ViewGroup.LayoutParams layoutParams) {
            super(layoutParams);
        }
    }

    public interface a {
        void a();

        void a(int i);

        void a(boolean z);

        void b();

        void c();
    }

    public ActionBarOverlayLayout(Context context) {
        this(context, (AttributeSet) null);
    }

    public ActionBarOverlayLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.e = 0;
        this.p = new Rect();
        this.q = new Rect();
        this.r = new Rect();
        this.s = new Rect();
        this.t = new Rect();
        this.u = new Rect();
        this.w = 600;
        this.A = new bu() {
            public final void onAnimationCancel(View view) {
                bp unused = ActionBarOverlayLayout.this.y = null;
                boolean unused2 = ActionBarOverlayLayout.this.m = false;
            }

            public final void onAnimationEnd(View view) {
                bp unused = ActionBarOverlayLayout.this.y = null;
                boolean unused2 = ActionBarOverlayLayout.this.m = false;
            }
        };
        this.B = new bu() {
            public final void onAnimationCancel(View view) {
                bp unused = ActionBarOverlayLayout.this.z = null;
                boolean unused2 = ActionBarOverlayLayout.this.m = false;
            }

            public final void onAnimationEnd(View view) {
                bp unused = ActionBarOverlayLayout.this.z = null;
                boolean unused2 = ActionBarOverlayLayout.this.m = false;
            }
        };
        this.C = new Runnable() {
            public final void run() {
                ActionBarOverlayLayout.this.h();
                bp unused = ActionBarOverlayLayout.this.y = bh.s(ActionBarOverlayLayout.this.h).c(0.0f).a(ActionBarOverlayLayout.this.A);
                if (ActionBarOverlayLayout.this.g != null && ActionBarOverlayLayout.this.g.getVisibility() != 8) {
                    bp unused2 = ActionBarOverlayLayout.this.z = bh.s(ActionBarOverlayLayout.this.g).c(0.0f).a(ActionBarOverlayLayout.this.B);
                }
            }
        };
        this.D = new Runnable() {
            public final void run() {
                ActionBarOverlayLayout.this.h();
                bp unused = ActionBarOverlayLayout.this.y = bh.s(ActionBarOverlayLayout.this.h).c((float) (-ActionBarOverlayLayout.this.h.getHeight())).a(ActionBarOverlayLayout.this.A);
                if (ActionBarOverlayLayout.this.g != null && ActionBarOverlayLayout.this.g.getVisibility() != 8) {
                    bp unused2 = ActionBarOverlayLayout.this.z = bh.s(ActionBarOverlayLayout.this.g).c((float) ActionBarOverlayLayout.this.g.getHeight()).a(ActionBarOverlayLayout.this.B);
                }
            }
        };
        a(context);
        this.E = new bb(this);
    }

    private void a(Context context) {
        boolean z2 = true;
        TypedArray obtainStyledAttributes = getContext().getTheme().obtainStyledAttributes(c);
        this.d = obtainStyledAttributes.getDimensionPixelSize(0, 0);
        this.j = obtainStyledAttributes.getDrawable(1);
        setWillNotDraw(this.j == null);
        obtainStyledAttributes.recycle();
        if (context.getApplicationInfo().targetSdkVersion >= 19) {
            z2 = false;
        }
        this.k = z2;
        this.x = cs.a(context, (Interpolator) null);
    }

    private static boolean a(View view, Rect rect, boolean z2, boolean z3) {
        boolean z4 = false;
        LayoutParams layoutParams = (LayoutParams) view.getLayoutParams();
        if (layoutParams.leftMargin != rect.left) {
            layoutParams.leftMargin = rect.left;
            z4 = true;
        }
        if (z2 && layoutParams.topMargin != rect.top) {
            layoutParams.topMargin = rect.top;
            z4 = true;
        }
        if (layoutParams.rightMargin != rect.right) {
            layoutParams.rightMargin = rect.right;
            z4 = true;
        }
        if (!z3 || layoutParams.bottomMargin == rect.bottom) {
            return z4;
        }
        layoutParams.bottomMargin = rect.bottom;
        return true;
    }

    private void g() {
        ej wrapper;
        if (this.f == null) {
            this.f = (ContentFrameLayout) findViewById(cv.f.action_bar_activity_content);
            this.h = (ActionBarContainer) findViewById(cv.f.action_bar_container);
            View findViewById = findViewById(cv.f.action_bar);
            if (findViewById instanceof ej) {
                wrapper = (ej) findViewById;
            } else if (findViewById instanceof Toolbar) {
                wrapper = ((Toolbar) findViewById).getWrapper();
            } else {
                throw new IllegalStateException("Can't make a decor toolbar out of " + findViewById.getClass().getSimpleName());
            }
            this.i = wrapper;
            this.g = (ActionBarContainer) findViewById(cv.f.split_action_bar);
        }
    }

    /* access modifiers changed from: private */
    public void h() {
        removeCallbacks(this.C);
        removeCallbacks(this.D);
        if (this.y != null) {
            this.y.a();
        }
        if (this.z != null) {
            this.z.a();
        }
    }

    public final void a(int i2) {
        g();
        switch (i2) {
            case 2:
                this.i.g();
                return;
            case 5:
                this.i.h();
                return;
            case 9:
                setOverlayMode(true);
                return;
            default:
                return;
        }
    }

    public final boolean a() {
        g();
        return this.i.i();
    }

    public final boolean b() {
        g();
        return this.i.j();
    }

    public final boolean c() {
        g();
        return this.i.k();
    }

    /* access modifiers changed from: protected */
    public boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return layoutParams instanceof LayoutParams;
    }

    public final boolean d() {
        g();
        return this.i.l();
    }

    public void draw(Canvas canvas) {
        super.draw(canvas);
        if (this.j != null && !this.k) {
            int bottom = this.h.getVisibility() == 0 ? (int) (((float) this.h.getBottom()) + bh.p(this.h) + 0.5f) : 0;
            this.j.setBounds(0, bottom, getWidth(), this.j.getIntrinsicHeight() + bottom);
            this.j.draw(canvas);
        }
    }

    public final boolean e() {
        g();
        return this.i.m();
    }

    public final void f() {
        g();
        this.i.o();
    }

    /* access modifiers changed from: protected */
    public boolean fitSystemWindows(Rect rect) {
        g();
        bh.v(this);
        boolean a2 = a(this.h, rect, true, false);
        if (this.g != null) {
            a2 |= a(this.g, rect, false, true);
        }
        this.s.set(rect);
        eu.a(this, this.s, this.p);
        if (!this.q.equals(this.p)) {
            this.q.set(this.p);
            a2 = true;
        }
        if (a2) {
            requestLayout();
        }
        return true;
    }

    /* access modifiers changed from: protected */
    public /* synthetic */ ViewGroup.LayoutParams generateDefaultLayoutParams() {
        return new LayoutParams();
    }

    public /* synthetic */ ViewGroup.LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        return new LayoutParams(getContext(), attributeSet);
    }

    /* access modifiers changed from: protected */
    public ViewGroup.LayoutParams generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return new LayoutParams(layoutParams);
    }

    public int getActionBarHideOffset() {
        if (this.h != null) {
            return -((int) bh.p(this.h));
        }
        return 0;
    }

    public int getNestedScrollAxes() {
        return this.E.a;
    }

    public CharSequence getTitle() {
        g();
        return this.i.e();
    }

    /* access modifiers changed from: protected */
    public void onConfigurationChanged(Configuration configuration) {
        if (Build.VERSION.SDK_INT >= 8) {
            super.onConfigurationChanged(configuration);
        }
        a(getContext());
        bh.w(this);
    }

    /* access modifiers changed from: protected */
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        h();
    }

    /* access modifiers changed from: protected */
    public void onLayout(boolean z2, int i2, int i3, int i4, int i5) {
        int childCount = getChildCount();
        int paddingLeft = getPaddingLeft();
        getPaddingRight();
        int paddingTop = getPaddingTop();
        int paddingBottom = (i5 - i3) - getPaddingBottom();
        for (int i6 = 0; i6 < childCount; i6++) {
            View childAt = getChildAt(i6);
            if (childAt.getVisibility() != 8) {
                LayoutParams layoutParams = (LayoutParams) childAt.getLayoutParams();
                int measuredWidth = childAt.getMeasuredWidth();
                int measuredHeight = childAt.getMeasuredHeight();
                int i7 = layoutParams.leftMargin + paddingLeft;
                int i8 = childAt == this.g ? (paddingBottom - measuredHeight) - layoutParams.bottomMargin : layoutParams.topMargin + paddingTop;
                childAt.layout(i7, i8, measuredWidth + i7, measuredHeight + i8);
            }
        }
    }

    /* access modifiers changed from: protected */
    public void onMeasure(int i2, int i3) {
        int measuredHeight;
        g();
        measureChildWithMargins(this.h, i2, 0, i3, 0);
        LayoutParams layoutParams = (LayoutParams) this.h.getLayoutParams();
        int max = Math.max(0, this.h.getMeasuredWidth() + layoutParams.leftMargin + layoutParams.rightMargin);
        int max2 = Math.max(0, layoutParams.bottomMargin + this.h.getMeasuredHeight() + layoutParams.topMargin);
        int a2 = eu.a(0, bh.l(this.h));
        if (this.g != null) {
            measureChildWithMargins(this.g, i2, 0, i3, 0);
            LayoutParams layoutParams2 = (LayoutParams) this.g.getLayoutParams();
            int max3 = Math.max(max, this.g.getMeasuredWidth() + layoutParams2.leftMargin + layoutParams2.rightMargin);
            int max4 = Math.max(max2, layoutParams2.bottomMargin + this.g.getMeasuredHeight() + layoutParams2.topMargin);
            a2 = eu.a(a2, bh.l(this.g));
            max = max3;
            max2 = max4;
        }
        boolean z2 = (bh.v(this) & NotificationCompat.FLAG_LOCAL_ONLY) != 0;
        if (z2) {
            measuredHeight = this.d;
            if (this.l && this.h.getTabContainer() != null) {
                measuredHeight += this.d;
            }
        } else {
            measuredHeight = this.h.getVisibility() != 8 ? this.h.getMeasuredHeight() : 0;
        }
        this.r.set(this.p);
        this.t.set(this.s);
        if (this.a || z2) {
            Rect rect = this.t;
            rect.top = measuredHeight + rect.top;
            this.t.bottom += 0;
        } else {
            Rect rect2 = this.r;
            rect2.top = measuredHeight + rect2.top;
            this.r.bottom += 0;
        }
        a(this.f, this.r, true, true);
        if (!this.u.equals(this.t)) {
            this.u.set(this.t);
            this.f.a(this.t);
        }
        measureChildWithMargins(this.f, i2, 0, i3, 0);
        LayoutParams layoutParams3 = (LayoutParams) this.f.getLayoutParams();
        int max5 = Math.max(max, this.f.getMeasuredWidth() + layoutParams3.leftMargin + layoutParams3.rightMargin);
        int max6 = Math.max(max2, layoutParams3.bottomMargin + this.f.getMeasuredHeight() + layoutParams3.topMargin);
        int a3 = eu.a(a2, bh.l(this.f));
        setMeasuredDimension(bh.a(Math.max(max5 + getPaddingLeft() + getPaddingRight(), getSuggestedMinimumWidth()), i2, a3), bh.a(Math.max(max6 + getPaddingTop() + getPaddingBottom(), getSuggestedMinimumHeight()), i3, a3 << 16));
    }

    public boolean onNestedFling(View view, float f2, float f3, boolean z2) {
        boolean z3 = false;
        if (!this.b || !z2) {
            return false;
        }
        this.x.a(0, 0, (int) f3, 0, 0, Integer.MIN_VALUE, Integer.MAX_VALUE);
        if (this.x.e() > this.h.getHeight()) {
            z3 = true;
        }
        if (z3) {
            h();
            this.D.run();
        } else {
            h();
            this.C.run();
        }
        this.m = true;
        return true;
    }

    public boolean onNestedPreFling(View view, float f2, float f3) {
        return false;
    }

    public void onNestedPreScroll(View view, int i2, int i3, int[] iArr) {
    }

    public void onNestedScroll(View view, int i2, int i3, int i4, int i5) {
        this.n += i3;
        setActionBarHideOffset(this.n);
    }

    public void onNestedScrollAccepted(View view, View view2, int i2) {
        this.E.a = i2;
        this.n = getActionBarHideOffset();
        h();
        if (this.v != null) {
            this.v.c();
        }
    }

    public boolean onStartNestedScroll(View view, View view2, int i2) {
        if ((i2 & 2) == 0 || this.h.getVisibility() != 0) {
            return false;
        }
        return this.b;
    }

    public void onStopNestedScroll(View view) {
        if (this.b && !this.m) {
            if (this.n <= this.h.getHeight()) {
                h();
                postDelayed(this.C, 600);
                return;
            }
            h();
            postDelayed(this.D, 600);
        }
    }

    public void onWindowSystemUiVisibilityChanged(int i2) {
        boolean z2 = true;
        if (Build.VERSION.SDK_INT >= 16) {
            super.onWindowSystemUiVisibilityChanged(i2);
        }
        g();
        int i3 = this.o ^ i2;
        this.o = i2;
        boolean z3 = (i2 & 4) == 0;
        boolean z4 = (i2 & NotificationCompat.FLAG_LOCAL_ONLY) != 0;
        if (this.v != null) {
            a aVar = this.v;
            if (z4) {
                z2 = false;
            }
            aVar.a(z2);
            if (z3 || !z4) {
                this.v.a();
            } else {
                this.v.b();
            }
        }
        if ((i3 & NotificationCompat.FLAG_LOCAL_ONLY) != 0 && this.v != null) {
            bh.w(this);
        }
    }

    /* access modifiers changed from: protected */
    public void onWindowVisibilityChanged(int i2) {
        super.onWindowVisibilityChanged(i2);
        this.e = i2;
        if (this.v != null) {
            this.v.a(i2);
        }
    }

    public void setActionBarHideOffset(int i2) {
        h();
        int height = this.h.getHeight();
        int max = Math.max(0, Math.min(i2, height));
        bh.b((View) this.h, (float) (-max));
        if (this.g != null && this.g.getVisibility() != 8) {
            bh.b((View) this.g, (float) ((int) ((((float) max) / ((float) height)) * ((float) this.g.getHeight()))));
        }
    }

    public void setActionBarVisibilityCallback(a aVar) {
        this.v = aVar;
        if (getWindowToken() != null) {
            this.v.a(this.e);
            if (this.o != 0) {
                onWindowSystemUiVisibilityChanged(this.o);
                bh.w(this);
            }
        }
    }

    public void setHasNonEmbeddedTabs(boolean z2) {
        this.l = z2;
    }

    public void setHideOnContentScrollEnabled(boolean z2) {
        if (z2 != this.b) {
            this.b = z2;
            if (!z2) {
                h();
                setActionBarHideOffset(0);
            }
        }
    }

    public void setIcon(int i2) {
        g();
        this.i.a(i2);
    }

    public void setIcon(Drawable drawable) {
        g();
        this.i.a(drawable);
    }

    public void setLogo(int i2) {
        g();
        this.i.b(i2);
    }

    public void setMenu(Menu menu, dy.a aVar) {
        g();
        this.i.a(menu, aVar);
    }

    public void setMenuPrepared() {
        g();
        this.i.n();
    }

    public void setOverlayMode(boolean z2) {
        this.a = z2;
        this.k = z2 && getContext().getApplicationInfo().targetSdkVersion < 19;
    }

    public void setShowingForActionMode(boolean z2) {
    }

    public void setUiOptions(int i2) {
    }

    public void setWindowCallback(Window.Callback callback) {
        g();
        this.i.a(callback);
    }

    public void setWindowTitle(CharSequence charSequence) {
        g();
        this.i.a(charSequence);
    }

    public boolean shouldDelayChildPressedState() {
        return false;
    }
}
