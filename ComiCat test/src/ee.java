// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.content.Context;
import android.content.res.Configuration;
import android.content.res.TypedArray;
import android.support.v7.widget.ActionMenuPresenter;
import android.support.v7.widget.ActionMenuView;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.view.ContextThemeWrapper;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.DecelerateInterpolator;
import android.view.animation.Interpolator;

public abstract class ee extends ViewGroup
{
    public final class a
        implements bt
    {

        int a;
        final ee b;
        private boolean c;

        public final a a(bp bp1, int k)
        {
            b.i = bp1;
            a = k;
            return this;
        }

        public final void onAnimationCancel(View view)
        {
            c = true;
        }

        public final void onAnimationEnd(View view)
        {
            if (!c)
            {
                b.i = null;
                b.setVisibility(a);
                if (b.e != null && b.c != null)
                {
                    b.c.setVisibility(a);
                    return;
                }
            }
        }

        public final void onAnimationStart(View view)
        {
            b.setVisibility(0);
            c = false;
        }

        protected a()
        {
            b = ee.this;
            super();
            c = false;
        }
    }


    private static final Interpolator j = new DecelerateInterpolator();
    protected final a a;
    protected final Context b;
    protected ActionMenuView c;
    protected ActionMenuPresenter d;
    protected ViewGroup e;
    protected boolean f;
    protected boolean g;
    protected int h;
    protected bp i;

    ee(Context context)
    {
        this(context, null);
    }

    ee(Context context, AttributeSet attributeset)
    {
        this(context, attributeset, 0);
    }

    protected ee(Context context, AttributeSet attributeset, int k)
    {
        super(context, attributeset, k);
        a = new a();
        attributeset = new TypedValue();
        if (context.getTheme().resolveAttribute(cv.a.actionBarPopupTheme, attributeset, true) && ((TypedValue) (attributeset)).resourceId != 0)
        {
            b = new ContextThemeWrapper(context, ((TypedValue) (attributeset)).resourceId);
            return;
        } else
        {
            b = context;
            return;
        }
    }

    protected static int a(int k, int l, boolean flag)
    {
        if (flag)
        {
            return k - l;
        } else
        {
            return k + l;
        }
    }

    protected static int a(View view, int k, int l)
    {
        view.measure(android.view.View.MeasureSpec.makeMeasureSpec(k, 0x80000000), l);
        return Math.max(0, (k - view.getMeasuredWidth()) + 0);
    }

    protected static int a(View view, int k, int l, int i1, boolean flag)
    {
        int j1 = view.getMeasuredWidth();
        int k1 = view.getMeasuredHeight();
        l = (i1 - k1) / 2 + l;
        if (flag)
        {
            view.layout(k - j1, l, k, k1 + l);
        } else
        {
            view.layout(k, l, k + j1, k1 + l);
        }
        k = j1;
        if (flag)
        {
            k = -j1;
        }
        return k;
    }

    public void a(int k)
    {
        if (i != null)
        {
            i.a();
        }
        if (k == 0)
        {
            if (getVisibility() != 0)
            {
                bh.c(this, 0.0F);
                if (e != null && c != null)
                {
                    bh.c(c, 0.0F);
                }
            }
            bp bp1 = bh.s(this).a(1.0F);
            bp1.a(200L);
            bp1.a(j);
            if (e != null && c != null)
            {
                dl dl1 = new dl();
                bp bp3 = bh.s(c).a(1.0F);
                bp3.a(200L);
                dl1.a(a.a(bp1, k));
                dl1.a(bp1).a(bp3);
                dl1.a();
                return;
            } else
            {
                bp1.a(a.a(bp1, k));
                bp1.b();
                return;
            }
        }
        bp bp2 = bh.s(this).a(0.0F);
        bp2.a(200L);
        bp2.a(j);
        if (e != null && c != null)
        {
            dl dl2 = new dl();
            bp bp4 = bh.s(c).a(0.0F);
            bp4.a(200L);
            dl2.a(a.a(bp2, k));
            dl2.a(bp2).a(bp4);
            dl2.a();
            return;
        } else
        {
            bp2.a(a.a(bp2, k));
            bp2.b();
            return;
        }
    }

    public boolean a()
    {
        if (d != null)
        {
            return d.d();
        } else
        {
            return false;
        }
    }

    public int getAnimatedVisibility()
    {
        if (i != null)
        {
            return a.a;
        } else
        {
            return getVisibility();
        }
    }

    public int getContentHeight()
    {
        return h;
    }

    protected void onConfigurationChanged(Configuration configuration)
    {
        if (android.os.Build.VERSION.SDK_INT >= 8)
        {
            super.onConfigurationChanged(configuration);
        }
        configuration = getContext().obtainStyledAttributes(null, cv.k.ActionBar, cv.a.actionBarStyle, 0);
        setContentHeight(configuration.getLayoutDimension(cv.k.ActionBar_height, 0));
        configuration.recycle();
        if (d != null)
        {
            d.a();
        }
    }

    public void setContentHeight(int k)
    {
        h = k;
        requestLayout();
    }

    public void setSplitToolbar(boolean flag)
    {
        f = flag;
    }

    public void setSplitView(ViewGroup viewgroup)
    {
        e = viewgroup;
    }

    public void setSplitWhenNarrow(boolean flag)
    {
        g = flag;
    }

}
