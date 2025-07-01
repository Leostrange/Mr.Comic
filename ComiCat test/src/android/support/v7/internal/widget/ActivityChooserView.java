// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package android.support.v7.internal.widget;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ActivityInfo;
import android.content.pm.ResolveInfo;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.database.DataSetObserver;
import android.graphics.drawable.Drawable;
import android.support.v7.widget.LinearLayoutCompat;
import android.support.v7.widget.ListPopupWindow;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.widget.AdapterView;
import android.widget.BaseAdapter;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.ListView;
import android.widget.PopupWindow;
import android.widget.TextView;
import ao;
import bh;
import eh;
import es;
import java.util.List;

public class ActivityChooserView extends ViewGroup
{
    public static class InnerLayout extends LinearLayoutCompat
    {

        private static final int a[] = {
            0x10100d4
        };


        public InnerLayout(Context context, AttributeSet attributeset)
        {
            super(context, attributeset);
            context = es.a(context, attributeset, a);
            setBackgroundDrawable(context.a(0));
            ((es) (context)).a.recycle();
        }
    }

    final class a extends BaseAdapter
    {

        eh a;
        boolean b;
        final ActivityChooserView c;
        private int d;
        private boolean e;
        private boolean f;

        public final int a()
        {
            int i1 = 0;
            int k1 = d;
            d = 0x7fffffff;
            int l1 = android.view.View.MeasureSpec.makeMeasureSpec(0, 0);
            int i2 = android.view.View.MeasureSpec.makeMeasureSpec(0, 0);
            int j2 = getCount();
            View view = null;
            int j1 = 0;
            for (; i1 < j2; i1++)
            {
                view = getView(i1, view, null);
                view.measure(l1, i2);
                j1 = Math.max(j1, view.getMeasuredWidth());
            }

            d = k1;
            return j1;
        }

        public final void a(int i1)
        {
            if (d != i1)
            {
                d = i1;
                notifyDataSetChanged();
            }
        }

        public final void a(boolean flag)
        {
            if (f != flag)
            {
                f = flag;
                notifyDataSetChanged();
            }
        }

        public final void a(boolean flag, boolean flag1)
        {
            if (b != flag || e != flag1)
            {
                b = flag;
                e = flag1;
                notifyDataSetChanged();
            }
        }

        public final int getCount()
        {
            int j1 = a.a();
            int i1 = j1;
            if (!b)
            {
                i1 = j1;
                if (a.b() != null)
                {
                    i1 = j1 - 1;
                }
            }
            j1 = Math.min(i1, d);
            i1 = j1;
            if (f)
            {
                i1 = j1 + 1;
            }
            return i1;
        }

        public final Object getItem(int i1)
        {
            int j1;
            switch (getItemViewType(i1))
            {
            default:
                throw new IllegalArgumentException();

            case 1: // '\001'
                return null;

            case 0: // '\0'
                j1 = i1;
                break;
            }
            if (!b)
            {
                j1 = i1;
                if (a.b() != null)
                {
                    j1 = i1 + 1;
                }
            }
            return a.a(j1);
        }

        public final long getItemId(int i1)
        {
            return (long)i1;
        }

        public final int getItemViewType(int i1)
        {
            return !f || i1 != getCount() - 1 ? 0 : 1;
        }

