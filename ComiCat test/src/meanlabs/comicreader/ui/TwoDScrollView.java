// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package meanlabs.comicreader.ui;

import android.content.Context;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.view.FocusFinder;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.animation.AnimationUtils;
import android.widget.FrameLayout;
import android.widget.Scroller;
import java.util.List;

public class TwoDScrollView extends FrameLayout
{
    public static interface a
    {

        public abstract void d();
    }


    public boolean a;
    private long b;
    private final Rect c;
    private Scroller d;
    private boolean e;
    private float f;
    private float g;
    private boolean h;
    private View i;
    private VelocityTracker j;
    private a k;
    private int l;
    private int m;
    private int n;

    public TwoDScrollView(Context context)
    {
        super(context);
        c = new Rect();
        h = true;
        i = null;
        a = false;
        a();
    }

    public TwoDScrollView(Context context, AttributeSet attributeset)
    {
        super(context, attributeset);
        c = new Rect();
        h = true;
        i = null;
        a = false;
        a();
    }

    public TwoDScrollView(Context context, AttributeSet attributeset, int i1)
    {
        super(context, attributeset, i1);
        c = new Rect();
        h = true;
        i = null;
        a = false;
        a();
    }

    private static int a(int i1, int j1, int k1)
    {
        int l1;
        if (j1 >= k1 || i1 < 0)
        {
            l1 = 0;
        } else
        {
            l1 = i1;
            if (j1 + i1 > k1)
            {
                return k1 - j1;
            }
        }
        return l1;
    }

    private int a(Rect rect)
    {
        if (getChildCount() == 0)
        {
            return 0;
        }
        int l1 = getHeight();
        int i1 = getScrollY();
        int k1 = i1 + l1;
        int i2 = getVerticalFadingEdgeLength();
        int j1 = i1;
        if (rect.top > 0)
        {
            j1 = i1 + i2;
        }
        i1 = k1;
        if (rect.bottom < getChildAt(0).getHeight())
        {
            i1 = k1 - i2;
        }
        if (rect.bottom > i1 && rect.top > j1)
        {
            if (rect.height() > l1)
            {
                j1 = (rect.top - j1) + 0;
            } else
            {
                j1 = (rect.bottom - i1) + 0;
            }
            i1 = Math.min(j1, getChildAt(0).getBottom() - i1);
        } else
        if (rect.top < j1 && rect.bottom < i1)
        {
            if (rect.height() > l1)
            {
                i1 = 0 - (i1 - rect.bottom);
            } else
            {
                i1 = 0 - (j1 - rect.top);
            }
            i1 = Math.max(i1, -getScrollY());
        } else
        {
            i1 = 0;
        }
        return i1;
    }

    private View a(boolean flag, int i1, int j1, boolean flag1, int k1, int l1)
    {
        View view1;
        java.util.ArrayList arraylist;
        boolean flag2;
        int i2;
        int l2;
        arraylist = getFocusables(2);
        view1 = null;
        flag2 = false;
        l2 = arraylist.size();
        i2 = 0;
_L2:
        View view;
        boolean flag3;
        int j2;
        int k2;
        if (i2 >= l2)
        {
            break; /* Loop/switch isn't completed */
        }
        view = (View)arraylist.get(i2);
        j2 = view.getTop();
        int j3 = view.getBottom();
        k2 = view.getLeft();
        int i3 = view.getRight();
        if (i1 >= j3 || j2 >= j1 || k1 >= i3 || k2 >= l1)
        {
            break MISSING_BLOCK_LABEL_283;
        }
        if (i1 < j2 && j3 < j1 && k1 < k2 && i3 < l1)
        {
            flag3 = true;
        } else
        {
            flag3 = false;
        }
        if (view1 == null)
        {
            flag2 = flag3;
        } else
        {
label0:
            {
                if (flag && j2 < view1.getTop() || !flag && j3 > view1.getBottom())
                {
                    j2 = 1;
                } else
                {
                    j2 = 0;
                }
                if (flag1 && k2 < view1.getLeft() || !flag1 && i3 > view1.getRight())
                {
                    k2 = 1;
                } else
                {
                    k2 = 0;
                }
                if (!flag2)
                {
                    break label0;
                }
                if (!flag3 || !j2 || !k2)
                {
                    break MISSING_BLOCK_LABEL_283;
                }
            }
        }
_L3:
        i2++;
        view1 = view;
        if (true) goto _L2; else goto _L1
        if (flag3)
        {
            flag2 = true;
        } else
        if (!j2 || !k2)
        {
            break MISSING_BLOCK_LABEL_283;
        }
          goto _L3
_L1:
        return view1;
        view = view1;
          goto _L3
    }

