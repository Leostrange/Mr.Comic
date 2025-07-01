// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package android.support.v4.widget;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.util.Log;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.animation.Animation;
import android.view.animation.DecelerateInterpolator;
import android.view.animation.Transformation;
import android.widget.AbsListView;
import ax;
import bh;
import ch;
import cp;

public class SwipeRefreshLayout extends ViewGroup
{
    public static interface a
    {
    }


    private static final String c = android/support/v4/widget/SwipeRefreshLayout.getSimpleName();
    private static final int s[] = {
        0x101000e
    };
    private Animation A;
    private Animation B;
    private float C;
    private boolean D;
    private int E;
    private int F;
    private boolean G;
    private android.view.animation.Animation.AnimationListener H = new android.view.animation.Animation.AnimationListener() {

        final SwipeRefreshLayout a;

        public final void onAnimationEnd(Animation animation)
        {
            if (SwipeRefreshLayout.a(a))
            {
                SwipeRefreshLayout.b(a).setAlpha(255);
                SwipeRefreshLayout.b(a).start();
                if (SwipeRefreshLayout.c(a) && SwipeRefreshLayout.d(a) != null)
                {
                    SwipeRefreshLayout.d(a);
                }
            } else
            {
                SwipeRefreshLayout.b(a).stop();
                SwipeRefreshLayout.e(a).setVisibility(8);
                SwipeRefreshLayout.f(a);
                if (SwipeRefreshLayout.g(a))
                {
                    SwipeRefreshLayout.a(a, 0.0F);
                } else
                {
                    SwipeRefreshLayout.a(a, a.b - SwipeRefreshLayout.h(a), true);
                }
            }
            SwipeRefreshLayout.a(a, SwipeRefreshLayout.e(a).getTop());
        }

        public final void onAnimationRepeat(Animation animation)
        {
        }

        public final void onAnimationStart(Animation animation)
        {
        }

            
            {
                a = SwipeRefreshLayout.this;
                super();
            }
    };
    private final Animation I;
    private final Animation J;
    protected int a;
    protected int b;
    private View d;
    private a e;
    private boolean f;
    private int g;
    private float h;
    private int i;
    private int j;
    private boolean k;
    private float l;
    private float m;
    private boolean n;
    private int o;
    private boolean p;
    private boolean q;
    private final DecelerateInterpolator r;
    private ch t;
    private int u;
    private float v;
    private cp w;
    private Animation x;
    private Animation y;
    private Animation z;

    public SwipeRefreshLayout(Context context)
    {
        this(context, null);
    }

    public SwipeRefreshLayout(Context context, AttributeSet attributeset)
    {
        super(context, attributeset);
        f = false;
        h = -1F;
        k = false;
        o = -1;
        u = -1;
        I = new Animation() {

            final SwipeRefreshLayout a;

            public final void applyTransformation(float f1, Transformation transformation)
            {
                int i1;
                int j1;
                int k1;
                if (!SwipeRefreshLayout.j(a))
                {
                    i1 = (int)(SwipeRefreshLayout.k(a) - (float)Math.abs(a.b));
                } else
                {
                    i1 = (int)SwipeRefreshLayout.k(a);
                }
                j1 = a.a;
                i1 = (int)((float)(i1 - a.a) * f1);
                k1 = SwipeRefreshLayout.e(a).getTop();
                SwipeRefreshLayout.a(a, (i1 + j1) - k1, false);
                SwipeRefreshLayout.b(a).a(1.0F - f1);
            }

            
            {
                a = SwipeRefreshLayout.this;
                super();
            }
        };
        J = new Animation() {

            final SwipeRefreshLayout a;

            public final void applyTransformation(float f1, Transformation transformation)
            {
                SwipeRefreshLayout.b(a, f1);
            }

            
            {
                a = SwipeRefreshLayout.this;
                super();
            }
        };
        g = ViewConfiguration.get(context).getScaledTouchSlop();
        i = getResources().getInteger(0x10e0001);
        setWillNotDraw(false);
        r = new DecelerateInterpolator(2.0F);
        context = context.obtainStyledAttributes(attributeset, s);
        setEnabled(context.getBoolean(0, true));
        context.recycle();
        context = getResources().getDisplayMetrics();
        E = (int)(((DisplayMetrics) (context)).density * 40F);
        F = (int)(((DisplayMetrics) (context)).density * 40F);
        t = new ch(getContext());
        w = new cp(getContext(), this);
        w.b(0xfffafafa);
        t.setImageDrawable(w);
        t.setVisibility(8);
        addView(t);
        bh.a(this);
        C = ((DisplayMetrics) (context)).density * 64F;
        h = C;
    }

