// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.support.v7.internal.widget.ScrollingTabContainerView;
import android.support.v7.internal.widget.SpinnerCompat;
import android.support.v7.widget.ActionMenuPresenter;
import android.support.v7.widget.ActionMenuView;
import android.support.v7.widget.Toolbar;
import android.text.Layout;
import android.text.TextUtils;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.View;
import android.view.ViewGroup;
import android.widget.SpinnerAdapter;
import android.widget.TextView;

public final class et
    implements ej
{

    Toolbar a;
    CharSequence b;
    android.view.Window.Callback c;
    boolean d;
    private int e;
    private View f;
    private SpinnerCompat g;
    private View h;
    private Drawable i;
    private Drawable j;
    private Drawable k;
    private boolean l;
    private CharSequence m;
    private CharSequence n;
    private ActionMenuPresenter o;
    private int p;
    private final er q;
    private int r;
    private Drawable s;

    public et(Toolbar toolbar, boolean flag)
    {
        this(toolbar, flag, cv.i.abc_action_bar_up_description, cv.e.abc_ic_ab_back_mtrl_am_alpha);
    }

    private et(Toolbar toolbar, boolean flag, int i1, int j1)
    {
        p = 0;
        r = 0;
        a = toolbar;
        b = toolbar.getTitle();
        m = toolbar.getSubtitle();
        boolean flag1;
        if (b != null)
        {
            flag1 = true;
        } else
        {
            flag1 = false;
        }
        l = flag1;
        k = toolbar.getNavigationIcon();
        if (flag)
        {
            toolbar = es.a(toolbar.getContext(), null, cv.k.ActionBar, cv.a.actionBarStyle);
            Object obj = toolbar.c(cv.k.ActionBar_title);
            if (!TextUtils.isEmpty(((CharSequence) (obj))))
            {
                b(((CharSequence) (obj)));
            }
            obj = toolbar.c(cv.k.ActionBar_subtitle);
            if (!TextUtils.isEmpty(((CharSequence) (obj))))
            {
                c(((CharSequence) (obj)));
            }
            obj = toolbar.a(cv.k.ActionBar_logo);
            if (obj != null)
            {
                b(((Drawable) (obj)));
            }
            obj = toolbar.a(cv.k.ActionBar_icon);
            if (k == null && obj != null)
            {
                a(((Drawable) (obj)));
            }
            obj = toolbar.a(cv.k.ActionBar_homeAsUpIndicator);
            if (obj != null)
            {
                c(((Drawable) (obj)));
            }
            c(toolbar.a(cv.k.ActionBar_displayOptions, 0));
            int k1 = toolbar.e(cv.k.ActionBar_customNavigationLayout, 0);
            if (k1 != 0)
            {
                a(LayoutInflater.from(a.getContext()).inflate(k1, a, false));
                c(e | 0x10);
            }
            k1 = toolbar.d(cv.k.ActionBar_height, 0);
            if (k1 > 0)
            {
                android.view.ViewGroup.LayoutParams layoutparams = a.getLayoutParams();
                layoutparams.height = k1;
                a.setLayoutParams(layoutparams);
            }
            k1 = toolbar.b(cv.k.ActionBar_contentInsetStart, -1);
            int i2 = toolbar.b(cv.k.ActionBar_contentInsetEnd, -1);
            if (k1 >= 0 || i2 >= 0)
            {
                a.setContentInsetsRelative(Math.max(k1, 0), Math.max(i2, 0));
            }
            k1 = toolbar.e(cv.k.ActionBar_titleTextStyle, 0);
            if (k1 != 0)
            {
                a.setTitleTextAppearance(a.getContext(), k1);
            }
            k1 = toolbar.e(cv.k.ActionBar_subtitleTextStyle, 0);
            if (k1 != 0)
            {
                a.setSubtitleTextAppearance(a.getContext(), k1);
            }
            k1 = toolbar.e(cv.k.ActionBar_popupTheme, 0);
            if (k1 != 0)
            {
                a.setPopupTheme(k1);
            }
            ((es) (toolbar)).a.recycle();
            q = toolbar.a();
        } else
        {
            int l1 = 11;
            if (a.getNavigationIcon() != null)
            {
                l1 = 15;
            }
            e = l1;
            q = er.a(toolbar.getContext());
        }
        if (i1 != r)
        {
            r = i1;
            if (TextUtils.isEmpty(a.getNavigationContentDescription()))
            {
                h(r);
            }
        }
        n = a.getNavigationContentDescription();
        toolbar = q.a(j1, false);
        if (s != toolbar)
        {
            s = toolbar;
            B();
        }
        a.setNavigationOnClickListener(new android.view.View.OnClickListener() {

            final dn a;
            final et b;

            public final void onClick(View view)
            {
                if (b.c != null && b.d)
                {
                    b.c.onMenuItemSelected(0, a);
                }
            }

            
            {
                b = et.this;
                super();
                a = new dn(b.a.getContext(), b.b);
            }
        });
    }

    private void A()
    {
label0:
        {
            if ((e & 4) != 0)
            {
                if (!TextUtils.isEmpty(n))
                {
                    break label0;
                }
                a.setNavigationContentDescription(r);
            }
            return;
        }
        a.setNavigationContentDescription(n);
    }

    private void B()
    {
        if ((e & 4) != 0)
        {
            Toolbar toolbar = a;
            Drawable drawable;
            if (k != null)
            {
                drawable = k;
            } else
            {
                drawable = s;
            }
            toolbar.setNavigationIcon(drawable);
        }
    }

    private void e(CharSequence charsequence)
    {
        b = charsequence;
        if ((e & 8) != 0)
        {
            a.setTitle(charsequence);
        }
    }

    private void y()
    {
        Drawable drawable = null;
        if ((e & 2) != 0)
        {
            if ((e & 1) != 0)
            {
                if (j != null)
                {
                    drawable = j;
                } else
                {
                    drawable = i;
                }
            } else
            {
                drawable = i;
            }
        }
        a.setLogo(drawable);
    }

    private void z()
    {
        if (g == null)
        {
            g = new SpinnerCompat(a.getContext(), cv.a.actionDropDownStyle);
            android.support.v7.widget.Toolbar.LayoutParams layoutparams = new android.support.v7.widget.Toolbar.LayoutParams((byte)0);
            g.setLayoutParams(layoutparams);
        }
    }

    public final ViewGroup a()
    {
        return a;
    }

    public final void a(int i1)
    {
        Drawable drawable;
        if (i1 != 0)
        {
            drawable = q.a(i1, false);
        } else
        {
            drawable = null;
        }
        a(drawable);
    }

    public final void a(Drawable drawable)
    {
        i = drawable;
        y();
    }

    public final void a(ScrollingTabContainerView scrollingtabcontainerview)
    {
        if (f != null && f.getParent() == a)
        {
            a.removeView(f);
        }
        f = scrollingtabcontainerview;
        if (scrollingtabcontainerview != null && p == 2)
        {
            a.addView(f, 0);
            android.support.v7.widget.Toolbar.LayoutParams layoutparams = (android.support.v7.widget.Toolbar.LayoutParams)f.getLayoutParams();
            layoutparams.width = -2;
            layoutparams.height = -2;
            layoutparams.gravity = 0x800053;
            scrollingtabcontainerview.setAllowCollapse(true);
        }
    }

    public final void a(Menu menu, dy.a a1)
    {
        if (o == null)
        {
            o = new ActionMenuPresenter(a.getContext());
            o.h = cv.f.action_menu_presenter;
        }
        o.f = a1;
        a.setMenu((ds)menu, o);
    }

    public final void a(View view)
    {
        if (h != null && (e & 0x10) != 0)
        {
            a.removeView(h);
        }
        h = view;
        if (view != null && (e & 0x10) != 0)
        {
            a.addView(h);
        }
    }

    public final void a(android.view.Window.Callback callback)
    {
        c = callback;
    }

    public final void a(SpinnerAdapter spinneradapter, android.support.v7.internal.widget.AdapterViewCompat.d d1)
    {
        z();
        g.setAdapter(spinneradapter);
        g.setOnItemSelectedListener(d1);
    }

    public final void a(dy.a a1, ds.a a2)
    {
        a.setMenuCallbacks(a1, a2);
    }

    public final void a(CharSequence charsequence)
    {
        if (!l)
        {
            e(charsequence);
        }
    }

    public final void a(boolean flag)
    {
        a.setCollapsible(flag);
    }

    public final Context b()
    {
        return a.getContext();
    }

    public final void b(int i1)
    {
        Drawable drawable;
        if (i1 != 0)
        {
            drawable = q.a(i1, false);
        } else
        {
            drawable = null;
        }
        b(drawable);
    }

    public final void b(Drawable drawable)
    {
        j = drawable;
        y();
    }

    public final void b(CharSequence charsequence)
    {
        l = true;
        e(charsequence);
    }

    public final void c(int i1)
    {
label0:
        {
            int j1 = e ^ i1;
            e = i1;
            if (j1 != 0)
            {
                if ((j1 & 4) != 0)
                {
                    if ((i1 & 4) != 0)
                    {
                        B();
                        A();
                    } else
                    {
                        a.setNavigationIcon(null);
                    }
                }
                if ((j1 & 3) != 0)
                {
                    y();
                }
                if ((j1 & 8) != 0)
                {
                    if ((i1 & 8) != 0)
                    {
                        a.setTitle(b);
                        a.setSubtitle(m);
                    } else
                    {
                        a.setTitle(null);
                        a.setSubtitle(null);
                    }
                }
                if ((j1 & 0x10) != 0 && h != null)
                {
                    if ((i1 & 0x10) == 0)
                    {
                        break label0;
                    }
                    a.addView(h);
                }
            }
            return;
        }
        a.removeView(h);
    }

    public final void c(Drawable drawable)
    {
        k = drawable;
        B();
    }

    public final void c(CharSequence charsequence)
    {
        m = charsequence;
        if ((e & 8) != 0)
        {
            a.setSubtitle(charsequence);
        }
    }

    public final boolean c()
    {
        Toolbar toolbar = a;
        return toolbar.d != null && toolbar.d.b != null;
    }

    public final void d()
    {
        a.c();
    }

    public final void d(int i1)
    {
        int j1 = p;
        if (i1 == j1) goto _L2; else goto _L1
_L1:
        j1;
        JVM INSTR tableswitch 1 2: default 32
    //                   1 89
    //                   2 124;
           goto _L3 _L4 _L5
_L3:
        p = i1;
        i1;
        JVM INSTR tableswitch 0 2: default 64
    //                   0 175
    //                   1 159
    //                   2 176;
           goto _L6 _L2 _L7 _L8
_L6:
        throw new IllegalArgumentException((new StringBuilder("Invalid navigation mode ")).append(i1).toString());
_L4:
        if (g != null && g.getParent() == a)
        {
            a.removeView(g);
        }
          goto _L3
_L5:
        if (f != null && f.getParent() == a)
        {
            a.removeView(f);
        }
          goto _L3
_L7:
        z();
        a.addView(g, 0);
_L2:
        return;
_L8:
        if (f != null)
        {
            a.addView(f, 0);
            android.support.v7.widget.Toolbar.LayoutParams layoutparams = (android.support.v7.widget.Toolbar.LayoutParams)f.getLayoutParams();
            layoutparams.width = -2;
            layoutparams.height = -2;
            layoutparams.gravity = 0x800053;
            return;
        }
        if (true) goto _L2; else goto _L9
_L9:
    }

    public final void d(Drawable drawable)
    {
        a.setBackgroundDrawable(drawable);
    }

    public final void d(CharSequence charsequence)
    {
        n = charsequence;
        A();
    }

    public final CharSequence e()
    {
        return a.getTitle();
    }

    public final void e(int i1)
    {
        if (g == null)
        {
            throw new IllegalStateException("Can't set dropdown selected position without an adapter");
        } else
        {
            g.setSelection(i1);
            return;
        }
    }

    public final CharSequence f()
    {
        return a.getSubtitle();
    }

    public final void f(int i1)
    {
        if (i1 == 8)
        {
            bh.s(a).a(0.0F).a(new bu() {

                final et a;
                private boolean b;

                public final void onAnimationCancel(View view)
                {
                    b = true;
                }

                public final void onAnimationEnd(View view)
                {
                    if (!b)
                    {
                        a.a.setVisibility(8);
                    }
                }

            
            {
                a = et.this;
                super();
                b = false;
            }
            });
        } else
        if (i1 == 0)
        {
            bh.s(a).a(1.0F).a(new bu() {

                final et a;

                public final void onAnimationStart(View view)
                {
                    a.a.setVisibility(0);
                }

            
            {
                a = et.this;
                super();
            }
            });
            return;
        }
    }

    public final void g()
    {
        Log.i("ToolbarWidgetWrapper", "Progress display unsupported");
    }

    public final void g(int i1)
    {
        Drawable drawable;
        if (i1 != 0)
        {
            drawable = q.a(i1, false);
        } else
        {
            drawable = null;
        }
        c(drawable);
    }

    public final void h()
    {
        Log.i("ToolbarWidgetWrapper", "Progress display unsupported");
    }

    public final void h(int i1)
    {
        Object obj;
        if (i1 == 0)
        {
            obj = null;
        } else
        {
            obj = a.getContext().getString(i1);
        }
        d(((CharSequence) (obj)));
    }

    public final void i(int i1)
    {
        a.setVisibility(i1);
    }

    public final boolean i()
    {
        Toolbar toolbar = a;
        return toolbar.getVisibility() == 0 && toolbar.a != null && toolbar.a.b;
    }

    public final boolean j()
    {
        return a.a();
    }

    public final boolean k()
    {
        Object obj = a;
        if (((Toolbar) (obj)).a == null) goto _L2; else goto _L1
_L1:
        obj = ((Toolbar) (obj)).a;
        if (((ActionMenuView) (obj)).c == null) goto _L4; else goto _L3
_L3:
        boolean flag;
        obj = ((ActionMenuView) (obj)).c;
        if (((ActionMenuPresenter) (obj)).m != null || ((ActionMenuPresenter) (obj)).h())
        {
            flag = true;
        } else
        {
            flag = false;
        }
        if (!flag) goto _L4; else goto _L5
_L5:
        flag = true;
_L6:
        if (flag)
        {
            return true;
        }
        break; /* Loop/switch isn't completed */
_L4:
        flag = false;
        if (true) goto _L6; else goto _L2
_L2:
        return false;
    }

    public final boolean l()
    {
        return a.b();
    }

    public final boolean m()
    {
        Object obj = a;
        if (((Toolbar) (obj)).a != null)
        {
            obj = ((Toolbar) (obj)).a;
            boolean flag;
            if (((ActionMenuView) (obj)).c != null && ((ActionMenuView) (obj)).c.e())
            {
                flag = true;
            } else
            {
                flag = false;
            }
            if (flag)
            {
                return true;
            }
        }
        return false;
    }

    public final void n()
    {
        d = true;
    }

    public final void o()
    {
        Toolbar toolbar = a;
        if (toolbar.a != null)
        {
            toolbar.a.b();
        }
    }

    public final int p()
    {
        return e;
    }

    public final boolean q()
    {
        Object obj;
        boolean flag;
        boolean flag1;
        flag1 = false;
        obj = a;
        flag = flag1;
        if (((Toolbar) (obj)).b == null) goto _L2; else goto _L1
_L1:
        obj = ((Toolbar) (obj)).b.getLayout();
        flag = flag1;
        if (obj == null) goto _L2; else goto _L3
_L3:
        int i1;
        int j1;
        j1 = ((Layout) (obj)).getLineCount();
        i1 = 0;
_L8:
        flag = flag1;
        if (i1 >= j1) goto _L2; else goto _L4
_L4:
        if (((Layout) (obj)).getEllipsisCount(i1) <= 0) goto _L6; else goto _L5
_L5:
        flag = true;
_L2:
        return flag;
_L6:
        i1++;
        if (true) goto _L8; else goto _L7
_L7:
    }

    public final int r()
    {
        return p;
    }

    public final int s()
    {
        if (g != null)
        {
            return g.getSelectedItemPosition();
        } else
        {
            return 0;
        }
    }

    public final int t()
    {
        if (g != null)
        {
            return g.getCount();
        } else
        {
            return 0;
        }
    }

    public final View u()
    {
        return h;
    }

    public final int v()
    {
        return a.getHeight();
    }

    public final int w()
    {
        return a.getVisibility();
    }

    public final Menu x()
    {
        return a.getMenu();
    }
}