    private void a()
    {
        d = new Scroller(getContext());
        setFocusable(true);
        setDescendantFocusability(0x40000);
        setWillNotDraw(false);
        ViewConfiguration viewconfiguration = ViewConfiguration.get(getContext());
        l = viewconfiguration.getScaledTouchSlop();
        m = viewconfiguration.getScaledMinimumFlingVelocity();
        n = viewconfiguration.getScaledMaximumFlingVelocity();
    }

    private void a(int i1, int j1)
    {
        if (i1 != 0 || j1 != 0)
        {
            b(i1, j1);
        }
    }

    private void a(View view)
    {
        view.getDrawingRect(c);
        offsetDescendantRectToMyCoords(view, c);
        int i1 = a(c);
        if (i1 != 0)
        {
            scrollBy(0, i1);
        }
    }

    private boolean a(int i1, int j1, int k1, int l1, int i2, int j2)
    {
        int k2 = getHeight();
        int i3 = getScrollY();
        int j3 = i3 + k2;
        Object obj;
        int l2;
        boolean flag;
        boolean flag1;
        if (i1 == 33)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        l2 = getWidth();
        k2 = getScrollX();
        l2 = k2 + l2;
        if (l1 == 33)
        {
            flag1 = true;
        } else
        {
            flag1 = false;
        }
        obj = a(flag, j1, k1, flag1, i2, j2);
        if (obj == null)
        {
            obj = this;
        }
        if (j1 >= i3 && k1 <= j3 || i2 >= k2 && j2 <= l2)
        {
            flag = false;
        } else
        {
            if (flag)
            {
                j1 -= i3;
            } else
            {
                j1 = k1 - j3;
            }
            if (flag1)
            {
                k1 = i2 - k2;
            } else
            {
                k1 = j2 - l2;
            }
            a(k1, j1);
            flag = true;
        }
        if (obj != findFocus() && ((View) (obj)).requestFocus(i1))
        {
            e = true;
            e = false;
        }
        return flag;
    }

    private boolean a(View view, View view1)
    {
        if (view == view1)
        {
            return true;
        }
        view = view.getParent();
        return (view instanceof ViewGroup) && a((View)view, view1);
    }

    private void b(int i1, int j1)
    {
        if (AnimationUtils.currentAnimationTimeMillis() - b > 250L)
        {
            d.startScroll(getScrollX(), getScrollY(), i1, j1);
            awakenScrollBars(d.getDuration());
            invalidate();
        } else
        {
            if (!d.isFinished())
            {
                d.abortAnimation();
            }
            scrollBy(i1, j1);
        }
        b = AnimationUtils.currentAnimationTimeMillis();
    }

    private boolean b()
    {
        boolean flag;
label0:
        {
            boolean flag1 = false;
            View view = getChildAt(0);
            flag = flag1;
            if (view == null)
            {
                break label0;
            }
            int i1 = view.getHeight();
            int j1 = view.getWidth();
            if (getHeight() >= i1 + getPaddingTop() + getPaddingBottom())
            {
                flag = flag1;
                if (getWidth() >= j1 + getPaddingLeft() + getPaddingRight())
                {
                    break label0;
                }
            }
            flag = true;
        }
        return flag;
    }