    private static float a(MotionEvent motionevent, int i1)
    {
        i1 = ax.a(motionevent, i1);
        if (i1 < 0)
        {
            return -1F;
        } else
        {
            return ax.d(motionevent, i1);
        }
    }

    static int a(SwipeRefreshLayout swiperefreshlayout, int i1)
    {
        swiperefreshlayout.j = i1;
        return i1;
    }

    private Animation a(int i1, int j1)
    {
        if (p && a())
        {
            return null;
        } else
        {
            Animation animation = new Animation(i1, j1) {

                final int a;
                final int b;
                final SwipeRefreshLayout c;

                public final void applyTransformation(float f1, Transformation transformation)
                {
                    SwipeRefreshLayout.b(c).setAlpha((int)((float)a + (float)(b - a) * f1));
                }

            
            {
                c = SwipeRefreshLayout.this;
                a = i1;
                b = j1;
                super();
            }
            };
            animation.setDuration(300L);
            t.a = null;
            t.clearAnimation();
            t.startAnimation(animation);
            return animation;
        }
    }

    private void a(int i1, boolean flag)
    {
        t.bringToFront();
        t.offsetTopAndBottom(i1);
        j = t.getTop();
        if (flag && android.os.Build.VERSION.SDK_INT < 11)
        {
            invalidate();
        }
    }

    static void a(SwipeRefreshLayout swiperefreshlayout, float f1)
    {
        swiperefreshlayout.setAnimationProgress(f1);
    }

    static void a(SwipeRefreshLayout swiperefreshlayout, int i1, boolean flag)
    {
        swiperefreshlayout.a(i1, flag);
    }

    private void a(MotionEvent motionevent)
    {
        int i1 = ax.b(motionevent);
        if (ax.b(motionevent, i1) == o)
        {
            if (i1 == 0)
            {
                i1 = 1;
            } else
            {
                i1 = 0;
            }
            o = ax.b(motionevent, i1);
        }
    }

    private void a(android.view.animation.Animation.AnimationListener animationlistener)
    {
        y = new Animation() {

            final SwipeRefreshLayout a;

            public final void applyTransformation(float f1, Transformation transformation)
            {
                SwipeRefreshLayout.a(a, 1.0F - f1);
            }

            
            {
                a = SwipeRefreshLayout.this;
                super();
            }
        };
        y.setDuration(150L);
        t.a = animationlistener;
        t.clearAnimation();
        t.startAnimation(y);
    }

    private void a(boolean flag, boolean flag1)
    {
label0:
        {
            if (f != flag)
            {
                D = flag1;
                b();
                f = flag;
                if (!f)
                {
                    break label0;
                }
                int i1 = j;
                android.view.animation.Animation.AnimationListener animationlistener = H;
                a = i1;
                I.reset();
                I.setDuration(200L);
                I.setInterpolator(r);
                if (animationlistener != null)
                {
                    t.a = animationlistener;
                }
                t.clearAnimation();
                t.startAnimation(I);
            }
            return;
        }
        a(H);
    }

    private static boolean a()
    {
        return android.os.Build.VERSION.SDK_INT < 11;
    }

