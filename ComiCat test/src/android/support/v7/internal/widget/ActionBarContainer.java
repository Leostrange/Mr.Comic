// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package android.support.v7.internal.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.ActionMode;
import android.view.MotionEvent;
import android.view.View;
import android.widget.FrameLayout;
import ef;
import eg;

// Referenced classes of package android.support.v7.internal.widget:
//            ScrollingTabContainerView

public class ActionBarContainer extends FrameLayout
{

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

    public ActionBarContainer(Context context)
    {
        this(context, null);
    }

    public ActionBarContainer(Context context, AttributeSet attributeset)
    {
        super(context, attributeset);
        Object obj;
        boolean flag;
        boolean flag1;
        if (android.os.Build.VERSION.SDK_INT >= 21)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        if (flag)
        {
            obj = new eg(this);
        } else
        {
            obj = new ef(this);
        }
        setBackgroundDrawable(((Drawable) (obj)));
        context = context.obtainStyledAttributes(attributeset, cv.k.ActionBar);
        a = context.getDrawable(cv.k.ActionBar_background);
        b = context.getDrawable(cv.k.ActionBar_backgroundStacked);
        j = context.getDimensionPixelSize(cv.k.ActionBar_height, -1);
        if (getId() == cv.f.split_action_bar)
        {
            d = true;
            c = context.getDrawable(cv.k.ActionBar_backgroundSplit);
        }
        context.recycle();
        if (d)
        {
            if (c == null)
            {
                flag1 = true;
            } else
            {
                flag1 = false;
            }
        } else
        if (a == null && b == null)
        {
            flag1 = true;
        } else
        {
            flag1 = false;
        }
        setWillNotDraw(flag1);
    }

    private static boolean a(View view)
    {
        return view == null || view.getVisibility() == 8 || view.getMeasuredHeight() == 0;
    }

    private static int b(View view)
    {
        android.widget.FrameLayout.LayoutParams layoutparams = (android.widget.FrameLayout.LayoutParams)view.getLayoutParams();
        int k = view.getMeasuredHeight();
        int l = layoutparams.topMargin;
        return layoutparams.bottomMargin + (k + l);
    }

    protected void drawableStateChanged()
    {
        super.drawableStateChanged();
        if (a != null && a.isStateful())
        {
            a.setState(getDrawableState());
        }
        if (b != null && b.isStateful())
        {
            b.setState(getDrawableState());
        }
        if (c != null && c.isStateful())
        {
            c.setState(getDrawableState());
        }
    }

    public View getTabContainer()
    {
        return g;
    }

    public void jumpDrawablesToCurrentState()
    {
        if (android.os.Build.VERSION.SDK_INT >= 11)
        {
            super.jumpDrawablesToCurrentState();
            if (a != null)
            {
                a.jumpToCurrentState();
            }
            if (b != null)
            {
                b.jumpToCurrentState();
            }
            if (c != null)
            {
                c.jumpToCurrentState();
            }
        }
    }

    public void onFinishInflate()
    {
        super.onFinishInflate();
        h = findViewById(cv.f.action_bar);
        i = findViewById(cv.f.action_context_bar);
    }

    public boolean onInterceptTouchEvent(MotionEvent motionevent)
    {
        return f || super.onInterceptTouchEvent(motionevent);
    }

    public void onLayout(boolean flag, int k, int l, int i1, int j1)
    {
label0:
        {
            {
                boolean flag1 = true;
                super.onLayout(flag, k, l, i1, j1);
                View view = g;
                if (view != null && view.getVisibility() != 8)
                {
                    flag = true;
                } else
                {
                    flag = false;
                }
                if (view != null && view.getVisibility() != 8)
                {
                    l = getMeasuredHeight();
                    android.widget.FrameLayout.LayoutParams layoutparams = (android.widget.FrameLayout.LayoutParams)view.getLayoutParams();
                    view.layout(k, l - view.getMeasuredHeight() - layoutparams.bottomMargin, i1, l - layoutparams.bottomMargin);
                }
                if (!d)
                {
                    break label0;
                }
                if (c != null)
                {
                    c.setBounds(0, 0, getMeasuredWidth(), getMeasuredHeight());
                    k = ((flag1) ? 1 : 0);
                } else
                {
                    k = 0;
                }
            }
            if (k != 0)
            {
                invalidate();
            }
            return;
        }
        if (a != null)
        {
            if (h.getVisibility() == 0)
            {
                a.setBounds(h.getLeft(), h.getTop(), h.getRight(), h.getBottom());
            } else
            if (i != null && i.getVisibility() == 0)
            {
                a.setBounds(i.getLeft(), i.getTop(), i.getRight(), i.getBottom());
            } else
            {
                a.setBounds(0, 0, 0, 0);
            }
            k = 1;
        } else
        {
            k = 0;
        }
        e = flag;
        if (flag && b != null)
        {
            b.setBounds(view.getLeft(), view.getTop(), view.getRight(), view.getBottom());
            k = ((flag1) ? 1 : 0);
        }
        if (false)
        {
        } else
        {
            break MISSING_BLOCK_LABEL_129;
        }
    }