    private boolean b(int i1, boolean flag)
    {
        View view;
        int j1;
        View view1 = findFocus();
        view = view1;
        if (view1 == this)
        {
            view = null;
        }
        view = FocusFinder.getInstance().findNextFocus(this, view, i1);
        if (flag)
        {
            j1 = getMaxScrollAmountHorizontal();
        } else
        {
            j1 = getMaxScrollAmountVertical();
        }
        if (flag) goto _L2; else goto _L1
_L1:
        if (view == null) goto _L4; else goto _L3
_L3:
        view.getDrawingRect(c);
        offsetDescendantRectToMyCoords(view, c);
        a(0, a(c));
        view.requestFocus(i1);
_L14:
        return true;
_L4:
        if (i1 != 33 || getScrollY() >= j1) goto _L6; else goto _L5
_L5:
        int k1 = getScrollY();
_L8:
        if (k1 == 0)
        {
            return false;
        }
        break; /* Loop/switch isn't completed */
_L6:
        k1 = j1;
        if (i1 == 130)
        {
            k1 = j1;
            if (getChildCount() > 0)
            {
                int l1 = getChildAt(0).getBottom();
                int j2 = getScrollY() + getHeight();
                k1 = j1;
                if (l1 - j2 < j1)
                {
                    k1 = l1 - j2;
                }
            }
        }
        if (true) goto _L8; else goto _L7
_L7:
        if (i1 != 130)
        {
            k1 = -k1;
        }
        a(0, k1);
        continue; /* Loop/switch isn't completed */
_L2:
        if (view != null)
        {
            view.getDrawingRect(c);
            offsetDescendantRectToMyCoords(view, c);
            a(a(c), 0);
            view.requestFocus(i1);
            continue; /* Loop/switch isn't completed */
        }
        if (i1 != 33 || getScrollY() >= j1) goto _L10; else goto _L9
_L9:
        k1 = getScrollY();
_L12:
        if (k1 == 0)
        {
            return false;
        }
        break; /* Loop/switch isn't completed */
_L10:
        k1 = j1;
        if (i1 == 130)
        {
            k1 = j1;
            if (getChildCount() > 0)
            {
                int i2 = getChildAt(0).getBottom();
                int k2 = getScrollY() + getHeight();
                k1 = j1;
                if (i2 - k2 < j1)
                {
                    k1 = i2 - k2;
                }
            }
        }
        if (true) goto _L12; else goto _L11
_L11:
        if (i1 != 130)
        {
            k1 = -k1;
        }
        a(k1, 0);
        if (true) goto _L14; else goto _L13
_L13:
    }

    public final boolean a(int i1, boolean flag)
    {
        int k1 = 1;
        int j1 = 1;
        if (!flag)
        {
            if (i1 != 130)
            {
                j1 = 0;
            }
            k1 = getHeight();
            c.top = 0;
            c.bottom = k1;
            if (j1 != 0)
            {
                j1 = getChildCount();
                if (j1 > 0)
                {
                    View view = getChildAt(j1 - 1);
                    c.bottom = view.getBottom();
                    c.top = c.bottom - k1;
                }
            }
            return a(i1, c.top, c.bottom, 0, 0, 0);
        }
        if (i1 == 130)
        {
            j1 = k1;
        } else
        {
            j1 = 0;
        }
        k1 = getWidth();
        c.left = 0;
        c.right = k1;
        if (j1 != 0)
        {
            j1 = getChildCount();
            if (j1 > 0)
            {
                View view1 = getChildAt(j1 - 1);
                c.right = view1.getBottom();
                c.left = c.right - k1;
            }
        }
        return a(0, 0, 0, i1, c.top, c.bottom);
    }