    static boolean a(SwipeRefreshLayout swiperefreshlayout)
    {
        return swiperefreshlayout.f;
    }

    private static boolean a(Animation animation)
    {
        return animation != null && animation.hasStarted() && !animation.hasEnded();
    }

    static cp b(SwipeRefreshLayout swiperefreshlayout)
    {
        return swiperefreshlayout.w;
    }

    private void b()
    {
        if (d != null) goto _L2; else goto _L1
_L1:
        int i1 = 0;
_L7:
        if (i1 >= getChildCount()) goto _L2; else goto _L3
_L3:
        View view = getChildAt(i1);
        if (view.equals(t)) goto _L5; else goto _L4
_L4:
        d = view;
_L2:
        return;
_L5:
        i1++;
        if (true) goto _L7; else goto _L6
_L6:
    }

    static void b(SwipeRefreshLayout swiperefreshlayout, float f1)
    {
        swiperefreshlayout.a((swiperefreshlayout.a + (int)((float)(swiperefreshlayout.b - swiperefreshlayout.a) * f1)) - swiperefreshlayout.t.getTop(), false);
    }

    private boolean c()
    {
        if (android.os.Build.VERSION.SDK_INT < 14)
        {
            if (d instanceof AbsListView)
            {
                AbsListView abslistview = (AbsListView)d;
                return abslistview.getChildCount() > 0 && (abslistview.getFirstVisiblePosition() > 0 || abslistview.getChildAt(0).getTop() < abslistview.getPaddingTop());
            }
            return bh.b(d, -1) || d.getScrollY() > 0;
        } else
        {
            return bh.b(d, -1);
        }
    }

    static boolean c(SwipeRefreshLayout swiperefreshlayout)
    {
        return swiperefreshlayout.D;
    }

    static a d(SwipeRefreshLayout swiperefreshlayout)
    {
        return swiperefreshlayout.e;
    }

    static ch e(SwipeRefreshLayout swiperefreshlayout)
    {
        return swiperefreshlayout.t;
    }

    static void f(SwipeRefreshLayout swiperefreshlayout)
    {
        swiperefreshlayout.setColorViewAlpha(255);
    }

    static boolean g(SwipeRefreshLayout swiperefreshlayout)
    {
        return swiperefreshlayout.p;
    }

    static int h(SwipeRefreshLayout swiperefreshlayout)
    {
        return swiperefreshlayout.j;
    }

    static void i(SwipeRefreshLayout swiperefreshlayout)
    {
        swiperefreshlayout.a(((android.view.animation.Animation.AnimationListener) (null)));
    }

    static boolean j(SwipeRefreshLayout swiperefreshlayout)
    {
        return swiperefreshlayout.G;
    }

    static float k(SwipeRefreshLayout swiperefreshlayout)
    {
        return swiperefreshlayout.C;
    }

    static float l(SwipeRefreshLayout swiperefreshlayout)
    {
        return swiperefreshlayout.v;
    }

    private void setAnimationProgress(float f1)
    {
        if (a())
        {
            setColorViewAlpha((int)(255F * f1));
            return;
        } else
        {
            bh.d(t, f1);
            bh.e(t, f1);
            return;
        }
    }

    private void setColorViewAlpha(int i1)
    {
        t.getBackground().setAlpha(i1);
        w.setAlpha(i1);
    }

    protected int getChildDrawingOrder(int i1, int j1)
    {
        if (u >= 0)
        {
            if (j1 == i1 - 1)
            {
                return u;
            }
            if (j1 >= u)
            {
                return j1 + 1;
            }
        }
        return j1;
    }

    public int getProgressCircleDiameter()
    {
        if (t != null)
        {
            return t.getMeasuredHeight();
        } else
        {
            return 0;
        }
    }