        public final View getView(int i1, View view, ViewGroup viewgroup)
        {
            getItemViewType(i1);
            JVM INSTR tableswitch 0 1: default 28
        //                       0 107
        //                       1 36;
               goto _L1 _L2 _L3
_L1:
            throw new IllegalArgumentException();
_L3:
            if (view == null) goto _L5; else goto _L4
_L4:
            View view1 = view;
            if (view.getId() == 1) goto _L6; else goto _L5
_L5:
            view1 = LayoutInflater.from(c.getContext()).inflate(cv.h.abc_activity_chooser_view_list_item, viewgroup, false);
            view1.setId(1);
            ((TextView)view1.findViewById(cv.f.title)).setText(c.getContext().getString(cv.i.abc_activity_chooser_view_see_all));
_L6:
            return view1;
_L2:
            if (view == null) goto _L8; else goto _L7
_L7:
            view1 = view;
            if (view.getId() == cv.f.list_item) goto _L9; else goto _L8
_L8:
            view1 = LayoutInflater.from(c.getContext()).inflate(cv.h.abc_activity_chooser_view_list_item, viewgroup, false);
_L9:
            view = c.getContext().getPackageManager();
            viewgroup = (ImageView)view1.findViewById(cv.f.icon);
            ResolveInfo resolveinfo = (ResolveInfo)getItem(i1);
            viewgroup.setImageDrawable(resolveinfo.loadIcon(view));
            ((TextView)view1.findViewById(cv.f.title)).setText(resolveinfo.loadLabel(view));
            if (b && i1 == 0 && e)
            {
                bh.b(view1, true);
                return view1;
            } else
            {
                bh.b(view1, false);
                return view1;
            }
        }

        public final int getViewTypeCount()
        {
            return 3;
        }

        private a()
        {
            c = ActivityChooserView.this;
            super();
            d = 4;
        }

        a(byte byte0)
        {
            this();
        }
    }

    final class b
        implements android.view.View.OnClickListener, android.view.View.OnLongClickListener, android.widget.AdapterView.OnItemClickListener, android.widget.PopupWindow.OnDismissListener
    {

        final ActivityChooserView a;

        public final void onClick(View view)
        {
            if (view == ActivityChooserView.e(a))
            {
                a.b();
                view = ActivityChooserView.a(a).a.b();
                int i1 = ActivityChooserView.a(a).a.a(view);
                view = ActivityChooserView.a(a).a.b(i1);
                if (view != null)
                {
                    view.addFlags(0x80000);
                    a.getContext().startActivity(view);
                }
                return;
            }
            if (view == ActivityChooserView.f(a))
            {
                ActivityChooserView.a(a, false);
                ActivityChooserView.a(a, ActivityChooserView.g(a));
                return;
            } else
            {
                throw new IllegalArgumentException();
            }
        }

        public final void onDismiss()
        {
            if (ActivityChooserView.h(a) != null)
            {
                ActivityChooserView.h(a).onDismiss();
            }
            if (a.a != null)
            {
                a.a.a(false);
            }
        }

        public final void onItemClick(AdapterView adapterview, View view, int i1, long l1)
        {
            ((a)adapterview.getAdapter()).getItemViewType(i1);
            JVM INSTR tableswitch 0 1: default 32
        //                       0 50
        //                       1 40;
               goto _L1 _L2 _L3
_L1:
            throw new IllegalArgumentException();
_L3:
            ActivityChooserView.a(a, 0x7fffffff);
_L10:
            return;
_L2:
            a.b();
            if (!ActivityChooserView.d(a)) goto _L5; else goto _L4
_L4:
            if (i1 <= 0)
            {
                continue; /* Loop/switch isn't completed */
            }
            view = ActivityChooserView.a(a).a;
            adapterview = ((AdapterView) (((eh) (view)).a));
            adapterview;
            JVM INSTR monitorenter ;
            eh.a a1;
            eh.a a2;
            view.d();
            a1 = (eh.a)((eh) (view)).b.get(i1);
            a2 = (eh.a)((eh) (view)).b.get(0);
            if (a2 == null) goto _L7; else goto _L6
_L6:
            float f1 = (a2.b - a1.b) + 5F;
_L8:
            view.a(new eh.c(new ComponentName(a1.a.activityInfo.packageName, a1.a.activityInfo.name), System.currentTimeMillis(), f1));
            adapterview;
            JVM INSTR monitorexit ;
            return;
            view;
            adapterview;
            JVM INSTR monitorexit ;
            throw view;
_L7:
            f1 = 1.0F;
              goto _L8
_L5:
            if (!ActivityChooserView.a(a).b)
            {
                i1++;
            }
            adapterview = ActivityChooserView.a(a).a.b(i1);
            if (adapterview != null)
            {
                adapterview.addFlags(0x80000);
                a.getContext().startActivity(adapterview);
                return;
            }
            if (true) goto _L10; else goto _L9
_L9:
        }

        public final boolean onLongClick(View view)
        {
            if (view == ActivityChooserView.e(a))
            {
                if (ActivityChooserView.a(a).getCount() > 0)
                {
                    ActivityChooserView.a(a, true);
                    ActivityChooserView.a(a, ActivityChooserView.g(a));
                }
                return true;
            } else
            {
                throw new IllegalArgumentException();
            }
        }

        private b()
        {
            a = ActivityChooserView.this;
            super();
        }

        b(byte byte0)
        {
            this();
        }
    }


