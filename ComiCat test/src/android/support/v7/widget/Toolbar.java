// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package android.support.v7.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.ContextThemeWrapper;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageButton;
import android.widget.ImageView;
import android.widget.TextView;
import ap;
import av;
import aw;
import ax;
import bh;
import dk;
import ds;
import du;
import dy;
import ec;
import ej;
import en;
import er;
import es;
import et;
import eu;
import ex;
import java.util.ArrayList;
import java.util.List;

// Referenced classes of package android.support.v7.widget:
//            ActionMenuView, ActionMenuPresenter

public class Toolbar extends ViewGroup
{
    public static class LayoutParams extends android.support.v7.app.ActionBar.LayoutParams
    {

        int a;

        public LayoutParams()
        {
            super(-2, -2);
            a = 0;
            gravity = 0x800013;
        }

        public LayoutParams(byte byte0)
        {
            super(-2, -2);
            a = 0;
            gravity = 0x800013;
        }

        public LayoutParams(Context context, AttributeSet attributeset)
        {
            super(context, attributeset);
            a = 0;
        }

        public LayoutParams(android.support.v7.app.ActionBar.LayoutParams layoutparams)
        {
            super(layoutparams);
            a = 0;
        }

        public LayoutParams(LayoutParams layoutparams)
        {
            super(layoutparams);
            a = 0;
            a = layoutparams.a;
        }

        public LayoutParams(android.view.ViewGroup.LayoutParams layoutparams)
        {
            super(layoutparams);
            a = 0;
        }

        public LayoutParams(android.view.ViewGroup.MarginLayoutParams marginlayoutparams)
        {
            super(marginlayoutparams);
            a = 0;
            leftMargin = marginlayoutparams.leftMargin;
            topMargin = marginlayoutparams.topMargin;
            rightMargin = marginlayoutparams.rightMargin;
            bottomMargin = marginlayoutparams.bottomMargin;
        }
    }

    public static class SavedState extends android.view.View.BaseSavedState
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
        int a;
        boolean b;

        public void writeToParcel(Parcel parcel, int i1)
        {
            super.writeToParcel(parcel, i1);
            parcel.writeInt(a);
            if (b)
            {
                i1 = 1;
            } else
            {
                i1 = 0;
            }
            parcel.writeInt(i1);
        }


        public SavedState(Parcel parcel)
        {
            super(parcel);
            a = parcel.readInt();
            boolean flag;
            if (parcel.readInt() != 0)
            {
                flag = true;
            } else
            {
                flag = false;
            }
            b = flag;
        }