    public boolean onInterceptTouchEvent(MotionEvent motionevent)
    {
        int i1;
        b();
        i1 = ax.a(motionevent);
        if (q && i1 == 0)
        {
            q = false;
        }
        if (isEnabled() && !q && !c() && !f) goto _L2; else goto _L1
_L1:
        return false;
_L2:
        i1;
        JVM INSTR tableswitch 0 6: default 100
    //                   0 105
    //                   1 257
    //                   2 160
    //                   3 257
    //                   4 100
    //                   5 100
    //                   6 249;
           goto _L3 _L4 _L5 _L6 _L5 _L3 _L3 _L7
_L3:
        break; /* Loop/switch isn't completed */
_L5:
        break MISSING_BLOCK_LABEL_257;
_L9:
        return n;
_L4:
        float f1;
        a(b - t.getTop(), true);
        o = ax.b(motionevent, 0);
        n = false;
        f1 = a(motionevent, o);
        if (f1 == -1F) goto _L1; else goto _L8
_L8:
        m = f1;
          goto _L9
_L6:
        if (o == -1)
        {
            Log.e(c, "Got ACTION_MOVE event but don't have an active pointer id.");
            return false;
        }
        f1 = a(motionevent, o);
        if (f1 == -1F) goto _L1; else goto _L10
_L10:
        if (f1 - m > (float)g && !n)
        {
            l = m + (float)g;
            n = true;
            w.setAlpha(76);
        }
          goto _L9
_L7:
        a(motionevent);
          goto _L9
        n = false;
        o = -1;
          goto _L9
    }

    protected void onLayout(boolean flag, int i1, int j1, int k1, int l1)
    {
        i1 = getMeasuredWidth();
        j1 = getMeasuredHeight();
        if (getChildCount() != 0)
        {
            if (d == null)
            {
                b();
            }
            if (d != null)
            {
                View view = d;
                k1 = getPaddingLeft();
                l1 = getPaddingTop();
                view.layout(k1, l1, (i1 - getPaddingLeft() - getPaddingRight()) + k1, (j1 - getPaddingTop() - getPaddingBottom()) + l1);
                j1 = t.getMeasuredWidth();
                k1 = t.getMeasuredHeight();
                t.layout(i1 / 2 - j1 / 2, j, i1 / 2 + j1 / 2, j + k1);
                return;
            }
        }
    }

    public void onMeasure(int i1, int j1)
    {
        super.onMeasure(i1, j1);
        if (d == null)
        {
            b();
        }
        if (d != null)
        {
            d.measure(android.view.View.MeasureSpec.makeMeasureSpec(getMeasuredWidth() - getPaddingLeft() - getPaddingRight(), 0x40000000), android.view.View.MeasureSpec.makeMeasureSpec(getMeasuredHeight() - getPaddingTop() - getPaddingBottom(), 0x40000000));
            t.measure(android.view.View.MeasureSpec.makeMeasureSpec(E, 0x40000000), android.view.View.MeasureSpec.makeMeasureSpec(F, 0x40000000));
            if (!G && !k)
            {
                k = true;
                i1 = -t.getMeasuredHeight();
                b = i1;
                j = i1;
            }
            u = -1;
            i1 = 0;
            while (i1 < getChildCount()) 
            {
                if (getChildAt(i1) == t)
                {
                    u = i1;
                    return;
                }
                i1++;
            }
        }
    }