    public void addView(View view)
    {
        if (getChildCount() > 0)
        {
            throw new IllegalStateException("TwoDScrollView can host only one direct child");
        } else
        {
            super.addView(view);
            return;
        }
    }

    public void addView(View view, int i1)
    {
        if (getChildCount() > 0)
        {
            throw new IllegalStateException("TwoDScrollView can host only one direct child");
        } else
        {
            super.addView(view, i1);
            return;
        }
    }

    public void addView(View view, int i1, android.view.ViewGroup.LayoutParams layoutparams)
    {
        if (getChildCount() > 0)
        {
            throw new IllegalStateException("TwoDScrollView can host only one direct child");
        } else
        {
            super.addView(view, i1, layoutparams);
            return;
        }
    }

    public void addView(View view, android.view.ViewGroup.LayoutParams layoutparams)
    {
        if (getChildCount() > 0)
        {
            throw new IllegalStateException("TwoDScrollView can host only one direct child");
        } else
        {
            super.addView(view, layoutparams);
            return;
        }
    }

    protected int computeHorizontalScrollRange()
    {
        if (getChildCount() == 0)
        {
            return getWidth();
        } else
        {
            return getChildAt(0).getRight();
        }
    }

    public void computeScroll()
    {
        if (d.computeScrollOffset())
        {
            int i1 = getScrollX();
            int j1 = getScrollY();
            int k1 = d.getCurrX();
            int l1 = d.getCurrY();
            if (getChildCount() > 0)
            {
                View view = getChildAt(0);
                scrollTo(a(k1, getWidth() - getPaddingRight() - getPaddingLeft(), view.getWidth()), a(l1, getHeight() - getPaddingBottom() - getPaddingTop(), view.getHeight()));
            } else
            {
                scrollTo(k1, l1);
            }
            if (i1 != getScrollX() || j1 != getScrollY())
            {
                onScrollChanged(getScrollX(), getScrollY(), i1, j1);
            }
            postInvalidate();
        }
    }

    protected int computeVerticalScrollRange()
    {
        if (getChildCount() == 0)
        {
            return getHeight();
        } else
        {
            return getChildAt(0).getBottom();
        }
    }

    public boolean dispatchKeyEvent(KeyEvent keyevent)
    {
        boolean flag1 = false;
        if (!super.dispatchKeyEvent(keyevent)) goto _L2; else goto _L1
_L1:
        boolean flag = true;
_L4:
        return flag;
_L2:
        c.setEmpty();
        if (b())
        {
            break; /* Loop/switch isn't completed */
        }
        flag = flag1;
        if (isFocused())
        {
            View view = findFocus();
            keyevent = view;
            if (view == this)
            {
                keyevent = null;
            }
            keyevent = FocusFinder.getInstance().findNextFocus(this, keyevent, 130);
            flag = flag1;
            if (keyevent != null)
            {
                flag = flag1;
                if (keyevent != this)
                {
                    flag = flag1;
                    if (keyevent.requestFocus(130))
                    {
                        return true;
                    }
                }
            }
        }
        if (true) goto _L4; else goto _L3
_L3:
        if (keyevent.getAction() != 0) goto _L6; else goto _L5
_L5:
        keyevent.getKeyCode();
        JVM INSTR tableswitch 19 22: default 136
    //                   19 140
    //                   20 169
    //                   21 200
    //                   22 229;
           goto _L6 _L7 _L8 _L9 _L10
_L6:
        flag = false;
_L12:
        return flag;
_L7:
        if (!keyevent.isAltPressed())
        {
            flag = b(33, false);
        } else
        {
            flag = a(33, false);
        }
        continue; /* Loop/switch isn't completed */
_L8:
        if (!keyevent.isAltPressed())
        {
            flag = b(130, false);
        } else
        {
            flag = a(130, false);
        }
        continue; /* Loop/switch isn't completed */
_L9:
        if (!keyevent.isAltPressed())
        {
            flag = b(33, true);
        } else
        {
            flag = a(33, true);
        }
        continue; /* Loop/switch isn't completed */
_L10:
        if (!keyevent.isAltPressed())
        {
            flag = b(130, true);
        } else
        {
            flag = a(130, true);
        }
        if (true) goto _L12; else goto _L11
_L11:
    }