        public SavedState(Parcelable parcelable)
        {
            super(parcelable);
        }
    }

    public final class a
        implements dy
    {

        ds a;
        public du b;
        final Toolbar c;

        public final boolean collapseItemActionView(ds ds1, du du1)
        {
            if (c.c instanceof ex)
            {
                ((ex)c.c).b();
            }
            c.removeView(c.c);
            c.removeView(Toolbar.c(c));
            c.c = null;
            Toolbar.a(c, false);
            b = null;
            c.requestLayout();
            du1.d(false);
            return true;
        }

        public final boolean expandItemActionView(ds ds1, du du1)
        {
            Toolbar.b(c);
            if (Toolbar.c(c).getParent() != c)
            {
                c.addView(Toolbar.c(c));
            }
            c.c = du1.getActionView();
            b = du1;
            if (c.c.getParent() != c)
            {
                ds1 = Toolbar.d();
                ds1.gravity = 0x800003 | Toolbar.d(c) & 0x70;
                ds1.a = 2;
                c.c.setLayoutParams(ds1);
                c.addView(c.c);
            }
            Toolbar.a(c, true);
            c.requestLayout();
            du1.d(true);
            if (c.c instanceof ex)
            {
                ((ex)c.c).a();
            }
            return true;
        }

        public final boolean flagActionItems()
        {
            return false;
        }

        public final int getId()
        {
            return 0;
        }

        public final void initForMenu(Context context, ds ds1)
        {
            if (a != null && b != null)
            {
                a.b(b);
            }
            a = ds1;
        }

        public final void onCloseMenu(ds ds1, boolean flag)
        {
        }

        public final void onRestoreInstanceState(Parcelable parcelable)
        {
        }

        public final Parcelable onSaveInstanceState()
        {
            return null;
        }

        public final boolean onSubMenuSelected(ec ec)
        {
            return false;
        }

        public final void updateMenuView(boolean flag)
        {
            boolean flag2 = false;
            if (b == null) goto _L2; else goto _L1
_L1:
            boolean flag1 = flag2;
            if (a == null) goto _L4; else goto _L3
_L3:
            int i1;
            int j1;
            j1 = a.size();
            i1 = 0;
_L9:
            flag1 = flag2;
            if (i1 >= j1) goto _L4; else goto _L5
_L5:
            if (a.getItem(i1) != b) goto _L7; else goto _L6
_L6:
            flag1 = true;
_L4:
            if (!flag1)
            {
                collapseItemActionView(a, b);
            }
_L2:
            return;
_L7:
            i1++;
            if (true) goto _L9; else goto _L8
_L8:
        }

        private a()
        {
            c = Toolbar.this;
            super();
        }

        a(byte byte0)
        {
            this();
        }
    }

    public static interface b
    {

        public abstract boolean a(MenuItem menuitem);
    }


    private boolean A;
    private boolean B;
    private final ArrayList C;
    private final int D[];
    private b E;
    private final ActionMenuView.d F;
    private et G;
    private ActionMenuPresenter H;
    private dy.a I;
    private ds.a J;
    private boolean K;
    private final Runnable L;
    private final er M;
    public ActionMenuView a;
    public TextView b;
    View c;
    public a d;
    private TextView e;
    private ImageButton f;
    private ImageView g;
    private Drawable h;
    private CharSequence i;
    private ImageButton j;
    private Context k;
    private int l;
    private int m;
    private int n;
    private int o;
    private int p;
    private int q;
    private int r;
    private int s;
    private int t;
    private final en u;
    private int v;
    private CharSequence w;
    private CharSequence x;
    private int y;
    private int z;

    public Toolbar(Context context)
    {
        this(context, null);
    }

    public Toolbar(Context context, AttributeSet attributeset)
    {
        this(context, attributeset, cv.a.toolbarStyle);
    }

    public Toolbar(Context context, AttributeSet attributeset, int i1)
    {
        super(context, attributeset, i1);
        u = new en();
        v = 0x800013;
        C = new ArrayList();
        D = new int[2];
        F = new ActionMenuView.d() {

            final Toolbar a;

            public final boolean a(MenuItem menuitem)
            {
                if (Toolbar.a(a) != null)
                {
                    return Toolbar.a(a).a(menuitem);
                } else
                {
                    return false;
                }
            }

            
            {
                a = Toolbar.this;
                super();
            }
        };
        L = new Runnable() {

            final Toolbar a;

            public final void run()
            {
                a.b();
            }

            
            {
                a = Toolbar.this;
                super();
            }
        };
        context = es.a(getContext(), attributeset, cv.k.Toolbar, i1);
        m = context.e(cv.k.Toolbar_titleTextAppearance, 0);
        n = context.e(cv.k.Toolbar_subtitleTextAppearance, 0);
        i1 = cv.k.Toolbar_android_gravity;
        int j1 = v;
        v = ((es) (context)).a.getInteger(i1, j1);
        o = 48;
        i1 = context.b(cv.k.Toolbar_titleMargins, 0);
        t = i1;
        s = i1;
        r = i1;
        q = i1;
        i1 = context.b(cv.k.Toolbar_titleMarginStart, -1);
        if (i1 >= 0)
        {
            q = i1;
        }
        i1 = context.b(cv.k.Toolbar_titleMarginEnd, -1);
        if (i1 >= 0)
        {
            r = i1;
        }
        i1 = context.b(cv.k.Toolbar_titleMarginTop, -1);
        if (i1 >= 0)
        {
            s = i1;
        }
        i1 = context.b(cv.k.Toolbar_titleMarginBottom, -1);
        if (i1 >= 0)
        {
            t = i1;
        }
        p = context.c(cv.k.Toolbar_maxButtonHeight, -1);
        i1 = context.b(cv.k.Toolbar_contentInsetStart, 0x80000000);
        j1 = context.b(cv.k.Toolbar_contentInsetEnd, 0x80000000);
        int k1 = context.c(cv.k.Toolbar_contentInsetLeft, 0);
        int l1 = context.c(cv.k.Toolbar_contentInsetRight, 0);
        u.b(k1, l1);
        if (i1 != 0x80000000 || j1 != 0x80000000)
        {
            u.a(i1, j1);
        }
        h = context.a(cv.k.Toolbar_collapseIcon);
        i = context.c(cv.k.Toolbar_collapseContentDescription);
        attributeset = context.c(cv.k.Toolbar_title);
        if (!TextUtils.isEmpty(attributeset))
        {
            setTitle(attributeset);
        }
        attributeset = context.c(cv.k.Toolbar_subtitle);
        if (!TextUtils.isEmpty(attributeset))
        {
            setSubtitle(attributeset);
        }
        k = getContext();
        setPopupTheme(context.e(cv.k.Toolbar_popupTheme, 0));
        attributeset = context.a(cv.k.Toolbar_navigationIcon);
        if (attributeset != null)
        {
            setNavigationIcon(attributeset);
        }
        attributeset = context.c(cv.k.Toolbar_navigationContentDescription);
        if (!TextUtils.isEmpty(attributeset))
        {
            setNavigationContentDescription(attributeset);
        }
        ((es) (context)).a.recycle();
        M = context.a();
    }

    private int a(int i1)
    {
label0:
        {
            int k1 = bh.h(this);
            int j1 = ap.a(i1, k1) & 7;
            i1 = j1;
            switch (j1)
            {
            case 2: // '\002'
            case 4: // '\004'
            default:
                if (k1 != 1)
                {
                    break label0;
                }
                i1 = 5;
                break;

            case 1: // '\001'
            case 3: // '\003'
            case 5: // '\005'
                break;
            }
            return i1;
        }
        return 3;
    }

    private int a(View view, int i1)
    {
        LayoutParams layoutparams;
        int j1;
        int k1;
        int l1;
        int i2;
        layoutparams = (LayoutParams)view.getLayoutParams();
        l1 = view.getMeasuredHeight();
        if (i1 > 0)
        {
            i1 = (l1 - i1) / 2;
        } else
        {
            i1 = 0;
        }
        k1 = layoutparams.gravity & 0x70;
        j1 = k1;
        k1;
        JVM INSTR lookupswitch 3: default 76
    //                   16: 85
    //                   48: 85
    //                   80: 85;
           goto _L1 _L2 _L2 _L2
_L1:
        j1 = v & 0x70;
_L2:
        j1;
        JVM INSTR lookupswitch 2: default 112
    //                   48: 167
    //                   80: 174;
           goto _L3 _L4 _L5
_L3:
        j1 = getPaddingTop();
        k1 = getPaddingBottom();
        i2 = getHeight();
        i1 = (i2 - j1 - k1 - l1) / 2;
        if (i1 >= layoutparams.topMargin) goto _L7; else goto _L6
_L6:
        i1 = layoutparams.topMargin;
_L9:
        return i1 + j1;
_L4:
        return getPaddingTop() - i1;
_L5:
        return getHeight() - getPaddingBottom() - l1 - layoutparams.bottomMargin - i1;
_L7:
        k1 = i2 - k1 - l1 - i1 - j1;
        if (k1 < layoutparams.bottomMargin)
        {
            i1 = Math.max(0, i1 - (layoutparams.bottomMargin - k1));
        }
        if (true) goto _L9; else goto _L8
_L8:
    }

    private int a(View view, int i1, int j1, int k1, int l1, int ai[])
    {
        android.view.ViewGroup.MarginLayoutParams marginlayoutparams = (android.view.ViewGroup.MarginLayoutParams)view.getLayoutParams();
        int i2 = marginlayoutparams.leftMargin - ai[0];
        int j2 = marginlayoutparams.rightMargin - ai[1];
        int k2 = Math.max(0, i2) + Math.max(0, j2);
        ai[0] = Math.max(0, -i2);
        ai[1] = Math.max(0, -j2);
        view.measure(getChildMeasureSpec(i1, getPaddingLeft() + getPaddingRight() + k2 + j1, marginlayoutparams.width), getChildMeasureSpec(k1, getPaddingTop() + getPaddingBottom() + marginlayoutparams.topMargin + marginlayoutparams.bottomMargin + l1, marginlayoutparams.height));
        return view.getMeasuredWidth() + k2;
    }

    private int a(View view, int i1, int ai[], int j1)
    {
        LayoutParams layoutparams = (LayoutParams)view.getLayoutParams();
        int k1 = layoutparams.leftMargin - ai[0];
        i1 = Math.max(0, k1) + i1;
        ai[0] = Math.max(0, -k1);
        j1 = a(view, j1);
        k1 = view.getMeasuredWidth();
        view.layout(i1, j1, i1 + k1, view.getMeasuredHeight() + j1);
        return layoutparams.rightMargin + k1 + i1;
    }

    private static LayoutParams a(android.view.ViewGroup.LayoutParams layoutparams)
    {
        if (layoutparams instanceof LayoutParams)
        {
            return new LayoutParams((LayoutParams)layoutparams);
        }
        if (layoutparams instanceof android.support.v7.app.ActionBar.LayoutParams)
        {
            return new LayoutParams((android.support.v7.app.ActionBar.LayoutParams)layoutparams);
        }
        if (layoutparams instanceof android.view.ViewGroup.MarginLayoutParams)
        {
            return new LayoutParams((android.view.ViewGroup.MarginLayoutParams)layoutparams);
        } else
        {
            return new LayoutParams(layoutparams);
        }
    }

    static b a(Toolbar toolbar)
    {
        return toolbar.E;
    }

    static void a(Toolbar toolbar, boolean flag)
    {
        toolbar.setChildVisibilityForExpandedActionView(flag);
    }

    private void a(View view)
    {
        Object obj = view.getLayoutParams();
        if (obj == null)
        {
            obj = new LayoutParams();
        } else
        if (!checkLayoutParams(((android.view.ViewGroup.LayoutParams) (obj))))
        {
            obj = a(((android.view.ViewGroup.LayoutParams) (obj)));
        } else
        {
            obj = (LayoutParams)obj;
        }
        obj.a = 1;
        addView(view, ((android.view.ViewGroup.LayoutParams) (obj)));
    }

    private void a(View view, int i1, int j1, int k1, int l1)
    {
        android.view.ViewGroup.MarginLayoutParams marginlayoutparams = (android.view.ViewGroup.MarginLayoutParams)view.getLayoutParams();
        int i2 = getChildMeasureSpec(i1, getPaddingLeft() + getPaddingRight() + marginlayoutparams.leftMargin + marginlayoutparams.rightMargin + j1, marginlayoutparams.width);
        j1 = getChildMeasureSpec(k1, getPaddingTop() + getPaddingBottom() + marginlayoutparams.topMargin + marginlayoutparams.bottomMargin + 0, marginlayoutparams.height);
        k1 = android.view.View.MeasureSpec.getMode(j1);
        i1 = j1;
        if (k1 != 0x40000000)
        {
            i1 = j1;
            if (l1 >= 0)
            {
                i1 = l1;
                if (k1 != 0)
                {
                    i1 = Math.min(android.view.View.MeasureSpec.getSize(j1), l1);
                }
                i1 = android.view.View.MeasureSpec.makeMeasureSpec(i1, 0x40000000);
            }
        }
        view.measure(i2, i1);
    }

    private void a(List list, int i1)
    {
        boolean flag = true;
        boolean flag1 = false;
        int j1;
        int k1;
        if (bh.h(this) != 1)
        {
            flag = false;
        }
        k1 = getChildCount();
        j1 = ap.a(i1, bh.h(this));
        list.clear();
        i1 = ((flag1) ? 1 : 0);
        if (flag)
        {
            for (i1 = k1 - 1; i1 >= 0; i1--)
            {
                View view = getChildAt(i1);
                LayoutParams layoutparams = (LayoutParams)view.getLayoutParams();
                if (layoutparams.a == 0 && b(view) && a(layoutparams.gravity) == j1)
                {
                    list.add(view);
                }
            }

        } else
        {
            for (; i1 < k1; i1++)
            {
                View view1 = getChildAt(i1);
                LayoutParams layoutparams1 = (LayoutParams)view1.getLayoutParams();
                if (layoutparams1.a == 0 && b(view1) && a(layoutparams1.gravity) == j1)
                {
                    list.add(view1);
                }
            }

        }
    }

    private int b(View view, int i1, int ai[], int j1)
    {
        LayoutParams layoutparams = (LayoutParams)view.getLayoutParams();
        int k1 = layoutparams.rightMargin - ai[1];
        i1 -= Math.max(0, k1);
        ai[1] = Math.max(0, -k1);
        j1 = a(view, j1);
        k1 = view.getMeasuredWidth();
        view.layout(i1 - k1, j1, i1, view.getMeasuredHeight() + j1);
        return i1 - (layoutparams.leftMargin + k1);
    }

    static void b(Toolbar toolbar)
    {
        if (toolbar.j == null)
        {
            toolbar.j = new ImageButton(toolbar.getContext(), null, cv.a.toolbarNavigationButtonStyle);
            toolbar.j.setImageDrawable(toolbar.h);
            toolbar.j.setContentDescription(toolbar.i);
            LayoutParams layoutparams = new LayoutParams();
            layoutparams.gravity = 0x800003 | toolbar.o & 0x70;
            layoutparams.a = 2;
            toolbar.j.setLayoutParams(layoutparams);
            toolbar.j.setOnClickListener(toolbar. new android.view.View.OnClickListener() {

                final Toolbar a;

                public final void onClick(View view)
                {
                    a.c();
                }

            
            {
                a = Toolbar.this;
                super();
            }
            });
        }
    }

    private boolean b(View view)
    {
        return view != null && view.getParent() == this && view.getVisibility() != 8;
    }

    private static int c(View view)
    {
        view = (android.view.ViewGroup.MarginLayoutParams)view.getLayoutParams();
        int i1 = av.a(view);
        return av.b(view) + i1;
    }

    static ImageButton c(Toolbar toolbar)
    {
        return toolbar.j;
    }

    static int d(Toolbar toolbar)
    {
        return toolbar.o;
    }

    private static int d(View view)
    {
        view = (android.view.ViewGroup.MarginLayoutParams)view.getLayoutParams();
        int i1 = ((android.view.ViewGroup.MarginLayoutParams) (view)).topMargin;
        return ((android.view.ViewGroup.MarginLayoutParams) (view)).bottomMargin + i1;
    }

    protected static LayoutParams d()
    {
        return new LayoutParams();
    }

    private void e()
    {
        if (g == null)
        {
            g = new ImageView(getContext());
        }
    }

    private void e(View view)
    {
        if (((LayoutParams)view.getLayoutParams()).a != 2 && view != a)
        {
            byte byte0;
            if (c != null)
            {
                byte0 = 8;
            } else
            {
                byte0 = 0;
            }
            view.setVisibility(byte0);
        }
    }

    private void f()
    {
        if (a == null)
        {
            a = new ActionMenuView(getContext());
            a.setPopupTheme(l);
            a.setOnMenuItemClickListener(F);
            a.setMenuCallbacks(I, J);
            LayoutParams layoutparams = new LayoutParams();
            layoutparams.gravity = 0x800005 | o & 0x70;
            a.setLayoutParams(layoutparams);
            a(a);
        }
    }

    private void g()
    {
        if (f == null)
        {
            f = new ImageButton(getContext(), null, cv.a.toolbarNavigationButtonStyle);
            LayoutParams layoutparams = new LayoutParams();
            layoutparams.gravity = 0x800003 | o & 0x70;
            f.setLayoutParams(layoutparams);
        }
    }

    private MenuInflater getMenuInflater()
    {
        return new dk(getContext());
    }

    private void setChildVisibilityForExpandedActionView(boolean flag)
    {
        int j1 = getChildCount();
        int i1 = 0;
        while (i1 < j1) 
        {
            View view = getChildAt(i1);
            if (((LayoutParams)view.getLayoutParams()).a != 2 && view != a)
            {
                byte byte0;
                if (flag)
                {
                    byte0 = 8;
                } else
                {
                    byte0 = 0;
                }
                view.setVisibility(byte0);
            }
            i1++;
        }
    }

    public final boolean a()
    {
        if (a != null)
        {
            ActionMenuView actionmenuview = a;
            boolean flag;
            if (actionmenuview.c != null && actionmenuview.c.h())
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

    public final boolean b()
    {
        if (a != null)
        {
            ActionMenuView actionmenuview = a;
            boolean flag;
            if (actionmenuview.c != null && actionmenuview.c.d())
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

    public final void c()
    {
        du du1;
        if (d == null)
        {
            du1 = null;
        } else
        {
            du1 = d.b;
        }
        if (du1 != null)
        {
            du1.collapseActionView();
        }
    }

    protected boolean checkLayoutParams(android.view.ViewGroup.LayoutParams layoutparams)
    {
        return super.checkLayoutParams(layoutparams) && (layoutparams instanceof LayoutParams);
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
        return a(layoutparams);
    }

    public int getContentInsetEnd()
    {
        en en1 = u;
        if (en1.g)
        {
            return en1.a;
        } else
        {
            return en1.b;
        }
    }

    public int getContentInsetLeft()
    {
        return u.a;
    }

    public int getContentInsetRight()
    {
        return u.b;
    }

    public int getContentInsetStart()
    {
        en en1 = u;
        if (en1.g)
        {
            return en1.b;
        } else
        {
            return en1.a;
        }
    }

    public Drawable getLogo()
    {
        if (g != null)
        {
            return g.getDrawable();
        } else
        {
            return null;
        }
    }

    public CharSequence getLogoDescription()
    {
        if (g != null)
        {
            return g.getContentDescription();
        } else
        {
            return null;
        }
    }

    public Menu getMenu()
    {
        f();
        if (a.a == null)
        {
            ds ds1 = (ds)a.getMenu();
            if (d == null)
            {
                d = new a((byte)0);
            }
            a.setExpandedActionViewsExclusive(true);
            ds1.a(d, k);
        }
        return a.getMenu();
    }

    public CharSequence getNavigationContentDescription()
    {
        if (f != null)
        {
            return f.getContentDescription();
        } else
        {
            return null;
        }
    }

    public Drawable getNavigationIcon()
    {
        if (f != null)
        {
            return f.getDrawable();
        } else
        {
            return null;
        }
    }

    public int getPopupTheme()
    {
        return l;
    }

    public CharSequence getSubtitle()
    {
        return x;
    }

    public CharSequence getTitle()
    {
        return w;
    }

    public ej getWrapper()
    {
        if (G == null)
        {
            G = new et(this, true);
        }
        return G;
    }

    protected void onDetachedFromWindow()
    {
        super.onDetachedFromWindow();
        removeCallbacks(L);
    }

    public boolean onHoverEvent(MotionEvent motionevent)
    {
        int i1 = ax.a(motionevent);
        if (i1 == 9)
        {
            B = false;
        }
        if (!B)
        {
            boolean flag = super.onHoverEvent(motionevent);
            if (i1 == 9 && !flag)
            {
                B = true;
            }
        }
        if (i1 == 10 || i1 == 3)
        {
            B = false;
        }
        return true;
    }

    protected void onLayout(boolean flag, int i1, int j1, int k1, int l1)
    {
        Object obj;
        Object obj1;
        int ai[];
        int i2;
        boolean flag1;
        int l2;
        int i3;
        int j3;
        int k3;
        int l3;
        int i4;
        int j4;
        int k4;
        boolean flag2;
        if (bh.h(this) == 1)
        {
            l2 = 1;
        } else
        {
            l2 = 0;
        }
        k3 = getWidth();
        j4 = getHeight();
        i2 = getPaddingLeft();
        l3 = getPaddingRight();
        i4 = getPaddingTop();
        k4 = getPaddingBottom();
        l1 = k3 - l3;
        ai = D;
        ai[1] = 0;
        ai[0] = 0;
        j3 = bh.r(this);
        LayoutParams layoutparams2;
        int k2;
        if (b(f))
        {
            if (l2 != 0)
            {
                l1 = b(f, l1, ai, j3);
                i1 = i2;
            } else
            {
                i1 = a(f, i2, ai, j3);
            }
        } else
        {
            i1 = i2;
        }
        j1 = l1;
        k1 = i1;
        if (b(j))
        {
            if (l2 != 0)
            {
                j1 = b(j, l1, ai, j3);
                k1 = i1;
            } else
            {
                k1 = a(j, i1, ai, j3);
                j1 = l1;
            }
        }
        i1 = j1;
        l1 = k1;
        if (b(a))
        {
            if (l2 != 0)
            {
                l1 = a(a, k1, ai, j3);
                i1 = j1;
            } else
            {
                i1 = b(a, j1, ai, j3);
                l1 = k1;
            }
        }
        ai[0] = Math.max(0, getContentInsetLeft() - l1);
        ai[1] = Math.max(0, getContentInsetRight() - (k3 - l3 - i1));
        k1 = Math.max(l1, getContentInsetLeft());
        l1 = Math.min(i1, k3 - l3 - getContentInsetRight());
        j1 = l1;
        i1 = k1;
        if (b(c))
        {
            if (l2 != 0)
            {
                j1 = b(c, l1, ai, j3);
                i1 = k1;
            } else
            {
                i1 = a(c, k1, ai, j3);
                j1 = l1;
            }
        }
        if (b(g))
        {
            if (l2 != 0)
            {
                j1 = b(g, j1, ai, j3);
                k1 = i1;
            } else
            {
                k1 = a(g, i1, ai, j3);
            }
        } else
        {
            k1 = i1;
        }
        flag = b(b);
        flag2 = b(e);
        i1 = 0;
        if (flag)
        {
            LayoutParams layoutparams = (LayoutParams)b.getLayoutParams();
            i1 = layoutparams.topMargin;
            l1 = b.getMeasuredHeight();
            i1 = layoutparams.bottomMargin + (i1 + l1) + 0;
        }
        if (flag2)
        {
            LayoutParams layoutparams1 = (LayoutParams)e.getLayoutParams();
            l1 = layoutparams1.topMargin;
            int j2 = e.getMeasuredHeight();
            i3 = layoutparams1.bottomMargin + (l1 + j2) + i1;
        } else
        {
            i3 = i1;
        }
        if (flag) goto _L2; else goto _L1
_L1:
        l1 = j1;
        i1 = k1;
        if (!flag2) goto _L3; else goto _L2
_L2:
        if (flag)
        {
            obj = b;
        } else
        {
            obj = e;
        }
        if (flag2)
        {
            obj1 = e;
        } else
        {
            obj1 = b;
        }
        obj = (LayoutParams)((View) (obj)).getLayoutParams();
        obj1 = (LayoutParams)((View) (obj1)).getLayoutParams();
        if (flag && b.getMeasuredWidth() > 0 || flag2 && e.getMeasuredWidth() > 0)
        {
            flag1 = true;
        } else
        {
            flag1 = false;
        }
        v & 0x70;
        JVM INSTR lookupswitch 2: default 560
    //                   48: 999
    //                   80: 1073;
           goto _L4 _L5 _L6
_L4:
        i1 = (j4 - i4 - k4 - i3) / 2;
        if (i1 < ((LayoutParams) (obj)).topMargin + s)
        {
            i1 = ((LayoutParams) (obj)).topMargin + s;
        } else
        {
            l1 = j4 - k4 - i3 - i1 - i4;
            if (l1 < ((LayoutParams) (obj)).bottomMargin + t)
            {
                i1 = Math.max(0, i1 - ((((LayoutParams) (obj1)).bottomMargin + t) - l1));
            }
        }
        i1 = i4 + i1;
_L8:
        if (l2 != 0)
        {
            if (flag1)
            {
                l1 = q;
            } else
            {
                l1 = 0;
            }
            l1 -= ai[1];
            j1 -= Math.max(0, l1);
            ai[1] = Math.max(0, -l1);
            if (flag)
            {
                obj = (LayoutParams)b.getLayoutParams();
                l1 = j1 - b.getMeasuredWidth();
                l2 = b.getMeasuredHeight() + i1;
                b.layout(l1, i1, j1, l2);
                i3 = r;
                i1 = l2 + ((LayoutParams) (obj)).bottomMargin;
                l1 -= i3;
            } else
            {
                l1 = j1;
            }
            if (flag2)
            {
                obj = (LayoutParams)e.getLayoutParams();
                i1 = ((LayoutParams) (obj)).topMargin + i1;
                l2 = e.getMeasuredWidth();
                i3 = e.getMeasuredHeight();
                e.layout(j1 - l2, i1, j1, i3 + i1);
                i1 = r;
                l2 = ((LayoutParams) (obj)).bottomMargin;
                i1 = j1 - i1;
            } else
            {
                i1 = j1;
            }
            if (flag1)
            {
                i1 = Math.min(l1, i1);
            } else
            {
                i1 = j1;
            }
            l1 = i1;
            i1 = k1;
        } else
        {
            if (flag1)
            {
                l1 = q;
            } else
            {
                l1 = 0;
            }
            l1 -= ai[0];
            k1 += Math.max(0, l1);
            ai[0] = Math.max(0, -l1);
            if (flag)
            {
                obj = (LayoutParams)b.getLayoutParams();
                l2 = b.getMeasuredWidth() + k1;
                l1 = b.getMeasuredHeight() + i1;
                b.layout(k1, i1, l2, l1);
                i3 = r;
                i1 = ((LayoutParams) (obj)).bottomMargin;
                l2 += i3;
                i1 += l1;
            } else
            {
                l2 = k1;
            }
            if (flag2)
            {
                obj = (LayoutParams)e.getLayoutParams();
                l1 = i1 + ((LayoutParams) (obj)).topMargin;
                i1 = e.getMeasuredWidth() + k1;
                i3 = e.getMeasuredHeight();
                e.layout(k1, l1, i1, i3 + l1);
                l1 = r;
                i3 = ((LayoutParams) (obj)).bottomMargin;
                i3 = l1 + i1;
            } else
            {
                i3 = k1;
            }
            l1 = j1;
            i1 = k1;
            if (flag1)
            {
                i1 = Math.max(l2, i3);
                l1 = j1;
            }
        }
_L3:
        a(C, 3);
        k1 = C.size();
        for (j1 = 0; j1 < k1; j1++)
        {
            i1 = a((View)C.get(j1), i1, ai, j3);
        }

        a(C, 5);
        k2 = C.size();
        k1 = 0;
        j1 = l1;
        for (; k1 < k2; k1++)
        {
            j1 = b((View)C.get(k1), j1, ai, j3);
        }

        a(C, 1);
        obj = C;
        l2 = ai[0];
        k2 = ai[1];
        i3 = ((List) (obj)).size();
        l1 = 0;
        for (k1 = 0; l1 < i3; k1 += k4 + i4 + j4)
        {
            obj1 = (View)((List) (obj)).get(l1);
            layoutparams2 = (LayoutParams)((View) (obj1)).getLayoutParams();
            l2 = layoutparams2.leftMargin - l2;
            k2 = layoutparams2.rightMargin - k2;
            i4 = Math.max(0, l2);
            j4 = Math.max(0, k2);
            l2 = Math.max(0, -l2);
            k2 = Math.max(0, -k2);
            k4 = ((View) (obj1)).getMeasuredWidth();
            l1++;
        }

        l1 = ((k3 - i2 - l3) / 2 + i2) - k1 / 2;
        k1 = l1 + k1;
          goto _L7
_L5:
        i1 = getPaddingTop();
        i1 = ((LayoutParams) (obj)).topMargin + i1 + s;
        break MISSING_BLOCK_LABEL_604;
_L6:
        i1 = j4 - k4 - ((LayoutParams) (obj1)).bottomMargin - t - i3;
          goto _L8
_L7:
        if (l1 >= i1) goto _L10; else goto _L9
_L9:
        l1 = C.size();
        k1 = 0;
        j1 = i1;
        for (i1 = k1; i1 < l1; i1++)
        {
            j1 = a((View)C.get(i1), j1, ai, j3);
        }

        break; /* Loop/switch isn't completed */
_L10:
        i1 = l1;
        if (k1 > j1)
        {
            i1 = l1 - (k1 - j1);
        }
        if (true) goto _L9; else goto _L11
_L11:
        C.clear();
        return;
          goto _L8
    }

    protected void onMeasure(int i1, int j1)
    {
        int ai[] = D;
        int k1;
        int l1;
        int i2;
        int j2;
        int k2;
        int l2;
        int i3;
        int k3;
        if (eu.a(this))
        {
            k2 = 0;
            l2 = 1;
        } else
        {
            k2 = 1;
            l2 = 0;
        }
        k1 = 0;
        if (b(f))
        {
            a(f, i1, 0, j1, p);
            k1 = f.getMeasuredWidth() + c(f);
            j2 = Math.max(0, f.getMeasuredHeight() + d(f));
            i2 = eu.a(0, bh.l(f));
        } else
        {
            i2 = 0;
            j2 = 0;
        }
        i3 = k1;
        k1 = i2;
        l1 = j2;
        if (b(j))
        {
            a(j, i1, 0, j1, p);
            i3 = j.getMeasuredWidth() + c(j);
            l1 = Math.max(j2, j.getMeasuredHeight() + d(j));
            k1 = eu.a(i2, bh.l(j));
        }
        i2 = getContentInsetStart();
        k3 = Math.max(i2, i3) + 0;
        ai[l2] = Math.max(0, i2 - i3);
        l2 = 0;
        i2 = k1;
        j2 = l1;
        if (b(a))
        {
            a(a, i1, k3, j1, p);
            l2 = a.getMeasuredWidth() + c(a);
            j2 = Math.max(l1, a.getMeasuredHeight() + d(a));
            i2 = eu.a(k1, bh.l(a));
        }
        k1 = getContentInsetEnd();
        i3 = k3 + Math.max(k1, l2);
        ai[k2] = Math.max(0, k1 - l2);
        k2 = i3;
        k1 = i2;
        l1 = j2;
        if (b(c))
        {
            k2 = i3 + a(c, i1, i3, j1, 0, ai);
            l1 = Math.max(j2, c.getMeasuredHeight() + d(c));
            k1 = eu.a(i2, bh.l(c));
        }
        i2 = k2;
        l2 = k1;
        j2 = l1;
        if (b(g))
        {
            i2 = k2 + a(g, i1, k2, j1, 0, ai);
            j2 = Math.max(l1, g.getMeasuredHeight() + d(g));
            l2 = eu.a(k1, bh.l(g));
        }
        i3 = getChildCount();
        k2 = 0;
        k1 = l2;
        l1 = j2;
        j2 = k2;
        l2 = i2;
        while (j2 < i3) 
        {
            View view1 = getChildAt(j2);
            View view;
            int j3;
            int l3;
            int i4;
            int j4;
            if (((LayoutParams)view1.getLayoutParams()).a == 0 && b(view1))
            {
                l2 += a(view1, i1, l2, j1, 0, ai);
                i2 = Math.max(l1, view1.getMeasuredHeight() + d(view1));
                l1 = eu.a(k1, bh.l(view1));
                k1 = i2;
            } else
            {
                i2 = l1;
                l1 = k1;
                k1 = i2;
            }
            j2++;
            i2 = k1;
            k1 = l1;
            l1 = i2;
        }
        k2 = 0;
        j2 = 0;
        i4 = s + t;
        j4 = q + r;
        i2 = k1;
        if (b(b))
        {
            a(b, i1, l2 + j4, j1, i4, ai);
            i2 = b.getMeasuredWidth();
            k2 = c(b) + i2;
            j2 = b.getMeasuredHeight() + d(b);
            i2 = eu.a(k1, bh.l(b));
        }
        l3 = j2;
        j3 = k2;
        k1 = i2;
        if (b(e))
        {
            j3 = Math.max(k2, a(e, i1, l2 + j4, j1, i4 + j2, ai));
            l3 = j2 + (e.getMeasuredHeight() + d(e));
            k1 = eu.a(i2, bh.l(e));
        }
        i2 = Math.max(l1, l3);
        l1 = getPaddingLeft();
        l3 = getPaddingRight();
        j2 = getPaddingTop();
        k2 = getPaddingBottom();
        l1 = bh.a(Math.max(j3 + l2 + (l1 + l3), getSuggestedMinimumWidth()), i1, 0xff000000 & k1);
        j1 = bh.a(Math.max(i2 + (j2 + k2), getSuggestedMinimumHeight()), j1, k1 << 16);
        if (K) goto _L2; else goto _L1
_L1:
        i1 = 0;
_L4:
        if (i1 != 0)
        {
            j1 = 0;
        }
        setMeasuredDimension(l1, j1);
        return;
_L2:
        k1 = getChildCount();
        i1 = 0;
        do
        {
            if (i1 >= k1)
            {
                break;
            }
            view = getChildAt(i1);
            if (b(view) && view.getMeasuredWidth() > 0 && view.getMeasuredHeight() > 0)
            {
                i1 = 0;
                continue; /* Loop/switch isn't completed */
            }
            i1++;
        } while (true);
        i1 = 1;
        if (true) goto _L4; else goto _L3
_L3:
    }

    protected void onRestoreInstanceState(Parcelable parcelable)
    {
        SavedState savedstate = (SavedState)parcelable;
        super.onRestoreInstanceState(savedstate.getSuperState());
        if (a != null)
        {
            parcelable = a.a;
        } else
        {
            parcelable = null;
        }
        if (savedstate.a != 0 && d != null && parcelable != null)
        {
            parcelable = parcelable.findItem(savedstate.a);
            if (parcelable != null)
            {
                aw.b(parcelable);
            }
        }
        if (savedstate.b)
        {
            removeCallbacks(L);
            post(L);
        }
    }

    public void onRtlPropertiesChanged(int i1)
    {
        en en1;
label0:
        {
label1:
            {
                boolean flag = true;
                if (android.os.Build.VERSION.SDK_INT >= 17)
                {
                    super.onRtlPropertiesChanged(i1);
                }
                en1 = u;
                if (i1 != 1)
                {
                    flag = false;
                }
                if (flag != en1.g)
                {
                    en1.g = flag;
                    if (!en1.h)
                    {
                        break label0;
                    }
                    if (!flag)
                    {
                        break label1;
                    }
                    if (en1.d != 0x80000000)
                    {
                        i1 = en1.d;
                    } else
                    {
                        i1 = en1.e;
                    }
                    en1.a = i1;
                    if (en1.c != 0x80000000)
                    {
                        i1 = en1.c;
                    } else
                    {
                        i1 = en1.f;
                    }
                    en1.b = i1;
                }
                return;
            }
            if (en1.c != 0x80000000)
            {
                i1 = en1.c;
            } else
            {
                i1 = en1.e;
            }
            en1.a = i1;
            if (en1.d != 0x80000000)
            {
                i1 = en1.d;
            } else
            {
                i1 = en1.f;
            }
            en1.b = i1;
            return;
        }
        en1.a = en1.e;
        en1.b = en1.f;
    }

    protected Parcelable onSaveInstanceState()
    {
        SavedState savedstate = new SavedState(super.onSaveInstanceState());
        if (d != null && d.b != null)
        {
            savedstate.a = d.b.getItemId();
        }
        savedstate.b = a();
        return savedstate;
    }

    public boolean onTouchEvent(MotionEvent motionevent)
    {
        int i1 = ax.a(motionevent);
        if (i1 == 0)
        {
            A = false;
        }
        if (!A)
        {
            boolean flag = super.onTouchEvent(motionevent);
            if (i1 == 0 && !flag)
            {
                A = true;
            }
        }
        if (i1 == 1 || i1 == 3)
        {
            A = false;
        }
        return true;
    }

    public void setCollapsible(boolean flag)
    {
        K = flag;
        requestLayout();
    }

    public void setContentInsetsAbsolute(int i1, int j1)
    {
        u.b(i1, j1);
    }

    public void setContentInsetsRelative(int i1, int j1)
    {
        u.a(i1, j1);
    }

    public void setLogo(int i1)
    {
        setLogo(M.a(i1, false));
    }

    public void setLogo(Drawable drawable)
    {
        if (drawable == null) goto _L2; else goto _L1
_L1:
        e();
        if (g.getParent() == null)
        {
            a(g);
            e(g);
        }
_L4:
        if (g != null)
        {
            g.setImageDrawable(drawable);
        }
        return;
_L2:
        if (g != null && g.getParent() != null)
        {
            removeView(g);
        }
        if (true) goto _L4; else goto _L3
_L3:
    }

    public void setLogoDescription(int i1)
    {
        setLogoDescription(getContext().getText(i1));
    }

    public void setLogoDescription(CharSequence charsequence)
    {
        if (!TextUtils.isEmpty(charsequence))
        {
            e();
        }
        if (g != null)
        {
            g.setContentDescription(charsequence);
        }
    }

    public void setMenu(ds ds1, ActionMenuPresenter actionmenupresenter)
    {
        if (ds1 != null || a != null)
        {
            f();
            ds ds2 = a.a;
            if (ds2 != ds1)
            {
                if (ds2 != null)
                {
                    ds2.b(H);
                    ds2.b(d);
                }
                if (d == null)
                {
                    d = new a((byte)0);
                }
                actionmenupresenter.j = true;
                if (ds1 != null)
                {
                    ds1.a(actionmenupresenter, k);
                    ds1.a(d, k);
                } else
                {
                    actionmenupresenter.initForMenu(k, null);
                    d.initForMenu(k, null);
                    actionmenupresenter.updateMenuView(true);
                    d.updateMenuView(true);
                }
                a.setPopupTheme(l);
                a.setPresenter(actionmenupresenter);
                H = actionmenupresenter;
                return;
            }
        }
    }

    public void setMenuCallbacks(dy.a a1, ds.a a2)
    {
        I = a1;
        J = a2;
    }

    public void setNavigationContentDescription(int i1)
    {
        CharSequence charsequence;
        if (i1 != 0)
        {
            charsequence = getContext().getText(i1);
        } else
        {
            charsequence = null;
        }
        setNavigationContentDescription(charsequence);
    }

    public void setNavigationContentDescription(CharSequence charsequence)
    {
        if (!TextUtils.isEmpty(charsequence))
        {
            g();
        }
        if (f != null)
        {
            f.setContentDescription(charsequence);
        }
    }

    public void setNavigationIcon(int i1)
    {
        setNavigationIcon(M.a(i1, false));
    }

    public void setNavigationIcon(Drawable drawable)
    {
        if (drawable == null) goto _L2; else goto _L1
_L1:
        g();
        if (f.getParent() == null)
        {
            a(f);
            e(f);
        }
_L4:
        if (f != null)
        {
            f.setImageDrawable(drawable);
        }
        return;
_L2:
        if (f != null && f.getParent() != null)
        {
            removeView(f);
        }
        if (true) goto _L4; else goto _L3
_L3:
    }

    public void setNavigationOnClickListener(android.view.View.OnClickListener onclicklistener)
    {
        g();
        f.setOnClickListener(onclicklistener);
    }

    public void setOnMenuItemClickListener(b b1)
    {
        E = b1;
    }

    public void setPopupTheme(int i1)
    {
label0:
        {
            if (l != i1)
            {
                l = i1;
                if (i1 != 0)
                {
                    break label0;
                }
                k = getContext();
            }
            return;
        }
        k = new ContextThemeWrapper(getContext(), i1);
    }

    public void setSubtitle(int i1)
    {
        setSubtitle(getContext().getText(i1));
    }

    public void setSubtitle(CharSequence charsequence)
    {
        if (TextUtils.isEmpty(charsequence)) goto _L2; else goto _L1
_L1:
        if (e == null)
        {
            Context context = getContext();
            e = new TextView(context);
            e.setSingleLine();
            e.setEllipsize(android.text.TextUtils.TruncateAt.END);
            if (n != 0)
            {
                e.setTextAppearance(context, n);
            }
            if (z != 0)
            {
                e.setTextColor(z);
            }
        }
        if (e.getParent() == null)
        {
            a(e);
            e(e);
        }
_L4:
        if (e != null)
        {
            e.setText(charsequence);
        }
        x = charsequence;
        return;
_L2:
        if (e != null && e.getParent() != null)
        {
            removeView(e);
        }
        if (true) goto _L4; else goto _L3
_L3:
    }

    public void setSubtitleTextAppearance(Context context, int i1)
    {
        n = i1;
        if (e != null)
        {
            e.setTextAppearance(context, i1);
        }
    }

    public void setSubtitleTextColor(int i1)
    {
        z = i1;
        if (e != null)
        {
            e.setTextColor(i1);
        }
    }

    public void setTitle(int i1)
    {
        setTitle(getContext().getText(i1));
    }

    public void setTitle(CharSequence charsequence)
    {
        if (TextUtils.isEmpty(charsequence)) goto _L2; else goto _L1
_L1:
        if (b == null)
        {
            Context context = getContext();
            b = new TextView(context);
            b.setSingleLine();
            b.setEllipsize(android.text.TextUtils.TruncateAt.END);
            if (m != 0)
            {
                b.setTextAppearance(context, m);
            }
            if (y != 0)
            {
                b.setTextColor(y);
            }
        }
        if (b.getParent() == null)
        {
            a(b);
            e(b);
        }
_L4:
        if (b != null)
        {
            b.setText(charsequence);
        }
        w = charsequence;
        return;
_L2:
        if (b != null && b.getParent() != null)
        {
            removeView(b);
        }
        if (true) goto _L4; else goto _L3
_L3:
    }

    public void setTitleTextAppearance(Context context, int i1)
    {
        m = i1;
        if (b != null)
        {
            b.setTextAppearance(context, i1);
        }
    }

    public void setTitleTextColor(int i1)
    {
        y = i1;
        if (b != null)
        {
            b.setTextColor(i1);
        }
    }
}
