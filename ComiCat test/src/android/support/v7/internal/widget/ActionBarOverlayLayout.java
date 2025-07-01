// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package android.support.v7.internal.widget;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.res.Configuration;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.support.v7.widget.Toolbar;
import android.util.AttributeSet;
import android.view.Menu;
import android.view.View;
import android.view.ViewGroup;
import ba;
import bb;
import bh;
import bp;
import bt;
import bu;
import cs;
import ei;
import ej;
import eu;

// Referenced classes of package android.support.v7.internal.widget:
//            ContentFrameLayout, ActionBarContainer

public class ActionBarOverlayLayout extends ViewGroup
    implements ba, ei
{
    public static class LayoutParams extends android.view.ViewGroup.MarginLayoutParams
    {

        public LayoutParams()
        {
            super(-1, -1);
        }

        public LayoutParams(Context context, AttributeSet attributeset)
        {
            super(context, attributeset);
        }

        public LayoutParams(android.view.ViewGroup.LayoutParams layoutparams)
        {
            super(layoutparams);
        }
    }

    public static interface a
    {

        public abstract void a();

        public abstract void a(int i1);

        public abstract void a(boolean flag);

        public abstract void b();

        public abstract void c();
    }


    static final int c[];
    private final bt A;
    private final bt B;
    private final Runnable C;
    private final Runnable D;
    private final bb E;
    public boolean a;
    public boolean b;
    private int d;
    private int e;
    private ContentFrameLayout f;
    private ActionBarContainer g;
    private ActionBarContainer h;
    private ej i;
    private Drawable j;
    private boolean k;
    private boolean l;
    private boolean m;
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
    private bp y;
    private bp z;

    public ActionBarOverlayLayout(Context context)
    {
        this(context, null);
    }

    public ActionBarOverlayLayout(Context context, AttributeSet attributeset)
    {
        super(context, attributeset);
        e = 0;
        p = new Rect();
        q = new Rect();
        r = new Rect();
        s = new Rect();
        t = new Rect();
        u = new Rect();
        w = 600;
        A = new bu() {

            final ActionBarOverlayLayout a;

            public final void onAnimationCancel(View view)
            {
                ActionBarOverlayLayout.a(a, null);
                ActionBarOverlayLayout.a(a);
            }

            public final void onAnimationEnd(View view)
            {
                ActionBarOverlayLayout.a(a, null);
                ActionBarOverlayLayout.a(a);
            }

            
            {
                a = ActionBarOverlayLayout.this;
                super();
            }
        };
        B = new bu() {

            final ActionBarOverlayLayout a;

            public final void onAnimationCancel(View view)
            {
                ActionBarOverlayLayout.b(a, null);
                ActionBarOverlayLayout.a(a);
            }

            public final void onAnimationEnd(View view)
            {
                ActionBarOverlayLayout.b(a, null);
                ActionBarOverlayLayout.a(a);
            }

            
            {
                a = ActionBarOverlayLayout.this;
                super();
            }
        };
        C = new Runnable() {

            final ActionBarOverlayLayout a;

            public final void run()
            {
                ActionBarOverlayLayout.b(a);
                ActionBarOverlayLayout.a(a, bh.s(ActionBarOverlayLayout.d(a)).c(0.0F).a(ActionBarOverlayLayout.c(a)));
                if (ActionBarOverlayLayout.e(a) != null && ActionBarOverlayLayout.e(a).getVisibility() != 8)
                {
                    ActionBarOverlayLayout.b(a, bh.s(ActionBarOverlayLayout.e(a)).c(0.0F).a(ActionBarOverlayLayout.f(a)));
                }
            }

            
            {
                a = ActionBarOverlayLayout.this;
                super();
            }
        };
        D = new Runnable() {

            final ActionBarOverlayLayout a;

            public final void run()
            {
                ActionBarOverlayLayout.b(a);
                ActionBarOverlayLayout.a(a, bh.s(ActionBarOverlayLayout.d(a)).c(-ActionBarOverlayLayout.d(a).getHeight()).a(ActionBarOverlayLayout.c(a)));
                if (ActionBarOverlayLayout.e(a) != null && ActionBarOverlayLayout.e(a).getVisibility() != 8)
                {
                    ActionBarOverlayLayout.b(a, bh.s(ActionBarOverlayLayout.e(a)).c(ActionBarOverlayLayout.e(a).getHeight()).a(ActionBarOverlayLayout.f(a)));
                }
            }

            
            {
                a = ActionBarOverlayLayout.this;
                super();
            }
        };
        a(context);
        E = new bb(this);
    }

    static bp a(ActionBarOverlayLayout actionbaroverlaylayout, bp bp1)
    {
        actionbaroverlaylayout.y = bp1;
        return bp1;
    }

    private void a(Context context)
    {
        boolean flag1 = true;
        TypedArray typedarray = getContext().getTheme().obtainStyledAttributes(c);
        d = typedarray.getDimensionPixelSize(0, 0);
        j = typedarray.getDrawable(1);
        boolean flag;
        if (j == null)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        setWillNotDraw(flag);
        typedarray.recycle();
        if (context.getApplicationInfo().targetSdkVersion < 19)
        {
            flag = flag1;
        } else
        {
            flag = false;
        }
        k = flag;
        x = cs.a(context, null);
    }

    static boolean a(ActionBarOverlayLayout actionbaroverlaylayout)
    {
        actionbaroverlaylayout.m = false;
        return false;
    }

    private static boolean a(View view, Rect rect, boolean flag, boolean flag1)
    {
        boolean flag2 = false;
        view = (LayoutParams)view.getLayoutParams();
        if (((LayoutParams) (view)).leftMargin != rect.left)
        {
            view.leftMargin = rect.left;
            flag2 = true;
        }
        boolean flag3 = flag2;
        if (flag)
        {
            flag3 = flag2;
            if (((LayoutParams) (view)).topMargin != rect.top)
            {
                view.topMargin = rect.top;
                flag3 = true;
            }
        }
        if (((LayoutParams) (view)).rightMargin != rect.right)
        {
            view.rightMargin = rect.right;
            flag3 = true;
        }
        if (flag1 && ((LayoutParams) (view)).bottomMargin != rect.bottom)
        {
            view.bottomMargin = rect.bottom;
            return true;
        } else
        {
            return flag3;
        }
    }

    static bp b(ActionBarOverlayLayout actionbaroverlaylayout, bp bp1)
    {
        actionbaroverlaylayout.z = bp1;
        return bp1;
    }

    static void b(ActionBarOverlayLayout actionbaroverlaylayout)
    {
        actionbaroverlaylayout.h();
    }

    static bt c(ActionBarOverlayLayout actionbaroverlaylayout)
    {
        return actionbaroverlaylayout.A;
    }

    static ActionBarContainer d(ActionBarOverlayLayout actionbaroverlaylayout)
    {
        return actionbaroverlaylayout.h;
    }

    static ActionBarContainer e(ActionBarOverlayLayout actionbaroverlaylayout)
    {
        return actionbaroverlaylayout.g;
    }

    static bt f(ActionBarOverlayLayout actionbaroverlaylayout)
    {
        return actionbaroverlaylayout.B;
    }

    private void g()
    {
        if (f == null)
        {
            f = (ContentFrameLayout)findViewById(cv.f.action_bar_activity_content);
            h = (ActionBarContainer)findViewById(cv.f.action_bar_container);
            Object obj = findViewById(cv.f.action_bar);
            if (obj instanceof ej)
            {
                obj = (ej)obj;
            } else
            if (obj instanceof Toolbar)
            {
                obj = ((Toolbar)obj).getWrapper();
            } else
            {
                throw new IllegalStateException((new StringBuilder("Can't make a decor toolbar out of ")).append(obj.getClass().getSimpleName()).toString());
            }
            i = ((ej) (obj));
            g = (ActionBarContainer)findViewById(cv.f.split_action_bar);
        }
    }

    private void h()
    {
        removeCallbacks(C);
        removeCallbacks(D);
        if (y != null)
        {
            y.a();
        }
        if (z != null)
        {
            z.a();
        }
    }

    public final void a(int i1)
    {
        g();
        switch (i1)
        {
        default:
            return;

        case 2: // '\002'
            i.g();
            return;

        case 5: // '\005'
            i.h();
            return;

        case 9: // '\t'
            setOverlayMode(true);
            break;
        }
    }

    public final boolean a()
    {
        g();
        return i.i();
    }

    public final boolean b()
    {
        g();
        return i.j();
    }

    public final boolean c()
    {
        g();
        return i.k();
    }

    protected boolean checkLayoutParams(android.view.ViewGroup.LayoutParams layoutparams)
    {
        return layoutparams instanceof LayoutParams;
    }

    public final boolean d()
    {
        g();
        return i.l();
    }

    public void draw(Canvas canvas)
    {
        super.draw(canvas);
        if (j != null && !k)
        {
            int i1;
            if (h.getVisibility() == 0)
            {
                i1 = (int)((float)h.getBottom() + bh.p(h) + 0.5F);
            } else
            {
                i1 = 0;
            }
            j.setBounds(0, i1, getWidth(), j.getIntrinsicHeight() + i1);
            j.draw(canvas);
        }
    }

    public final boolean e()
    {
        g();
        return i.m();
    }

    public final void f()
    {
        g();
        i.o();
    }

    protected boolean fitSystemWindows(Rect rect)
    {
        g();
        bh.v(this);
        boolean flag1 = a(h, rect, true, false);
        boolean flag = flag1;
        if (g != null)
        {
            flag = flag1 | a(g, rect, false, true);
        }
        s.set(rect);
        eu.a(this, s, p);
        if (!q.equals(p))
        {
            q.set(p);
            flag = true;
        }
        if (flag)
        {
            requestLayout();
        }
        return true;
    }

    protected android.view.ViewGroup.LayoutParams generateDefaultLayoutParams()
    {
        return new LayoutParams();
    }

    public android.view.ViewGroup.LayoutParams generateLayoutParams(AttributeSet attributeset)
    {
        return new LayoutParams(getContext(), attributeset);
    }

    protected android.view.ViewGroup.LayoutParams generateLayoutParams(android.view.ViewGroup.LayoutParams layoutparams)
    {
        return new LayoutParams(layoutparams);
    }

    public int getActionBarHideOffset()
    {
        if (h != null)
        {
            return -(int)bh.p(h);
        } else
        {
            return 0;
        }
    }

    public int getNestedScrollAxes()
    {
        return E.a;
    }

    public CharSequence getTitle()
    {
        g();
        return i.e();
    }

    protected void onConfigurationChanged(Configuration configuration)
    {
        if (android.os.Build.VERSION.SDK_INT >= 8)
        {
            super.onConfigurationChanged(configuration);
        }
        a(getContext());
        bh.w(this);
    }

    protected void onDetachedFromWindow()
    {
        super.onDetachedFromWindow();
        h();
    }

    protected void onLayout(boolean flag, int i1, int j1, int k1, int l1)
    {
        int i2 = getChildCount();
        int j2 = getPaddingLeft();
        getPaddingRight();
        int k2 = getPaddingTop();
        int l2 = getPaddingBottom();
        i1 = 0;
        while (i1 < i2) 
        {
            View view = getChildAt(i1);
            if (view.getVisibility() != 8)
            {
                LayoutParams layoutparams = (LayoutParams)view.getLayoutParams();
                int i3 = view.getMeasuredWidth();
                int j3 = view.getMeasuredHeight();
                int k3 = layoutparams.leftMargin + j2;
                if (view == g)
                {
                    k1 = l1 - j1 - l2 - j3 - layoutparams.bottomMargin;
                } else
                {
                    k1 = layoutparams.topMargin + k2;
                }
                view.layout(k3, k1, i3 + k3, j3 + k1);
            }
            i1++;
        }
    }

    protected void onMeasure(int i1, int j1)
    {
        g();
        measureChildWithMargins(h, i1, 0, j1, 0);
        Object obj = (LayoutParams)h.getLayoutParams();
        int l2 = Math.max(0, h.getMeasuredWidth() + ((LayoutParams) (obj)).leftMargin + ((LayoutParams) (obj)).rightMargin);
        int k1 = h.getMeasuredHeight();
        int l1 = ((LayoutParams) (obj)).topMargin;
        int k2 = Math.max(0, ((LayoutParams) (obj)).bottomMargin + (k1 + l1));
        k1 = eu.a(0, bh.l(h));
        int i2 = k1;
        int j2 = l2;
        l1 = k2;
        if (g != null)
        {
            measureChildWithMargins(g, i1, 0, j1, 0);
            obj = (LayoutParams)g.getLayoutParams();
            j2 = Math.max(l2, g.getMeasuredWidth() + ((LayoutParams) (obj)).leftMargin + ((LayoutParams) (obj)).rightMargin);
            l1 = g.getMeasuredHeight();
            i2 = ((LayoutParams) (obj)).topMargin;
            l1 = Math.max(k2, ((LayoutParams) (obj)).bottomMargin + (l1 + i2));
            i2 = eu.a(k1, bh.l(g));
        }
        if ((bh.v(this) & 0x100) != 0)
        {
            k2 = 1;
        } else
        {
            k2 = 0;
        }
        if (k2 != 0)
        {
            int i3 = d;
            k1 = i3;
            if (l)
            {
                k1 = i3;
                if (h.getTabContainer() != null)
                {
                    k1 = i3 + d;
                }
            }
        } else
        if (h.getVisibility() != 8)
        {
            k1 = h.getMeasuredHeight();
        } else
        {
            k1 = 0;
        }
        r.set(p);
        t.set(s);
        if (!a && k2 == 0)
        {
            obj = r;
            obj.top = k1 + ((Rect) (obj)).top;
            obj = r;
            obj.bottom = ((Rect) (obj)).bottom + 0;
        } else
        {
            Rect rect = t;
            rect.top = k1 + rect.top;
            rect = t;
            rect.bottom = rect.bottom + 0;
        }
        a(f, r, true, true);
        if (!u.equals(t))
        {
            u.set(t);
            f.a(t);
        }
        measureChildWithMargins(f, i1, 0, j1, 0);
        obj = (LayoutParams)f.getLayoutParams();
        k1 = Math.max(j2, f.getMeasuredWidth() + ((LayoutParams) (obj)).leftMargin + ((LayoutParams) (obj)).rightMargin);
        j2 = f.getMeasuredHeight();
        k2 = ((LayoutParams) (obj)).topMargin;
        l1 = Math.max(l1, ((LayoutParams) (obj)).bottomMargin + (j2 + k2));
        i2 = eu.a(i2, bh.l(f));
        j2 = getPaddingLeft();
        k2 = getPaddingRight();
        l1 = Math.max(l1 + (getPaddingTop() + getPaddingBottom()), getSuggestedMinimumHeight());
        setMeasuredDimension(bh.a(Math.max(k1 + (j2 + k2), getSuggestedMinimumWidth()), i1, i2), bh.a(l1, j1, i2 << 16));
    }

    public boolean onNestedFling(View view, float f1, float f2, boolean flag)
    {
        boolean flag1 = false;
        if (!b || !flag)
        {
            return false;
        }
        x.a(0, 0, (int)f2, 0, 0, 0x80000000, 0x7fffffff);
        if (x.e() > h.getHeight())
        {
            flag1 = true;
        }
        if (flag1)
        {
            h();
            D.run();
        } else
        {
            h();
            C.run();
        }
        m = true;
        return true;
    }

    public boolean onNestedPreFling(View view, float f1, float f2)
    {
        return false;
    }

    public void onNestedPreScroll(View view, int i1, int j1, int ai[])
    {
    }

    public void onNestedScroll(View view, int i1, int j1, int k1, int l1)
    {
        n = n + j1;
        setActionBarHideOffset(n);
    }

    public void onNestedScrollAccepted(View view, View view1, int i1)
    {
        E.a = i1;
        n = getActionBarHideOffset();
        h();
        if (v != null)
        {
            v.c();
        }
    }

    public boolean onStartNestedScroll(View view, View view1, int i1)
    {
        if ((i1 & 2) == 0 || h.getVisibility() != 0)
        {
            return false;
        } else
        {
            return b;
        }
    }

    public void onStopNestedScroll(View view)
    {
label0:
        {
            if (b && !m)
            {
                if (n > h.getHeight())
                {
                    break label0;
                }
                h();
                postDelayed(C, 600L);
            }
            return;
        }
        h();
        postDelayed(D, 600L);
    }

    public void onWindowSystemUiVisibilityChanged(int i1)
    {
        boolean flag2 = true;
        if (android.os.Build.VERSION.SDK_INT >= 16)
        {
            super.onWindowSystemUiVisibilityChanged(i1);
        }
        g();
        int j1 = o;
        o = i1;
        boolean flag;
        boolean flag1;
        if ((i1 & 4) == 0)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        if ((i1 & 0x100) != 0)
        {
            flag1 = true;
        } else
        {
            flag1 = false;
        }
        if (v != null)
        {
            a a1 = v;
            if (flag1)
            {
                flag2 = false;
            }
            a1.a(flag2);
            if (flag || !flag1)
            {
                v.a();
            } else
            {
                v.b();
            }
        }
        if (((j1 ^ i1) & 0x100) != 0 && v != null)
        {
            bh.w(this);
        }
    }

    protected void onWindowVisibilityChanged(int i1)
    {
        super.onWindowVisibilityChanged(i1);
        e = i1;
        if (v != null)
        {
            v.a(i1);
        }
    }

    public void setActionBarHideOffset(int i1)
    {
        h();
        int j1 = h.getHeight();
        i1 = Math.max(0, Math.min(i1, j1));
        bh.b(h, -i1);
        if (g != null && g.getVisibility() != 8)
        {
            i1 = (int)(((float)i1 / (float)j1) * (float)g.getHeight());
            bh.b(g, i1);
        }
    }

    public void setActionBarVisibilityCallback(a a1)
    {
        v = a1;
        if (getWindowToken() != null)
        {
            v.a(e);
            if (o != 0)
            {
                onWindowSystemUiVisibilityChanged(o);
                bh.w(this);
            }
        }
    }

    public void setHasNonEmbeddedTabs(boolean flag)
    {
        l = flag;
    }

    public void setHideOnContentScrollEnabled(boolean flag)
    {
        if (flag != b)
        {
            b = flag;
            if (!flag)
            {
                h();
                setActionBarHideOffset(0);
            }
        }
    }

    public void setIcon(int i1)
    {
        g();
        i.a(i1);
    }

    public void setIcon(Drawable drawable)
    {
        g();
        i.a(drawable);
    }

    public void setLogo(int i1)
    {
        g();
        i.b(i1);
    }

    public void setMenu(Menu menu, dy.a a1)
    {
        g();
        i.a(menu, a1);
    }

    public void setMenuPrepared()
    {
        g();
        i.n();
    }

    public void setOverlayMode(boolean flag)
    {
        a = flag;
        if (flag && getContext().getApplicationInfo().targetSdkVersion < 19)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        k = flag;
    }

    public void setShowingForActionMode(boolean flag)
    {
    }

    public void setUiOptions(int i1)
    {
    }

    public void setWindowCallback(android.view.Window.Callback callback)
    {
        g();
        i.a(callback);
    }

    public void setWindowTitle(CharSequence charsequence)
    {
        g();
        i.a(charsequence);
    }

    public boolean shouldDelayChildPressedState()
    {
        return false;
    }

    static 
    {
        c = (new int[] {
            cv.a.actionBarSize, 0x1010059
        });
    }
}
