// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package android.support.v7.internal.widget;

import android.content.Context;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.support.v7.widget.AppCompatTextView;
import android.support.v7.widget.LinearLayoutCompat;
import android.text.TextUtils;
import android.util.DisplayMetrics;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityNodeInfo;
import android.view.animation.DecelerateInterpolator;
import android.view.animation.Interpolator;
import android.widget.BaseAdapter;
import android.widget.HorizontalScrollView;
import android.widget.ImageView;
import android.widget.TextView;
import android.widget.Toast;
import bp;
import bt;
import dg;
import es;

// Referenced classes of package android.support.v7.internal.widget:
//            SpinnerCompat, AbsSpinnerCompat

public class ScrollingTabContainerView extends HorizontalScrollView
    implements AdapterViewCompat.b
{
    public final class TabView extends LinearLayoutCompat
        implements android.view.View.OnLongClickListener
    {

        android.support.v7.app.ActionBar.Tab a;
        final ScrollingTabContainerView b;
        private final int c[] = {
            0x10100d4
        };
        private TextView d;
        private ImageView e;
        private View f;

        public final void a()
        {
            Object obj = a;
            Object obj1 = ((android.support.v7.app.ActionBar.Tab) (obj)).getCustomView();
            if (obj1 != null)
            {
                obj = ((View) (obj1)).getParent();
                if (obj != this)
                {
                    if (obj != null)
                    {
                        ((ViewGroup)obj).removeView(((View) (obj1)));
                    }
                    addView(((View) (obj1)));
                }
                f = ((View) (obj1));
                if (d != null)
                {
                    d.setVisibility(8);
                }
                if (e != null)
                {
                    e.setVisibility(8);
                    e.setImageDrawable(null);
                }
                return;
            }
            if (f != null)
            {
                removeView(f);
                f = null;
            }
            android.graphics.drawable.Drawable drawable = ((android.support.v7.app.ActionBar.Tab) (obj)).getIcon();
            obj1 = ((android.support.v7.app.ActionBar.Tab) (obj)).getText();
            boolean flag;
            if (drawable != null)
            {
                if (e == null)
                {
                    ImageView imageview = new ImageView(getContext());
                    android.support.v7.widget.LinearLayoutCompat.LayoutParams layoutparams1 = new android.support.v7.widget.LinearLayoutCompat.LayoutParams(-2, -2);
                    layoutparams1.h = 16;
                    imageview.setLayoutParams(layoutparams1);
                    addView(imageview, 0);
                    e = imageview;
                }
                e.setImageDrawable(drawable);
                e.setVisibility(0);
            } else
            if (e != null)
            {
                e.setVisibility(8);
                e.setImageDrawable(null);
            }
            if (!TextUtils.isEmpty(((CharSequence) (obj1))))
            {
                flag = true;
            } else
            {
                flag = false;
            }
            if (flag)
            {
                if (d == null)
                {
                    AppCompatTextView appcompattextview = new AppCompatTextView(getContext(), null, cv.a.actionBarTabTextStyle);
                    appcompattextview.setEllipsize(android.text.TextUtils.TruncateAt.END);
                    android.support.v7.widget.LinearLayoutCompat.LayoutParams layoutparams = new android.support.v7.widget.LinearLayoutCompat.LayoutParams(-2, -2);
                    layoutparams.h = 16;
                    appcompattextview.setLayoutParams(layoutparams);
                    addView(appcompattextview);
                    d = appcompattextview;
                }
                d.setText(((CharSequence) (obj1)));
                d.setVisibility(0);
            } else
            if (d != null)
            {
                d.setVisibility(8);
                d.setText(null);
            }
            if (e != null)
            {
                e.setContentDescription(((android.support.v7.app.ActionBar.Tab) (obj)).getContentDescription());
            }
            if (!flag && !TextUtils.isEmpty(((android.support.v7.app.ActionBar.Tab) (obj)).getContentDescription()))
            {
                setOnLongClickListener(this);
                return;
            } else
            {
                setOnLongClickListener(null);
                setLongClickable(false);
                return;
            }
        }

        public final android.support.v7.app.ActionBar.Tab getTab()
        {
            return a;
        }

        public final void onInitializeAccessibilityEvent(AccessibilityEvent accessibilityevent)
        {
            super.onInitializeAccessibilityEvent(accessibilityevent);
            accessibilityevent.setClassName(android/support/v7/app/ActionBar$Tab.getName());
        }

        public final void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilitynodeinfo)
        {
            super.onInitializeAccessibilityNodeInfo(accessibilitynodeinfo);
            if (android.os.Build.VERSION.SDK_INT >= 14)
            {
                accessibilitynodeinfo.setClassName(android/support/v7/app/ActionBar$Tab.getName());
            }
        }

        public final boolean onLongClick(View view)
        {
            view = new int[2];
            getLocationOnScreen(view);
            Object obj = getContext();
            int i1 = getWidth();
            int j1 = getHeight();
            int k1 = ((Context) (obj)).getResources().getDisplayMetrics().widthPixels;
            obj = Toast.makeText(((Context) (obj)), a.getContentDescription(), 0);
            ((Toast) (obj)).setGravity(49, (view[0] + i1 / 2) - k1 / 2, j1);
            ((Toast) (obj)).show();
            return true;
        }

        public final void onMeasure(int i1, int j1)
        {
            super.onMeasure(i1, j1);
            if (b.e > 0 && getMeasuredWidth() > b.e)
            {
                super.onMeasure(android.view.View.MeasureSpec.makeMeasureSpec(b.e, 0x40000000), j1);
            }
        }

        public final void setSelected(boolean flag)
        {
            boolean flag1;
            if (isSelected() != flag)
            {
                flag1 = true;
            } else
            {
                flag1 = false;
            }
            super.setSelected(flag);
            if (flag1 && flag)
            {
                sendAccessibilityEvent(4);
            }
        }

        public TabView(Context context, android.support.v7.app.ActionBar.Tab tab, boolean flag)
        {
            b = ScrollingTabContainerView.this;
            super(context, null, cv.a.actionBarTabStyle);
            a = tab;
            scrollingtabcontainerview = es.a(context, null, c, cv.a.actionBarTabStyle);
            if (es.this.d(0))
            {
                setBackgroundDrawable(es.this.a(0));
            }
            ScrollingTabContainerView.this.a.recycle();
            if (flag)
            {
                setGravity(0x800013);
            }
            a();
        }
    }

    public final class a extends BaseAdapter
    {

        final ScrollingTabContainerView a;

        public final int getCount()
        {
            return ScrollingTabContainerView.a(a).getChildCount();
        }

        public final Object getItem(int i1)
        {
            return ((TabView)ScrollingTabContainerView.a(a).getChildAt(i1)).a;
        }

        public final long getItemId(int i1)
        {
            return (long)i1;
        }

        public final View getView(int i1, View view, ViewGroup viewgroup)
        {
            if (view == null)
            {
                return ScrollingTabContainerView.a(a, (android.support.v7.app.ActionBar.Tab)getItem(i1));
            } else
            {
                viewgroup = (TabView)view;
                viewgroup.a = (android.support.v7.app.ActionBar.Tab)getItem(i1);
                viewgroup.a();
                return view;
            }
        }

        private a()
        {
            a = ScrollingTabContainerView.this;
            super();
        }

        a(byte byte0)
        {
            this();
        }
    }

    final class b
        implements android.view.View.OnClickListener
    {

        final ScrollingTabContainerView a;

        public final void onClick(View view)
        {
            ((TabView)view).a.select();
            int j1 = ScrollingTabContainerView.a(a).getChildCount();
            int i1 = 0;
            while (i1 < j1) 
            {
                View view1 = ScrollingTabContainerView.a(a).getChildAt(i1);
                boolean flag;
                if (view1 == view)
                {
                    flag = true;
                } else
                {
                    flag = false;
                }
                view1.setSelected(flag);
                i1++;
            }
        }

        private b()
        {
            a = ScrollingTabContainerView.this;
            super();
        }

        b(byte byte0)
        {
            this();
        }
    }

    public final class c
        implements bt
    {

        final ScrollingTabContainerView a;
        private boolean b;
        private int c;

        public final void onAnimationCancel(View view)
        {
            b = true;
        }

        public final void onAnimationEnd(View view)
        {
            if (b)
            {
                return;
            } else
            {
                a.g = null;
                a.setVisibility(c);
                return;
            }
        }

        public final void onAnimationStart(View view)
        {
            a.setVisibility(0);
            b = false;
        }

        protected c()
        {
            a = ScrollingTabContainerView.this;
            super();
            b = false;
        }
    }


    private static final Interpolator l = new DecelerateInterpolator();
    Runnable a;
    public LinearLayoutCompat b;
    public SpinnerCompat c;
    public boolean d;
    int e;
    int f;
    protected bp g;
    protected final c h = new c();
    private b i;
    private int j;
    private int k;

    public ScrollingTabContainerView(Context context)
    {
        super(context);
        setHorizontalScrollBarEnabled(false);
        context = dg.a(context);
        setContentHeight(context.b());
        f = context.c();
        context = new LinearLayoutCompat(getContext(), null, cv.a.actionBarTabBarStyle);
        context.setMeasureWithLargestChildEnabled(true);
        context.setGravity(17);
        context.setLayoutParams(new android.support.v7.widget.LinearLayoutCompat.LayoutParams(-2, -1));
        b = context;
        addView(b, new android.view.ViewGroup.LayoutParams(-2, -1));
    }

    static TabView a(ScrollingTabContainerView scrollingtabcontainerview, android.support.v7.app.ActionBar.Tab tab)
    {
        return scrollingtabcontainerview.a(tab, true);
    }

    static LinearLayoutCompat a(ScrollingTabContainerView scrollingtabcontainerview)
    {
        return scrollingtabcontainerview.b;
    }

    private boolean a()
    {
        return c != null && c.getParent() == this;
    }

    private boolean b()
    {
        if (!a())
        {
            return false;
        } else
        {
            removeView(c);
            addView(b, new android.view.ViewGroup.LayoutParams(-2, -1));
            setTabSelected(c.getSelectedItemPosition());
            return false;
        }
    }

    public final TabView a(android.support.v7.app.ActionBar.Tab tab, boolean flag)
    {
        tab = new TabView(getContext(), tab, flag);
        if (flag)
        {
            tab.setBackgroundDrawable(null);
            tab.setLayoutParams(new android.widget.AbsListView.LayoutParams(-1, j));
            return tab;
        }
        tab.setFocusable(true);
        if (i == null)
        {
            i = new b((byte)0);
        }
        tab.setOnClickListener(i);
        return tab;
    }

    public final void a(int i1)
    {
        View view = b.getChildAt(i1);
        if (a != null)
        {
            removeCallbacks(a);
        }
        a = new Runnable(view) {

            final View a;
            final ScrollingTabContainerView b;

            public final void run()
            {
                int j1 = a.getLeft();
                int k1 = (b.getWidth() - a.getWidth()) / 2;
                b.smoothScrollTo(j1 - k1, 0);
                b.a = null;
            }

            
            {
                b = ScrollingTabContainerView.this;
                a = view;
                super();
            }
        };
        post(a);
    }

    public final void a(View view)
    {
        ((TabView)view).a.select();
    }

    public final void b(int i1)
    {
        ((TabView)b.getChildAt(i1)).a();
        if (c != null)
        {
            ((a)((AbsSpinnerCompat) (c)).a).notifyDataSetChanged();
        }
        if (d)
        {
            requestLayout();
        }
    }

    public void onAttachedToWindow()
    {
        super.onAttachedToWindow();
        if (a != null)
        {
            post(a);
        }
    }

    protected void onConfigurationChanged(Configuration configuration)
    {
        if (android.os.Build.VERSION.SDK_INT >= 8)
        {
            super.onConfigurationChanged(configuration);
        }
        configuration = dg.a(getContext());
        setContentHeight(configuration.b());
        f = configuration.c();
    }

    public void onDetachedFromWindow()
    {
        super.onDetachedFromWindow();
        if (a != null)
        {
            removeCallbacks(a);
        }
    }

    public void onMeasure(int i1, int j1)
    {
        j1 = 1;
        int k1 = android.view.View.MeasureSpec.getMode(i1);
        int i2;
        boolean flag;
        if (k1 == 0x40000000)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        setFillViewport(flag);
        i2 = b.getChildCount();
        if (i2 > 1 && (k1 == 0x40000000 || k1 == 0x80000000))
        {
            SpinnerCompat spinnercompat;
            int l1;
            if (i2 > 2)
            {
                e = (int)((float)android.view.View.MeasureSpec.getSize(i1) * 0.4F);
            } else
            {
                e = android.view.View.MeasureSpec.getSize(i1) / 2;
            }
            e = Math.min(e, f);
        } else
        {
            e = -1;
        }
        l1 = android.view.View.MeasureSpec.makeMeasureSpec(j, 0x40000000);
        if (flag || !d)
        {
            j1 = 0;
        }
        if (j1 != 0)
        {
            b.measure(0, l1);
            if (b.getMeasuredWidth() > android.view.View.MeasureSpec.getSize(i1))
            {
                if (!a())
                {
                    if (c == null)
                    {
                        spinnercompat = new SpinnerCompat(getContext(), cv.a.actionDropDownStyle);
                        spinnercompat.setLayoutParams(new android.support.v7.widget.LinearLayoutCompat.LayoutParams(-2, -1));
                        spinnercompat.setOnItemClickListenerInt(this);
                        c = spinnercompat;
                    }
                    removeView(b);
                    addView(c, new android.view.ViewGroup.LayoutParams(-2, -1));
                    if (((AbsSpinnerCompat) (c)).a == null)
                    {
                        c.setAdapter(new a((byte)0));
                    }
                    if (a != null)
                    {
                        removeCallbacks(a);
                        a = null;
                    }
                    c.setSelection(k);
                }
            } else
            {
                b();
            }
        } else
        {
            b();
        }
        j1 = getMeasuredWidth();
        super.onMeasure(i1, l1);
        i1 = getMeasuredWidth();
        if (flag && j1 != i1)
        {
            setTabSelected(k);
        }
    }

    public void setAllowCollapse(boolean flag)
    {
        d = flag;
    }

    public void setContentHeight(int i1)
    {
        j = i1;
        requestLayout();
    }

    public void setTabSelected(int i1)
    {
        k = i1;
        int k1 = b.getChildCount();
        int j1 = 0;
        while (j1 < k1) 
        {
            View view = b.getChildAt(j1);
            boolean flag;
            if (j1 == i1)
            {
                flag = true;
            } else
            {
                flag = false;
            }
            view.setSelected(flag);
            if (flag)
            {
                a(i1);
            }
            j1++;
        }
        if (c != null && i1 >= 0)
        {
            c.setSelection(i1);
        }
    }

}