    public boolean onTouchEvent(MotionEvent motionevent)
    {
        int i1;
        i1 = ax.a(motionevent);
        if (q && i1 == 0)
        {
            q = false;
        }
        if (!isEnabled() || q || c())
        {
            return false;
        }
        i1;
        JVM INSTR tableswitch 0 6: default 92
    //                   0 94
    //                   1 571
    //                   2 111
    //                   3 571
    //                   4 92
    //                   5 548
    //                   6 563;
           goto _L1 _L2 _L3 _L4 _L3 _L1 _L5 _L6
_L1:
        return true;
_L2:
        o = ax.b(motionevent, 0);
        n = false;
        continue; /* Loop/switch isn't completed */
_L4:
        i1 = ax.a(motionevent, o);
        if (i1 < 0)
        {
            Log.e(c, "Got ACTION_MOVE event but have an invalid active pointer id.");
            return false;
        }
        float f3 = 0.5F * (ax.d(motionevent, i1) - l);
        if (!n)
        {
            continue; /* Loop/switch isn't completed */
        }
        w.a(true);
        float f1 = f3 / h;
        if (f1 < 0.0F)
        {
            return false;
        }
        float f5 = Math.min(1.0F, Math.abs(f1));
        float f6 = ((float)Math.max((double)f5 - 0.40000000000000002D, 0.0D) * 5F) / 3F;
        float f7 = Math.abs(f3);
        float f8 = h;
        int j1;
        if (G)
        {
            f1 = C - (float)b;
        } else
        {
            f1 = C;
        }
        f7 = Math.max(0.0F, Math.min(f7 - f8, f1 * 2.0F) / f1);
        f7 = (float)((double)(f7 / 4F) - Math.pow(f7 / 4F, 2D)) * 2.0F;
        i1 = b;
        j1 = (int)(f1 * f5 + f1 * f7 * 2.0F);
        if (t.getVisibility() != 0)
        {
            t.setVisibility(0);
        }
        if (!p)
        {
            bh.d(t, 1.0F);
            bh.e(t, 1.0F);
        }
        if (f3 >= h) goto _L8; else goto _L7
_L7:
        if (p)
        {
            setAnimationProgress(f3 / h);
        }
        if (w.getAlpha() > 76 && !a(z))
        {
            z = a(w.getAlpha(), 76);
        }
        w.b(Math.min(0.8F, 0.8F * f6));
        w.a(Math.min(1.0F, f6));
_L9:
        w.a.c((-0.25F + 0.4F * f6 + f7 * 2.0F) * 0.5F);
        a((j1 + i1) - j, true);
        continue; /* Loop/switch isn't completed */
_L8:
        if (w.getAlpha() < 255 && !a(A))
        {
            A = a(w.getAlpha(), 255);
        }
        if (true) goto _L9; else goto _L5
_L5:
        o = ax.b(motionevent, ax.b(motionevent));
        continue; /* Loop/switch isn't completed */
_L6:
        a(motionevent);
        if (true) goto _L1; else goto _L3
_L3:
        float f2;
        float f4;
        if (o == -1)
        {
            if (i1 == 1)
            {
                Log.e(c, "Got ACTION_UP event but don't have an active pointer id.");
            }
            return false;
        }
        f2 = ax.d(motionevent, ax.a(motionevent, o));
        f4 = l;
        n = false;
        if ((f2 - f4) * 0.5F <= h) goto _L11; else goto _L10
_L10:
        a(true, true);
_L13:
        o = -1;
        return false;
_L11:
        f = false;
        w.b(0.0F);
        motionevent = null;
        if (!p)
        {
            motionevent = new android.view.animation.Animation.AnimationListener() {

                final SwipeRefreshLayout a;

                public final void onAnimationEnd(Animation animation)
                {
                    if (!SwipeRefreshLayout.g(a))
                    {
                        SwipeRefreshLayout.i(a);
                    }
                }

                public final void onAnimationRepeat(Animation animation)
                {
                }

                public final void onAnimationStart(Animation animation)
                {
                }

            
            {
                a = SwipeRefreshLayout.this;
                super();
            }
            };
        }
        i1 = j;
        if (!p)
        {
            break; /* Loop/switch isn't completed */
        }
        a = i1;
        if (a())
        {
            v = w.getAlpha();
        } else
        {
            v = bh.t(t);
        }
        B = new Animation() {

            final SwipeRefreshLayout a;

            public final void applyTransformation(float f9, Transformation transformation)
            {
                float f10 = SwipeRefreshLayout.l(a);
                float f11 = -SwipeRefreshLayout.l(a);
                SwipeRefreshLayout.a(a, f10 + f11 * f9);
                SwipeRefreshLayout.b(a, f9);
            }

            
            {
                a = SwipeRefreshLayout.this;
                super();
            }
        };
        B.setDuration(150L);
        if (motionevent != null)
        {
            t.a = motionevent;
        }
        t.clearAnimation();
        t.startAnimation(B);
_L14:
        w.a(false);
        if (true) goto _L13; else goto _L12
_L12:
        a = i1;
        J.reset();
        J.setDuration(200L);
        J.setInterpolator(r);
        if (motionevent != null)
        {
            t.a = motionevent;
        }
        t.clearAnimation();
        t.startAnimation(J);
          goto _L14
        if (true) goto _L13; else goto _L15
_L15:
    }