    ao a;
    private final a b;
    private final b c;
    private final LinearLayoutCompat d;
    private final Drawable e;
    private final FrameLayout f;
    private final ImageView g;
    private final FrameLayout h;
    private final ImageView i;
    private final int j;
    private final DataSetObserver k;
    private final android.view.ViewTreeObserver.OnGlobalLayoutListener l;
    private ListPopupWindow m;
    private android.widget.PopupWindow.OnDismissListener n;
    private boolean o;
    private int p;
    private boolean q;
    private int r;

    public ActivityChooserView(Context context)
    {
        this(context, null);
    }

    public ActivityChooserView(Context context, AttributeSet attributeset)
    {
        this(context, attributeset, 0);
    }

    public ActivityChooserView(Context context, AttributeSet attributeset, int i1)
    {
        super(context, attributeset, i1);
        k = new DataSetObserver() {

            final ActivityChooserView a;

            public final void onChanged()
            {
                super.onChanged();
                ActivityChooserView.a(a).notifyDataSetChanged();
            }

            public final void onInvalidated()
            {
                super.onInvalidated();
                ActivityChooserView.a(a).notifyDataSetInvalidated();
            }

            
            {
                a = ActivityChooserView.this;
                super();
            }
        };
        l = new android.view.ViewTreeObserver.OnGlobalLayoutListener() {

            final ActivityChooserView a;

            public final void onGlobalLayout()
            {
                if (a.c())
                {
                    if (!a.isShown())
                    {
                        ActivityChooserView.b(a).a();
                    } else
                    {
                        ActivityChooserView.b(a).c();
                        if (a.a != null)
                        {
                            a.a.a(true);
                            return;
                        }
                    }
                }
            }

            
            {
                a = ActivityChooserView.this;
                super();
            }
        };
        p = 4;
        Object obj = context.obtainStyledAttributes(attributeset, cv.k.ActivityChooserView, i1, 0);
        p = ((TypedArray) (obj)).getInt(cv.k.ActivityChooserView_initialActivityCount, 4);
        attributeset = ((TypedArray) (obj)).getDrawable(cv.k.ActivityChooserView_expandActivityOverflowButtonDrawable);
        ((TypedArray) (obj)).recycle();
        LayoutInflater.from(getContext()).inflate(cv.h.abc_activity_chooser_view, this, true);
        c = new b((byte)0);
        d = (LinearLayoutCompat)findViewById(cv.f.activity_chooser_view_content);
        e = d.getBackground();
        h = (FrameLayout)findViewById(cv.f.default_activity_button);
        h.setOnClickListener(c);
        h.setOnLongClickListener(c);
        i = (ImageView)h.findViewById(cv.f.image);
        obj = (FrameLayout)findViewById(cv.f.expand_activities_button);
        ((FrameLayout) (obj)).setOnClickListener(c);
        ((FrameLayout) (obj)).setOnTouchListener(new android.support.v7.widget.ListPopupWindow.b(((View) (obj))) {

            final ActivityChooserView a;

            public final ListPopupWindow a()
            {
                return ActivityChooserView.b(a);
            }

            protected final boolean b()
            {
                a.a();
                return true;
            }

            protected final boolean c()
            {
                a.b();
                return true;
            }

            
            {
                a = ActivityChooserView.this;
                super(view);
            }
        });
        f = ((FrameLayout) (obj));
        g = (ImageView)((FrameLayout) (obj)).findViewById(cv.f.image);
        g.setImageDrawable(attributeset);
        b = new a((byte)0);
        b.registerDataSetObserver(new DataSetObserver() {

            final ActivityChooserView a;

            public final void onChanged()
            {
                super.onChanged();
                ActivityChooserView.c(a);
            }

            
            {
                a = ActivityChooserView.this;
                super();
            }
        });
        context = context.getResources();
        j = Math.max(context.getDisplayMetrics().widthPixels / 2, context.getDimensionPixelSize(cv.d.abc_config_prefDialogWidth));
    }

