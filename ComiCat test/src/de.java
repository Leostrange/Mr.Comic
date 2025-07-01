// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.app.Activity;
import android.app.Dialog;
import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.support.v4.app.FragmentActivity;
import android.support.v4.app.FragmentManager;
import android.support.v4.app.FragmentTransaction;
import android.support.v7.app.ActionBar;
import android.support.v7.internal.widget.AbsSpinnerCompat;
import android.support.v7.internal.widget.ActionBarContainer;
import android.support.v7.internal.widget.ActionBarContextView;
import android.support.v7.internal.widget.ActionBarOverlayLayout;
import android.support.v7.internal.widget.ScrollingTabContainerView;
import android.support.v7.widget.LinearLayoutCompat;
import android.support.v7.widget.Toolbar;
import android.util.TypedValue;
import android.view.ContextThemeWrapper;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.view.animation.AnimationUtils;
import android.widget.SpinnerAdapter;
import java.lang.ref.WeakReference;
import java.util.ArrayList;

public class de extends ActionBar
    implements android.support.v7.internal.widget.ActionBarOverlayLayout.a
{
    public final class a extends ew
        implements ds.a
    {

        final de a;
        private final Context d;
        private final ds e;
        private ew.a f;
        private WeakReference g;

        public final MenuInflater a()
        {
            return new dk(d);
        }

        public final void a(int i1)
        {
            b(de.l(a).getResources().getString(i1));
        }

        public final void a(View view)
        {
            de.j(a).setCustomView(view);
            g = new WeakReference(view);
        }

        public final void a(CharSequence charsequence)
        {
            de.j(a).setSubtitle(charsequence);
        }

        public final void a(boolean flag)
        {
            super.a(flag);
            de.j(a).setTitleOptional(flag);
        }

        public final Menu b()
        {
            return e;
        }

        public final void b(int i1)
        {
            a(de.l(a).getResources().getString(i1));
        }

        public final void b(CharSequence charsequence)
        {
            de.j(a).setTitle(charsequence);
        }

        public final void c()
        {
            if (a.b != this)
            {
                return;
            }
            ActionBarContextView actionbarcontextview;
            if (!de.a(de.h(a), de.i(a)))
            {
                a.c = this;
                a.d = f;
            } else
            {
                f.onDestroyActionMode(this);
            }
            f = null;
            a.b(false);
            actionbarcontextview = de.j(a);
            if (actionbarcontextview.m != 2)
            {
                if (actionbarcontextview.j == null)
                {
                    actionbarcontextview.c();
                } else
                {
                    actionbarcontextview.b();
                    actionbarcontextview.m = 2;
                    actionbarcontextview.l = actionbarcontextview.d();
                    actionbarcontextview.l.a();
                }
            }
            de.k(a).a().sendAccessibilityEvent(32);
            de.g(a).setHideOnContentScrollEnabled(a.e);
            a.b = null;
        }

        public final void d()
        {
            if (a.b != this)
            {
                return;
            }
            e.d();
            f.onPrepareActionMode(this, e);
            e.e();
            return;
            Exception exception;
            exception;
            e.e();
            throw exception;
        }

        public final boolean e()
        {
            e.d();
            boolean flag = f.onCreateActionMode(this, e);
            e.e();
            return flag;
            Exception exception;
            exception;
            e.e();
            throw exception;
        }

        public final CharSequence f()
        {
            return de.j(a).getTitle();
        }

        public final CharSequence g()
        {
            return de.j(a).getSubtitle();
        }

        public final boolean h()
        {
            return de.j(a).k;
        }

        public final View i()
        {
            if (g != null)
            {
                return (View)g.get();
            } else
            {
                return null;
            }
        }

        public final boolean onMenuItemSelected(ds ds1, MenuItem menuitem)
        {
            if (f != null)
            {
                return f.onActionItemClicked(this, menuitem);
            } else
            {
                return false;
            }
        }

        public final void onMenuModeChange(ds ds1)
        {
            if (f == null)
            {
                return;
            } else
            {
                d();
                de.j(a).a();
                return;
            }
        }

        public a(Context context, ew.a a1)
        {
            a = de.this;
            super();
            d = context;
            f = a1;
            de1 = new ds(context);
            de.this.e = 1;
            e = de.this;
            e.a(this);
        }
    }

    public final class b extends android.support.v7.app.ActionBar.Tab
    {

        android.support.v7.app.ActionBar.TabListener a;
        int b;
        final de c;
        private Object d;
        private Drawable e;
        private CharSequence f;
        private CharSequence g;
        private View h;

        public final CharSequence getContentDescription()
        {
            return g;
        }

        public final View getCustomView()
        {
            return h;
        }

        public final Drawable getIcon()
        {
            return e;
        }

        public final int getPosition()
        {
            return b;
        }

        public final Object getTag()
        {
            return d;
        }

        public final CharSequence getText()
        {
            return f;
        }

        public final void select()
        {
            c.selectTab(this);
        }

        public final android.support.v7.app.ActionBar.Tab setContentDescription(int i1)
        {
            return setContentDescription(de.l(c).getResources().getText(i1));
        }

        public final android.support.v7.app.ActionBar.Tab setContentDescription(CharSequence charsequence)
        {
            g = charsequence;
            if (b >= 0)
            {
                de.m(c).b(b);
            }
            return this;
        }

        public final android.support.v7.app.ActionBar.Tab setCustomView(int i1)
        {
            return setCustomView(LayoutInflater.from(c.getThemedContext()).inflate(i1, null));
        }

        public final android.support.v7.app.ActionBar.Tab setCustomView(View view)
        {
            h = view;
            if (b >= 0)
            {
                de.m(c).b(b);
            }
            return this;
        }

        public final android.support.v7.app.ActionBar.Tab setIcon(int i1)
        {
            de de1 = c;
            if (de1.f == null)
            {
                de1.f = er.a(de1.a);
            }
            return setIcon(de1.f.a(i1, false));
        }

        public final android.support.v7.app.ActionBar.Tab setIcon(Drawable drawable)
        {
            e = drawable;
            if (b >= 0)
            {
                de.m(c).b(b);
            }
            return this;
        }

        public final android.support.v7.app.ActionBar.Tab setTabListener(android.support.v7.app.ActionBar.TabListener tablistener)
        {
            a = tablistener;
            return this;
        }

        public final android.support.v7.app.ActionBar.Tab setTag(Object obj)
        {
            d = obj;
            return this;
        }

        public final android.support.v7.app.ActionBar.Tab setText(int i1)
        {
            return setText(de.l(c).getResources().getText(i1));
        }

        public final android.support.v7.app.ActionBar.Tab setText(CharSequence charsequence)
        {
            f = charsequence;
            if (b >= 0)
            {
                de.m(c).b(b);
            }
            return this;
        }

        public b()
        {
            c = de.this;
            super();
            b = -1;
        }
    }


    static final boolean j;
    private static final boolean k;
    private ArrayList A;
    private int B;
    private boolean C;
    private int D;
    private boolean E;
    private boolean F;
    private boolean G;
    private boolean H;
    private boolean I;
    private dl J;
    private boolean K;
    Context a;
    a b;
    ew c;
    ew.a d;
    boolean e;
    er f;
    final bt g;
    final bt h;
    final bv i;
    private Context l;
    private Activity m;
    private Dialog n;
    private ActionBarOverlayLayout o;
    private ActionBarContainer p;
    private ej q;
    private ActionBarContextView r;
    private ActionBarContainer s;
    private View t;
    private ScrollingTabContainerView u;
    private ArrayList v;
    private b w;
    private int x;
    private boolean y;
    private boolean z;

    public de(Activity activity, boolean flag)
    {
        v = new ArrayList();
        x = -1;
        A = new ArrayList();
        D = 0;
        E = true;
        I = true;
        g = new bu() {

            final de a;

            public final void onAnimationEnd(View view)
            {
                if (de.a(a) && de.b(a) != null)
                {
                    bh.b(de.b(a), 0.0F);
                    bh.b(de.c(a), 0.0F);
                }
                if (de.d(a) != null && de.e(a) == 1)
                {
                    de.d(a).setVisibility(8);
                }
                de.c(a).setVisibility(8);
                de.c(a).setTransitioning(false);
                de.f(a);
                view = a;
                if (((de) (view)).d != null)
                {
                    ((de) (view)).d.onDestroyActionMode(((de) (view)).c);
                    view.c = null;
                    view.d = null;
                }
                if (de.g(a) != null)
                {
                    bh.w(de.g(a));
                }
            }

            
            {
                a = de.this;
                super();
            }
        };
        h = new bu() {

            final de a;

            public final void onAnimationEnd(View view)
            {
                de.f(a);
                de.c(a).requestLayout();
            }

            
            {
                a = de.this;
                super();
            }
        };
        i = new bv() {

            final de a;

            public final void a()
            {
                ((View)de.c(a).getParent()).invalidate();
            }

            
            {
                a = de.this;
                super();
            }
        };
        m = activity;
        activity = activity.getWindow().getDecorView();
        a(activity);
        if (!flag)
        {
            t = activity.findViewById(0x1020002);
        }
    }

    public de(Dialog dialog)
    {
        v = new ArrayList();
        x = -1;
        A = new ArrayList();
        D = 0;
        E = true;
        I = true;
        g = new _cls1();
        h = new _cls2();
        i = new _cls3();
        n = dialog;
        a(dialog.getWindow().getDecorView());
    }

    private void a(android.support.v7.app.ActionBar.Tab tab, int i1)
    {
        tab = (b)tab;
        if (((b) (tab)).a == null)
        {
            throw new IllegalStateException("Action Bar Tab must have a Callback");
        }
        tab.b = i1;
        v.add(i1, tab);
        int j1 = v.size();
        for (i1++; i1 < j1; i1++)
        {
            ((b)v.get(i1)).b = i1;
        }

    }

    private void a(View view)
    {
        Object obj;
        o = (ActionBarOverlayLayout)view.findViewById(cv.f.decor_content_parent);
        if (o != null)
        {
            o.setActionBarVisibilityCallback(this);
        }
        obj = view.findViewById(cv.f.action_bar);
        if (!(obj instanceof ej)) goto _L2; else goto _L1
_L1:
        obj = (ej)obj;
_L4:
        q = ((ej) (obj));
        r = (ActionBarContextView)view.findViewById(cv.f.action_context_bar);
        p = (ActionBarContainer)view.findViewById(cv.f.action_bar_container);
        s = (ActionBarContainer)view.findViewById(cv.f.split_action_bar);
        if (q == null || r == null || p == null)
        {
            throw new IllegalStateException((new StringBuilder()).append(getClass().getSimpleName()).append(" can only be used with a compatible window decor layout").toString());
        }
        break MISSING_BLOCK_LABEL_210;
_L2:
        if (!(obj instanceof Toolbar))
        {
            break; /* Loop/switch isn't completed */
        }
        obj = ((Toolbar)obj).getWrapper();
        if (true) goto _L4; else goto _L3
_L3:
        if ((new StringBuilder("Can't make a decor toolbar out of ")).append(obj).toString() != null)
        {
            view = obj.getClass().getSimpleName();
        } else
        {
            view = "null";
        }
        throw new IllegalStateException(view);
        a = q.b();
        B = 0;
        int i1;
        boolean flag;
        boolean flag1;
        if ((q.p() & 4) != 0)
        {
            i1 = 1;
        } else
        {
            i1 = 0;
        }
        if (i1 != 0)
        {
            y = true;
        }
        view = dg.a(a);
        if (((dg) (view)).a.getApplicationInfo().targetSdkVersion < 14)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        if (flag || i1 != 0)
        {
            flag1 = true;
        } else
        {
            flag1 = false;
        }
        setHomeButtonEnabled(flag1);
        c(view.a());
        view = a.obtainStyledAttributes(null, cv.k.ActionBar, cv.a.actionBarStyle, 0);
        if (view.getBoolean(cv.k.ActionBar_hideOnContentScroll, false))
        {
            setHideOnContentScrollEnabled(true);
        }
        i1 = view.getDimensionPixelSize(cv.k.ActionBar_elevation, 0);
        if (i1 != 0)
        {
            setElevation(i1);
        }
        view.recycle();
        return;
    }

    static boolean a(de de1)
    {
        return de1.E;
    }

    static boolean a(boolean flag, boolean flag1)
    {
        return a(flag, flag1, false);
    }

    private static boolean a(boolean flag, boolean flag1, boolean flag2)
    {
        while (flag2 || !flag && !flag1) 
        {
            return true;
        }
        return false;
    }

    static View b(de de1)
    {
        return de1.t;
    }

    static ActionBarContainer c(de de1)
    {
        return de1.p;
    }

    private void c(boolean flag)
    {
        boolean flag2 = true;
        C = flag;
        Object obj;
        boolean flag1;
        if (!C)
        {
            q.a(null);
            p.setTabContainer(u);
        } else
        {
            p.setTabContainer(null);
            q.a(u);
        }
        if (getNavigationMode() == 2)
        {
            flag1 = true;
        } else
        {
            flag1 = false;
        }
        if (u != null)
        {
            if (flag1)
            {
                u.setVisibility(0);
                if (o != null)
                {
                    bh.w(o);
                }
            } else
            {
                u.setVisibility(8);
            }
        }
        obj = q;
        if (!C && flag1)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        ((ej) (obj)).a(flag);
        obj = o;
        if (!C && flag1)
        {
            flag = flag2;
        } else
        {
            flag = false;
        }
        ((ActionBarOverlayLayout) (obj)).setHasNonEmbeddedTabs(flag);
    }

    static ActionBarContainer d(de de1)
    {
        return de1.s;
    }

    private void d()
    {
        if (u != null)
        {
            return;
        }
        ScrollingTabContainerView scrollingtabcontainerview = new ScrollingTabContainerView(a);
        if (C)
        {
            scrollingtabcontainerview.setVisibility(0);
            q.a(scrollingtabcontainerview);
        } else
        {
            if (getNavigationMode() == 2)
            {
                scrollingtabcontainerview.setVisibility(0);
                if (o != null)
                {
                    bh.w(o);
                }
            } else
            {
                scrollingtabcontainerview.setVisibility(8);
            }
            p.setTabContainer(scrollingtabcontainerview);
        }
        u = scrollingtabcontainerview;
    }

    private void d(boolean flag)
    {
        if (a(F, G, H))
        {
            if (!I)
            {
                I = true;
                if (J != null)
                {
                    J.b();
                }
                p.setVisibility(0);
                if (D == 0 && k && (K || flag))
                {
                    bh.b(p, 0.0F);
                    float f3 = -p.getHeight();
                    float f1 = f3;
                    if (flag)
                    {
                        int ai[] = new int[2];
                        int[] _tmp = ai;
                        ai[0] = 0;
                        ai[1] = 0;
                        p.getLocationInWindow(ai);
                        f1 = f3 - (float)ai[1];
                    }
                    bh.b(p, f1);
                    dl dl1 = new dl();
                    bp bp1 = bh.s(p).c(0.0F);
                    bp1.a(i);
                    dl1.a(bp1);
                    if (E && t != null)
                    {
                        bh.b(t, f1);
                        dl1.a(bh.s(t).c(0.0F));
                    }
                    if (s != null && B == 1)
                    {
                        bh.b(s, s.getHeight());
                        s.setVisibility(0);
                        dl1.a(bh.s(s).c(0.0F));
                    }
                    dl1.a(AnimationUtils.loadInterpolator(a, 0x10a0006));
                    dl1.c();
                    dl1.a(h);
                    J = dl1;
                    dl1.a();
                } else
                {
                    bh.c(p, 1.0F);
                    bh.b(p, 0.0F);
                    if (E && t != null)
                    {
                        bh.b(t, 0.0F);
                    }
                    if (s != null && B == 1)
                    {
                        bh.c(s, 1.0F);
                        bh.b(s, 0.0F);
                        s.setVisibility(0);
                    }
                    h.onAnimationEnd(null);
                }
                if (o != null)
                {
                    bh.w(o);
                }
            }
        } else
        if (I)
        {
            I = false;
            if (J != null)
            {
                J.b();
            }
            if (D == 0 && k && (K || flag))
            {
                bh.c(p, 1.0F);
                p.setTransitioning(true);
                dl dl2 = new dl();
                float f4 = -p.getHeight();
                float f2 = f4;
                if (flag)
                {
                    int ai1[] = new int[2];
                    int[] _tmp1 = ai1;
                    ai1[0] = 0;
                    ai1[1] = 0;
                    p.getLocationInWindow(ai1);
                    f2 = f4 - (float)ai1[1];
                }
                bp bp2 = bh.s(p).c(f2);
                bp2.a(i);
                dl2.a(bp2);
                if (E && t != null)
                {
                    dl2.a(bh.s(t).c(f2));
                }
                if (s != null && s.getVisibility() == 0)
                {
                    bh.c(s, 1.0F);
                    dl2.a(bh.s(s).c(s.getHeight()));
                }
                dl2.a(AnimationUtils.loadInterpolator(a, 0x10a0005));
                dl2.c();
                dl2.a(g);
                J = dl2;
                dl2.a();
                return;
            } else
            {
                g.onAnimationEnd(null);
                return;
            }
        }
    }

    static int e(de de1)
    {
        return de1.B;
    }

    static dl f(de de1)
    {
        de1.J = null;
        return null;
    }

    static ActionBarOverlayLayout g(de de1)
    {
        return de1.o;
    }

    static boolean h(de de1)
    {
        return de1.F;
    }

    static boolean i(de de1)
    {
        return de1.G;
    }

    static ActionBarContextView j(de de1)
    {
        return de1.r;
    }

    static ej k(de de1)
    {
        return de1.q;
    }

    static Context l(de de1)
    {
        return de1.a;
    }

    static ScrollingTabContainerView m(de de1)
    {
        return de1.u;
    }

    public final void a()
    {
        if (G)
        {
            G = false;
            d(true);
        }
    }

    public final void a(int i1)
    {
        D = i1;
    }

    public final void a(boolean flag)
    {
        E = flag;
    }

    public void addOnMenuVisibilityListener(android.support.v7.app.ActionBar.OnMenuVisibilityListener onmenuvisibilitylistener)
    {
        A.add(onmenuvisibilitylistener);
    }

    public void addTab(android.support.v7.app.ActionBar.Tab tab)
    {
        addTab(tab, v.isEmpty());
    }

    public void addTab(android.support.v7.app.ActionBar.Tab tab, int i1)
    {
        addTab(tab, i1, v.isEmpty());
    }

    public void addTab(android.support.v7.app.ActionBar.Tab tab, int i1, boolean flag)
    {
        d();
        ScrollingTabContainerView scrollingtabcontainerview = u;
        android.support.v7.internal.widget.ScrollingTabContainerView.TabView tabview = scrollingtabcontainerview.a(tab, false);
        scrollingtabcontainerview.b.addView(tabview, i1, new android.support.v7.widget.LinearLayoutCompat.LayoutParams());
        if (scrollingtabcontainerview.c != null)
        {
            ((android.support.v7.internal.widget.ScrollingTabContainerView.a)((AbsSpinnerCompat) (scrollingtabcontainerview.c)).a).notifyDataSetChanged();
        }
        if (flag)
        {
            tabview.setSelected(true);
        }
        if (scrollingtabcontainerview.d)
        {
            scrollingtabcontainerview.requestLayout();
        }
        a(tab, i1);
        if (flag)
        {
            selectTab(tab);
        }
    }

    public void addTab(android.support.v7.app.ActionBar.Tab tab, boolean flag)
    {
        d();
        ScrollingTabContainerView scrollingtabcontainerview = u;
        android.support.v7.internal.widget.ScrollingTabContainerView.TabView tabview = scrollingtabcontainerview.a(tab, false);
        scrollingtabcontainerview.b.addView(tabview, new android.support.v7.widget.LinearLayoutCompat.LayoutParams());
        if (scrollingtabcontainerview.c != null)
        {
            ((android.support.v7.internal.widget.ScrollingTabContainerView.a)((AbsSpinnerCompat) (scrollingtabcontainerview.c)).a).notifyDataSetChanged();
        }
        if (flag)
        {
            tabview.setSelected(true);
        }
        if (scrollingtabcontainerview.d)
        {
            scrollingtabcontainerview.requestLayout();
        }
        a(tab, v.size());
        if (flag)
        {
            selectTab(tab);
        }
    }

    public final void b()
    {
        if (!G)
        {
            G = true;
            d(true);
        }
    }

    public final void b(boolean flag)
    {
        boolean flag1 = false;
        Object obj;
        int i1;
        if (flag)
        {
            if (!H)
            {
                H = true;
                if (o != null)
                {
                    o.setShowingForActionMode(true);
                }
                d(false);
            }
        } else
        if (H)
        {
            H = false;
            if (o != null)
            {
                o.setShowingForActionMode(false);
            }
            d(false);
        }
        obj = q;
        if (flag)
        {
            i1 = 8;
        } else
        {
            i1 = 0;
        }
        ((ej) (obj)).f(i1);
        obj = r;
        if (flag)
        {
            i1 = ((flag1) ? 1 : 0);
        } else
        {
            i1 = 8;
        }
        ((ActionBarContextView) (obj)).a(i1);
    }

    public final void c()
    {
        if (J != null)
        {
            J.b();
            J = null;
        }
    }

    public boolean collapseActionView()
    {
        if (q != null && q.c())
        {
            q.d();
            return true;
        } else
        {
            return false;
        }
    }

    public void dispatchMenuVisibilityChanged(boolean flag)
    {
        if (flag != z)
        {
            z = flag;
            int j1 = A.size();
            int i1 = 0;
            while (i1 < j1) 
            {
                ((android.support.v7.app.ActionBar.OnMenuVisibilityListener)A.get(i1)).onMenuVisibilityChanged(flag);
                i1++;
            }
        }
    }

    public View getCustomView()
    {
        return q.u();
    }

    public int getDisplayOptions()
    {
        return q.p();
    }

    public float getElevation()
    {
        return bh.u(p);
    }

    public int getHeight()
    {
        return p.getHeight();
    }

    public int getHideOffset()
    {
        return o.getActionBarHideOffset();
    }

    public int getNavigationItemCount()
    {
        switch (q.r())
        {
        default:
            return 0;

        case 2: // '\002'
            return v.size();

        case 1: // '\001'
            return q.t();
        }
    }

    public int getNavigationMode()
    {
        return q.r();
    }

    public int getSelectedNavigationIndex()
    {
        q.r();
        JVM INSTR tableswitch 1 2: default 32
    //                   1 49
    //                   2 34;
           goto _L1 _L2 _L3
_L1:
        return -1;
_L3:
        if (w != null)
        {
            return w.getPosition();
        }
          goto _L1
_L2:
        return q.s();
    }

    public android.support.v7.app.ActionBar.Tab getSelectedTab()
    {
        return w;
    }

    public CharSequence getSubtitle()
    {
        return q.f();
    }

    public android.support.v7.app.ActionBar.Tab getTabAt(int i1)
    {
        return (android.support.v7.app.ActionBar.Tab)v.get(i1);
    }

    public int getTabCount()
    {
        return v.size();
    }

    public Context getThemedContext()
    {
        if (l == null)
        {
            TypedValue typedvalue = new TypedValue();
            a.getTheme().resolveAttribute(cv.a.actionBarWidgetTheme, typedvalue, true);
            int i1 = typedvalue.resourceId;
            if (i1 != 0)
            {
                l = new ContextThemeWrapper(a, i1);
            } else
            {
                l = a;
            }
        }
        return l;
    }

    public CharSequence getTitle()
    {
        return q.e();
    }

    public void hide()
    {
        if (!F)
        {
            F = true;
            d(false);
        }
    }

    public boolean isHideOnContentScrollEnabled()
    {
        return o.b;
    }

    public boolean isShowing()
    {
        int i1 = getHeight();
        return I && (i1 == 0 || getHideOffset() < i1);
    }

    public boolean isTitleTruncated()
    {
        return q != null && q.q();
    }

    public android.support.v7.app.ActionBar.Tab newTab()
    {
        return new b();
    }

    public void onConfigurationChanged(Configuration configuration)
    {
        c(dg.a(a).a());
    }

    public void removeAllTabs()
    {
        if (w != null)
        {
            selectTab(null);
        }
        v.clear();
        if (u != null)
        {
            ScrollingTabContainerView scrollingtabcontainerview = u;
            scrollingtabcontainerview.b.removeAllViews();
            if (scrollingtabcontainerview.c != null)
            {
                ((android.support.v7.internal.widget.ScrollingTabContainerView.a)((AbsSpinnerCompat) (scrollingtabcontainerview.c)).a).notifyDataSetChanged();
            }
            if (scrollingtabcontainerview.d)
            {
                scrollingtabcontainerview.requestLayout();
            }
        }
        x = -1;
    }

    public void removeOnMenuVisibilityListener(android.support.v7.app.ActionBar.OnMenuVisibilityListener onmenuvisibilitylistener)
    {
        A.remove(onmenuvisibilitylistener);
    }

    public void removeTab(android.support.v7.app.ActionBar.Tab tab)
    {
        removeTabAt(tab.getPosition());
    }

    public void removeTabAt(int i1)
    {
        if (u != null)
        {
            Object obj;
            int j1;
            int l1;
            if (w != null)
            {
                j1 = w.getPosition();
            } else
            {
                j1 = x;
            }
            obj = u;
            ((ScrollingTabContainerView) (obj)).b.removeViewAt(i1);
            if (((ScrollingTabContainerView) (obj)).c != null)
            {
                ((android.support.v7.internal.widget.ScrollingTabContainerView.a)((AbsSpinnerCompat) (((ScrollingTabContainerView) (obj)).c)).a).notifyDataSetChanged();
            }
            if (((ScrollingTabContainerView) (obj)).d)
            {
                ((ScrollingTabContainerView) (obj)).requestLayout();
            }
            obj = (b)v.remove(i1);
            if (obj != null)
            {
                obj.b = -1;
            }
            l1 = v.size();
            for (int k1 = i1; k1 < l1; k1++)
            {
                ((b)v.get(k1)).b = k1;
            }

            if (j1 == i1)
            {
                Object obj1;
                if (v.isEmpty())
                {
                    obj1 = null;
                } else
                {
                    obj1 = (b)v.get(Math.max(0, i1 - 1));
                }
                selectTab(((android.support.v7.app.ActionBar.Tab) (obj1)));
                return;
            }
        }
    }

    public void selectTab(android.support.v7.app.ActionBar.Tab tab)
    {
        int i1 = -1;
        if (getNavigationMode() == 2) goto _L2; else goto _L1
_L1:
        if (tab != null)
        {
            i1 = tab.getPosition();
        } else
        {
            i1 = -1;
        }
        x = i1;
_L4:
        return;
_L2:
        FragmentTransaction fragmenttransaction;
        if ((m instanceof FragmentActivity) && !q.a().isInEditMode())
        {
            fragmenttransaction = ((FragmentActivity)m).getSupportFragmentManager().beginTransaction().disallowAddToBackStack();
        } else
        {
            fragmenttransaction = null;
        }
        if (w != tab)
        {
            break; /* Loop/switch isn't completed */
        }
        if (w != null)
        {
            w.a.onTabReselected(w, fragmenttransaction);
            u.a(tab.getPosition());
        }
_L5:
        if (fragmenttransaction != null && !fragmenttransaction.isEmpty())
        {
            fragmenttransaction.commit();
            return;
        }
        if (true) goto _L4; else goto _L3
_L3:
        ScrollingTabContainerView scrollingtabcontainerview = u;
        if (tab != null)
        {
            i1 = tab.getPosition();
        }
        scrollingtabcontainerview.setTabSelected(i1);
        if (w != null)
        {
            w.a.onTabUnselected(w, fragmenttransaction);
        }
        w = (b)tab;
        if (w != null)
        {
            w.a.onTabSelected(w, fragmenttransaction);
        }
          goto _L5
        if (true) goto _L4; else goto _L6
_L6:
    }

    public void setBackgroundDrawable(Drawable drawable)
    {
        p.setPrimaryBackground(drawable);
    }

    public void setCustomView(int i1)
    {
        setCustomView(LayoutInflater.from(getThemedContext()).inflate(i1, q.a(), false));
    }

    public void setCustomView(View view)
    {
        q.a(view);
    }

    public void setCustomView(View view, android.support.v7.app.ActionBar.LayoutParams layoutparams)
    {
        view.setLayoutParams(layoutparams);
        q.a(view);
    }

    public void setDefaultDisplayHomeAsUpEnabled(boolean flag)
    {
        if (!y)
        {
            setDisplayHomeAsUpEnabled(flag);
        }
    }

    public void setDisplayHomeAsUpEnabled(boolean flag)
    {
        byte byte0;
        if (flag)
        {
            byte0 = 4;
        } else
        {
            byte0 = 0;
        }
        setDisplayOptions(byte0, 4);
    }

    public void setDisplayOptions(int i1)
    {
        if ((i1 & 4) != 0)
        {
            y = true;
        }
        q.c(i1);
    }

    public void setDisplayOptions(int i1, int j1)
    {
        int k1 = q.p();
        if ((j1 & 4) != 0)
        {
            y = true;
        }
        q.c(k1 & ~j1 | i1 & j1);
    }

    public void setDisplayShowCustomEnabled(boolean flag)
    {
        byte byte0;
        if (flag)
        {
            byte0 = 16;
        } else
        {
            byte0 = 0;
        }
        setDisplayOptions(byte0, 16);
    }

    public void setDisplayShowHomeEnabled(boolean flag)
    {
        byte byte0;
        if (flag)
        {
            byte0 = 2;
        } else
        {
            byte0 = 0;
        }
        setDisplayOptions(byte0, 2);
    }

    public void setDisplayShowTitleEnabled(boolean flag)
    {
        byte byte0;
        if (flag)
        {
            byte0 = 8;
        } else
        {
            byte0 = 0;
        }
        setDisplayOptions(byte0, 8);
    }

    public void setDisplayUseLogoEnabled(boolean flag)
    {
        int i1;
        if (flag)
        {
            i1 = 1;
        } else
        {
            i1 = 0;
        }
        setDisplayOptions(i1, 1);
    }

    public void setElevation(float f1)
    {
        bh.f(p, f1);
        if (s != null)
        {
            bh.f(s, f1);
        }
    }

    public void setHideOffset(int i1)
    {
        if (i1 != 0 && !o.a)
        {
            throw new IllegalStateException("Action bar must be in overlay mode (Window.FEATURE_OVERLAY_ACTION_BAR) to set a non-zero hide offset");
        } else
        {
            o.setActionBarHideOffset(i1);
            return;
        }
    }

    public void setHideOnContentScrollEnabled(boolean flag)
    {
        if (flag && !o.a)
        {
            throw new IllegalStateException("Action bar must be in overlay mode (Window.FEATURE_OVERLAY_ACTION_BAR) to enable hide on content scroll");
        } else
        {
            e = flag;
            o.setHideOnContentScrollEnabled(flag);
            return;
        }
    }

    public void setHomeActionContentDescription(int i1)
    {
        q.h(i1);
    }

    public void setHomeActionContentDescription(CharSequence charsequence)
    {
        q.d(charsequence);
    }

    public void setHomeAsUpIndicator(int i1)
    {
        q.g(i1);
    }

    public void setHomeAsUpIndicator(Drawable drawable)
    {
        q.c(drawable);
    }

    public void setHomeButtonEnabled(boolean flag)
    {
    }

    public void setIcon(int i1)
    {
        q.a(i1);
    }

    public void setIcon(Drawable drawable)
    {
        q.a(drawable);
    }

    public void setListNavigationCallbacks(SpinnerAdapter spinneradapter, android.support.v7.app.ActionBar.OnNavigationListener onnavigationlistener)
    {
        q.a(spinneradapter, new db(onnavigationlistener));
    }

    public void setLogo(int i1)
    {
        q.b(i1);
    }

    public void setLogo(Drawable drawable)
    {
        q.b(drawable);
    }

    public void setNavigationMode(int i1)
    {
        int j1;
        boolean flag1;
        flag1 = true;
        j1 = q.r();
        j1;
        JVM INSTR tableswitch 2 2: default 32
    //                   2 144;
           goto _L1 _L2
_L1:
        if (j1 != i1 && !C && o != null)
        {
            bh.w(o);
        }
        q.d(i1);
        i1;
        JVM INSTR tableswitch 2 2: default 88
    //                   2 169;
           goto _L3 _L4
_L3:
        Object obj = q;
        boolean flag;
        if (i1 == 2 && !C)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        ((ej) (obj)).a(flag);
        obj = o;
        if (i1 == 2 && !C)
        {
            flag = flag1;
        } else
        {
            flag = false;
        }
        ((ActionBarOverlayLayout) (obj)).setHasNonEmbeddedTabs(flag);
        return;
_L2:
        x = getSelectedNavigationIndex();
        selectTab(null);
        u.setVisibility(8);
          goto _L1
_L4:
        d();
        u.setVisibility(0);
        if (x != -1)
        {
            setSelectedNavigationItem(x);
            x = -1;
        }
          goto _L3
    }

    public void setSelectedNavigationItem(int i1)
    {
        switch (q.r())
        {
        default:
            throw new IllegalStateException("setSelectedNavigationIndex not valid for current navigation mode");

        case 2: // '\002'
            selectTab((android.support.v7.app.ActionBar.Tab)v.get(i1));
            return;

        case 1: // '\001'
            q.e(i1);
            return;
        }
    }

    public void setShowHideAnimationEnabled(boolean flag)
    {
        K = flag;
        if (!flag && J != null)
        {
            J.b();
        }
    }

    public void setSplitBackgroundDrawable(Drawable drawable)
    {
        if (s != null)
        {
            s.setSplitBackground(drawable);
        }
    }

    public void setStackedBackgroundDrawable(Drawable drawable)
    {
        p.setStackedBackground(drawable);
    }

    public void setSubtitle(int i1)
    {
        setSubtitle(((CharSequence) (a.getString(i1))));
    }

    public void setSubtitle(CharSequence charsequence)
    {
        q.c(charsequence);
    }

    public void setTitle(int i1)
    {
        setTitle(((CharSequence) (a.getString(i1))));
    }

    public void setTitle(CharSequence charsequence)
    {
        q.b(charsequence);
    }

    public void setWindowTitle(CharSequence charsequence)
    {
        q.a(charsequence);
    }

    public void show()
    {
        if (F)
        {
            F = false;
            d(false);
        }
    }

    public ew startActionMode(ew.a a1)
    {
        if (b != null)
        {
            b.c();
        }
        o.setHideOnContentScrollEnabled(false);
        r.c();
        a1 = new a(r.getContext(), a1);
        if (a1.e())
        {
            a1.d();
            r.a(a1);
            b(true);
            if (s != null && B == 1 && s.getVisibility() != 0)
            {
                s.setVisibility(0);
                if (o != null)
                {
                    bh.w(o);
                }
            }
            r.sendAccessibilityEvent(32);
            b = a1;
            return a1;
        } else
        {
            return null;
        }
    }

    static 
    {
        boolean flag1 = true;
        boolean flag;
        if (!de.desiredAssertionStatus())
        {
            flag = true;
        } else
        {
            flag = false;
        }
        j = flag;
        if (android.os.Build.VERSION.SDK_INT >= 14)
        {
            flag = flag1;
        } else
        {
            flag = false;
        }
        k = flag;
    }
}
