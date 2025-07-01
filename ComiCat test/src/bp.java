// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.view.View;
import android.view.ViewPropertyAnimator;
import android.view.animation.Interpolator;
import java.lang.ref.WeakReference;
import java.util.WeakHashMap;

public final class bp
{
    static class a
        implements g
    {

        WeakHashMap a;

        private void e(bp bp1, View view)
        {
            Runnable runnable = null;
            if (a != null)
            {
                runnable = (Runnable)a.get(view);
            }
            Object obj = runnable;
            if (runnable == null)
            {
                obj = new a(this, bp1, view, (byte)0);
                if (a == null)
                {
                    a = new WeakHashMap();
                }
                a.put(view, obj);
            }
            view.removeCallbacks(((Runnable) (obj)));
            view.post(((Runnable) (obj)));
        }

        public void a(View view, long l)
        {
        }

        public void a(View view, Interpolator interpolator)
        {
        }

        public void a(View view, bv bv)
        {
        }

        public void a(bp bp1, View view)
        {
            e(bp1, view);
        }

        public void a(bp bp1, View view, float f1)
        {
            e(bp1, view);
        }

        public void a(bp bp1, View view, bt bt1)
        {
            view.setTag(0x7e000000, bt1);
        }

        public void b(View view, long l)
        {
        }

        public void b(bp bp1, View view)
        {
            e(bp1, view);
        }

        public void b(bp bp1, View view, float f1)
        {
            e(bp1, view);
        }

        public void c(bp bp1, View view)
        {
            if (a != null)
            {
                Runnable runnable = (Runnable)a.get(view);
                if (runnable != null)
                {
                    view.removeCallbacks(runnable);
                }
            }
            d(bp1, view);
        }

        public void c(bp bp1, View view, float f1)
        {
            e(bp1, view);
        }

        final void d(bp bp1, View view)
        {
            Object obj = view.getTag(0x7e000000);
            Runnable runnable;
            if (obj instanceof bt)
            {
                obj = (bt)obj;
            } else
            {
                obj = null;
            }
            runnable = bp.a(bp1);
            bp1 = bp.b(bp1);
            if (runnable != null)
            {
                runnable.run();
            }
            if (obj != null)
            {
                ((bt) (obj)).onAnimationStart(view);
                ((bt) (obj)).onAnimationEnd(view);
            }
            if (bp1 != null)
            {
                bp1.run();
            }
            if (a != null)
            {
                a.remove(view);
            }
        }

        a()
        {
            a = null;
        }
    }

    final class a.a
        implements Runnable
    {

        WeakReference a;
        bp b;
        final a c;

        public final void run()
        {
            View view = (View)a.get();
            if (view != null)
            {
                c.d(b, view);
            }
        }

        private a.a(a a1, bp bp1, View view)
        {
            c = a1;
            super();
            a = new WeakReference(view);
            b = bp1;
        }

        a.a(a a1, bp bp1, View view, byte byte0)
        {
            this(a1, bp1, view);
        }
    }

    static class b extends a
    {

        WeakHashMap b;

        public final void a(View view, long l)
        {
            view.animate().setDuration(l);
        }

        public final void a(View view, Interpolator interpolator)
        {
            view.animate().setInterpolator(interpolator);
        }

        public final void a(bp bp1, View view)
        {
            view.animate().scaleY(1.0F);
        }

        public final void a(bp bp1, View view, float f1)
        {
            view.animate().alpha(f1);
        }

        public void a(bp bp1, View view, bt bt)
        {
            view.setTag(0x7e000000, bt);
            bp1 = new a(bp1);
            view.animate().setListener(new bq._cls1(bp1, view));
        }

        public final void b(View view, long l)
        {
            view.animate().setStartDelay(l);
        }

        public final void b(bp bp1, View view)
        {
            view.animate().cancel();
        }

        public final void b(bp bp1, View view, float f1)
        {
            view.animate().translationX(f1);
        }

        public final void c(bp bp1, View view)
        {
            view.animate().start();
        }

        public final void c(bp bp1, View view, float f1)
        {
            view.animate().translationY(f1);
        }

        b()
        {
            b = null;
        }
    }