    protected float getBottomFadingEdgeStrength()
    {
        if (getChildCount() == 0)
        {
            return 0.0F;
        }
        int i1 = getVerticalFadingEdgeLength();
        int j1 = getHeight();
        int k1 = getPaddingBottom();
        j1 = getChildAt(0).getBottom() - getScrollY() - (j1 - k1);
        if (j1 < i1)
        {
            return (float)j1 / (float)i1;
        } else
        {
            return 1.0F;
        }
    }

    protected float getLeftFadingEdgeStrength()
    {
        if (getChildCount() == 0)
        {
            return 0.0F;
        }
        int i1 = getHorizontalFadingEdgeLength();
        if (getScrollX() < i1)
        {
            return (float)getScrollX() / (float)i1;
        } else
        {
            return 1.0F;
        }
    }

    public int getMaxScrollAmountHorizontal()
    {
        return (int)(0.5F * (float)getWidth());
    }

    public int getMaxScrollAmountVertical()
    {
        return (int)(0.5F * (float)getHeight());
    }

    protected float getRightFadingEdgeStrength()
    {
        if (getChildCount() == 0)
        {
            return 0.0F;
        }
        int i1 = getHorizontalFadingEdgeLength();
        int j1 = getWidth();
        int k1 = getPaddingRight();
        j1 = getChildAt(0).getRight() - getScrollX() - (j1 - k1);
        if (j1 < i1)
        {
            return (float)j1 / (float)i1;
        } else
        {
            return 1.0F;
        }
    }

    protected float getTopFadingEdgeStrength()
    {
        if (getChildCount() == 0)
        {
            return 0.0F;
        }
        int i1 = getVerticalFadingEdgeLength();
        if (getScrollY() < i1)
        {
            return (float)getScrollY() / (float)i1;
        } else
        {
            return 1.0F;
        }
    }

    protected void measureChild(View view, int i1, int j1)
    {
        android.view.ViewGroup.LayoutParams layoutparams = view.getLayoutParams();
        view.measure(getChildMeasureSpec(i1, getPaddingLeft() + getPaddingRight(), layoutparams.width), android.view.View.MeasureSpec.makeMeasureSpec(0, 0));
    }

    protected void measureChildWithMargins(View view, int i1, int j1, int k1, int l1)
    {
        android.view.ViewGroup.MarginLayoutParams marginlayoutparams = (android.view.ViewGroup.MarginLayoutParams)view.getLayoutParams();
        i1 = android.view.View.MeasureSpec.makeMeasureSpec(marginlayoutparams.leftMargin + marginlayoutparams.rightMargin, 0);
        j1 = marginlayoutparams.topMargin;
        view.measure(i1, android.view.View.MeasureSpec.makeMeasureSpec(marginlayoutparams.bottomMargin + j1, 0));
    }

    public boolean onInterceptTouchEvent(MotionEvent motionevent)
    {
        float f1;
        float f2;
        int i1;
        boolean flag;
        flag = true;
        i1 = motionevent.getAction();
        if (i1 == 2 && a)
        {
            return true;
        }
        if (!b())
        {
            a = false;
            return false;
        }
        f1 = motionevent.getY();
        f2 = motionevent.getX();
        i1;
        JVM INSTR tableswitch 0 3: default 80
    //                   0 135
    //                   1 170
    //                   2 85
    //                   3 170;
           goto _L1 _L2 _L3 _L4 _L3
_L1:
        return a;
_L4:
        int j1 = (int)Math.abs(f1 - f);
        int k1 = (int)Math.abs(f2 - g);
        if (j1 > l || k1 > l)
        {
            a = true;
        }
        continue; /* Loop/switch isn't completed */
_L2:
        f = f1;
        g = f2;
        if (d.isFinished())
        {
            flag = false;
        }
        a = flag;
        continue; /* Loop/switch isn't completed */
_L3:
        a = false;
        if (true) goto _L1; else goto _L5
_L5:
    }

