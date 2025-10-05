package defpackage;

import android.content.Context;
import android.content.res.Configuration;
import android.content.res.TypedArray;
import android.os.Build;
import android.support.v7.widget.ActionMenuPresenter;
import android.support.v7.widget.ActionMenuView;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.view.ContextThemeWrapper;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.DecelerateInterpolator;
import android.view.animation.Interpolator;
import defpackage.cv;

/* renamed from: ee  reason: default package */
/* compiled from: AbsActionBarView */
public abstract class ee extends ViewGroup {
    private static final Interpolator j = new DecelerateInterpolator();
    protected final a a;
    protected final Context b;
    protected ActionMenuView c;
    protected ActionMenuPresenter d;
    protected ViewGroup e;
    protected boolean f;
    protected boolean g;
    protected int h;
    protected bp i;

    /* renamed from: ee$a */
    /* compiled from: AbsActionBarView */
    public class a implements bt {
        int a;
        private boolean c = false;

        protected a() {
        }

        public final a a(bp bpVar, int i) {
            ee.this.i = bpVar;
            this.a = i;
            return this;
        }

        public final void onAnimationCancel(View view) {
            this.c = true;
        }

        public final void onAnimationEnd(View view) {
            if (!this.c) {
                ee.this.i = null;
                ee.this.setVisibility(this.a);
                if (ee.this.e != null && ee.this.c != null) {
                    ee.this.c.setVisibility(this.a);
                }
            }
        }

        public final void onAnimationStart(View view) {
            ee.this.setVisibility(0);
            this.c = false;
        }
    }

    ee(Context context) {
        this(context, (AttributeSet) null);
    }

    ee(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    protected ee(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        this.a = new a();
        TypedValue typedValue = new TypedValue();
        if (!context.getTheme().resolveAttribute(cv.a.actionBarPopupTheme, typedValue, true) || typedValue.resourceId == 0) {
            this.b = context;
        } else {
            this.b = new ContextThemeWrapper(context, typedValue.resourceId);
        }
    }

    protected static int a(int i2, int i3, boolean z) {
        return z ? i2 - i3 : i2 + i3;
    }

    protected static int a(View view, int i2, int i3) {
        view.measure(View.MeasureSpec.makeMeasureSpec(i2, Integer.MIN_VALUE), i3);
        return Math.max(0, (i2 - view.getMeasuredWidth()) + 0);
    }

    protected static int a(View view, int i2, int i3, int i4, boolean z) {
        int measuredWidth = view.getMeasuredWidth();
        int measuredHeight = view.getMeasuredHeight();
        int i5 = ((i4 - measuredHeight) / 2) + i3;
        if (z) {
            view.layout(i2 - measuredWidth, i5, i2, measuredHeight + i5);
        } else {
            view.layout(i2, i5, i2 + measuredWidth, measuredHeight + i5);
        }
        return z ? -measuredWidth : measuredWidth;
    }

    public void a(int i2) {
        if (this.i != null) {
            this.i.a();
        }
        if (i2 == 0) {
            if (getVisibility() != 0) {
                bh.c((View) this, 0.0f);
                if (!(this.e == null || this.c == null)) {
                    bh.c((View) this.c, 0.0f);
                }
            }
            bp a2 = bh.s(this).a(1.0f);
            a2.a(200);
            a2.a(j);
            if (this.e == null || this.c == null) {
                a2.a((bt) this.a.a(a2, i2));
                a2.b();
                return;
            }
            dl dlVar = new dl();
            bp a3 = bh.s(this.c).a(1.0f);
            a3.a(200);
            dlVar.a((bt) this.a.a(a2, i2));
            dlVar.a(a2).a(a3);
            dlVar.a();
            return;
        }
        bp a4 = bh.s(this).a(0.0f);
        a4.a(200);
        a4.a(j);
        if (this.e == null || this.c == null) {
            a4.a((bt) this.a.a(a4, i2));
            a4.b();
            return;
        }
        dl dlVar2 = new dl();
        bp a5 = bh.s(this.c).a(0.0f);
        a5.a(200);
        dlVar2.a((bt) this.a.a(a4, i2));
        dlVar2.a(a4).a(a5);
        dlVar2.a();
    }

    public boolean a() {
        if (this.d != null) {
            return this.d.d();
        }
        return false;
    }

    public int getAnimatedVisibility() {
        return this.i != null ? this.a.a : getVisibility();
    }

    public int getContentHeight() {
        return this.h;
    }

    /* access modifiers changed from: protected */
    public void onConfigurationChanged(Configuration configuration) {
        if (Build.VERSION.SDK_INT >= 8) {
            super.onConfigurationChanged(configuration);
        }
        TypedArray obtainStyledAttributes = getContext().obtainStyledAttributes((AttributeSet) null, cv.k.ActionBar, cv.a.actionBarStyle, 0);
        setContentHeight(obtainStyledAttributes.getLayoutDimension(cv.k.ActionBar_height, 0));
        obtainStyledAttributes.recycle();
        if (this.d != null) {
            this.d.a();
        }
    }

    public void setContentHeight(int i2) {
        this.h = i2;
        requestLayout();
    }

    public void setSplitToolbar(boolean z) {
        this.f = z;
    }

    public void setSplitView(ViewGroup viewGroup) {
        this.e = viewGroup;
    }

    public void setSplitWhenNarrow(boolean z) {
        this.g = z;
    }
}
