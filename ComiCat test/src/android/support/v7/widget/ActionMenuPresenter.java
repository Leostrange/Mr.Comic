// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package android.support.v7.widget;

import android.content.Context;
import android.content.res.Resources;
import android.os.Parcel;
import android.os.Parcelable;
import android.support.v7.internal.view.menu.ActionMenuItemView;
import android.support.v7.internal.widget.TintImageView;
import android.util.DisplayMetrics;
import android.util.SparseBooleanArray;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import ao;
import bl;
import dg;
import do;
import ds;
import du;
import dx;
import dz;
import ec;
import i;
import java.util.ArrayList;

// Referenced classes of package android.support.v7.widget:
//            ActionMenuView, ListPopupWindow

public final class ActionMenuPresenter extends do
    implements ao.a
{
    static class SavedState
        implements Parcelable
    {

        public static final android.os.Parcelable.Creator CREATOR = new android.os.Parcelable.Creator() {

            public final Object createFromParcel(Parcel parcel)
            {
                return new SavedState(parcel);
            }

            public final volatile Object[] newArray(int i1)
            {
                return new SavedState[i1];
            }

        };
        public int a;

        public int describeContents()
        {
            return 0;
        }

        public void writeToParcel(Parcel parcel, int i1)
        {
            parcel.writeInt(a);
        }


        SavedState()
        {
        }

        SavedState(Parcel parcel)
        {
            a = parcel.readInt();
        }
    }

    final class a extends dx
    {

        final ActionMenuPresenter g;
        private ec h;

        public final void onDismiss()
        {
            super.onDismiss();
            g.l = null;
            g.o = 0;
        }

        public a(Context context, ec ec1)
        {
            boolean flag1 = false;
            g = ActionMenuPresenter.this;
            super(context, ec1, null, false, cv.a.actionOverflowMenuStyle);
            h = ec1;
            int i1;
            if (!((du)ec1.getItem()).f())
            {
                int j1;
                boolean flag;
                if (i == null)
                {
                    context = (View)ActionMenuPresenter.b(ActionMenuPresenter.this);
                } else
                {
                    context = i;
                }
                super.b = context;
            }
            super.d = n;
            j1 = ec1.size();
            i1 = 0;
            do
            {
label0:
                {
                    flag = flag1;
                    if (i1 < j1)
                    {
                        actionmenupresenter = ec1.getItem(i1);
                        if (!isVisible() || getIcon() == null)
                        {
                            break label0;
                        }
                        flag = true;
                    }
                    super.e = flag;
                    return;
                }
                i1++;
            } while (true);
        }
    }

    final class b extends android.support.v7.internal.view.menu.ActionMenuItemView.b
    {

        final ActionMenuPresenter a;

        public final ListPopupWindow a()
        {
            if (a.l != null)
            {
                return ((dx) (a.l)).c;
            } else
            {
                return null;
            }
        }

        private b()
        {
            a = ActionMenuPresenter.this;
            super();
        }

        b(byte byte0)
        {
            this();
        }
    }

    final class c
        implements Runnable
    {

        final ActionMenuPresenter a;
        private e b;

        public final void run()
        {
            Object obj = ActionMenuPresenter.c(a);
            if (((ds) (obj)).b != null)
            {
                ((ds) (obj)).b.onMenuModeChange(((ds) (obj)));
            }
            obj = (View)ActionMenuPresenter.d(a);
            if (obj != null && ((View) (obj)).getWindowToken() != null && b.a())
            {
                a.k = b;
            }
            a.m = null;
        }

        public c(e e1)
        {
            a = ActionMenuPresenter.this;
            super();
            b = e1;
        }
    }

    final class d extends TintImageView
        implements ActionMenuView.a
    {

        final ActionMenuPresenter a;
        private final float b[] = new float[2];

        public final boolean b()
        {
            return false;
        }

        public final boolean c()
        {
            return false;
        }

        public final boolean performClick()
        {
            if (super.performClick())
            {
                return true;
            } else
            {
                playSoundEffect(0);
                a.d();
                return true;
            }
        }

        protected final boolean setFrame(int i1, int j1, int k1, int l1)
        {
            boolean flag = super.setFrame(i1, j1, k1, l1);
            android.graphics.drawable.Drawable drawable = getDrawable();
            android.graphics.drawable.Drawable drawable1 = getBackground();
            if (drawable != null && drawable1 != null)
            {
                int i2 = getWidth();
                j1 = getHeight();
                i1 = Math.max(i2, j1) / 2;
                int j2 = getPaddingLeft();
                int k2 = getPaddingRight();
                k1 = getPaddingTop();
                l1 = getPaddingBottom();
                i2 = (i2 + (j2 - k2)) / 2;
                j1 = (j1 + (k1 - l1)) / 2;
                i.a(drawable1, i2 - i1, j1 - i1, i2 + i1, j1 + i1);
            }
            return flag;
        }

        public d(Context context)
        {
            a = ActionMenuPresenter.this;
            super(context, null, cv.a.actionOverflowButtonStyle);
            setClickable(true);
            setFocusable(true);
            setVisibility(0);
            setEnabled(true);
            setOnTouchListener(new _cls1(this, this, ActionMenuPresenter.this));
        }
    }

    final class e extends dx
    {

        final ActionMenuPresenter g;

        public final void onDismiss()
        {
            super.onDismiss();
            ActionMenuPresenter.a(g).close();
            g.k = null;
        }

        public e(Context context, ds ds1, View view)
        {
            g = ActionMenuPresenter.this;
            super(context, ds1, view, true, cv.a.actionOverflowMenuStyle);
            super.f = 0x800005;
            super.d = n;
        }
    }

    final class f
        implements dy.a
    {

        final ActionMenuPresenter a;

        public final void onCloseMenu(ds ds1, boolean flag)
        {
            if (ds1 instanceof ec)
            {
                ((ec)ds1).l.a(false);
            }
            dy.a a1 = ((do) (a)).f;
            if (a1 != null)
            {
                a1.onCloseMenu(ds1, flag);
            }
        }

        public final boolean onOpenSubMenu(ds ds1)
        {
            if (ds1 == null)
            {
                return false;
            }
            a.o = ((ec)ds1).getItem().getItemId();
            dy.a a1 = ((do) (a)).f;
            if (a1 != null)
            {
                return a1.onOpenSubMenu(ds1);
            } else
            {
                return false;
            }
        }

        private f()
        {
            a = ActionMenuPresenter.this;
            super();
        }

        f(byte byte0)
        {
            this();
        }
    }


    private b A;
    View i;
    boolean j;
    e k;
    a l;
    public c m;
    final f n = new f((byte)0);
    int o;
    private boolean p;
    private boolean q;
    private int r;
    private int s;
    private int t;
    private boolean u;
    private boolean v;
    private boolean w;
    private int x;
    private final SparseBooleanArray y = new SparseBooleanArray();
    private View z;

    public ActionMenuPresenter(Context context)
    {
        super(context, cv.h.abc_action_menu_layout, cv.h.abc_action_menu_item_layout);
    }

    static ds a(ActionMenuPresenter actionmenupresenter)
    {
        return actionmenupresenter.c;
    }

    static dz b(ActionMenuPresenter actionmenupresenter)
    {
        return actionmenupresenter.g;
    }

    static ds c(ActionMenuPresenter actionmenupresenter)
    {
        return actionmenupresenter.c;
    }

    static dz d(ActionMenuPresenter actionmenupresenter)
    {
        return actionmenupresenter.g;
    }

    public final View a(du du1, View view, ViewGroup viewgroup)
    {
        View view1 = du1.getActionView();
        if (view1 == null || du1.i())
        {
            view1 = super.a(du1, view, viewgroup);
        }
        byte byte0;
        if (du1.isActionViewExpanded())
        {
            byte0 = 8;
        } else
        {
            byte0 = 0;
        }
        view1.setVisibility(byte0);
        du1 = (ActionMenuView)viewgroup;
        view = view1.getLayoutParams();
        if (!du1.checkLayoutParams(view))
        {
            view1.setLayoutParams(ActionMenuView.a(view));
        }
        return view1;
    }

    public final dz a(ViewGroup viewgroup)
    {
        viewgroup = super.a(viewgroup);
        ((ActionMenuView)viewgroup).setPresenter(this);
        return viewgroup;
    }

    public final void a()
    {
        if (!u)
        {
            t = b.getResources().getInteger(cv.g.abc_max_action_buttons);
        }
        if (c != null)
        {
            c.b(true);
        }
    }

    public final void a(int i1)
    {
        r = i1;
        v = true;
        w = true;
    }

    public final void a(ActionMenuView actionmenuview)
    {
        g = actionmenuview;
        actionmenuview.initialize(c);
    }

    public final void a(du du1, dz.a a1)
    {
        a1.initialize(du1, 0);
        du1 = (ActionMenuView)g;
        a1 = (ActionMenuItemView)a1;
        a1.setItemInvoker(du1);
        if (A == null)
        {
            A = new b((byte)0);
        }
        a1.setPopupCallback(A);
    }

    public final void a(boolean flag)
    {
        if (flag)
        {
            super.onSubMenuSelected(null);
            return;
        } else
        {
            c.a(false);
            return;
        }
    }

    public final boolean a(ViewGroup viewgroup, int i1)
    {
        if (viewgroup.getChildAt(i1) == i)
        {
            return false;
        } else
        {
            return super.a(viewgroup, i1);
        }
    }

    public final boolean a(du du1)
    {
        return du1.f();
    }

    public final void b()
    {
        p = true;
        q = true;
    }

    public final void c()
    {
        t = 0x7fffffff;
        u = true;
    }

    public final boolean d()
    {
        if (p && !h() && c != null && g != null && m == null && !c.j().isEmpty())
        {
            m = new c(new e(b, c, i));
            ((View)g).post(m);
            super.onSubMenuSelected(null);
            return true;
        } else
        {
            return false;
        }
    }

    public final boolean e()
    {
        if (m != null && g != null)
        {
            ((View)g).removeCallbacks(m);
            m = null;
            return true;
        }
        e e1 = k;
        if (e1 != null)
        {
            e1.b();
            return true;
        } else
        {
            return false;
        }
    }

    public final boolean f()
    {
        return e() | g();
    }

    public final boolean flagActionItems()
    {
        ArrayList arraylist;
        ViewGroup viewgroup;
        int k1;
        int l1;
        int l4;
        int j6;
        int k6;
label0:
        {
            arraylist = c.h();
            j6 = arraylist.size();
            int i1 = t;
            l4 = s;
            k6 = android.view.View.MeasureSpec.makeMeasureSpec(0, 0);
            viewgroup = (ViewGroup)g;
            l1 = 0;
            int i2 = 0;
            boolean flag = false;
            k1 = 0;
            while (k1 < j6) 
            {
                du du1 = (du)arraylist.get(k1);
                if (du1.h())
                {
                    l1++;
                } else
                if (du1.g())
                {
                    i2++;
                } else
                {
                    flag = true;
                }
                if (j && du1.isActionViewExpanded())
                {
                    i1 = 0;
                }
                k1++;
            }
            k1 = i1;
            if (!p)
            {
                break label0;
            }
            if (!flag)
            {
                k1 = i1;
                if (l1 + i2 <= i1)
                {
                    break label0;
                }
            }
            k1 = i1 - 1;
        }
        k1 -= l1;
        SparseBooleanArray sparsebooleanarray = y;
        sparsebooleanarray.clear();
        int j1;
        int k2;
        boolean flag1;
        int j4;
        int k4;
        if (v)
        {
            j1 = l4 / x;
            l1 = x;
            int j2 = x;
            j4 = (l4 % l1) / j1 + j2;
        } else
        {
            j4 = 0;
            j1 = 0;
        }
        flag1 = false;
        k4 = 0;
        l1 = j1;
        j1 = k1;
        k2 = l4;
        k1 = ((flag1) ? 1 : 0);
        while (k4 < j6) 
        {
            du du2 = (du)arraylist.get(k4);
            if (du2.h())
            {
                View view = a(du2, z, viewgroup);
                if (z == null)
                {
                    z = view;
                }
                int l2;
                int i5;
                if (v)
                {
                    l2 = l1 - ActionMenuView.a(view, j4, l1, k6, 0);
                } else
                {
                    view.measure(k6, k6);
                    l2 = l1;
                }
                l1 = view.getMeasuredWidth();
                if (k1 == 0)
                {
                    k1 = l1;
                }
                i5 = du2.getGroupId();
                if (i5 != 0)
                {
                    sparsebooleanarray.put(i5, true);
                }
                du2.c(true);
                l1 = k2 - l1;
                k2 = j1;
                j1 = l2;
            } else
            if (du2.g())
            {
                int l6 = du2.getGroupId();
                boolean flag3 = sparsebooleanarray.get(l6);
                boolean flag2;
                if ((j1 > 0 || flag3) && k2 > 0 && (!v || l1 > 0))
                {
                    flag2 = true;
                } else
                {
                    flag2 = false;
                }
                int l3;
                if (flag2)
                {
                    View view1 = a(du2, z, viewgroup);
                    if (z == null)
                    {
                        z = view1;
                    }
                    int j3;
                    int k5;
                    if (v)
                    {
                        int j5 = ActionMenuView.a(view1, j4, l1, k6, 0);
                        int i3 = l1 - j5;
                        l1 = i3;
                        if (j5 == 0)
                        {
                            flag2 = false;
                            l1 = i3;
                        }
                    } else
                    {
                        view1.measure(k6, k6);
                    }
                    k5 = view1.getMeasuredWidth();
                    k2 -= k5;
                    j3 = k1;
                    if (k1 == 0)
                    {
                        j3 = k5;
                    }
                    if (v)
                    {
                        int l5;
                        if (k2 >= 0)
                        {
                            k1 = 1;
                        } else
                        {
                            k1 = 0;
                        }
                        flag2 &= k1;
                        k1 = l1;
                        l1 = j3;
                    } else
                    {
                        if (k2 + j3 > 0)
                        {
                            k1 = 1;
                        } else
                        {
                            k1 = 0;
                        }
                        flag2 &= k1;
                        k1 = l1;
                        l1 = j3;
                    }
                } else
                {
                    int i4 = l1;
                    l1 = k1;
                    k1 = i4;
                }
                if (flag2 && l6 != 0)
                {
                    sparsebooleanarray.put(l6, true);
                } else
                if (flag3)
                {
                    sparsebooleanarray.put(l6, false);
                    int i6 = 0;
                    while (i6 < k4) 
                    {
                        du du3 = (du)arraylist.get(i6);
                        int k3 = j1;
                        if (du3.getGroupId() == l6)
                        {
                            k3 = j1;
                            if (du3.f())
                            {
                                k3 = j1 + 1;
                            }
                            du3.c(false);
                        }
                        i6++;
                        j1 = k3;
                    }
                }
                j3 = j1;
                if (flag2)
                {
                    j3 = j1 - 1;
                }
                du2.c(flag2);
                l5 = l1;
                l1 = k2;
                k2 = j3;
                j1 = k1;
                k1 = l5;
            } else
            {
                du2.c(false);
                l3 = j1;
                j1 = l1;
                l1 = k2;
                k2 = l3;
            }
            i5 = k4 + 1;
            l2 = l1;
            k4 = k2;
            l1 = j1;
            k2 = l2;
            j1 = k4;
            k4 = i5;
        }
        return true;
    }

    public final boolean g()
    {
        if (l != null)
        {
            l.b();
            return true;
        } else
        {
            return false;
        }
    }

    public final boolean h()
    {
        return k != null && k.c();
    }

    public final void initForMenu(Context context, ds ds1)
    {
        boolean flag = true;
        super.initForMenu(context, ds1);
        ds1 = context.getResources();
        context = dg.a(context);
        if (!q)
        {
            int i1;
            int j1;
            if (android.os.Build.VERSION.SDK_INT < 19 && bl.b(ViewConfiguration.get(((dg) (context)).a)))
            {
                flag = false;
            }
            p = flag;
        }
        if (!w)
        {
            r = ((dg) (context)).a.getResources().getDisplayMetrics().widthPixels / 2;
        }
        if (!u)
        {
            t = ((dg) (context)).a.getResources().getInteger(cv.g.abc_max_action_buttons);
        }
        i1 = r;
        if (p)
        {
            if (i == null)
            {
                i = new d(a);
                j1 = android.view.View.MeasureSpec.makeMeasureSpec(0, 0);
                i.measure(j1, j1);
            }
            i1 -= i.getMeasuredWidth();
        } else
        {
            i = null;
        }
        s = i1;
        x = (int)(56F * ds1.getDisplayMetrics().density);
        z = null;
    }

    public final void onCloseMenu(ds ds1, boolean flag)
    {
        f();
        super.onCloseMenu(ds1, flag);
    }

    public final void onRestoreInstanceState(Parcelable parcelable)
    {
        parcelable = (SavedState)parcelable;
        if (((SavedState) (parcelable)).a > 0)
        {
            parcelable = c.findItem(((SavedState) (parcelable)).a);
            if (parcelable != null)
            {
                onSubMenuSelected((ec)parcelable.getSubMenu());
            }
        }
    }

    public final Parcelable onSaveInstanceState()
    {
        SavedState savedstate = new SavedState();
        savedstate.a = o;
        return savedstate;
    }

    public final boolean onSubMenuSelected(ec ec1)
    {
        MenuItem menuitem;
        ViewGroup viewgroup;
        if (!ec1.hasVisibleItems())
        {
            return false;
        }
        ec ec2;
        for (ec2 = ec1; ec2.l != c; ec2 = (ec)ec2.l) { }
        menuitem = ec2.getItem();
        viewgroup = (ViewGroup)g;
        if (viewgroup == null) goto _L2; else goto _L1
_L1:
        int i1;
        int j1;
        j1 = viewgroup.getChildCount();
        i1 = 0;
_L7:
        if (i1 >= j1) goto _L2; else goto _L3
_L3:
        View view = viewgroup.getChildAt(i1);
        if (!(view instanceof dz.a) || ((dz.a)view).getItemData() != menuitem) goto _L5; else goto _L4
_L5:
        i1++;
        continue; /* Loop/switch isn't completed */
_L2:
        view = null;
_L4:
        View view1 = view;
        if (view == null)
        {
            if (i == null)
            {
                return false;
            }
            view1 = i;
        }
        o = ec1.getItem().getItemId();
        l = new a(b, ec1);
        l.b = view1;
        if (!l.a())
        {
            throw new IllegalStateException("MenuPopupHelper cannot be used without an anchor");
        }
        super.onSubMenuSelected(ec1);
        return true;
        if (true) goto _L7; else goto _L6
_L6:
    }

    public final void updateMenuView(boolean flag)
    {
        boolean flag1 = true;
        boolean flag2 = false;
        ((View)g).getParent();
        super.updateMenuView(flag);
        ((View)g).requestLayout();
        if (c != null)
        {
            Object obj = c;
            ((ds) (obj)).i();
            obj = ((ds) (obj)).d;
            int k1 = ((ArrayList) (obj)).size();
            for (int i1 = 0; i1 < k1; i1++)
            {
                ao ao1 = ((du)((ArrayList) (obj)).get(i1)).d;
                if (ao1 != null)
                {
                    ao1.a = this;
                }
            }

        }
        Object obj1;
        int j1;
        if (c != null)
        {
            obj1 = c.j();
        } else
        {
            obj1 = null;
        }
        j1 = ((flag2) ? 1 : 0);
        if (p)
        {
            j1 = ((flag2) ? 1 : 0);
            if (obj1 != null)
            {
                j1 = ((ArrayList) (obj1)).size();
                if (j1 == 1)
                {
                    if (!((du)((ArrayList) (obj1)).get(0)).isActionViewExpanded())
                    {
                        j1 = 1;
                    } else
                    {
                        j1 = 0;
                    }
                } else
                if (j1 > 0)
                {
                    j1 = ((flag1) ? 1 : 0);
                } else
                {
                    j1 = 0;
                }
            }
        }
        if (j1 == 0) goto _L2; else goto _L1
_L1:
        if (i == null)
        {
            i = new d(a);
        }
        obj1 = (ViewGroup)i.getParent();
        if (obj1 != g)
        {
            if (obj1 != null)
            {
                ((ViewGroup) (obj1)).removeView(i);
            }
            ((ActionMenuView)g).addView(i, ActionMenuView.a());
        }
_L4:
        ((ActionMenuView)g).setOverflowReserved(p);
        return;
_L2:
        if (i != null && i.getParent() == g)
        {
            ((ViewGroup)g).removeView(i);
        }
        if (true) goto _L4; else goto _L3
_L3:
    }

    // Unreferenced inner class android/support/v7/widget/ActionMenuPresenter$d$1

/* anonymous class */
    final class d._cls1 extends ListPopupWindow.b
    {

        final ActionMenuPresenter a;
        final d b;

        public final ListPopupWindow a()
        {
            if (b.a.k == null)
            {
                return null;
            } else
            {
                return ((dx) (b.a.k)).c;
            }
        }

        public final boolean b()
        {
            b.a.d();
            return true;
        }

        public final boolean c()
        {
            if (b.a.m != null)
            {
                return false;
            } else
            {
                b.a.e();
                return true;
            }
        }

            
            {
                b = d1;
                a = actionmenupresenter;
                super(view);
            }
    }

}