    protected void onLayout(boolean flag, int i1, int j1, int k1, int l1)
    {
        super.onLayout(flag, i1, j1, k1, l1);
        h = false;
        if (i != null && a(i, this))
        {
            a(i);
        }
        i = null;
        scrollTo(getScrollX(), getScrollY());
        if (k != null)
        {
            k.d();
        }
    }

    protected boolean onRequestFocusInDescendants(int i1, Rect rect)
    {
        View view;
        int j1;
        if (i1 == 2)
        {
            j1 = 130;
        } else
        {
            j1 = i1;
            if (i1 == 1)
            {
                j1 = 33;
            }
        }
        if (rect == null)
        {
            view = FocusFinder.getInstance().findNextFocus(this, null, j1);
        } else
        {
            view = FocusFinder.getInstance().findNextFocusFromRect(this, rect, j1);
        }
        if (view == null)
        {
            return false;
        } else
        {
            return view.requestFocus(j1, rect);
        }
    }

    protected void onSizeChanged(int i1, int j1, int k1, int l1)
    {
        super.onSizeChanged(i1, j1, k1, l1);
        View view = findFocus();
        if (view == null || this == view)
        {
            return;
        } else
        {
            view.getDrawingRect(c);
            offsetDescendantRectToMyCoords(view, c);
            a(a(c), a(c));
            return;
        }
    }