    static a a(ActivityChooserView activitychooserview)
    {
        return activitychooserview.b;
    }

    private void a(int i1)
    {
        if (b.a == null)
        {
            throw new IllegalStateException("No data model. Did you call #setDataModel?");
        }
        getViewTreeObserver().addOnGlobalLayoutListener(l);
        ListPopupWindow listpopupwindow;
        int j1;
        int k1;
        boolean flag;
        if (h.getVisibility() == 0)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        k1 = b.a.a();
        if (flag)
        {
            j1 = 1;
        } else
        {
            j1 = 0;
        }
        if (i1 != 0x7fffffff && k1 > j1 + i1)
        {
            b.a(true);
            b.a(i1 - 1);
        } else
        {
            b.a(false);
            b.a(i1);
        }
        listpopupwindow = getListPopupWindow();
        if (!listpopupwindow.b.isShowing())
        {
            if (o || !flag)
            {
                b.a(true, flag);
            } else
            {
                b.a(false, false);
            }
            listpopupwindow.a(Math.min(b.a(), j));
            listpopupwindow.c();
            if (a != null)
            {
                a.a(true);
            }
            listpopupwindow.c.setContentDescription(getContext().getString(cv.i.abc_activitychooserview_choose_application));
        }
    }

    static void a(ActivityChooserView activitychooserview, int i1)
    {
        activitychooserview.a(i1);
    }

    static boolean a(ActivityChooserView activitychooserview, boolean flag)
    {
        activitychooserview.o = flag;
        return flag;
    }

    static ListPopupWindow b(ActivityChooserView activitychooserview)
    {
        return activitychooserview.getListPopupWindow();
    }

    static void c(ActivityChooserView activitychooserview)
    {
        int i1;
        int j1;
        if (activitychooserview.b.getCount() > 0)
        {
            activitychooserview.f.setEnabled(true);
        } else
        {
            activitychooserview.f.setEnabled(false);
        }
        i1 = activitychooserview.b.a.a();
        j1 = activitychooserview.b.a.c();
        if (i1 == 1 || i1 > 1 && j1 > 0)
        {
            activitychooserview.h.setVisibility(0);
            Object obj = activitychooserview.b.a.b();
            android.content.pm.PackageManager packagemanager = activitychooserview.getContext().getPackageManager();
            activitychooserview.i.setImageDrawable(((ResolveInfo) (obj)).loadIcon(packagemanager));
            if (activitychooserview.r != 0)
            {
                obj = ((ResolveInfo) (obj)).loadLabel(packagemanager);
                obj = activitychooserview.getContext().getString(activitychooserview.r, new Object[] {
                    obj
                });
                activitychooserview.h.setContentDescription(((CharSequence) (obj)));
            }
        } else
        {
            activitychooserview.h.setVisibility(8);
        }
        if (activitychooserview.h.getVisibility() == 0)
        {
            activitychooserview.d.setBackgroundDrawable(activitychooserview.e);
            return;
        } else
        {
            activitychooserview.d.setBackgroundDrawable(null);
            return;
        }
    }

    static boolean d(ActivityChooserView activitychooserview)
    {
        return activitychooserview.o;
    }

    static FrameLayout e(ActivityChooserView activitychooserview)
    {
        return activitychooserview.h;
    }