    static final class b.a
        implements bt
    {

        bp a;

        public final void onAnimationCancel(View view)
        {
            Object obj = view.getTag(0x7e000000);
            if (obj instanceof bt)
            {
                obj = (bt)obj;
            } else
            {
                obj = null;
            }
            if (obj != null)
            {
                ((bt) (obj)).onAnimationCancel(view);
            }
        }

        public final void onAnimationEnd(View view)
        {
            if (bp.d(a) >= 0)
            {
                bh.a(view, bp.d(a), null);
                bp.c(a);
            }
            if (bp.b(a) != null)
            {
                bp.b(a).run();
            }
            Object obj = view.getTag(0x7e000000);
            if (obj instanceof bt)
            {
                obj = (bt)obj;
            } else
            {
                obj = null;
            }
            if (obj != null)
            {
                ((bt) (obj)).onAnimationEnd(view);
            }
        }

        public final void onAnimationStart(View view)
        {
            if (bp.d(a) >= 0)
            {
                bh.a(view, 2, null);
            }
            if (bp.a(a) != null)
            {
                bp.a(a).run();
            }
            Object obj = view.getTag(0x7e000000);
            if (obj instanceof bt)
            {
                obj = (bt)obj;
            } else
            {
                obj = null;
            }
            if (obj != null)
            {
                ((bt) (obj)).onAnimationStart(view);
            }
        }

        b.a(bp bp1)
        {
            a = bp1;
        }
    }

    static class c extends d
    {

        c()
        {
        }
    }

    static class d extends b
    {

        public final void a(bp bp1, View view, bt bt)
        {
            if (bt != null)
            {
                view.animate().setListener(new br._cls1(bt, view));
                return;
            } else
            {
                view.animate().setListener(null);
                return;
            }
        }

        d()
        {
        }
    }

    static class e extends c
    {

        public final void a(View view, bv bv)
        {
            view.animate().setUpdateListener(new bs._cls1(bv, view));
        }

        e()
        {
        }
    }

    static final class f extends e
    {

        f()
        {
        }
    }

    public static interface g
    {

        public abstract void a(View view, long l);

        public abstract void a(View view, Interpolator interpolator);

        public abstract void a(View view, bv bv);

        public abstract void a(bp bp1, View view);

        public abstract void a(bp bp1, View view, float f1);

        public abstract void a(bp bp1, View view, bt bt);

        public abstract void b(View view, long l);

        public abstract void b(bp bp1, View view);

        public abstract void b(bp bp1, View view, float f1);

        public abstract void c(bp bp1, View view);

        public abstract void c(bp bp1, View view, float f1);
    }


    public static final g b;
    public WeakReference a;
    private Runnable c;
    private Runnable d;
    private int e;

    bp(View view)
    {
        c = null;
        d = null;
        e = -1;
        a = new WeakReference(view);
    }

    static Runnable a(bp bp1)
    {
        return bp1.c;
    }

    static Runnable b(bp bp1)
    {
        return bp1.d;
    }

    static int c(bp bp1)
    {
        bp1.e = -1;
        return -1;
    }

    static int d(bp bp1)
    {
        return bp1.e;
    }

    public final bp a(float f1)
    {
        View view = (View)a.get();
        if (view != null)
        {
            b.a(this, view, f1);
        }
        return this;
    }

    public final bp a(long l)
    {
        View view = (View)a.get();
        if (view != null)
        {
            b.a(view, l);
        }
        return this;
    }

    public final bp a(Interpolator interpolator)
    {
        View view = (View)a.get();
        if (view != null)
        {
            b.a(view, interpolator);
        }
        return this;
    }

    public final bp a(bt bt)
    {
        View view = (View)a.get();
        if (view != null)
        {
            b.a(this, view, bt);
        }
        return this;
    }

    public final bp a(bv bv)
    {
        View view = (View)a.get();
        if (view != null)
        {
            b.a(view, bv);
        }
        return this;
    }

    public final void a()
    {
        View view = (View)a.get();
        if (view != null)
        {
            b.b(this, view);
        }
    }

    public final bp b(float f1)
    {
        View view = (View)a.get();
        if (view != null)
        {
            b.b(this, view, f1);
        }
        return this;
    }

    public final bp b(long l)
    {
        View view = (View)a.get();
        if (view != null)
        {
            b.b(view, l);
        }
        return this;
    }

    public final void b()
    {
        View view = (View)a.get();
        if (view != null)
        {
            b.c(this, view);
        }
    }

    public final bp c(float f1)
    {
        View view = (View)a.get();
        if (view != null)
        {
            b.c(this, view, f1);
        }
        return this;
    }

    static 
    {
        int i = android.os.Build.VERSION.SDK_INT;
        if (i >= 21)
        {
            b = new f();
        } else
        if (i >= 19)
        {
            b = new e();
        } else
        if (i >= 18)
        {
            b = new c();
        } else
        if (i >= 16)
        {
            b = new d();
        } else
        if (i >= 14)
        {
            b = new b();
        } else
        {
            b = new a();
        }
    }
}