    public boolean onTouchEvent(MotionEvent motionevent)
    {
        float f1;
        float f2;
        int i1;
        int k1;
        for (k1 = 0; motionevent.getAction() == 0 && motionevent.getEdgeFlags() != 0 || !b();)
        {
            return false;
        }

        if (j == null)
        {
            j = VelocityTracker.obtain();
        }
        j.addMovement(motionevent);
        i1 = motionevent.getAction();
        f1 = motionevent.getY();
        f2 = motionevent.getX();
        i1;
        JVM INSTR tableswitch 0 2: default 92
    //                   0 94
    //                   1 318
    //                   2 124;
           goto _L1 _L2 _L3 _L4
_L1:
        return true;
_L2:
        if (!d.isFinished())
        {
            d.abortAnimation();
        }
        f = f1;
        g = f2;
          goto _L1
_L4:
        int l1;
        int i2;
        i2 = (int)(g - f2);
        l1 = (int)(f - f1);
        g = f2;
        f = f1;
        if (i2 >= 0) goto _L6; else goto _L5
_L5:
        i1 = i2;
        if (getScrollX() >= 0) goto _L8; else goto _L7
_L7:
        i1 = 0;
_L8:
        if (l1 < 0)
        {
            if (getScrollY() >= 0)
            {
                break MISSING_BLOCK_LABEL_749;
            }
        } else
        {
            if (l1 <= 0)
            {
                break MISSING_BLOCK_LABEL_749;
            }
            int j2 = getHeight();
            int i3 = getPaddingBottom();
            j2 = getChildAt(0).getBottom() - getScrollY() - (j2 - i3);
            if (j2 > 0)
            {
                k1 = Math.min(j2, l1);
            }
        }
_L11:
        if (k1 != 0 || i1 != 0)
        {
            scrollBy(i1, k1);
        }
          goto _L1
_L6:
        i1 = i2;
        if (i2 <= 0) goto _L8; else goto _L9
_L9:
        i1 = getWidth();
        int l2 = getPaddingRight();
        i1 = getChildAt(0).getRight() - getScrollX() - (i1 - l2);
        if (i1 <= 0) goto _L7; else goto _L10
_L10:
        i1 = Math.min(i1, i2);
          goto _L8
_L3:
        motionevent = j;
        motionevent.computeCurrentVelocity(1000, n);
        int j1 = (int)motionevent.getXVelocity();
        k1 = (int)motionevent.getYVelocity();
        if (Math.abs(j1) + Math.abs(k1) > m && getChildCount() > 0)
        {
            j1 = -j1;
            k1 = -k1;
            if (getChildCount() > 0)
            {
                l1 = getHeight();
                int k2 = getPaddingBottom();
                int j3 = getPaddingTop();
                int k3 = getChildAt(0).getHeight();
                int l3 = getWidth();
                int i4 = getPaddingRight();
                int j4 = getPaddingLeft();
                int k4 = getChildAt(0).getWidth();
                d.fling(getScrollX(), getScrollY(), j1, k1, 0, k4 - (l3 - i4 - j4), 0, k3 - (l1 - k2 - j3));
                Object obj;
                boolean flag;
                boolean flag1;
                if (k1 > 0)
                {
                    flag = true;
                } else
                {
                    flag = false;
                }
                if (j1 > 0)
                {
                    flag1 = true;
                } else
                {
                    flag1 = false;
                }
                l1 = d.getFinalX();
                k1 = d.getFinalY();
                motionevent = findFocus();
                k2 = getVerticalFadingEdgeLength() / 2;
                j1 = l1 + k2;
                l1 = (l1 + getHeight()) - k2;
                j3 = getHorizontalFadingEdgeLength() / 2;
                k2 = k1 + j3;
                k1 = (k1 + getWidth()) - j3;
                if (motionevent == null || motionevent.getTop() >= l1 || motionevent.getBottom() <= j1 || motionevent.getLeft() >= k1 || motionevent.getRight() <= k2)
                {
                    motionevent = a(flag1, j1, l1, flag, k2, k1);
                }
                obj = motionevent;
                if (motionevent == null)
                {
                    obj = this;
                }
                if (obj != findFocus())
                {
                    if (flag)
                    {
                        j1 = 130;
                    } else
                    {
                        j1 = 33;
                    }
                    if (((View) (obj)).requestFocus(j1))
                    {
                        e = true;
                        e = false;
                    }
                }
                awakenScrollBars(d.getDuration());
                invalidate();
            }
        }
        if (j != null)
        {
            j.recycle();
            j = null;
        }
          goto _L1
        k1 = l1;
          goto _L11
    }

    public void requestChildFocus(View view, View view1)
    {
        if (!e)
        {
            if (!h)
            {
                a(view1);
            } else
            {
                i = view1;
            }
        }
        super.requestChildFocus(view, view1);
    }

    public boolean requestChildRectangleOnScreen(View view, Rect rect, boolean flag)
    {
        int i1;
        boolean flag1;
label0:
        {
            rect.offset(view.getLeft() - view.getScrollX(), view.getTop() - view.getScrollY());
            i1 = a(rect);
            if (i1 != 0)
            {
                flag1 = true;
            } else
            {
                flag1 = false;
            }
            if (flag1)
            {
                if (!flag)
                {
                    break label0;
                }
                scrollBy(0, i1);
            }
            return flag1;
        }
        b(0, i1);
        return flag1;
    }

    public void requestLayout()
    {
        h = true;
        super.requestLayout();
    }

    public void scrollTo(int i1, int j1)
    {
        if (getChildCount() > 0)
        {
            View view = getChildAt(0);
            i1 = a(i1, getWidth() - getPaddingRight() - getPaddingLeft(), view.getWidth());
            j1 = a(j1, getHeight() - getPaddingBottom() - getPaddingTop(), view.getHeight());
            if (i1 != getScrollX() || j1 != getScrollY())
            {
                super.scrollTo(i1, j1);
            }
        }
    }

    public void setOnLayoutListener(a a1)
    {
        k = a1;
    }
}