    static FrameLayout f(ActivityChooserView activitychooserview)
    {
        return activitychooserview.f;
    }

    static int g(ActivityChooserView activitychooserview)
    {
        return activitychooserview.p;
    }

    private ListPopupWindow getListPopupWindow()
    {
        if (m == null)
        {
            m = new ListPopupWindow(getContext());
            m.a(b);
            m.g = this;
            m.d();
            m.h = c;
            m.a(c);
        }
        return m;
    }

    static android.widget.PopupWindow.OnDismissListener h(ActivityChooserView activitychooserview)
    {
        return activitychooserview.n;
    }

    public final boolean a()
    {
        if (getListPopupWindow().b.isShowing() || !q)
        {
            return false;
        } else
        {
            o = false;
            a(p);
            return true;
        }
    }

    public final boolean b()
    {
        if (getListPopupWindow().b.isShowing())
        {
            getListPopupWindow().a();
            ViewTreeObserver viewtreeobserver = getViewTreeObserver();
            if (viewtreeobserver.isAlive())
            {
                viewtreeobserver.removeGlobalOnLayoutListener(l);
            }
        }
        return true;
    }

    public final boolean c()
    {
        return getListPopupWindow().b.isShowing();
    }

    public eh getDataModel()
    {
        return b.a;
    }

    protected void onAttachedToWindow()
    {
        super.onAttachedToWindow();
        eh eh1 = b.a;
        if (eh1 != null)
        {
            eh1.registerObserver(k);
        }
        q = true;
    }

    protected void onDetachedFromWindow()
    {
        super.onDetachedFromWindow();
        Object obj = b.a;
        if (obj != null)
        {
            ((eh) (obj)).unregisterObserver(k);
        }
        obj = getViewTreeObserver();
        if (((ViewTreeObserver) (obj)).isAlive())
        {
            ((ViewTreeObserver) (obj)).removeGlobalOnLayoutListener(l);
        }
        if (c())
        {
            b();
        }
        q = false;
    }

    protected void onLayout(boolean flag, int i1, int j1, int k1, int l1)
    {
        d.layout(0, 0, k1 - i1, l1 - j1);
        if (!c())
        {
            b();
        }
    }

    protected void onMeasure(int i1, int j1)
    {
        LinearLayoutCompat linearlayoutcompat = d;
        int k1 = j1;
        if (h.getVisibility() != 0)
        {
            k1 = android.view.View.MeasureSpec.makeMeasureSpec(android.view.View.MeasureSpec.getSize(j1), 0x40000000);
        }
        measureChild(linearlayoutcompat, i1, k1);
        setMeasuredDimension(linearlayoutcompat.getMeasuredWidth(), linearlayoutcompat.getMeasuredHeight());
    }

    public void setActivityChooserModel(eh eh1)
    {
        a a1 = b;
        eh eh2 = a1.c.b.a;
        if (eh2 != null && a1.c.isShown())
        {
            eh2.unregisterObserver(a1.c.k);
        }
        a1.a = eh1;
        if (eh1 != null && a1.c.isShown())
        {
            eh1.registerObserver(a1.c.k);
        }
        a1.notifyDataSetChanged();
        if (getListPopupWindow().b.isShowing())
        {
            b();
            a();
        }
    }

    public void setDefaultActionButtonContentDescription(int i1)
    {
        r = i1;
    }

    public void setExpandActivityOverflowButtonContentDescription(int i1)
    {
        String s = getContext().getString(i1);
        g.setContentDescription(s);
    }

    public void setExpandActivityOverflowButtonDrawable(Drawable drawable)
    {
        g.setImageDrawable(drawable);
    }

    public void setInitialActivityCount(int i1)
    {
        p = i1;
    }

    public void setOnDismissListener(android.widget.PopupWindow.OnDismissListener ondismisslistener)
    {
        n = ondismisslistener;
    }

    public void setProvider(ao ao1)
    {
        a = ao1;
    }
}