    public void onMeasure(int k, int l)
    {
        int i1 = l;
        if (h == null)
        {
            i1 = l;
            if (android.view.View.MeasureSpec.getMode(l) == 0x80000000)
            {
                i1 = l;
                if (j >= 0)
                {
                    i1 = android.view.View.MeasureSpec.makeMeasureSpec(Math.min(j, android.view.View.MeasureSpec.getSize(l)), 0x80000000);
                }
            }
        }
        super.onMeasure(k, i1);
        if (h != null)
        {
            l = android.view.View.MeasureSpec.getMode(i1);
            if (g != null && g.getVisibility() != 8 && l != 0x40000000)
            {
                if (!a(h))
                {
                    k = b(h);
                } else
                if (!a(i))
                {
                    k = b(i);
                } else
                {
                    k = 0;
                }
                if (l == 0x80000000)
                {
                    l = android.view.View.MeasureSpec.getSize(i1);
                } else
                {
                    l = 0x7fffffff;
                }
                setMeasuredDimension(getMeasuredWidth(), Math.min(k + b(g), l));
                return;
            }
        }
    }

    public boolean onTouchEvent(MotionEvent motionevent)
    {
        super.onTouchEvent(motionevent);
        return true;
    }

    public void setPrimaryBackground(Drawable drawable)
    {
        boolean flag;
        flag = true;
        if (a != null)
        {
            a.setCallback(null);
            unscheduleDrawable(a);
        }
        a = drawable;
        if (drawable != null)
        {
            drawable.setCallback(this);
            if (h != null)
            {
                a.setBounds(h.getLeft(), h.getTop(), h.getRight(), h.getBottom());
            }
        }
        if (!d) goto _L2; else goto _L1
_L1:
        if (c != null)
        {
            flag = false;
        }
_L4:
        setWillNotDraw(flag);
        invalidate();
        return;
_L2:
        if (a != null || b != null)
        {
            flag = false;
        }
        if (true) goto _L4; else goto _L3
_L3:
    }

    public void setSplitBackground(Drawable drawable)
    {
        boolean flag;
        flag = true;
        if (c != null)
        {
            c.setCallback(null);
            unscheduleDrawable(c);
        }
        c = drawable;
        if (drawable != null)
        {
            drawable.setCallback(this);
            if (d && c != null)
            {
                c.setBounds(0, 0, getMeasuredWidth(), getMeasuredHeight());
            }
        }
        if (!d) goto _L2; else goto _L1
_L1:
        if (c != null)
        {
            flag = false;
        }
_L4:
        setWillNotDraw(flag);
        invalidate();
        return;
_L2:
        if (a != null || b != null)
        {
            flag = false;
        }
        if (true) goto _L4; else goto _L3
_L3:
    }

    public void setStackedBackground(Drawable drawable)
    {
        boolean flag;
        flag = true;
        if (b != null)
        {
            b.setCallback(null);
            unscheduleDrawable(b);
        }
        b = drawable;
        if (drawable != null)
        {
            drawable.setCallback(this);
            if (e && b != null)
            {
                b.setBounds(g.getLeft(), g.getTop(), g.getRight(), g.getBottom());
            }
        }
        if (!d) goto _L2; else goto _L1
_L1:
        if (c != null)
        {
            flag = false;
        }
_L4:
        setWillNotDraw(flag);
        invalidate();
        return;
_L2:
        if (a != null || b != null)
        {
            flag = false;
        }
        if (true) goto _L4; else goto _L3
_L3:
    }

    public void setTabContainer(ScrollingTabContainerView scrollingtabcontainerview)
    {
        if (g != null)
        {
            removeView(g);
        }
        g = scrollingtabcontainerview;
        if (scrollingtabcontainerview != null)
        {
            addView(scrollingtabcontainerview);
            android.view.ViewGroup.LayoutParams layoutparams = scrollingtabcontainerview.getLayoutParams();
            layoutparams.width = -1;
            layoutparams.height = -2;
            scrollingtabcontainerview.setAllowCollapse(false);
        }
    }

    public void setTransitioning(boolean flag)
    {
        f = flag;
        int k;
        if (flag)
        {
            k = 0x60000;
        } else
        {
            k = 0x40000;
        }
        setDescendantFocusability(k);
    }

    public void setVisibility(int k)
    {
        super.setVisibility(k);
        boolean flag;
        if (k == 0)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        if (a != null)
        {
            a.setVisible(flag, false);
        }
        if (b != null)
        {
            b.setVisible(flag, false);
        }
        if (c != null)
        {
            c.setVisible(flag, false);
        }
    }

    public ActionMode startActionModeForChild(View view, android.view.ActionMode.Callback callback)
    {
        return null;
    }

    protected boolean verifyDrawable(Drawable drawable)
    {
        return drawable == a && !d || drawable == b && e || drawable == c && d || super.verifyDrawable(drawable);
    }
}