    public void requestDisallowInterceptTouchEvent(boolean flag)
    {
    }

    public transient void setColorScheme(int ai[])
    {
        setColorSchemeResources(ai);
    }

    public transient void setColorSchemeColors(int ai[])
    {
        b();
        cp cp1 = w;
        cp1.a.a(ai);
        cp1.a.a(0);
    }

    public transient void setColorSchemeResources(int ai[])
    {
        Resources resources = getResources();
        int ai1[] = new int[ai.length];
        for (int i1 = 0; i1 < ai.length; i1++)
        {
            ai1[i1] = resources.getColor(ai[i1]);
        }

        setColorSchemeColors(ai1);
    }

    public void setDistanceToTriggerSync(int i1)
    {
        h = i1;
    }

    public void setOnRefreshListener(a a1)
    {
        e = a1;
    }

    public void setProgressBackgroundColor(int i1)
    {
        setProgressBackgroundColorSchemeResource(i1);
    }

    public void setProgressBackgroundColorSchemeColor(int i1)
    {
        t.setBackgroundColor(i1);
        w.b(i1);
    }

    public void setProgressBackgroundColorSchemeResource(int i1)
    {
        setProgressBackgroundColorSchemeColor(getResources().getColor(i1));
    }

    public void setProgressViewEndTarget(boolean flag, int i1)
    {
        C = i1;
        p = flag;
        t.invalidate();
    }

    public void setProgressViewOffset(boolean flag, int i1, int j1)
    {
        p = flag;
        t.setVisibility(8);
        j = i1;
        b = i1;
        C = j1;
        G = true;
        t.invalidate();
    }

    public void setRefreshing(boolean flag)
    {
        if (flag && f != flag)
        {
            f = flag;
            android.view.animation.Animation.AnimationListener animationlistener;
            int i1;
            if (!G)
            {
                i1 = (int)(C + (float)b);
            } else
            {
                i1 = (int)C;
            }
            a(i1 - j, true);
            D = false;
            animationlistener = H;
            t.setVisibility(0);
            if (android.os.Build.VERSION.SDK_INT >= 11)
            {
                w.setAlpha(255);
            }
            x = new Animation() {

                final SwipeRefreshLayout a;

                public final void applyTransformation(float f1, Transformation transformation)
                {
                    SwipeRefreshLayout.a(a, f1);
                }

            
            {
                a = SwipeRefreshLayout.this;
                super();
            }
            };
            x.setDuration(i);
            if (animationlistener != null)
            {
                t.a = animationlistener;
            }
            t.clearAnimation();
            t.startAnimation(x);
            return;
        } else
        {
            a(flag, false);
            return;
        }
    }

    public void setSize(int i1)
    {
        if (i1 != 0 && i1 != 1)
        {
            return;
        }
        DisplayMetrics displaymetrics = getResources().getDisplayMetrics();
        if (i1 == 0)
        {
            int j1 = (int)(displaymetrics.density * 56F);
            E = j1;
            F = j1;
        } else
        {
            int k1 = (int)(displaymetrics.density * 40F);
            E = k1;
            F = k1;
        }
        t.setImageDrawable(null);
        w.a(i1);
        t.setImageDrawable(w);
    }

}
