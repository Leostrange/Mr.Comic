package android.support.v7.internal.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.util.AttributeSet;
import android.view.ActionMode;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import defpackage.cv;

public class ActionBarContainer extends FrameLayout {
    public Drawable a;
    public Drawable b;
    public Drawable c;
    public boolean d;
    public boolean e;
    private boolean f;
    private View g;
    private View h;
    private View i;
    private int j;

    public ActionBarContainer(Context context) {
        this(context, (AttributeSet) null);
    }

    public ActionBarContainer(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        setBackgroundDrawable(Build.VERSION.SDK_INT >= 21 ? new eg(this) : new ef(this));
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, cv.k.ActionBar);
        this.a = obtainStyledAttributes.getDrawable(cv.k.ActionBar_background);
        this.b = obtainStyledAttributes.getDrawable(cv.k.ActionBar_backgroundStacked);
        this.j = obtainStyledAttributes.getDimensionPixelSize(cv.k.ActionBar_height, -1);
        if (getId() == cv.f.split_action_bar) {
            this.d = true;
            this.c = obtainStyledAttributes.getDrawable(cv.k.ActionBar_backgroundSplit);
        }
        obtainStyledAttributes.recycle();
        setWillNotDraw(this.d ? this.c == null : this.a == null && this.b == null);
    }

    private static boolean a(View view) {
        return view == null || view.getVisibility() == 8 || view.getMeasuredHeight() == 0;
    }

    private static int b(View view) {
        FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) view.getLayoutParams();
        return layoutParams.bottomMargin + view.getMeasuredHeight() + layoutParams.topMargin;
    }

    /* access modifiers changed from: protected */
    public void drawableStateChanged() {
        super.drawableStateChanged();
        if (this.a != null && this.a.isStateful()) {
            this.a.setState(getDrawableState());
        }
        if (this.b != null && this.b.isStateful()) {
            this.b.setState(getDrawableState());
        }
        if (this.c != null && this.c.isStateful()) {
            this.c.setState(getDrawableState());
        }
    }

    public View getTabContainer() {
        return this.g;
    }

    public void jumpDrawablesToCurrentState() {
        if (Build.VERSION.SDK_INT >= 11) {
            super.jumpDrawablesToCurrentState();
            if (this.a != null) {
                this.a.jumpToCurrentState();
            }
            if (this.b != null) {
                this.b.jumpToCurrentState();
            }
            if (this.c != null) {
                this.c.jumpToCurrentState();
            }
        }
    }

    public void onFinishInflate() {
        super.onFinishInflate();
        this.h = findViewById(cv.f.action_bar);
        this.i = findViewById(cv.f.action_context_bar);
    }

    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        return this.f || super.onInterceptTouchEvent(motionEvent);
    }

    public void onLayout(boolean z, int i2, int i3, int i4, int i5) {
        boolean z2;
        boolean z3 = true;
        super.onLayout(z, i2, i3, i4, i5);
        View view = this.g;
        boolean z4 = (view == null || view.getVisibility() == 8) ? false : true;
        if (!(view == null || view.getVisibility() == 8)) {
            int measuredHeight = getMeasuredHeight();
            FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) view.getLayoutParams();
            view.layout(i2, (measuredHeight - view.getMeasuredHeight()) - layoutParams.bottomMargin, i4, measuredHeight - layoutParams.bottomMargin);
        }
        if (!this.d) {
            if (this.a != null) {
                if (this.h.getVisibility() == 0) {
                    this.a.setBounds(this.h.getLeft(), this.h.getTop(), this.h.getRight(), this.h.getBottom());
                } else if (this.i == null || this.i.getVisibility() != 0) {
                    this.a.setBounds(0, 0, 0, 0);
                } else {
                    this.a.setBounds(this.i.getLeft(), this.i.getTop(), this.i.getRight(), this.i.getBottom());
                }
                z2 = true;
            } else {
                z2 = false;
            }
            this.e = z4;
            if (!z4 || this.b == null) {
                z3 = z2;
            } else {
                this.b.setBounds(view.getLeft(), view.getTop(), view.getRight(), view.getBottom());
            }
        } else if (this.c != null) {
            this.c.setBounds(0, 0, getMeasuredWidth(), getMeasuredHeight());
        } else {
            z3 = false;
        }
        if (z3) {
            invalidate();
        }
    }

    public void onMeasure(int i2, int i3) {
        if (this.h == null && View.MeasureSpec.getMode(i3) == Integer.MIN_VALUE && this.j >= 0) {
            i3 = View.MeasureSpec.makeMeasureSpec(Math.min(this.j, View.MeasureSpec.getSize(i3)), Integer.MIN_VALUE);
        }
        super.onMeasure(i2, i3);
        if (this.h != null) {
            int mode = View.MeasureSpec.getMode(i3);
            if (this.g != null && this.g.getVisibility() != 8 && mode != 1073741824) {
                setMeasuredDimension(getMeasuredWidth(), Math.min((!a(this.h) ? b(this.h) : !a(this.i) ? b(this.i) : 0) + b(this.g), mode == Integer.MIN_VALUE ? View.MeasureSpec.getSize(i3) : Integer.MAX_VALUE));
            }
        }
    }

    public boolean onTouchEvent(MotionEvent motionEvent) {
        super.onTouchEvent(motionEvent);
        return true;
    }

    public void setPrimaryBackground(Drawable drawable) {
        boolean z = true;
        if (this.a != null) {
            this.a.setCallback((Drawable.Callback) null);
            unscheduleDrawable(this.a);
        }
        this.a = drawable;
        if (drawable != null) {
            drawable.setCallback(this);
            if (this.h != null) {
                this.a.setBounds(this.h.getLeft(), this.h.getTop(), this.h.getRight(), this.h.getBottom());
            }
        }
        if (this.d) {
            if (this.c != null) {
                z = false;
            }
        } else if (!(this.a == null && this.b == null)) {
            z = false;
        }
        setWillNotDraw(z);
        invalidate();
    }

    public void setSplitBackground(Drawable drawable) {
        boolean z = true;
        if (this.c != null) {
            this.c.setCallback((Drawable.Callback) null);
            unscheduleDrawable(this.c);
        }
        this.c = drawable;
        if (drawable != null) {
            drawable.setCallback(this);
            if (this.d && this.c != null) {
                this.c.setBounds(0, 0, getMeasuredWidth(), getMeasuredHeight());
            }
        }
        if (this.d) {
            if (this.c != null) {
                z = false;
            }
        } else if (!(this.a == null && this.b == null)) {
            z = false;
        }
        setWillNotDraw(z);
        invalidate();
    }

    public void setStackedBackground(Drawable drawable) {
        boolean z = true;
        if (this.b != null) {
            this.b.setCallback((Drawable.Callback) null);
            unscheduleDrawable(this.b);
        }
        this.b = drawable;
        if (drawable != null) {
            drawable.setCallback(this);
            if (this.e && this.b != null) {
                this.b.setBounds(this.g.getLeft(), this.g.getTop(), this.g.getRight(), this.g.getBottom());
            }
        }
        if (this.d) {
            if (this.c != null) {
                z = false;
            }
        } else if (!(this.a == null && this.b == null)) {
            z = false;
        }
        setWillNotDraw(z);
        invalidate();
    }

    public void setTabContainer(ScrollingTabContainerView scrollingTabContainerView) {
        if (this.g != null) {
            removeView(this.g);
        }
        this.g = scrollingTabContainerView;
        if (scrollingTabContainerView != null) {
            addView(scrollingTabContainerView);
            ViewGroup.LayoutParams layoutParams = scrollingTabContainerView.getLayoutParams();
            layoutParams.width = -1;
            layoutParams.height = -2;
            scrollingTabContainerView.setAllowCollapse(false);
        }
    }

    public void setTransitioning(boolean z) {
        this.f = z;
        setDescendantFocusability(z ? 393216 : 262144);
    }

    public void setVisibility(int i2) {
        super.setVisibility(i2);
        boolean z = i2 == 0;
        if (this.a != null) {
            this.a.setVisible(z, false);
        }
        if (this.b != null) {
            this.b.setVisible(z, false);
        }
        if (this.c != null) {
            this.c.setVisible(z, false);
        }
    }

    public ActionMode startActionModeForChild(View view, ActionMode.Callback callback) {
        return null;
    }

    /* access modifiers changed from: protected */
    public boolean verifyDrawable(Drawable drawable) {
        return (drawable == this.a && !this.d) || (drawable == this.b && this.e) || ((drawable == this.c && this.d) || super.verifyDrawable(drawable));
    }
}
