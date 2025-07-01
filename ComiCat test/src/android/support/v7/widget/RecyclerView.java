// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package android.support.v7.widget;

import ab;
import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.database.Observable;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.util.Log;
import android.util.SparseArray;
import android.util.SparseIntArray;
import android.util.TypedValue;
import android.view.FocusFinder;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityManager;
import android.view.animation.Interpolator;
import ax;
import ay;
import az;
import bf;
import bg;
import bh;
import bl;
import by;
import bz;
import cd;
import cm;
import cs;
import ey;
import ez;
import fa;
import fe;
import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import v;

public class RecyclerView extends ViewGroup
    implements ay, bf
{
    public static class LayoutParams extends android.view.ViewGroup.MarginLayoutParams
    {

        s c;
        final Rect d;
        boolean e;
        boolean f;

        public LayoutParams()
        {
            super(-2, -2);
            d = new Rect();
            e = true;
            f = false;
        }

        public LayoutParams(Context context, AttributeSet attributeset)
        {
            super(context, attributeset);
            d = new Rect();
            e = true;
            f = false;
        }

        public LayoutParams(LayoutParams layoutparams)
        {
            super(layoutparams);
            d = new Rect();
            e = true;
            f = false;
        }

        public LayoutParams(android.view.ViewGroup.LayoutParams layoutparams)
        {
            super(layoutparams);
            d = new Rect();
            e = true;
            f = false;
        }

        public LayoutParams(android.view.ViewGroup.MarginLayoutParams marginlayoutparams)
        {
            super(marginlayoutparams);
            d = new Rect();
            e = true;
            f = false;
        }
    }

    static class SavedState extends android.view.View.BaseSavedState
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
        Parcelable a;

        static void a(SavedState savedstate, SavedState savedstate1)
        {
            savedstate.a = savedstate1.a;
        }

        public void writeToParcel(Parcel parcel, int i1)
        {
            super.writeToParcel(parcel, i1);
            parcel.writeParcelable(a, 0);
        }


        SavedState(Parcel parcel)
        {
            super(parcel);
            a = parcel.readParcelable(android/support/v7/widget/RecyclerView$h.getClassLoader());
        }

        SavedState(Parcelable parcelable)
        {
            super(parcelable);
        }
    }

    public static abstract class a
    {

        final b a;
        boolean b;

        public abstract s a();

        public final void a(s s1, int i1)
        {
            s1.b = i1;
            if (b)
            {
                s1.d = -1L;
            }
            s1.a(1, 519);
            v.a("RV OnBindView");
            v.a();
        }

        public abstract int b();
    }

    static final class b extends Observable
    {
    }

    public static abstract class c
    {

        public c()
        {
        }
    }

    public static interface d
    {

        public abstract int a();
    }

    public static abstract class e
    {

        private ArrayList a;
        a h;
        public long i;
        protected long j;
        public long k;
        public long l;
        boolean m;

        public abstract void a();

        public abstract boolean a(s s1);

        public abstract boolean a(s s1, int i1, int j1, int k1, int l1);

        public abstract boolean a(s s1, s s2, int i1, int j1, int k1, int l1);

        public abstract boolean b();

        public abstract boolean b(s s1);

        public abstract void c(s s1);

        public abstract void d();

        public final void d(s s1)
        {
            if (h != null)
            {
                h.a(s1);
            }
        }

        public final void e()
        {
            int j1 = a.size();
            for (int i1 = 0; i1 < j1; i1++)
            {
                a.get(i1);
            }

            a.clear();
        }

        public final void e(s s1)
        {
            if (h != null)
            {
                h.c(s1);
            }
        }

        public final void f(s s1)
        {
            if (h != null)
            {
                h.b(s1);
            }
        }

        public final void g(s s1)
        {
            if (h != null)
            {
                h.d(s1);
            }
        }

        public e()
        {
            h = null;
            a = new ArrayList();
            i = 120L;
            j = 120L;
            k = 250L;
            l = 250L;
            m = true;
        }
    }

    static interface e.a
    {

        public abstract void a(s s1);

        public abstract void b(s s1);

        public abstract void c(s s1);

        public abstract void d(s s1);
    }

    final class f
        implements e.a
    {

        final RecyclerView a;

        public final void a(s s1)
        {
            s1.a(true);
            if (!RecyclerView.c(a, s1.a) && s1.n())
            {
                a.removeDetachedView(s1.a, false);
            }
        }

        public final void b(s s1)
        {
            s1.a(true);
            if (!s.a(s1))
            {
                RecyclerView.c(a, s1.a);
            }
        }

        public final void c(s s1)
        {
            s1.a(true);
            if (!s.a(s1))
            {
                RecyclerView.c(a, s1.a);
            }
        }

        public final void d(s s1)
        {
            s1.a(true);
            if (s1.g != null && s1.h == null)
            {
                s1.g = null;
                s1.a(-65, s1.i);
            }
            s1.h = null;
            if (!s.a(s1))
            {
                RecyclerView.c(a, s1.a);
            }
        }

        private f()
        {
            a = RecyclerView.this;
            super();
        }

        f(byte byte0)
        {
            this();
        }
    }

    static final class g
    {

        s a;
        int b;
        int c;
        int d;
        int e;

        g(s s1, int i1, int j1, int k1, int l1)
        {
            a = s1;
            b = i1;
            c = j1;
            d = k1;
            e = l1;
        }
    }

    public static abstract class h
    {

        ez q;
        public RecyclerView r;
        o s;
        boolean t;
        boolean u;

        public static int a(int i1, int j1, int k1, boolean flag)
        {
            int l1;
            int i2;
            i2 = 0x40000000;
            l1 = Math.max(0, i1 - j1);
            if (!flag) goto _L2; else goto _L1
_L1:
            if (k1 >= 0)
            {
                i1 = k1;
                j1 = i2;
            } else
            {
                j1 = 0;
                i1 = 0;
            }
_L4:
            return android.view.View.MeasureSpec.makeMeasureSpec(i1, j1);
_L2:
            j1 = i2;
            i1 = k1;
            if (k1 < 0)
            {
                if (k1 == -1)
                {
                    i1 = l1;
                    j1 = i2;
                } else
                if (k1 == -2)
                {
                    j1 = 0x80000000;
                    i1 = l1;
                } else
                {
                    j1 = 0;
                    i1 = 0;
                }
            }
            if (true) goto _L4; else goto _L3
_L3:
        }

        public static int a(View view)
        {
            return ((LayoutParams)view.getLayoutParams()).c.c();
        }

        static void a(h h1, o o1)
        {
            if (h1.s == o1)
            {
                h1.s = null;
            }
        }

        public static void a(View view, int i1, int j1, int k1, int l1)
        {
            Rect rect = ((LayoutParams)view.getLayoutParams()).d;
            view.layout(rect.left + i1, rect.top + j1, k1 - rect.right, l1 - rect.bottom);
        }

        static boolean a(h h1)
        {
            return h1.t;
        }

        public static int b(View view)
        {
            Rect rect = ((LayoutParams)view.getLayoutParams()).d;
            int i1 = view.getMeasuredWidth();
            int j1 = rect.left;
            return rect.right + (i1 + j1);
        }

        static boolean b(h h1)
        {
            h1.t = false;
            return false;
        }

        public static int c(View view)
        {
            Rect rect = ((LayoutParams)view.getLayoutParams()).d;
            int i1 = view.getMeasuredHeight();
            int j1 = rect.top;
            return rect.bottom + (i1 + j1);
        }

        public static int d(View view)
        {
            return ((LayoutParams)view.getLayoutParams()).d.top;
        }

        public static int e(View view)
        {
            return ((LayoutParams)view.getLayoutParams()).d.bottom;
        }

        public static int f(View view)
        {
            return ((LayoutParams)view.getLayoutParams()).d.left;
        }

        public static int g(View view)
        {
            return ((LayoutParams)view.getLayoutParams()).d.right;
        }

        private void g(int i1)
        {
            if (c(i1) != null)
            {
                ez ez1 = q;
                i1 = ez1.a(i1);
                View view = ez1.a.b(i1);
                if (view != null)
                {
                    if (ez1.b.c(i1))
                    {
                        ez1.c.remove(view);
                    }
                    ez1.a.a(i1);
                }
            }
        }

        private void h(int i1)
        {
            c(i1);
            ez ez1 = q;
            i1 = ez1.a(i1);
            ez1.b.c(i1);
            ez1.a.c(i1);
        }

        public int a(int i1, l l1, p p1)
        {
            return 0;
        }

        public int a(l l1, p p1)
        {
            while (r == null || RecyclerView.g(r) == null || !f()) 
            {
                return 1;
            }
            return RecyclerView.g(r).b();
        }

        public int a(p p1)
        {
            return 0;
        }

        public LayoutParams a(Context context, AttributeSet attributeset)
        {
            return new LayoutParams(context, attributeset);
        }

        public LayoutParams a(android.view.ViewGroup.LayoutParams layoutparams)
        {
            if (layoutparams instanceof LayoutParams)
            {
                return new LayoutParams((LayoutParams)layoutparams);
            }
            if (layoutparams instanceof android.view.ViewGroup.MarginLayoutParams)
            {
                return new LayoutParams((android.view.ViewGroup.MarginLayoutParams)layoutparams);
            } else
            {
                return new LayoutParams(layoutparams);
            }
        }

        public View a(int i1)
        {
            int k1 = k();
            for (int j1 = 0; j1 < k1; j1++)
            {
                View view = c(j1);
                s s1 = RecyclerView.b(view);
                if (s1 != null && s1.c() == i1 && !s1.b() && (r.n.j || !s1.m()))
                {
                    return view;
                }
            }

            return null;
        }

        public void a()
        {
        }

        public void a(int i1, int j1)
        {
        }

        public final void a(int i1, l l1)
        {
            View view = c(i1);
            g(i1);
            l1.a(view);
        }

        public void a(Parcelable parcelable)
        {
        }

        public final void a(l l1)
        {
            int i1 = k() - 1;
            while (i1 >= 0) 
            {
                Object obj = c(i1);
                s s1 = RecyclerView.b(((View) (obj)));
                if (!s1.b())
                {
                    if (s1.i() && !s1.m() && !s1.k() && !RecyclerView.g(r).b)
                    {
                        g(i1);
                        l1.a(s1);
                    } else
                    {
                        h(i1);
                        obj = RecyclerView.b(((View) (obj)));
                        obj.j = l1;
                        if (!((s) (obj)).k() || !RecyclerView.i(l1.h))
                        {
                            if (((s) (obj)).i() && !((s) (obj)).m() && !RecyclerView.g(l1.h).b)
                            {
                                throw new IllegalArgumentException("Called scrap view with an invalid view. Invalid views cannot be reused from scrap, they should rebound from recycler pool.");
                            }
                            l1.a.add(obj);
                        } else
                        {
                            if (l1.b == null)
                            {
                                l1.b = new ArrayList();
                            }
                            l1.b.add(obj);
                        }
                    }
                }
                i1--;
            }
        }

        public void a(l l1, p p1, View view, bz bz1)
        {
            int i1;
            int j1;
            if (f())
            {
                i1 = a(view);
            } else
            {
                i1 = 0;
            }
            if (e())
            {
                j1 = a(view);
            } else
            {
                j1 = 0;
            }
            bz1.a(bz.j.a(i1, 1, j1, 1, false));
        }

        final void a(RecyclerView recyclerview)
        {
            if (recyclerview == null)
            {
                r = null;
                q = null;
                return;
            } else
            {
                r = recyclerview;
                q = recyclerview.c;
                return;
            }
        }

        public void a(RecyclerView recyclerview, l l1)
        {
        }

        final void a(View view, int i1, boolean flag)
        {
            s s1;
            LayoutParams layoutparams;
            s1 = RecyclerView.b(view);
            if (flag || s1.m())
            {
                r.n.b(view);
            } else
            {
                r.n.a(view);
            }
            layoutparams = (LayoutParams)view.getLayoutParams();
            if (!s1.f() && !s1.d()) goto _L2; else goto _L1
_L1:
            if (s1.d())
            {
                s1.e();
            } else
            {
                s1.g();
            }
            q.a(view, i1, view.getLayoutParams(), false);
_L4:
            if (layoutparams.f)
            {
                s1.a.invalidate();
                layoutparams.f = false;
            }
            return;
_L2:
            if (view.getParent() == r)
            {
                ez ez1 = q;
                int j1 = ez1.a.a(view);
                int k1;
                if (j1 == -1)
                {
                    j1 = -1;
                } else
                if (ez1.b.b(j1))
                {
                    j1 = -1;
                } else
                {
                    j1 -= ez1.b.d(j1);
                }
                k1 = i1;
                if (i1 == -1)
                {
                    k1 = q.a();
                }
                if (j1 == -1)
                {
                    throw new IllegalStateException((new StringBuilder("Added View has RecyclerView as parent but view is not a real child. Unfiltered index:")).append(r.indexOfChild(view)).toString());
                }
                if (j1 != k1)
                {
                    view = RecyclerView.e(r);
                    View view1 = view.c(j1);
                    if (view1 == null)
                    {
                        throw new IllegalArgumentException((new StringBuilder("Cannot move a child from non-existing index:")).append(j1).toString());
                    }
                    view.h(j1);
                    LayoutParams layoutparams1 = (LayoutParams)view1.getLayoutParams();
                    s s2 = RecyclerView.b(view1);
                    if (s2.m())
                    {
                        ((h) (view)).r.n.b(view1);
                    } else
                    {
                        ((h) (view)).r.n.a(view1);
                    }
                    ((h) (view)).q.a(view1, k1, layoutparams1, s2.m());
                }
            } else
            {
                q.a(view, i1, false);
                layoutparams.e = true;
                if (s != null && s.c)
                {
                    o o1 = s;
                    if (RecyclerView.c(view) == o1.a)
                    {
                        o1.d = view;
                    }
                }
            }
            if (true) goto _L4; else goto _L3
_L3:
        }

        public final void a(View view, Rect rect)
        {
            if (r == null)
            {
                rect.set(0, 0, 0, 0);
                return;
            } else
            {
                rect.set(r.d(view));
                return;
            }
        }

        public final void a(View view, l l1)
        {
            ez ez1 = q;
            int i1 = ez1.a.a(view);
            if (i1 >= 0)
            {
                if (ez1.b.c(i1))
                {
                    ez1.c.remove(view);
                }
                ez1.a.a(i1);
            }
            l1.a(view);
        }

        public final void a(View view, bz bz1)
        {
            s s1 = RecyclerView.b(view);
            if (s1 != null && !s1.m() && !q.a(s1.a))
            {
                a(r.a, r.n, view, bz1);
            }
        }

        public void a(AccessibilityEvent accessibilityevent)
        {
            boolean flag1 = true;
            Object obj = r.a;
            obj = r.n;
            accessibilityevent = by.a(accessibilityevent);
            if (r != null)
            {
                boolean flag = flag1;
                if (!bh.b(r, 1))
                {
                    flag = flag1;
                    if (!bh.b(r, -1))
                    {
                        flag = flag1;
                        if (!bh.a(r, -1))
                        {
                            if (bh.a(r, 1))
                            {
                                flag = flag1;
                            } else
                            {
                                flag = false;
                            }
                        }
                    }
                }
                accessibilityevent.a(flag);
                if (RecyclerView.g(r) != null)
                {
                    accessibilityevent.a(RecyclerView.g(r).b());
                    return;
                }
            }
        }

        public void a(String s1)
        {
            if (r != null && r.f())
            {
                if (s1 == null)
                {
                    throw new IllegalStateException("Cannot call this method while RecyclerView is computing a layout or scrolling");
                } else
                {
                    throw new IllegalStateException(s1);
                }
            } else
            {
                return;
            }
        }

        public boolean a(LayoutParams layoutparams)
        {
            return layoutparams != null;
        }

        public final boolean a(Runnable runnable)
        {
            if (r != null)
            {
                return r.removeCallbacks(runnable);
            } else
            {
                return false;
            }
        }

        public int b(int i1, l l1, p p1)
        {
            return 0;
        }

        public int b(l l1, p p1)
        {
            while (r == null || RecyclerView.g(r) == null || !e()) 
            {
                return 1;
            }
            return RecyclerView.g(r).b();
        }

        public int b(p p1)
        {
            return 0;
        }

        public abstract LayoutParams b();

        public void b(int i1)
        {
        }

        public void b(int i1, int j1)
        {
        }

        final void b(l l1)
        {
            int j1 = l1.a.size();
            for (int i1 = j1 - 1; i1 >= 0; i1--)
            {
                View view = ((s)l1.a.get(i1)).a;
                s s1 = RecyclerView.b(view);
                if (s1.b())
                {
                    continue;
                }
                s1.a(false);
                if (s1.n())
                {
                    r.removeDetachedView(view, false);
                }
                if (r.l != null)
                {
                    r.l.c(s1);
                }
                s1.a(true);
                l1.b(view);
            }

            l1.a.clear();
            if (j1 > 0)
            {
                r.invalidate();
            }
        }

        final void b(RecyclerView recyclerview, l l1)
        {
            u = false;
            a(recyclerview, l1);
        }

        public int c(p p1)
        {
            return 0;
        }

        public final View c(int i1)
        {
            if (q != null)
            {
                return q.b(i1);
            } else
            {
                return null;
            }
        }

        public View c(int i1, l l1, p p1)
        {
            return null;
        }

        public void c(int i1, int j1)
        {
        }

        public final void c(l l1)
        {
            for (int i1 = k() - 1; i1 >= 0; i1--)
            {
                if (!RecyclerView.b(c(i1)).b())
                {
                    a(i1, l1);
                }
            }

        }

        public void c(l l1, p p1)
        {
            Log.e("RecyclerView", "You must override onLayoutChildren(Recycler recycler, State state) ");
        }

        public boolean c()
        {
            return false;
        }

        public int d(p p1)
        {
            return 0;
        }

        public Parcelable d()
        {
            return null;
        }

        public void d(int i1)
        {
            if (r != null)
            {
                RecyclerView recyclerview = r;
                int k1 = recyclerview.c.a();
                for (int j1 = 0; j1 < k1; j1++)
                {
                    recyclerview.c.b(j1).offsetLeftAndRight(i1);
                }

            }
        }

        public void d(int i1, int j1)
        {
        }

        public int e(p p1)
        {
            return 0;
        }

        public void e(int i1)
        {
            if (r != null)
            {
                RecyclerView recyclerview = r;
                int k1 = recyclerview.c.a();
                for (int j1 = 0; j1 < k1; j1++)
                {
                    recyclerview.c.b(j1).offsetTopAndBottom(i1);
                }

            }
        }

        public boolean e()
        {
            return false;
        }

        public int f(p p1)
        {
            return 0;
        }

        public void f(int i1)
        {
        }

        public boolean f()
        {
            return false;
        }

        public final void i()
        {
            if (r != null)
            {
                r.requestLayout();
            }
        }

        public final boolean j()
        {
            return s != null && s.c;
        }

        public final int k()
        {
            if (q != null)
            {
                return q.a();
            } else
            {
                return 0;
            }
        }

        public final int l()
        {
            if (r != null)
            {
                return r.getWidth();
            } else
            {
                return 0;
            }
        }

        public final int m()
        {
            if (r != null)
            {
                return r.getHeight();
            } else
            {
                return 0;
            }
        }

        public final int n()
        {
            if (r != null)
            {
                return r.getPaddingLeft();
            } else
            {
                return 0;
            }
        }

        public final int o()
        {
            if (r != null)
            {
                return r.getPaddingTop();
            } else
            {
                return 0;
            }
        }

        public final int p()
        {
            if (r != null)
            {
                return r.getPaddingRight();
            } else
            {
                return 0;
            }
        }

        public final int q()
        {
            if (r != null)
            {
                return r.getPaddingBottom();
            } else
            {
                return 0;
            }
        }

        final void r()
        {
            if (s != null)
            {
                s.a();
            }
        }

        public h()
        {
            t = false;
            u = false;
        }
    }

    public static interface i
    {

        public abstract boolean a();
    }

    public static abstract class j
    {
    }

    public static final class k
    {

        SparseArray a;
        SparseIntArray b;
        int c;

        final void a()
        {
            c = c + 1;
        }

        final void b()
        {
            c = c - 1;
        }

        public k()
        {
            a = new SparseArray();
            b = new SparseIntArray();
            c = 0;
        }
    }

    public final class l
    {

        final ArrayList a = new ArrayList();
        ArrayList b;
        final ArrayList c = new ArrayList();
        final List d;
        int e;
        k f;
        q g;
        final RecyclerView h;

        private void a(ViewGroup viewgroup, boolean flag)
        {
            for (int i1 = viewgroup.getChildCount() - 1; i1 >= 0; i1--)
            {
                View view = viewgroup.getChildAt(i1);
                if (view instanceof ViewGroup)
                {
                    a((ViewGroup)view, true);
                }
            }

            if (!flag)
            {
                return;
            }
            if (viewgroup.getVisibility() == 4)
            {
                viewgroup.setVisibility(0);
                viewgroup.setVisibility(4);
                return;
            } else
            {
                int j1 = viewgroup.getVisibility();
                viewgroup.setVisibility(4);
                viewgroup.setVisibility(j1);
                return;
            }
        }

        private void c(s s1)
        {
            bh.a(s1.a, null);
            if (RecyclerView.o(h) != null)
            {
                RecyclerView.o(h);
            }
            if (RecyclerView.g(h) != null)
            {
                RecyclerView.g(h);
            }
            if (h.n != null)
            {
                h.n.a(s1);
            }
            s1.k = null;
            k k1 = c();
            int i1 = s1.e;
            ArrayList arraylist1 = (ArrayList)k1.a.get(i1);
            ArrayList arraylist = arraylist1;
            if (arraylist1 == null)
            {
                ArrayList arraylist2 = new ArrayList();
                k1.a.put(i1, arraylist2);
                arraylist = arraylist2;
                if (k1.b.indexOfKey(i1) < 0)
                {
                    k1.b.put(i1, 5);
                    arraylist = arraylist2;
                }
            }
            if (k1.b.get(i1) > arraylist.size())
            {
                s1.o();
                arraylist.add(s1);
            }
        }

        private s d()
        {
            for (int i1 = a.size() - 1; i1 >= 0; i1--)
            {
                s s1 = (s)a.get(i1);
                if (s1.d != -1L || s1.f())
                {
                    continue;
                }
                if (s1.e == 0)
                {
                    s1.a(32);
                    if (s1.m() && !h.n.j)
                    {
                        s1.a(2, 14);
                    }
                    return s1;
                }
                a.remove(i1);
                h.removeDetachedView(s1.a, false);
                b(s1.a);
            }

            for (int j1 = c.size() - 1; j1 >= 0; j1--)
            {
                s s2 = (s)c.get(j1);
                if (s2.d != -1L)
                {
                    continue;
                }
                if (s2.e == 0)
                {
                    c.remove(j1);
                    return s2;
                }
                c(j1);
            }

            return null;
        }

        private s d(int i1)
        {
            boolean flag;
            int k1;
label0:
            {
                flag = false;
                if (b != null)
                {
                    k1 = b.size();
                    if (k1 != 0)
                    {
                        break label0;
                    }
                }
                return null;
            }
            for (int j1 = 0; j1 < k1; j1++)
            {
                s s1 = (s)b.get(j1);
                if (!s1.f() && s1.c() == i1)
                {
                    s1.a(32);
                    return s1;
                }
            }

            if (RecyclerView.g(h).b)
            {
                i1 = h.b.a(i1, 0);
                if (i1 > 0 && i1 < RecyclerView.g(h).b())
                {
                    RecyclerView.g(h);
                    for (i1 = ((flag) ? 1 : 0); i1 < k1; i1++)
                    {
                        s s2 = (s)b.get(i1);
                        if (!s2.f() && s2.d == -1L)
                        {
                            s2.a(32);
                            return s2;
                        }
                    }

                }
            }
            return null;
        }

        private s e(int i1)
        {
            ez ez1;
            int k1;
            boolean flag;
            int l1;
            flag = false;
            l1 = a.size();
            for (int j1 = 0; j1 < l1; j1++)
            {
                s s1 = (s)a.get(j1);
                if (!s1.f() && s1.c() == i1 && !s1.i() && (h.n.j || !s1.m()))
                {
                    s1.a(32);
                    return s1;
                }
            }

            ez1 = h.c;
            l1 = ez1.c.size();
            k1 = 0;
_L7:
            if (k1 >= l1) goto _L2; else goto _L1
_L1:
            Object obj;
            s s2;
            obj = (View)ez1.c.get(k1);
            s2 = ez1.a.b(((View) (obj)));
            if (s2.c() != i1 || s2.i()) goto _L4; else goto _L3
_L3:
            if (obj != null)
            {
                h.l.c(h.a(((View) (obj))));
            }
            l1 = c.size();
            k1 = ((flag) ? 1 : 0);
_L5:
            if (k1 >= l1)
            {
                break MISSING_BLOCK_LABEL_272;
            }
            obj = (s)c.get(k1);
            if (!((s) (obj)).i() && ((s) (obj)).c() == i1)
            {
                c.remove(k1);
                return ((s) (obj));
            }
            break MISSING_BLOCK_LABEL_263;
_L4:
            k1++;
            continue; /* Loop/switch isn't completed */
_L2:
            obj = null;
              goto _L3
            k1++;
              goto _L5
            return null;
            if (true) goto _L7; else goto _L6
_L6:
        }

        public final int a(int i1)
        {
            if (i1 < 0 || i1 >= h.n.a())
            {
                throw new IndexOutOfBoundsException((new StringBuilder("invalid position ")).append(i1).append(". State item count is ").append(h.n.a()).toString());
            }
            if (!h.n.j)
            {
                return i1;
            } else
            {
                return h.b.a(i1);
            }
        }

        public final void a()
        {
            a.clear();
            b();
        }

        final void a(s s1)
        {
            int i1;
            boolean flag2 = true;
            boolean flag1 = false;
            if (s1.d() || s1.a.getParent() != null)
            {
                StringBuilder stringbuilder = (new StringBuilder("Scrapped or attached views may not be recycled. isScrap:")).append(s1.d()).append(" isAttached:");
                if (s1.a.getParent() == null)
                {
                    flag2 = false;
                }
                throw new IllegalArgumentException(stringbuilder.append(flag2).toString());
            }
            if (s1.n())
            {
                throw new IllegalArgumentException((new StringBuilder("Tmp detached view should be removed from RecyclerView before it can be recycled: ")).append(s1).toString());
            }
            if (s1.b())
            {
                throw new IllegalArgumentException("Trying to recycle an ignored view holder. You should first call stopIgnoringView(view) before calling recycle.");
            }
            boolean flag;
            if ((s1.i & 0x10) == 0 && bh.c(s1.a))
            {
                flag = true;
            } else
            {
                flag = false;
            }
            if (RecyclerView.g(h) != null && flag)
            {
                RecyclerView.g(h);
            }
            if (!s1.p())
            {
                break MISSING_BLOCK_LABEL_305;
            }
            if ((s1.i & 0x4e) != 0)
            {
                i1 = 1;
            } else
            {
                i1 = 0;
            }
            if (i1 != 0) goto _L2; else goto _L1
_L1:
            i1 = c.size();
            if (i1 == e && i1 > 0)
            {
                c(0);
            }
            if (i1 >= e) goto _L2; else goto _L3
_L3:
            c.add(s1);
            i1 = 1;
_L4:
            if (i1 == 0)
            {
                c(s1);
                flag1 = true;
            }
_L5:
            h.n.a(s1);
            if (i1 == 0 && !flag1 && flag)
            {
                s1.k = null;
            }
            return;
_L2:
            i1 = 0;
              goto _L4
            i1 = 0;
              goto _L5
        }

        public final void a(View view)
        {
            s s1;
            s1 = RecyclerView.b(view);
            if (s1.n())
            {
                h.removeDetachedView(view, false);
            }
            if (!s1.d()) goto _L2; else goto _L1
_L1:
            s1.e();
_L4:
            a(s1);
            return;
_L2:
            if (s1.f())
            {
                s1.g();
            }
            if (true) goto _L4; else goto _L3
_L3:
        }

        public final View b(int i1)
        {
            boolean flag1 = true;
            if (i1 < 0 || i1 >= h.n.a())
            {
                throw new IndexOutOfBoundsException((new StringBuilder("Invalid item position ")).append(i1).append("(").append(i1).append("). Item count:").append(h.n.a()).toString());
            }
            Object obj;
            Object obj1;
            View view;
            boolean flag;
            int j1;
            long l1;
            if (h.n.j)
            {
                obj1 = d(i1);
                if (obj1 != null)
                {
                    flag = true;
                } else
                {
                    flag = false;
                }
                j1 = ((flag) ? 1 : 0);
            } else
            {
                obj1 = null;
                j1 = 0;
            }
            obj = obj1;
            flag = j1;
            if (obj1 != null) goto _L2; else goto _L1
_L1:
            obj1 = e(i1);
            obj = obj1;
            flag = j1;
            if (obj1 == null) goto _L2; else goto _L3
_L3:
            if (((s) (obj1)).m()) goto _L5; else goto _L4
_L4:
            if (((s) (obj1)).b < 0 || ((s) (obj1)).b >= RecyclerView.g(h).b())
            {
                throw new IndexOutOfBoundsException((new StringBuilder("Inconsistency detected. Invalid view holder adapter position")).append(obj1).toString());
            }
            if (h.n.j) goto _L7; else goto _L6
_L6:
            RecyclerView.g(h);
            if (((s) (obj1)).e == 0) goto _L7; else goto _L8
_L8:
            flag = false;
_L18:
            if (!flag)
            {
                ((s) (obj1)).a(4);
                if (((s) (obj1)).d())
                {
                    h.removeDetachedView(((s) (obj1)).a, false);
                    ((s) (obj1)).e();
                } else
                if (((s) (obj1)).f())
                {
                    ((s) (obj1)).g();
                }
                a(((s) (obj1)));
                obj = null;
                flag = j1;
            } else
            {
                flag = true;
                obj = obj1;
            }
_L2:
            if (obj != null) goto _L10; else goto _L9
_L9:
            j1 = h.b.a(i1);
            if (j1 < 0 || j1 >= RecyclerView.g(h).b())
            {
                throw new IndexOutOfBoundsException((new StringBuilder("Inconsistency detected. Invalid item position ")).append(i1).append("(offset:").append(j1).append(").state:").append(h.n.a()).toString());
            }
            RecyclerView.g(h);
              goto _L11
_L7:
            if (RecyclerView.g(h).b)
            {
                l1 = ((s) (obj1)).d;
                RecyclerView.g(h);
                if (l1 != -1L)
                {
                    flag = false;
                    continue; /* Loop/switch isn't completed */
                }
            }
_L5:
            flag = true;
            continue; /* Loop/switch isn't completed */
_L11:
            if (!RecyclerView.g(h).b) goto _L13; else goto _L12
_L12:
            RecyclerView.g(h);
            obj1 = d();
            obj = obj1;
            if (obj1 == null) goto _L13; else goto _L14
_L14:
            obj1.b = j1;
            flag = true;
_L16:
            obj = obj1;
            if (obj1 == null)
            {
                obj = obj1;
                if (g != null)
                {
                    view = g.a();
                    obj = obj1;
                    if (view != null)
                    {
                        obj1 = h.a(view);
                        if (obj1 == null)
                        {
                            throw new IllegalArgumentException("getViewForPositionAndType returned a view which does not have a ViewHolder");
                        }
                        obj = obj1;
                        if (((s) (obj1)).b())
                        {
                            throw new IllegalArgumentException("getViewForPositionAndType returned a view that is ignored. You must call stopIgnoring before returning this view.");
                        }
                    }
                }
            }
            obj1 = obj;
            if (obj == null)
            {
                obj1 = (ArrayList)c().a.get(0);
                if (obj1 != null && !((ArrayList) (obj1)).isEmpty())
                {
                    j1 = ((ArrayList) (obj1)).size() - 1;
                    obj = (s)((ArrayList) (obj1)).get(j1);
                    ((ArrayList) (obj1)).remove(j1);
                } else
                {
                    obj = null;
                }
                if (obj != null)
                {
                    ((s) (obj)).o();
                    if (RecyclerView.k() && (((s) (obj)).a instanceof ViewGroup))
                    {
                        a((ViewGroup)((s) (obj)).a, false);
                    }
                }
                obj1 = obj;
            }
            if (obj1 == null)
            {
                obj = RecyclerView.g(h);
                v.a("RV CreateView");
                obj = ((a) (obj)).a();
                obj.e = 0;
                v.a();
            } else
            {
                obj = obj1;
            }
_L10:
            if (h.n.j && ((s) (obj)).l())
            {
                obj.f = i1;
                i1 = 0;
            } else
            if (!((s) (obj)).l() || ((s) (obj)).j() || ((s) (obj)).i())
            {
                j1 = h.b.a(i1);
                obj.k = h;
                RecyclerView.g(h).a(((s) (obj)), j1);
                obj1 = ((s) (obj)).a;
                if (RecyclerView.m(h) != null && RecyclerView.m(h).isEnabled())
                {
                    if (bh.e(((View) (obj1))) == 0)
                    {
                        bh.c(((View) (obj1)), 1);
                    }
                    if (!bh.b(((View) (obj1))))
                    {
                        bh.a(((View) (obj1)), RecyclerView.n(h).b);
                    }
                }
                if (h.n.j)
                {
                    obj.f = i1;
                }
                i1 = 1;
            } else
            {
                i1 = 0;
            }
            obj1 = ((s) (obj)).a.getLayoutParams();
            if (obj1 == null)
            {
                obj1 = (LayoutParams)h.generateDefaultLayoutParams();
                ((s) (obj)).a.setLayoutParams(((android.view.ViewGroup.LayoutParams) (obj1)));
            } else
            if (!h.checkLayoutParams(((android.view.ViewGroup.LayoutParams) (obj1))))
            {
                obj1 = (LayoutParams)h.generateLayoutParams(((android.view.ViewGroup.LayoutParams) (obj1)));
                ((s) (obj)).a.setLayoutParams(((android.view.ViewGroup.LayoutParams) (obj1)));
            } else
            {
                obj1 = (LayoutParams)obj1;
            }
            obj1.c = ((s) (obj));
            if (!flag || i1 == 0)
            {
                flag1 = false;
            }
            obj1.f = flag1;
            return ((s) (obj)).a;
_L13:
            obj1 = obj;
            if (true) goto _L16; else goto _L15
_L15:
            if (true) goto _L18; else goto _L17
_L17:
        }

        final void b()
        {
            for (int i1 = c.size() - 1; i1 >= 0; i1--)
            {
                c(i1);
            }

            c.clear();
        }

        final void b(s s1)
        {
            if (!s1.k() || !RecyclerView.i(h) || b == null)
            {
                a.remove(s1);
            } else
            {
                b.remove(s1);
            }
            s1.j = null;
            s1.g();
        }

        final void b(View view)
        {
            view = RecyclerView.b(view);
            view.j = null;
            view.g();
            a(view);
        }

        final k c()
        {
            if (f == null)
            {
                f = new k();
            }
            return f;
        }

        final void c(int i1)
        {
            c((s)c.get(i1));
            c.remove(i1);
        }

        public l()
        {
            h = RecyclerView.this;
            super();
            b = null;
            d = Collections.unmodifiableList(a);
            e = 2;
        }
    }

    public static interface m
    {
    }

    final class n extends c
    {

        final RecyclerView a;

        private n()
        {
            a = RecyclerView.this;
            super();
        }

        n(byte byte0)
        {
            this();
        }
    }

    public static abstract class o
    {

        int a;
        boolean b;
        boolean c;
        View d;
        private RecyclerView e;
        private h f;
        private final a g;

        static void a(o o1)
        {
label0:
            {
                boolean flag = false;
                RecyclerView recyclerview = o1.e;
                if (!o1.c || o1.a == -1 || recyclerview == null)
                {
                    o1.a();
                }
                o1.b = false;
                if (o1.d != null)
                {
                    if (RecyclerView.c(o1.d) == o1.a)
                    {
                        p p1 = recyclerview.n;
                        a.a(o1.g, recyclerview);
                        o1.a();
                    } else
                    {
                        Log.e("RecyclerView", "Passed over target position while smooth scrolling.");
                        o1.d = null;
                    }
                }
                if (o1.c)
                {
                    p p2 = recyclerview.n;
                    if (o1.g.a >= 0)
                    {
                        flag = true;
                    }
                    a.a(o1.g, recyclerview);
                    if (flag)
                    {
                        if (!o1.c)
                        {
                            break label0;
                        }
                        o1.b = true;
                        RecyclerView.q(recyclerview).a();
                    }
                }
                return;
            }
            o1.a();
        }

        protected final void a()
        {
            if (!c)
            {
                return;
            } else
            {
                e.n.a = -1;
                d = null;
                a = -1;
                b = false;
                c = false;
                h.a(f, this);
                f = null;
                e = null;
                return;
            }
        }
    }

    public static final class o.a
    {

        int a;
        private int b;
        private int c;
        private int d;
        private Interpolator e;
        private boolean f;
        private int g;

        static void a(o.a a1, RecyclerView recyclerview)
        {
            if (a1.a >= 0)
            {
                int i1 = a1.a;
                a1.a = -1;
                RecyclerView.c(recyclerview, i1);
                a1.f = false;
                return;
            }
            if (a1.f)
            {
                if (a1.e != null && a1.d <= 0)
                {
                    throw new IllegalStateException("If you provide an interpolator, you must set a positive duration");
                }
                if (a1.d <= 0)
                {
                    throw new IllegalStateException("Scroll duration must be a positive number");
                }
                if (a1.e == null)
                {
                    if (a1.d == 0x80000000)
                    {
                        RecyclerView.q(recyclerview).a(a1.b, a1.c);
                    } else
                    {
                        RecyclerView.q(recyclerview).a(a1.b, a1.c, a1.d);
                    }
                } else
                {
                    RecyclerView.q(recyclerview).a(a1.b, a1.c, a1.d, a1.e);
                }
                a1.g = a1.g + 1;
                if (a1.g > 10)
                {
                    Log.e("RecyclerView", "Smooth Scroll action is being updated too frequently. Make sure you are not changing it unless necessary");
                }
                a1.f = false;
                return;
            } else
            {
                a1.g = 0;
                return;
            }
        }
    }

    public static final class p
    {

        int a;
        ab b;
        ab c;
        ab d;
        final List e = new ArrayList();
        int f;
        int g;
        int h;
        boolean i;
        boolean j;
        boolean k;
        boolean l;
        private SparseArray m;

        public final int a()
        {
            if (j)
            {
                return g - h;
            } else
            {
                return f;
            }
        }

        final void a(s s1)
        {
            b.remove(s1);
            c.remove(s1);
            if (d == null) goto _L2; else goto _L1
_L1:
            ab ab1;
            int i1;
            ab1 = d;
            i1 = ab1.size() - 1;
_L7:
            if (i1 < 0) goto _L2; else goto _L3
_L3:
            if (s1 != ab1.c(i1)) goto _L5; else goto _L4
_L4:
            ab1.d(i1);
_L2:
            e.remove(s1.a);
            return;
_L5:
            i1--;
            if (true) goto _L7; else goto _L6
_L6:
        }

        final void a(View view)
        {
            e.remove(view);
        }

        final void b(View view)
        {
            if (!e.contains(view))
            {
                e.add(view);
            }
        }

        public final String toString()
        {
            return (new StringBuilder("State{mTargetPosition=")).append(a).append(", mPreLayoutHolderMap=").append(b).append(", mPostLayoutHolderMap=").append(c).append(", mData=").append(m).append(", mItemCount=").append(f).append(", mPreviousLayoutItemCount=").append(g).append(", mDeletedInvisibleItemCountSincePreviousLayout=").append(h).append(", mStructureChanged=").append(i).append(", mInPreLayout=").append(j).append(", mRunSimpleAnimations=").append(k).append(", mRunPredictiveAnimations=").append(l).append('}').toString();
        }

        public p()
        {
            a = -1;
            b = new ab();
            c = new ab();
            d = new ab();
            f = 0;
            g = 0;
            h = 0;
            i = false;
            j = false;
            k = false;
            l = false;
        }
    }

    public static abstract class q
    {

        public abstract View a();
    }

    final class r
        implements Runnable
    {

        int a;
        int b;
        cs c;
        final RecyclerView d;
        private Interpolator e;
        private boolean f;
        private boolean g;

        final void a()
        {
            if (f)
            {
                g = true;
                return;
            } else
            {
                d.removeCallbacks(this);
                bh.a(d, this);
                return;
            }
        }

        public final void a(int i1, int j1)
        {
            int i2 = Math.abs(i1);
            int j2 = Math.abs(j1);
            float f1;
            float f2;
            float f3;
            int k1;
            boolean flag;
            int k2;
            int l2;
            int i3;
            if (i2 > j2)
            {
                flag = true;
            } else
            {
                flag = false;
            }
            k2 = (int)Math.sqrt(0.0D);
            l2 = (int)Math.sqrt(i1 * i1 + j1 * j1);
            if (flag)
            {
                k1 = d.getWidth();
            } else
            {
                k1 = d.getHeight();
            }
            i3 = k1 / 2;
            f3 = Math.min(1.0F, ((float)l2 * 1.0F) / (float)k1);
            f1 = i3;
            f2 = i3;
            f3 = (float)Math.sin((float)((double)(f3 - 0.5F) * 0.4712389167638204D));
            if (k2 > 0)
            {
                k1 = Math.round(1000F * Math.abs((f3 * f2 + f1) / (float)k2)) * 4;
            } else
            {
                int l1;
                if (flag)
                {
                    l1 = i2;
                } else
                {
                    l1 = j2;
                }
                k1 = (int)(((float)l1 / (float)k1 + 1.0F) * 300F);
            }
            a(i1, j1, Math.min(k1, 2000));
        }

        public final void a(int i1, int j1, int k1)
        {
            a(i1, j1, k1, RecyclerView.j());
        }

        public final void a(int i1, int j1, int k1, Interpolator interpolator)
        {
            if (e != interpolator)
            {
                e = interpolator;
                c = cs.a(d.getContext(), interpolator);
            }
            RecyclerView.b(d, 2);
            b = 0;
            a = 0;
            c.a(0, 0, i1, j1, k1);
            a();
        }

        public final void run()
        {
            cs cs1;
            o o1;
            g = false;
            f = true;
            RecyclerView.f(d);
            cs1 = c;
            o1 = RecyclerView.e(d).s;
            if (!cs1.g()) goto _L2; else goto _L1
_L1:
            int i1;
            int j1;
            int k1;
            int l1;
            int i2;
            int j2;
            int k2;
            int l2;
            int i3;
            int j3;
            int k3;
            int l3;
            k3 = cs1.b();
            l3 = cs1.c();
            i3 = k3 - a;
            j3 = l3 - b;
            j2 = 0;
            i1 = 0;
            k2 = 0;
            l1 = 0;
            a = k3;
            b = l3;
            l2 = 0;
            j1 = 0;
            i2 = 0;
            k1 = 0;
            if (RecyclerView.g(d) == null)
            {
                break MISSING_BLOCK_LABEL_890;
            }
            d.a();
            RecyclerView.h(d);
            v.a("RV Scroll");
            if (i3 != 0)
            {
                i1 = RecyclerView.e(d).a(i3, d.a, d.n);
                j1 = i3 - i1;
            }
            if (j3 != 0)
            {
                l1 = RecyclerView.e(d).b(j3, d.a, d.n);
                k1 = j3 - l1;
            }
            v.a();
            if (RecyclerView.i(d))
            {
                j2 = d.c.a();
                for (i2 = 0; i2 < j2; i2++)
                {
                    View view = d.c.b(i2);
                    Object obj = d.a(view);
                    if (obj == null || ((s) (obj)).h == null)
                    {
                        continue;
                    }
                    obj = ((s) (obj)).h.a;
                    k2 = view.getLeft();
                    l2 = view.getTop();
                    if (k2 != ((View) (obj)).getLeft() || l2 != ((View) (obj)).getTop())
                    {
                        ((View) (obj)).layout(k2, l2, ((View) (obj)).getWidth() + k2, ((View) (obj)).getHeight() + l2);
                    }
                }

            }
            RecyclerView.j(d);
            d.a(false);
            i2 = k1;
            k2 = l1;
            l2 = j1;
            j2 = i1;
            if (o1 == null)
            {
                break MISSING_BLOCK_LABEL_890;
            }
            i2 = k1;
            k2 = l1;
            l2 = j1;
            j2 = i1;
            if (o1.b)
            {
                break MISSING_BLOCK_LABEL_890;
            }
            i2 = k1;
            k2 = l1;
            l2 = j1;
            j2 = i1;
            if (!o1.c)
            {
                break MISSING_BLOCK_LABEL_890;
            }
            i2 = d.n.a();
            if (i2 != 0) goto _L4; else goto _L3
_L3:
            o1.a();
            j2 = i1;
_L5:
            if (!RecyclerView.k(d).isEmpty())
            {
                d.invalidate();
            }
            if (bh.a(d) != 2)
            {
                RecyclerView.a(d, i3, j3);
            }
            if (j1 != 0 || k1 != 0)
            {
                i2 = (int)cs1.f();
                if (j1 != k3)
                {
                    if (j1 < 0)
                    {
                        i1 = -i2;
                    } else
                    if (j1 > 0)
                    {
                        i1 = i2;
                    } else
                    {
                        i1 = 0;
                    }
                    k2 = i1;
                } else
                {
                    k2 = 0;
                }
                if (k1 != l3)
                {
                    if (k1 < 0)
                    {
                        i1 = -i2;
                    } else
                    {
                        i1 = i2;
                        if (k1 <= 0)
                        {
                            i1 = 0;
                        }
                    }
                } else
                {
                    i1 = 0;
                }
                if (bh.a(d) != 2)
                {
                    RecyclerView recyclerview = d;
                    if (k2 < 0)
                    {
                        recyclerview.b();
                        recyclerview.h.a(-k2);
                    } else
                    if (k2 > 0)
                    {
                        recyclerview.c();
                        recyclerview.j.a(k2);
                    }
                    if (i1 < 0)
                    {
                        recyclerview.d();
                        recyclerview.i.a(-i1);
                    } else
                    if (i1 > 0)
                    {
                        recyclerview.e();
                        recyclerview.k.a(i1);
                    }
                    if (k2 != 0 || i1 != 0)
                    {
                        bh.d(recyclerview);
                    }
                }
                if ((k2 != 0 || j1 == k3 || cs1.d() == 0) && (i1 != 0 || k1 == l3 || cs1.e() == 0))
                {
                    cs1.h();
                }
            }
            if (j2 != 0 || l1 != 0)
            {
                d.i();
            }
            if (!RecyclerView.l(d))
            {
                d.invalidate();
            }
            if (j3 != 0 && RecyclerView.e(d).f() && l1 == j3)
            {
                i1 = 1;
            } else
            {
                i1 = 0;
            }
            if (i3 != 0 && RecyclerView.e(d).e() && j2 == i3)
            {
                j1 = 1;
            } else
            {
                j1 = 0;
            }
            if (i3 == 0 && j3 == 0 || j1 != 0 || i1 != 0)
            {
                i1 = 1;
            } else
            {
                i1 = 0;
            }
            if (cs1.a() || i1 == 0)
            {
                RecyclerView.b(d, 0);
            } else
            {
                a();
            }
_L2:
            if (o1 != null)
            {
                if (o1.b)
                {
                    o.a(o1);
                }
                if (!g)
                {
                    o1.a();
                }
            }
            f = false;
            if (g)
            {
                a();
            }
            return;
_L4:
            if (o1.a >= i2)
            {
                o1.a = i2 - 1;
            }
            o.a(o1);
            j2 = i1;
            l2 = j1;
            k2 = l1;
            i2 = k1;
            l1 = k2;
            j1 = l2;
            k1 = i2;
              goto _L5
        }

        public r()
        {
            d = RecyclerView.this;
            super();
            e = RecyclerView.j();
            f = false;
            g = false;
            c = cs.a(getContext(), RecyclerView.j());
        }
    }

    public static abstract class s
    {

        public final View a;
        int b;
        int c;
        long d;
        int e;
        int f;
        s g;
        s h;
        int i;
        l j;
        RecyclerView k;
        private int l;

        static boolean a(s s1)
        {
            return (s1.i & 0x10) != 0;
        }

        final void a()
        {
            c = -1;
            f = -1;
        }

        final void a(int i1)
        {
            i = i | i1;
        }

        final void a(int i1, int j1)
        {
            i = i & ~j1 | i1 & j1;
        }

        final void a(int i1, boolean flag)
        {
            if (c == -1)
            {
                c = b;
            }
            if (f == -1)
            {
                f = b;
            }
            if (flag)
            {
                f = f + i1;
            }
            b = b + i1;
            if (a.getLayoutParams() != null)
            {
                ((LayoutParams)a.getLayoutParams()).e = true;
            }
        }

        public final void a(boolean flag)
        {
            int i1;
            if (flag)
            {
                i1 = l - 1;
            } else
            {
                i1 = l + 1;
            }
            l = i1;
            if (l < 0)
            {
                l = 0;
                Log.e("View", (new StringBuilder("isRecyclable decremented below 0: unmatched pair of setIsRecyable() calls for ")).append(this).toString());
            } else
            {
                if (!flag && l == 1)
                {
                    i = i | 0x10;
                    return;
                }
                if (flag && l == 0)
                {
                    i = i & 0xffffffef;
                    return;
                }
            }
        }

        final boolean b()
        {
            return (i & 0x80) != 0;
        }

        public final int c()
        {
            if (f == -1)
            {
                return b;
            } else
            {
                return f;
            }
        }

        final boolean d()
        {
            return j != null;
        }

        final void e()
        {
            j.b(this);
        }

        final boolean f()
        {
            return (i & 0x20) != 0;
        }

        final void g()
        {
            i = i & 0xffffffdf;
        }

        final void h()
        {
            i = i & 0xfffffeff;
        }

        final boolean i()
        {
            return (i & 4) != 0;
        }

        final boolean j()
        {
            return (i & 2) != 0;
        }

        final boolean k()
        {
            return (i & 0x40) != 0;
        }

        final boolean l()
        {
            return (i & 1) != 0;
        }

        final boolean m()
        {
            return (i & 8) != 0;
        }

        final boolean n()
        {
            return (i & 0x100) != 0;
        }

        final void o()
        {
            i = 0;
            b = -1;
            c = -1;
            d = -1L;
            f = -1;
            l = 0;
            g = null;
            h = null;
        }

        public final boolean p()
        {
            return (i & 0x10) == 0 && !bh.c(a);
        }

        public String toString()
        {
            StringBuilder stringbuilder = new StringBuilder((new StringBuilder("ViewHolder{")).append(Integer.toHexString(hashCode())).append(" position=").append(b).append(" id=").append(d).append(", oldPos=").append(c).append(", pLpos:").append(f).toString());
            if (d())
            {
                stringbuilder.append(" scrap");
            }
            if (i())
            {
                stringbuilder.append(" invalid");
            }
            if (!l())
            {
                stringbuilder.append(" unbound");
            }
            if (j())
            {
                stringbuilder.append(" update");
            }
            if (m())
            {
                stringbuilder.append(" removed");
            }
            if (b())
            {
                stringbuilder.append(" ignored");
            }
            if (k())
            {
                stringbuilder.append(" changed");
            }
            if (n())
            {
                stringbuilder.append(" tmpDetached");
            }
            if (!p())
            {
                stringbuilder.append((new StringBuilder(" not recyclable(")).append(l).append(")").toString());
            }
            boolean flag;
            if ((i & 0x200) != 0 || i())
            {
                flag = true;
            } else
            {
                flag = false;
            }
            if (flag)
            {
                stringbuilder.append("undefined adapter position");
            }
            if (a.getParent() == null)
            {
                stringbuilder.append(" no parent");
            }
            stringbuilder.append("}");
            return stringbuilder.toString();
        }
    }


    private static final Interpolator al = new Interpolator() {

        public final float getInterpolation(float f1)
        {
            f1--;
            return f1 * (f1 * f1 * f1 * f1) + 1.0F;
        }

    };
    private static final boolean q;
    private static final Class r[];
    private i A;
    private boolean B;
    private boolean C;
    private boolean D;
    private boolean E;
    private int F;
    private boolean G;
    private final boolean H;
    private final AccessibilityManager I;
    private List J;
    private int K;
    private int L;
    private int M;
    private VelocityTracker N;
    private int O;
    private int P;
    private int Q;
    private int R;
    private int S;
    private final int T;
    private final int U;
    private float V;
    private j W;
    public final l a;
    private List aa;
    private e.a ab;
    private boolean ac;
    private fe ad;
    private d ae;
    private final int af[];
    private final az ag;
    private final int ah[];
    private final int ai[];
    private final int aj[];
    private Runnable ak;
    public ey b;
    ez c;
    a d;
    h e;
    public boolean f;
    public boolean g;
    cm h;
    cm i;
    cm j;
    cm k;
    e l;
    final r m;
    public final p n;
    boolean o;
    boolean p;
    private final n s;
    private SavedState t;
    private boolean u;
    private final Runnable v;
    private final Rect w;
    private m x;
    private final ArrayList y;
    private final ArrayList z;

    public RecyclerView(Context context)
    {
        this(context, null);
    }

    public RecyclerView(Context context, AttributeSet attributeset)
    {
        this(context, attributeset, 0);
    }

    public RecyclerView(Context context, AttributeSet attributeset, int i1)
    {
        Object obj;
        Object obj1;
        Class class1;
        super(context, attributeset, i1);
        s = new n((byte)0);
        a = new l();
        v = new Runnable() {

            final RecyclerView a;

            public final void run()
            {
                if (RecyclerView.a(a)) goto _L2; else goto _L1
_L1:
                return;
_L2:
                if (RecyclerView.b(a))
                {
                    v.a("RV FullInvalidate");
                    a.h();
                    v.a();
                    return;
                }
                if (!a.b.d()) goto _L1; else goto _L3
_L3:
                RecyclerView recyclerview;
                int j1;
                int k1;
                v.a("RV PartialInvalidate");
                a.a();
                a.b.b();
                if (RecyclerView.c(a))
                {
                    break MISSING_BLOCK_LABEL_206;
                }
                recyclerview = a;
                k1 = recyclerview.c.a();
                j1 = 0;
_L5:
                s s1;
                if (j1 >= k1)
                {
                    break MISSING_BLOCK_LABEL_206;
                }
                s1 = RecyclerView.b(recyclerview.c.b(j1));
                if (s1 != null && !s1.b())
                {
                    if (!s1.m() && !s1.i())
                    {
                        break; /* Loop/switch isn't completed */
                    }
                    recyclerview.requestLayout();
                }
_L7:
                j1++;
                if (true) goto _L5; else goto _L4
_L4:
                if (!s1.j()) goto _L7; else goto _L6
_L6:
label0:
                {
                    if (s1.e != 0)
                    {
                        break label0;
                    }
                    if (!s1.k() || !recyclerview.g())
                    {
                        recyclerview.d.a(s1, s1.b);
                    } else
                    {
                        recyclerview.requestLayout();
                    }
                }
                  goto _L7
                recyclerview.requestLayout();
                a.a(true);
                v.a();
                return;
            }

            
            {
                a = RecyclerView.this;
                super();
            }
        };
        w = new Rect();
        y = new ArrayList();
        z = new ArrayList();
        g = false;
        K = 0;
        l = new fa();
        L = 0;
        M = -1;
        V = 1.401298E-45F;
        m = new r();
        n = new p();
        o = false;
        p = false;
        ab = new f((byte)0);
        ac = false;
        af = new int[2];
        ah = new int[2];
        ai = new int[2];
        aj = new int[2];
        ak = new Runnable() {

            final RecyclerView a;

            public final void run()
            {
                if (a.l != null)
                {
                    a.l.a();
                }
                RecyclerView.d(a);
            }

            
            {
                a = RecyclerView.this;
                super();
            }
        };
        setFocusableInTouchMode(true);
        Object aobj[];
        boolean flag;
        if (android.os.Build.VERSION.SDK_INT >= 16)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        H = flag;
        obj = ViewConfiguration.get(context);
        S = ((ViewConfiguration) (obj)).getScaledTouchSlop();
        T = ((ViewConfiguration) (obj)).getScaledMinimumFlingVelocity();
        U = ((ViewConfiguration) (obj)).getScaledMaximumFlingVelocity();
        if (bh.a(this) == 2)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        setWillNotDraw(flag);
        l.h = ab;
        b = new ey(new ey.a() {

            final RecyclerView a;

            private void c(ey.b b1)
            {
                switch (b1.a)
                {
                default:
                    return;

                case 0: // '\0'
                    RecyclerView.e(a).a(b1.b, b1.c);
                    return;

                case 1: // '\001'
                    RecyclerView.e(a).b(b1.b, b1.c);
                    return;

                case 2: // '\002'
                    RecyclerView.e(a).c(b1.b, b1.c);
                    return;

                case 3: // '\003'
                    RecyclerView.e(a).d(b1.b, b1.c);
                    break;
                }
            }

            public final s a(int j1)
            {
                RecyclerView recyclerview;
                int k1;
                int l1;
                recyclerview = a;
                l1 = recyclerview.c.b();
                k1 = 0;
_L6:
                if (k1 >= l1) goto _L2; else goto _L1
_L1:
                s s1 = RecyclerView.b(recyclerview.c.c(k1));
                if (s1 == null || s1.m() || s1.b != j1) goto _L4; else goto _L3
_L4:
                k1++;
                  goto _L5
_L2:
                s1 = null;
_L3:
                if (s1 == null || a.c.a(s1.a))
                {
                    return null;
                }
                return s1;
_L5:
                if (true) goto _L6; else goto _L2
            }

            public final void a(int j1, int k1)
            {
                a.a(j1, k1, true);
                a.o = true;
                p p1 = a.n;
                p1.h = p1.h + k1;
            }

            public final void a(ey.b b1)
            {
                c(b1);
            }

            public final void b(int j1, int k1)
            {
                a.a(j1, k1, false);
                a.o = true;
            }

            public final void b(ey.b b1)
            {
                c(b1);
            }

            public final void c(int j1, int k1)
            {
                Object obj2 = a;
                int j2 = ((RecyclerView) (obj2)).c.b();
                for (int l1 = 0; l1 < j2; l1++)
                {
                    View view = ((RecyclerView) (obj2)).c.c(l1);
                    s s2 = RecyclerView.b(view);
                    if (s2 == null || s2.b() || s2.b < j1 || s2.b >= j1 + k1)
                    {
                        continue;
                    }
                    s2.a(2);
                    if (((RecyclerView) (obj2)).g())
                    {
                        s2.a(64);
                    }
                    ((LayoutParams)view.getLayoutParams()).e = true;
                }

                obj2 = ((RecyclerView) (obj2)).a;
                for (int i2 = ((l) (obj2)).c.size() - 1; i2 >= 0; i2--)
                {
                    s s1 = (s)((l) (obj2)).c.get(i2);
                    if (s1 == null)
                    {
                        continue;
                    }
                    int k2 = s1.c();
                    if (k2 >= j1 && k2 < j1 + k1)
                    {
                        s1.a(2);
                        ((l) (obj2)).c(i2);
                    }
                }

                a.p = true;
            }

            public final void d(int j1, int k1)
            {
                RecyclerView recyclerview = a;
                int k2 = recyclerview.c.b();
                for (int i2 = 0; i2 < k2; i2++)
                {
                    s s1 = RecyclerView.b(recyclerview.c.c(i2));
                    if (s1 != null && !s1.b() && s1.b >= j1)
                    {
                        s1.a(k1, false);
                        recyclerview.n.i = true;
                    }
                }

                l l1 = recyclerview.a;
                k2 = l1.c.size();
                for (int j2 = 0; j2 < k2; j2++)
                {
                    s s2 = (s)l1.c.get(j2);
                    if (s2 != null && s2.c() >= j1)
                    {
                        s2.a(k1, true);
                    }
                }

                recyclerview.requestLayout();
                a.o = true;
            }

            public final void e(int j1, int k1)
            {
                int l2 = -1;
                RecyclerView recyclerview = a;
                int i3 = recyclerview.c.b();
                byte byte0;
                int i2;
                int j2;
                int k2;
                if (j1 < k1)
                {
                    byte0 = -1;
                    i2 = k1;
                    j2 = j1;
                } else
                {
                    byte0 = 1;
                    i2 = j1;
                    j2 = k1;
                }
                k2 = 0;
                while (k2 < i3) 
                {
                    s s1 = RecyclerView.b(recyclerview.c.c(k2));
                    if (s1 != null && s1.b >= j2 && s1.b <= i2)
                    {
                        if (s1.b == j1)
                        {
                            s1.a(k1 - j1, false);
                        } else
                        {
                            s1.a(byte0, false);
                        }
                        recyclerview.n.i = true;
                    }
                    k2++;
                }
                l l1 = recyclerview.a;
                if (j1 < k1)
                {
                    i2 = k1;
                    j2 = j1;
                    byte0 = l2;
                } else
                {
                    byte0 = 1;
                    i2 = j1;
                    j2 = k1;
                }
                l2 = l1.c.size();
                k2 = 0;
                while (k2 < l2) 
                {
                    s s2 = (s)l1.c.get(k2);
                    if (s2 != null && s2.b >= j2 && s2.b <= i2)
                    {
                        if (s2.b == j1)
                        {
                            s2.a(k1 - j1, false);
                        } else
                        {
                            s2.a(byte0, false);
                        }
                    }
                    k2++;
                }
                recyclerview.requestLayout();
                a.o = true;
            }

            
            {
                a = RecyclerView.this;
                super();
            }
        });
        c = new ez(new ez.b() {

            final RecyclerView a;

            public final int a()
            {
                return a.getChildCount();
            }

            public final int a(View view)
            {
                return a.indexOfChild(view);
            }

            public final void a(int j1)
            {
                View view = a.getChildAt(j1);
                if (view != null)
                {
                    RecyclerView.b(a, view);
                }
                a.removeViewAt(j1);
            }

            public final void a(View view, int j1)
            {
                a.addView(view, j1);
                RecyclerView.a(a, view);
            }

            public final void a(View view, int j1, android.view.ViewGroup.LayoutParams layoutparams)
            {
                s s1 = RecyclerView.b(view);
                if (s1 != null)
                {
                    if (!s1.n() && !s1.b())
                    {
                        throw new IllegalArgumentException((new StringBuilder("Called attach on a child which is not detached: ")).append(s1).toString());
                    }
                    s1.h();
                }
                RecyclerView.a(a, view, j1, layoutparams);
            }

            public final s b(View view)
            {
                return RecyclerView.b(view);
            }

            public final View b(int j1)
            {
                return a.getChildAt(j1);
            }

            public final void b()
            {
                int k1 = a.getChildCount();
                for (int j1 = 0; j1 < k1; j1++)
                {
                    RecyclerView.b(a, b(j1));
                }

                a.removeAllViews();
            }

            public final void c(int j1)
            {
                Object obj2 = b(j1);
                if (obj2 != null)
                {
                    obj2 = RecyclerView.b(((View) (obj2)));
                    if (obj2 != null)
                    {
                        if (((s) (obj2)).n() && !((s) (obj2)).b())
                        {
                            throw new IllegalArgumentException((new StringBuilder("called detach on an already detached child ")).append(obj2).toString());
                        }
                        ((s) (obj2)).a(256);
                    }
                }
                RecyclerView.a(a, j1);
            }

            
            {
                a = RecyclerView.this;
                super();
            }
        });
        if (bh.e(this) == 0)
        {
            bh.c(this, 1);
        }
        I = (AccessibilityManager)getContext().getSystemService("accessibility");
        setAccessibilityDelegateCompat(new fe(this));
        if (attributeset == null) goto _L2; else goto _L1
_L1:
        obj = context.obtainStyledAttributes(attributeset, ev.a.RecyclerView, i1, 0);
        obj1 = ((TypedArray) (obj)).getString(ev.a.RecyclerView_layoutManager);
        ((TypedArray) (obj)).recycle();
        if (obj1 == null) goto _L2; else goto _L3
_L3:
        obj = ((String) (obj1)).trim();
        if (((String) (obj)).length() == 0) goto _L2; else goto _L4
_L4:
        if (((String) (obj)).charAt(0) == '.')
        {
            obj = (new StringBuilder()).append(context.getPackageName()).append(((String) (obj))).toString();
        } else
        if (!((String) (obj)).contains("."))
        {
            obj = (new StringBuilder()).append(android/support/v7/widget/RecyclerView.getPackage().getName()).append('.').append(((String) (obj))).toString();
        }
_L9:
        if (!isInEditMode()) goto _L6; else goto _L5
_L5:
        obj1 = getClass().getClassLoader();
_L7:
        class1 = ((ClassLoader) (obj1)).loadClass(((String) (obj))).asSubclass(android/support/v7/widget/RecyclerView$h);
        obj1 = class1.getConstructor(r);
        aobj = new Object[4];
        aobj[0] = context;
        aobj[1] = attributeset;
        aobj[2] = Integer.valueOf(i1);
        aobj[3] = Integer.valueOf(0);
        context = ((Context) (aobj));
_L8:
        NoSuchMethodException nosuchmethodexception;
        try
        {
            ((Constructor) (obj1)).setAccessible(true);
            setLayoutManager((h)((Constructor) (obj1)).newInstance(context));
        }
        // Misplaced declaration of an exception variable
        catch (Context context)
        {
            throw new IllegalStateException((new StringBuilder()).append(attributeset.getPositionDescription()).append(": Unable to find LayoutManager ").append(((String) (obj))).toString(), context);
        }
        // Misplaced declaration of an exception variable
        catch (Context context)
        {
            throw new IllegalStateException((new StringBuilder()).append(attributeset.getPositionDescription()).append(": Could not instantiate the LayoutManager: ").append(((String) (obj))).toString(), context);
        }
        // Misplaced declaration of an exception variable
        catch (Context context)
        {
            throw new IllegalStateException((new StringBuilder()).append(attributeset.getPositionDescription()).append(": Could not instantiate the LayoutManager: ").append(((String) (obj))).toString(), context);
        }
        // Misplaced declaration of an exception variable
        catch (Context context)
        {
            throw new IllegalStateException((new StringBuilder()).append(attributeset.getPositionDescription()).append(": Cannot access non-public constructor ").append(((String) (obj))).toString(), context);
        }
        // Misplaced declaration of an exception variable
        catch (Context context)
        {
            throw new IllegalStateException((new StringBuilder()).append(attributeset.getPositionDescription()).append(": Class is not a LayoutManager ").append(((String) (obj))).toString(), context);
        }
_L2:
        ag = new az(this);
        setNestedScrollingEnabled(true);
        return;
_L6:
        obj1 = context.getClassLoader();
          goto _L7
        context;
        obj1 = class1.getConstructor(new Class[0]);
        context = null;
          goto _L8
        nosuchmethodexception;
        nosuchmethodexception.initCause(context);
        throw new IllegalStateException((new StringBuilder()).append(attributeset.getPositionDescription()).append(": Error creating LayoutManager ").append(((String) (obj))).toString(), nosuchmethodexception);
          goto _L9
    }

    private void a(int i1, int j1)
    {
        boolean flag1 = false;
        boolean flag = flag1;
        if (h != null)
        {
            flag = flag1;
            if (!h.a())
            {
                flag = flag1;
                if (i1 > 0)
                {
                    flag = h.c();
                }
            }
        }
        flag1 = flag;
        if (j != null)
        {
            flag1 = flag;
            if (!j.a())
            {
                flag1 = flag;
                if (i1 < 0)
                {
                    flag1 = flag | j.c();
                }
            }
        }
        flag = flag1;
        if (i != null)
        {
            flag = flag1;
            if (!i.a())
            {
                flag = flag1;
                if (j1 > 0)
                {
                    flag = flag1 | i.c();
                }
            }
        }
        flag1 = flag;
        if (k != null)
        {
            flag1 = flag;
            if (!k.a())
            {
                flag1 = flag;
                if (j1 < 0)
                {
                    flag1 = flag | k.c();
                }
            }
        }
        if (flag1)
        {
            bh.d(this);
        }
    }

    private void a(ab ab1)
    {
        List list = n.e;
        int i1 = list.size() - 1;
        while (i1 >= 0) 
        {
            View view = (View)list.get(i1);
            s s1 = b(view);
            g g1 = (g)n.b.remove(s1);
            if (!n.j)
            {
                n.c.remove(s1);
            }
            if (ab1.remove(view) != null)
            {
                e.a(view, a);
            } else
            if (g1 != null)
            {
                a(g1);
            } else
            {
                a(new g(s1, view.getLeft(), view.getTop(), view.getRight(), view.getBottom()));
            }
            i1--;
        }
        list.clear();
    }

    private void a(g g1)
    {
        View view = g1.a.a;
        a(g1.a);
        int i1 = g1.b;
        int j1 = g1.c;
        int k1 = view.getLeft();
        int l1 = view.getTop();
        if (!g1.a.m() && (i1 != k1 || j1 != l1))
        {
            g1.a.a(false);
            view.layout(k1, l1, view.getWidth() + k1, view.getHeight() + l1);
            if (l.a(g1.a, i1, j1, k1, l1))
            {
                s();
            }
            return;
        } else
        {
            g1.a.a(false);
            l.a(g1.a);
            s();
            return;
        }
    }

    private void a(s s1)
    {
        View view = s1.a;
        boolean flag;
        if (view.getParent() == this)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        a.b(a(view));
        if (s1.n())
        {
            c.a(view, -1, view.getLayoutParams(), true);
            return;
        }
        if (!flag)
        {
            c.a(view, -1, true);
            return;
        }
        s1 = c;
        int i1 = ((ez) (s1)).a.a(view);
        if (i1 < 0)
        {
            throw new IllegalArgumentException((new StringBuilder("view is not a child, cannot hide ")).append(view).toString());
        } else
        {
            ((ez) (s1)).b.a(i1);
            ((ez) (s1)).c.add(view);
            return;
        }
    }

    static void a(RecyclerView recyclerview, int i1)
    {
        recyclerview.detachViewFromParent(i1);
    }

    static void a(RecyclerView recyclerview, int i1, int j1)
    {
        recyclerview.a(i1, j1);
    }

    static void a(RecyclerView recyclerview, View view)
    {
        b(view);
        if (recyclerview.J != null)
        {
            for (int i1 = recyclerview.J.size() - 1; i1 >= 0; i1--)
            {
                recyclerview.J.get(i1);
            }

        }
    }

    static void a(RecyclerView recyclerview, View view, int i1, android.view.ViewGroup.LayoutParams layoutparams)
    {
        recyclerview.attachViewToParent(view, i1, layoutparams);
    }

    private void a(MotionEvent motionevent)
    {
        int i1 = ax.b(motionevent);
        if (ax.b(motionevent, i1) == M)
        {
            int j1;
            if (i1 == 0)
            {
                i1 = 1;
            } else
            {
                i1 = 0;
            }
            M = ax.b(motionevent, i1);
            j1 = (int)(ax.c(motionevent, i1) + 0.5F);
            Q = j1;
            O = j1;
            i1 = (int)(ax.d(motionevent, i1) + 0.5F);
            R = i1;
            P = i1;
        }
    }

    private boolean a(int i1, int j1, MotionEvent motionevent)
    {
        int l1 = 0;
        boolean flag4 = false;
        int j2 = 0;
        boolean flag2 = false;
        int k2 = 0;
        int k1 = 0;
        int i2 = 0;
        boolean flag3 = false;
        l();
        if (d != null)
        {
            a();
            q();
            v.a("RV Scroll");
            l1 = ((flag4) ? 1 : 0);
            if (i1 != 0)
            {
                k1 = e.a(i1, a, n);
                l1 = i1 - k1;
            }
            i2 = ((flag3) ? 1 : 0);
            j2 = ((flag2) ? 1 : 0);
            if (j1 != 0)
            {
                i2 = e.b(j1, a, n);
                j2 = j1 - i2;
            }
            v.a();
            if (g())
            {
                int l2 = c.a();
                k2 = 0;
                while (k2 < l2) 
                {
                    View view = c.b(k2);
                    Object obj = a(view);
                    if (obj == null || ((s) (obj)).h == null)
                    {
                        continue;
                    }
                    obj = ((s) (obj)).h;
                    int i3;
                    int j3;
                    if (obj != null)
                    {
                        obj = ((s) (obj)).a;
                    } else
                    {
                        obj = null;
                    }
                    if (obj == null)
                    {
                        continue;
                    }
                    i3 = view.getLeft();
                    j3 = view.getTop();
                    if (i3 != ((View) (obj)).getLeft() || j3 != ((View) (obj)).getTop())
                    {
                        ((View) (obj)).layout(i3, j3, ((View) (obj)).getWidth() + i3, ((View) (obj)).getHeight() + j3);
                    }
                    k2++;
                }
            }
            r();
            a(false);
            k2 = k1;
        }
        if (!y.isEmpty())
        {
            invalidate();
        }
        if (dispatchNestedScroll(k2, i2, l1, j2, ah))
        {
            Q = Q - ah[0];
            R = R - ah[1];
            if (motionevent != null)
            {
                motionevent.offsetLocation(ah[0], ah[1]);
            }
            motionevent = aj;
            motionevent[0] = motionevent[0] + ah[0];
            motionevent = aj;
            motionevent[1] = motionevent[1] + ah[1];
        } else
        if (bh.a(this) != 2)
        {
            if (motionevent != null)
            {
                float f1 = motionevent.getX();
                float f2 = l1;
                float f3 = motionevent.getY();
                float f4 = j2;
                boolean flag1 = false;
                boolean flag;
                if (f2 < 0.0F)
                {
                    b();
                    flag = flag1;
                    if (h.a(-f2 / (float)getWidth(), 1.0F - f3 / (float)getHeight()))
                    {
                        flag = true;
                    }
                } else
                {
                    flag = flag1;
                    if (f2 > 0.0F)
                    {
                        c();
                        flag = flag1;
                        if (j.a(f2 / (float)getWidth(), f3 / (float)getHeight()))
                        {
                            flag = true;
                        }
                    }
                }
                if (f4 < 0.0F)
                {
                    d();
                    flag1 = flag;
                    if (i.a(-f4 / (float)getHeight(), f1 / (float)getWidth()))
                    {
                        flag1 = true;
                    }
                } else
                {
                    flag1 = flag;
                    if (f4 > 0.0F)
                    {
                        e();
                        flag1 = flag;
                        if (k.a(f4 / (float)getHeight(), 1.0F - f1 / (float)getWidth()))
                        {
                            flag1 = true;
                        }
                    }
                }
                if (flag1 || f2 != 0.0F || f4 != 0.0F)
                {
                    bh.d(this);
                }
            }
            a(i1, j1);
        }
        if (k2 != 0 || i2 != 0)
        {
            i();
        }
        if (!awakenScrollBars())
        {
            invalidate();
        }
        return k2 != 0 || i2 != 0;
    }

    static boolean a(RecyclerView recyclerview)
    {
        return recyclerview.f;
    }

    private long b(s s1)
    {
        if (d.b)
        {
            return s1.d;
        } else
        {
            return (long)s1.b;
        }
    }

    static s b(View view)
    {
        if (view == null)
        {
            return null;
        } else
        {
            return ((LayoutParams)view.getLayoutParams()).c;
        }
    }

    private void b(int i1, int j1)
    {
        int l1 = android.view.View.MeasureSpec.getMode(i1);
        int k1 = android.view.View.MeasureSpec.getMode(j1);
        i1 = android.view.View.MeasureSpec.getSize(i1);
        j1 = android.view.View.MeasureSpec.getSize(j1);
        switch (l1)
        {
        default:
            i1 = bh.q(this);
            // fall through

        case -2147483648: 
        case 1073741824: 
            switch (k1)
            {
            default:
                j1 = bh.r(this);
                // fall through

            case -2147483648: 
            case 1073741824: 
                setMeasuredDimension(i1, j1);
                break;
            }
            break;
        }
    }

    static void b(RecyclerView recyclerview, int i1)
    {
        recyclerview.setScrollState(i1);
    }

    static void b(RecyclerView recyclerview, View view)
    {
        recyclerview.e(view);
    }

    static boolean b(RecyclerView recyclerview)
    {
        return recyclerview.g;
    }

    public static int c(View view)
    {
        view = b(view);
        if (view != null)
        {
            return view.c();
        } else
        {
            return -1;
        }
    }

    static void c(RecyclerView recyclerview, int i1)
    {
        if (recyclerview.e != null)
        {
            recyclerview.e.b(i1);
            recyclerview.awakenScrollBars();
        }
    }

    private boolean c(int i1, int j1)
    {
        int l1;
        boolean flag1;
        flag1 = false;
        l1 = c.a();
        if (l1 != 0) goto _L2; else goto _L1
_L1:
        boolean flag;
label0:
        {
            if (i1 == 0)
            {
                flag = flag1;
                if (j1 == 0)
                {
                    break label0;
                }
            }
            flag = true;
        }
_L4:
        return flag;
_L2:
        int k1 = 0;
        do
        {
            flag = flag1;
            if (k1 >= l1)
            {
                continue;
            }
            s s1 = b(c.b(k1));
            if (!s1.b())
            {
                int i2 = s1.c();
                if (i2 < i1 || i2 > j1)
                {
                    return true;
                }
            }
            k1++;
        } while (true);
        if (true) goto _L4; else goto _L3
_L3:
    }

    static boolean c(RecyclerView recyclerview)
    {
        return recyclerview.E;
    }

    static boolean c(RecyclerView recyclerview, View view)
    {
        boolean flag = true;
        recyclerview.a();
        ez ez1 = recyclerview.c;
        int i1 = ez1.a.a(view);
        if (i1 == -1)
        {
            ez1.c.remove(view);
        } else
        if (ez1.b.b(i1))
        {
            ez1.b.c(i1);
            ez1.c.remove(view);
            ez1.a.a(i1);
        } else
        {
            flag = false;
        }
        if (flag)
        {
            view = b(view);
            recyclerview.a.b(view);
            recyclerview.a.a(view);
        }
        recyclerview.a(false);
        return flag;
    }

    static boolean d(RecyclerView recyclerview)
    {
        recyclerview.ac = false;
        return false;
    }

    static h e(RecyclerView recyclerview)
    {
        return recyclerview.e;
    }

    private void e(View view)
    {
        b(view);
        if (J != null)
        {
            for (int i1 = J.size() - 1; i1 >= 0; i1--)
            {
                J.get(i1);
            }

        }
    }

    static void f(RecyclerView recyclerview)
    {
        recyclerview.l();
    }

    static a g(RecyclerView recyclerview)
    {
        return recyclerview.d;
    }

    private float getScrollFactor()
    {
label0:
        {
            if (V == 1.401298E-45F)
            {
                TypedValue typedvalue = new TypedValue();
                if (!getContext().getTheme().resolveAttribute(0x101004d, typedvalue, true))
                {
                    break label0;
                }
                V = typedvalue.getDimension(getContext().getResources().getDisplayMetrics());
            }
            return V;
        }
        return 0.0F;
    }

    static void h(RecyclerView recyclerview)
    {
        recyclerview.q();
    }

    static boolean i(RecyclerView recyclerview)
    {
        return recyclerview.g();
    }

    static Interpolator j()
    {
        return al;
    }

    static void j(RecyclerView recyclerview)
    {
        recyclerview.r();
    }

    static ArrayList k(RecyclerView recyclerview)
    {
        return recyclerview.y;
    }

    static boolean k()
    {
        return q;
    }

    private void l()
    {
        v.run();
    }

    static boolean l(RecyclerView recyclerview)
    {
        return recyclerview.awakenScrollBars();
    }

    static AccessibilityManager m(RecyclerView recyclerview)
    {
        return recyclerview.I;
    }

    private void m()
    {
        r r1 = m;
        r1.d.removeCallbacks(r1);
        r1.c.h();
        if (e != null)
        {
            e.r();
        }
    }

    static fe n(RecyclerView recyclerview)
    {
        return recyclerview.ad;
    }

    private void n()
    {
        boolean flag1 = false;
        if (h != null)
        {
            flag1 = h.c();
        }
        boolean flag = flag1;
        if (i != null)
        {
            flag = flag1 | i.c();
        }
        flag1 = flag;
        if (j != null)
        {
            flag1 = flag | j.c();
        }
        flag = flag1;
        if (k != null)
        {
            flag = flag1 | k.c();
        }
        if (flag)
        {
            bh.d(this);
        }
    }

    static m o(RecyclerView recyclerview)
    {
        return recyclerview.x;
    }

    private void o()
    {
        k = null;
        i = null;
        j = null;
        h = null;
    }

    private void p()
    {
        if (N != null)
        {
            N.clear();
        }
        stopNestedScroll();
        n();
        setScrollState(0);
    }

    static boolean p(RecyclerView recyclerview)
    {
        return recyclerview.u;
    }

    static r q(RecyclerView recyclerview)
    {
        return recyclerview.m;
    }

    private void q()
    {
        K = K + 1;
    }

    private void r()
    {
        K = K - 1;
        if (K <= 0)
        {
            K = 0;
            int i1 = F;
            F = 0;
            if (i1 != 0 && I != null && I.isEnabled())
            {
                AccessibilityEvent accessibilityevent = AccessibilityEvent.obtain();
                accessibilityevent.setEventType(2048);
                by.a(accessibilityevent, i1);
                sendAccessibilityEventUnchecked(accessibilityevent);
            }
        }
    }

    private void s()
    {
        if (!ac && B)
        {
            bh.a(this, ak);
            ac = true;
        }
    }

    private void setScrollState(int i1)
    {
        if (i1 != L) goto _L2; else goto _L1
_L1:
        return;
_L2:
        L = i1;
        if (i1 != 2)
        {
            m();
        }
        if (e != null)
        {
            e.f(i1);
        }
        if (aa != null)
        {
            i1 = aa.size() - 1;
            while (i1 >= 0) 
            {
                aa.get(i1);
                i1--;
            }
        }
        if (true) goto _L1; else goto _L3
_L3:
    }

    private void t()
    {
        boolean flag;
        boolean flag1;
        boolean flag2 = true;
        if (g)
        {
            b.a();
            v();
            e.a();
        }
        p p1;
        if (l != null && e.c())
        {
            b.b();
        } else
        {
            b.e();
        }
        if (o && !p || o || p && g())
        {
            flag = true;
        } else
        {
            flag = false;
        }
        p1 = n;
        if (f && l != null && (g || flag || h.a(e)) && (!g || d.b))
        {
            flag1 = true;
        } else
        {
            flag1 = false;
        }
        p1.k = flag1;
        p1 = n;
        if (!n.k || !flag || g) goto _L2; else goto _L1
_L1:
        if (l != null && e.c())
        {
            flag = true;
        } else
        {
            flag = false;
        }
        if (!flag) goto _L2; else goto _L3
_L3:
        flag1 = flag2;
_L5:
        p1.l = flag1;
        return;
_L2:
        flag1 = false;
        if (true) goto _L5; else goto _L4
_L4:
    }

    private void u()
    {
        boolean flag = false;
        int j2 = c.b();
        for (int i1 = 0; i1 < j2; i1++)
        {
            s s1 = b(c.c(i1));
            if (!s1.b())
            {
                s1.a();
            }
        }

        l l1 = a;
        j2 = l1.c.size();
        for (int j1 = 0; j1 < j2; j1++)
        {
            ((s)l1.c.get(j1)).a();
        }

        j2 = l1.a.size();
        for (int k1 = 0; k1 < j2; k1++)
        {
            ((s)l1.a.get(k1)).a();
        }

        if (l1.b != null)
        {
            int k2 = l1.b.size();
            for (int i2 = ((flag) ? 1 : 0); i2 < k2; i2++)
            {
                ((s)l1.b.get(i2)).a();
            }

        }
    }

    private void v()
    {
        boolean flag = false;
        int j2 = c.b();
        for (int i1 = 0; i1 < j2; i1++)
        {
            s s1 = b(c.c(i1));
            if (s1 != null && !s1.b())
            {
                s1.a(6);
            }
        }

        j2 = c.b();
        for (int j1 = 0; j1 < j2; j1++)
        {
            ((LayoutParams)c.c(j1).getLayoutParams()).e = true;
        }

        l l1 = a;
        j2 = l1.c.size();
        for (int k1 = 0; k1 < j2; k1++)
        {
            LayoutParams layoutparams = (LayoutParams)((s)l1.c.get(k1)).a.getLayoutParams();
            if (layoutparams != null)
            {
                layoutparams.e = true;
            }
        }

        l1 = a;
        if (l1.h.d != null && l1.h.d.b)
        {
            int k2 = l1.c.size();
            for (int i2 = ((flag) ? 1 : 0); i2 < k2; i2++)
            {
                s s2 = (s)l1.c.get(i2);
                if (s2 != null)
                {
                    s2.a(6);
                }
            }

        } else
        {
            l1.b();
        }
    }

    public final s a(View view)
    {
        ViewParent viewparent = view.getParent();
        if (viewparent != null && viewparent != this)
        {
            throw new IllegalArgumentException((new StringBuilder("View ")).append(view).append(" is not a direct child of ").append(this).toString());
        } else
        {
            return b(view);
        }
    }

    final void a()
    {
        if (!D)
        {
            D = true;
            E = false;
        }
    }

    final void a(int i1, int j1, boolean flag)
    {
        int i2 = c.b();
        int k1 = 0;
        while (k1 < i2) 
        {
            s s1 = b(c.c(k1));
            if (s1 != null && !s1.b())
            {
                if (s1.b >= i1 + j1)
                {
                    s1.a(-j1, flag);
                    n.i = true;
                } else
                if (s1.b >= i1)
                {
                    int j2 = -j1;
                    s1.a(8);
                    s1.a(j2, flag);
                    s1.b = i1 - 1;
                    n.i = true;
                }
            }
            k1++;
        }
        l l1 = a;
        k1 = l1.c.size() - 1;
        while (k1 >= 0) 
        {
            s s2 = (s)l1.c.get(k1);
            if (s2 != null)
            {
                if (s2.c() >= i1 + j1)
                {
                    s2.a(-j1, flag);
                } else
                if (s2.c() >= i1)
                {
                    s2.a(8);
                    l1.c(k1);
                }
            }
            k1--;
        }
        requestLayout();
    }

    final void a(boolean flag)
    {
        if (D)
        {
            if (flag && E && e != null && d != null)
            {
                h();
            }
            D = false;
            E = false;
        }
    }

    public void addFocusables(ArrayList arraylist, int i1, int j1)
    {
        super.addFocusables(arraylist, i1, j1);
    }

    final void b()
    {
        if (h != null)
        {
            return;
        }
        h = new cm(getContext());
        if (u)
        {
            h.a(getMeasuredHeight() - getPaddingTop() - getPaddingBottom(), getMeasuredWidth() - getPaddingLeft() - getPaddingRight());
            return;
        } else
        {
            h.a(getMeasuredHeight(), getMeasuredWidth());
            return;
        }
    }

    final void c()
    {
        if (j != null)
        {
            return;
        }
        j = new cm(getContext());
        if (u)
        {
            j.a(getMeasuredHeight() - getPaddingTop() - getPaddingBottom(), getMeasuredWidth() - getPaddingLeft() - getPaddingRight());
            return;
        } else
        {
            j.a(getMeasuredHeight(), getMeasuredWidth());
            return;
        }
    }

    protected boolean checkLayoutParams(android.view.ViewGroup.LayoutParams layoutparams)
    {
        return (layoutparams instanceof LayoutParams) && e.a((LayoutParams)layoutparams);
    }

    public int computeHorizontalScrollExtent()
    {
        if (e.e())
        {
            return e.c(n);
        } else
        {
            return 0;
        }
    }

    public int computeHorizontalScrollOffset()
    {
        if (e.e())
        {
            return e.a(n);
        } else
        {
            return 0;
        }
    }

    public int computeHorizontalScrollRange()
    {
        if (e.e())
        {
            return e.e(n);
        } else
        {
            return 0;
        }
    }

    public int computeVerticalScrollExtent()
    {
        if (e.f())
        {
            return e.d(n);
        } else
        {
            return 0;
        }
    }

    public int computeVerticalScrollOffset()
    {
        if (e.f())
        {
            return e.b(n);
        } else
        {
            return 0;
        }
    }

    public int computeVerticalScrollRange()
    {
        if (e.f())
        {
            return e.f(n);
        } else
        {
            return 0;
        }
    }

    final Rect d(View view)
    {
        LayoutParams layoutparams = (LayoutParams)view.getLayoutParams();
        if (!layoutparams.e)
        {
            return layoutparams.d;
        }
        Rect rect = layoutparams.d;
        rect.set(0, 0, 0, 0);
        int j1 = y.size();
        for (int i1 = 0; i1 < j1; i1++)
        {
            w.set(0, 0, 0, 0);
            y.get(i1);
            Rect rect1 = w;
            view.getLayoutParams();
            rect1.set(0, 0, 0, 0);
            rect.left = rect.left + w.left;
            rect.top = rect.top + w.top;
            rect.right = rect.right + w.right;
            rect.bottom = rect.bottom + w.bottom;
        }

        layoutparams.e = false;
        return rect;
    }

    final void d()
    {
        if (i != null)
        {
            return;
        }
        i = new cm(getContext());
        if (u)
        {
            i.a(getMeasuredWidth() - getPaddingLeft() - getPaddingRight(), getMeasuredHeight() - getPaddingTop() - getPaddingBottom());
            return;
        } else
        {
            i.a(getMeasuredWidth(), getMeasuredHeight());
            return;
        }
    }

    public boolean dispatchNestedFling(float f1, float f2, boolean flag)
    {
        return ag.a(f1, f2, flag);
    }

    public boolean dispatchNestedPreFling(float f1, float f2)
    {
        return ag.a(f1, f2);
    }

    public boolean dispatchNestedPreScroll(int i1, int j1, int ai1[], int ai2[])
    {
        return ag.a(i1, j1, ai1, ai2);
    }

    public boolean dispatchNestedScroll(int i1, int j1, int k1, int l1, int ai1[])
    {
        return ag.a(i1, j1, k1, l1, ai1);
    }

    protected void dispatchRestoreInstanceState(SparseArray sparsearray)
    {
        dispatchThawSelfOnly(sparsearray);
    }

    protected void dispatchSaveInstanceState(SparseArray sparsearray)
    {
        dispatchFreezeSelfOnly(sparsearray);
    }

    public void draw(Canvas canvas)
    {
        boolean flag = true;
        boolean flag1 = false;
        super.draw(canvas);
        int k1 = y.size();
        for (int i1 = 0; i1 < k1; i1++)
        {
            y.get(i1);
        }

        int j1;
        if (h != null && !h.a())
        {
            int l1 = canvas.save();
            int i2;
            if (u)
            {
                j1 = getPaddingBottom();
            } else
            {
                j1 = 0;
            }
            canvas.rotate(270F);
            canvas.translate(j1 + -getHeight(), 0.0F);
            if (h != null && h.a(canvas))
            {
                k1 = 1;
            } else
            {
                k1 = 0;
            }
            canvas.restoreToCount(l1);
        } else
        {
            k1 = 0;
        }
        j1 = k1;
        if (i != null)
        {
            j1 = k1;
            if (!i.a())
            {
                l1 = canvas.save();
                if (u)
                {
                    canvas.translate(getPaddingLeft(), getPaddingTop());
                }
                if (i != null && i.a(canvas))
                {
                    j1 = 1;
                } else
                {
                    j1 = 0;
                }
                j1 = k1 | j1;
                canvas.restoreToCount(l1);
            }
        }
        k1 = j1;
        if (j != null)
        {
            k1 = j1;
            if (!j.a())
            {
                l1 = canvas.save();
                i2 = getWidth();
                if (u)
                {
                    k1 = getPaddingTop();
                } else
                {
                    k1 = 0;
                }
                canvas.rotate(90F);
                canvas.translate(-k1, -i2);
                if (j != null && j.a(canvas))
                {
                    k1 = 1;
                } else
                {
                    k1 = 0;
                }
                k1 = j1 | k1;
                canvas.restoreToCount(l1);
            }
        }
        j1 = k1;
        if (k != null)
        {
            j1 = k1;
            if (!k.a())
            {
                l1 = canvas.save();
                canvas.rotate(180F);
                if (u)
                {
                    canvas.translate(-getWidth() + getPaddingRight(), -getHeight() + getPaddingBottom());
                } else
                {
                    canvas.translate(-getWidth(), -getHeight());
                }
                j1 = ((flag1) ? 1 : 0);
                if (k != null)
                {
                    j1 = ((flag1) ? 1 : 0);
                    if (k.a(canvas))
                    {
                        j1 = 1;
                    }
                }
                j1 = k1 | j1;
                canvas.restoreToCount(l1);
            }
        }
        if (j1 == 0 && l != null && y.size() > 0 && l.b())
        {
            j1 = ((flag) ? 1 : 0);
        }
        if (j1 != 0)
        {
            bh.d(this);
        }
    }

    public boolean drawChild(Canvas canvas, View view, long l1)
    {
        return super.drawChild(canvas, view, l1);
    }

    final void e()
    {
        if (k != null)
        {
            return;
        }
        k = new cm(getContext());
        if (u)
        {
            k.a(getMeasuredWidth() - getPaddingLeft() - getPaddingRight(), getMeasuredHeight() - getPaddingTop() - getPaddingBottom());
            return;
        } else
        {
            k.a(getMeasuredWidth(), getMeasuredHeight());
            return;
        }
    }

    public final boolean f()
    {
        return K > 0;
    }

    public View focusSearch(View view, int i1)
    {
        View view2 = FocusFinder.getInstance().findNextFocus(this, view, i1);
        View view1 = view2;
        if (view2 == null)
        {
            view1 = view2;
            if (d != null)
            {
                view1 = view2;
                if (e != null)
                {
                    view1 = view2;
                    if (!f())
                    {
                        a();
                        view1 = e.c(i1, a, n);
                        a(false);
                    }
                }
            }
        }
        if (view1 != null)
        {
            return view1;
        } else
        {
            return super.focusSearch(view, i1);
        }
    }

    final boolean g()
    {
        return l != null && l.m;
    }

    protected android.view.ViewGroup.LayoutParams generateDefaultLayoutParams()
    {
        if (e == null)
        {
            throw new IllegalStateException("RecyclerView has no LayoutManager");
        } else
        {
            return e.b();
        }
    }

    public android.view.ViewGroup.LayoutParams generateLayoutParams(AttributeSet attributeset)
    {
        if (e == null)
        {
            throw new IllegalStateException("RecyclerView has no LayoutManager");
        } else
        {
            return e.a(getContext(), attributeset);
        }
    }

    protected android.view.ViewGroup.LayoutParams generateLayoutParams(android.view.ViewGroup.LayoutParams layoutparams)
    {
        if (e == null)
        {
            throw new IllegalStateException("RecyclerView has no LayoutManager");
        } else
        {
            return e.a(layoutparams);
        }
    }

    public a getAdapter()
    {
        return d;
    }

    public int getBaseline()
    {
        if (e != null)
        {
            return -1;
        } else
        {
            return super.getBaseline();
        }
    }

    protected int getChildDrawingOrder(int i1, int j1)
    {
        if (ae == null)
        {
            return super.getChildDrawingOrder(i1, j1);
        } else
        {
            return ae.a();
        }
    }

    public fe getCompatAccessibilityDelegate()
    {
        return ad;
    }

    public e getItemAnimator()
    {
        return l;
    }

    public h getLayoutManager()
    {
        return e;
    }

    public int getMaxFlingVelocity()
    {
        return U;
    }

    public int getMinFlingVelocity()
    {
        return T;
    }

    public k getRecycledViewPool()
    {
        return a.c();
    }

    public int getScrollState()
    {
        return L;
    }

    final void h()
    {
        if (d != null) goto _L2; else goto _L1
_L1:
        Log.e("RecyclerView", "No adapter attached; skipping layout");
_L19:
        return;
_L2:
        Object obj;
        int j3;
        if (e == null)
        {
            Log.e("RecyclerView", "No layout manager attached; skipping layout");
            return;
        }
        n.e.clear();
        a();
        q();
        t();
        Object obj2 = n;
        int i1;
        int k1;
        if (n.k && p && g())
        {
            obj = new ab();
        } else
        {
            obj = null;
        }
        obj2.d = ((ab) (obj));
        p = false;
        o = false;
        n.j = n.l;
        n.f = d.b();
        obj = af;
        j3 = c.a();
        if (j3 != 0) goto _L4; else goto _L3
_L3:
        obj[0] = 0;
        obj[1] = 0;
_L8:
        if (n.k)
        {
            n.b.clear();
            n.c.clear();
            k1 = c.a();
            for (i1 = 0; i1 < k1; i1++)
            {
                obj = b(c.b(i1));
                if (!((s) (obj)).b() && (!((s) (obj)).i() || d.b))
                {
                    obj2 = ((s) (obj)).a;
                    n.b.put(obj, new g(((s) (obj)), ((View) (obj2)).getLeft(), ((View) (obj2)).getTop(), ((View) (obj2)).getRight(), ((View) (obj2)).getBottom()));
                }
            }

        }
          goto _L5
_L4:
        int j1;
        int i2;
        int k2;
        j1 = 0x7fffffff;
        i2 = 0x80000000;
        k2 = 0;
_L7:
        int l1;
        int j2;
        if (k2 >= j3)
        {
            break; /* Loop/switch isn't completed */
        }
        s s1 = b(c.b(k2));
        j2 = j1;
        if (s1.b())
        {
            break MISSING_BLOCK_LABEL_2029;
        }
        int i3 = s1.c();
        l1 = j1;
        if (i3 < j1)
        {
            l1 = i3;
        }
        j2 = l1;
        if (i3 <= i2)
        {
            break MISSING_BLOCK_LABEL_2029;
        }
        j1 = i3;
_L22:
        k2++;
        i2 = j1;
        j1 = l1;
        if (true) goto _L7; else goto _L6
_L6:
        obj[0] = j1;
        obj[1] = i2;
          goto _L8
_L5:
        if (!n.l) goto _L10; else goto _L9
_L9:
        Object obj3;
        l1 = c.b();
        for (j1 = 0; j1 < l1; j1++)
        {
            obj = b(c.c(j1));
            if (!((s) (obj)).b() && ((s) (obj)).c == -1)
            {
                obj.c = ((s) (obj)).b;
            }
        }

        if (n.d != null)
        {
            l1 = c.a();
            for (j1 = 0; j1 < l1; j1++)
            {
                obj = b(c.b(j1));
                if (((s) (obj)).k() && !((s) (obj)).m() && !((s) (obj)).b())
                {
                    long l3 = b(((s) (obj)));
                    n.d.put(Long.valueOf(l3), obj);
                    n.b.remove(obj);
                }
            }

        }
        boolean flag = n.i;
        n.i = false;
        e.c(a, n);
        n.i = flag;
        obj3 = new ab();
        j1 = 0;
_L17:
        if (j1 >= c.a()) goto _L12; else goto _L11
_L11:
        obj = c.b(j1);
        if (b(((View) (obj))).b()) goto _L14; else goto _L13
_L13:
        l1 = 0;
_L18:
        if (l1 >= n.b.size())
        {
            break MISSING_BLOCK_LABEL_2023;
        }
        if (((s)n.b.b(l1)).a != obj) goto _L16; else goto _L15
_L15:
        l1 = 1;
_L21:
        if (l1 == 0)
        {
            ((ab) (obj3)).put(obj, new Rect(((View) (obj)).getLeft(), ((View) (obj)).getTop(), ((View) (obj)).getRight(), ((View) (obj)).getBottom()));
        }
_L14:
        j1++;
          goto _L17
_L16:
        l1++;
          goto _L18
_L12:
        u();
        b.c();
_L20:
        n.f = d.b();
        n.h = 0;
        n.j = false;
        e.c(a, n);
        n.i = false;
        t = null;
        p p1 = n;
        boolean flag1;
        if (n.k && l != null)
        {
            flag1 = true;
        } else
        {
            flag1 = false;
        }
        p1.k = flag1;
        if (n.k)
        {
            Object obj1;
            if (n.d != null)
            {
                obj1 = new ab();
            } else
            {
                obj1 = null;
            }
            l1 = c.a();
            j1 = 0;
            while (j1 < l1) 
            {
                s s2 = b(c.b(j1));
                if (!s2.b())
                {
                    View view = s2.a;
                    long l4 = b(s2);
                    if (obj1 != null && n.d.get(Long.valueOf(l4)) != null)
                    {
                        ((ab) (obj1)).put(Long.valueOf(l4), s2);
                    } else
                    {
                        n.c.put(s2, new g(s2, view.getLeft(), view.getTop(), view.getRight(), view.getBottom()));
                    }
                }
                j1++;
            }
            a(((ab) (obj3)));
            for (j1 = n.b.size() - 1; j1 >= 0; j1--)
            {
                s s3 = (s)n.b.b(j1);
                if (!n.c.containsKey(s3))
                {
                    g g1 = (g)n.b.c(j1);
                    n.b.d(j1);
                    a.b(g1.a);
                    a(g1);
                }
            }

            j1 = n.c.size();
            if (j1 > 0)
            {
                j1--;
                while (j1 >= 0) 
                {
                    s s5 = (s)n.c.b(j1);
                    g g4 = (g)n.c.c(j1);
                    if (n.b.isEmpty() || !n.b.containsKey(s5))
                    {
                        n.c.d(j1);
                        Rect rect;
                        if (obj3 != null)
                        {
                            rect = (Rect)((ab) (obj3)).get(s5.a);
                        } else
                        {
                            rect = null;
                        }
                        l1 = g4.b;
                        i2 = g4.c;
                        if (rect != null && (rect.left != l1 || rect.top != i2))
                        {
                            s5.a(false);
                            if (l.a(s5, rect.left, rect.top, l1, i2))
                            {
                                s();
                            }
                        } else
                        {
                            s5.a(false);
                            l.b(s5);
                            s();
                        }
                    }
                    j1--;
                }
            }
            l1 = n.c.size();
            for (j1 = 0; j1 < l1; j1++)
            {
                obj3 = (s)n.c.b(j1);
                g g2 = (g)n.c.c(j1);
                g g3 = (g)n.b.get(obj3);
                if (g3 == null || g2 == null || g3.b == g2.b && g3.c == g2.c)
                {
                    continue;
                }
                ((s) (obj3)).a(false);
                if (l.a(((s) (obj3)), g3.b, g3.c, g2.b, g2.c))
                {
                    s();
                }
            }

            if (n.d != null)
            {
                j1 = n.d.size();
            } else
            {
                j1 = 0;
            }
            j1--;
            while (j1 >= 0) 
            {
                long l5 = ((Long)n.d.b(j1)).longValue();
                obj3 = (s)n.d.get(Long.valueOf(l5));
                if (!((s) (obj3)).b() && a.b != null && a.b.contains(obj3))
                {
                    s s4 = (s)((ab) (obj1)).get(Long.valueOf(l5));
                    ((s) (obj3)).a(false);
                    a(((s) (obj3)));
                    obj3.g = s4;
                    a.b(((s) (obj3)));
                    j2 = ((s) (obj3)).a.getLeft();
                    int l2 = ((s) (obj3)).a.getTop();
                    if (s4 == null || s4.b())
                    {
                        i2 = l2;
                        l1 = j2;
                    } else
                    {
                        l1 = s4.a.getLeft();
                        i2 = s4.a.getTop();
                        s4.a(false);
                        s4.h = ((s) (obj3));
                    }
                    l.a(((s) (obj3)), s4, j2, l2, l1, i2);
                    s();
                }
                j1--;
            }
        }
        a(false);
        e.b(a);
        n.g = n.f;
        g = false;
        n.k = false;
        n.l = false;
        r();
        h.b(e);
        if (a.b != null)
        {
            a.b.clear();
        }
        n.d = null;
        if (c(af[0], af[1]))
        {
            i();
            return;
        }
          goto _L19
_L10:
        u();
        b.e();
        if (n.d != null)
        {
            l1 = c.a();
            for (j1 = 0; j1 < l1; j1++)
            {
                obj1 = b(c.b(j1));
                if (((s) (obj1)).k() && !((s) (obj1)).m() && !((s) (obj1)).b())
                {
                    l4 = b(((s) (obj1)));
                    n.d.put(Long.valueOf(l4), obj1);
                    n.b.remove(obj1);
                }
            }

        }
        obj3 = null;
          goto _L20
        l1 = 0;
          goto _L21
        j1 = i2;
        l1 = j2;
          goto _L22
    }

    public boolean hasNestedScrollingParent()
    {
        return ag.a();
    }

    final void i()
    {
        int i1 = getScrollX();
        int k1 = getScrollY();
        onScrollChanged(i1, k1, i1, k1);
        if (aa != null)
        {
            for (int j1 = aa.size() - 1; j1 >= 0; j1--)
            {
                aa.get(j1);
            }

        }
    }

    public boolean isAttachedToWindow()
    {
        return B;
    }

    public boolean isNestedScrollingEnabled()
    {
        return ag.a;
    }

    protected void onAttachedToWindow()
    {
        super.onAttachedToWindow();
        K = 0;
        B = true;
        f = false;
        if (e != null)
        {
            e.u = true;
        }
        ac = false;
    }

    protected void onDetachedFromWindow()
    {
        super.onDetachedFromWindow();
        if (l != null)
        {
            l.d();
        }
        f = false;
        setScrollState(0);
        m();
        B = false;
        if (e != null)
        {
            e.b(this, a);
        }
        removeCallbacks(ak);
    }

    public void onDraw(Canvas canvas)
    {
        super.onDraw(canvas);
        int j1 = y.size();
        for (int i1 = 0; i1 < j1; i1++)
        {
            y.get(i1);
        }

    }

    public boolean onGenericMotionEvent(MotionEvent motionevent)
    {
        if (e != null && (ax.d(motionevent) & 2) != 0 && motionevent.getAction() == 8)
        {
            float f1;
            float f2;
            if (e.f())
            {
                f1 = -ax.e(motionevent, 9);
            } else
            {
                f1 = 0.0F;
            }
            if (e.e())
            {
                f2 = ax.e(motionevent, 10);
            } else
            {
                f2 = 0.0F;
            }
            if (f1 != 0.0F || f2 != 0.0F)
            {
                float f3 = getScrollFactor();
                a((int)(f2 * f3), (int)(f1 * f3), motionevent);
                return false;
            }
        }
        return false;
    }

    public boolean onInterceptTouchEvent(MotionEvent motionevent)
    {
        int j1;
        int k1;
        byte byte0;
        int i2;
        byte0 = -1;
        k1 = motionevent.getAction();
        if (k1 == 3 || k1 == 0)
        {
            A = null;
        }
        i2 = z.size();
        j1 = 0;
_L7:
        if (j1 >= i2) goto _L2; else goto _L1
_L1:
        i i1 = (i)z.get(j1);
        if (!i1.a() || k1 == 3) goto _L4; else goto _L3
_L3:
        A = i1;
        j1 = 1;
_L8:
        if (j1 == 0) goto _L6; else goto _L5
_L5:
        p();
_L16:
        return true;
_L4:
        j1++;
          goto _L7
_L2:
        j1 = 0;
          goto _L8
_L6:
        boolean flag;
        boolean flag1;
        if (e == null)
        {
            return false;
        }
        flag = e.e();
        flag1 = e.f();
        if (N == null)
        {
            N = VelocityTracker.obtain();
        }
        N.addMovement(motionevent);
        k1 = ax.a(motionevent);
        j1 = ax.b(motionevent);
        k1;
        JVM INSTR tableswitch 0 6: default 204
    //                   0 214
    //                   1 607
    //                   2 373
    //                   3 621
    //                   4 204
    //                   5 316
    //                   6 599;
           goto _L9 _L10 _L11 _L12 _L13 _L9 _L14 _L15
_L9:
        break; /* Loop/switch isn't completed */
_L13:
        break MISSING_BLOCK_LABEL_621;
_L17:
        if (L != 1)
        {
            return false;
        }
          goto _L16
_L10:
        M = ax.b(motionevent, 0);
        j1 = (int)(motionevent.getX() + 0.5F);
        Q = j1;
        O = j1;
        j1 = (int)(motionevent.getY() + 0.5F);
        R = j1;
        P = j1;
        if (L == 2)
        {
            getParent().requestDisallowInterceptTouchEvent(true);
            setScrollState(1);
        }
        int l1;
        int j2;
        int k2;
        if (flag)
        {
            j1 = 1;
        } else
        {
            j1 = 0;
        }
        l1 = j1;
        if (flag1)
        {
            l1 = j1 | 2;
        }
        startNestedScroll(l1);
          goto _L17
_L14:
        M = ax.b(motionevent, j1);
        l1 = (int)(ax.c(motionevent, j1) + 0.5F);
        Q = l1;
        O = l1;
        j1 = (int)(ax.d(motionevent, j1) + 0.5F);
        R = j1;
        P = j1;
          goto _L17
_L12:
        l1 = ax.a(motionevent, M);
        if (l1 < 0)
        {
            Log.e("RecyclerView", (new StringBuilder("Error processing scroll; pointer index for id ")).append(M).append(" not found. Did any MotionEvents get skipped?").toString());
            return false;
        }
        j1 = (int)(ax.c(motionevent, l1) + 0.5F);
        l1 = (int)(ax.d(motionevent, l1) + 0.5F);
        if (L != 1)
        {
            j1 -= O;
            j2 = l1 - P;
            if (flag && Math.abs(j1) > S)
            {
                l1 = O;
                k2 = S;
                if (j1 < 0)
                {
                    j1 = -1;
                } else
                {
                    j1 = 1;
                }
                Q = j1 * k2 + l1;
                j1 = 1;
            } else
            {
                j1 = 0;
            }
            l1 = j1;
            if (flag1)
            {
                l1 = j1;
                if (Math.abs(j2) > S)
                {
                    l1 = P;
                    k2 = S;
                    if (j2 < 0)
                    {
                        j1 = byte0;
                    } else
                    {
                        j1 = 1;
                    }
                    R = l1 + j1 * k2;
                    l1 = 1;
                }
            }
            if (l1 != 0)
            {
                setScrollState(1);
            }
        }
          goto _L17
_L15:
        a(motionevent);
          goto _L17
_L11:
        N.clear();
        stopNestedScroll();
          goto _L17
        p();
          goto _L17
    }

    protected void onLayout(boolean flag, int i1, int j1, int k1, int l1)
    {
        a();
        v.a("RV OnLayout");
        h();
        v.a();
        a(false);
        f = true;
    }

    protected void onMeasure(int i1, int j1)
    {
        if (G)
        {
            a();
            t();
            if (n.l)
            {
                n.j = true;
            } else
            {
                b.e();
                n.j = false;
            }
            G = false;
            a(false);
        }
        if (d != null)
        {
            n.f = d.b();
        } else
        {
            n.f = 0;
        }
        if (e == null)
        {
            b(i1, j1);
        } else
        {
            e.r.b(i1, j1);
        }
        n.j = false;
    }

    protected void onRestoreInstanceState(Parcelable parcelable)
    {
        t = (SavedState)parcelable;
        super.onRestoreInstanceState(t.getSuperState());
        if (e != null && t.a != null)
        {
            e.a(t.a);
        }
    }

    protected Parcelable onSaveInstanceState()
    {
        SavedState savedstate = new SavedState(super.onSaveInstanceState());
        if (t != null)
        {
            SavedState.a(savedstate, t);
            return savedstate;
        }
        if (e != null)
        {
            savedstate.a = e.d();
            return savedstate;
        } else
        {
            savedstate.a = null;
            return savedstate;
        }
    }

    protected void onSizeChanged(int i1, int j1, int k1, int l1)
    {
        super.onSizeChanged(i1, j1, k1, l1);
        if (i1 != k1 || j1 != l1)
        {
            o();
        }
    }

    public boolean onTouchEvent(MotionEvent motionevent)
    {
        int i1 = motionevent.getAction();
        if (A == null) goto _L2; else goto _L1
_L1:
        if (i1 != 0) goto _L4; else goto _L3
_L3:
        A = null;
_L2:
        if (i1 == 0) goto _L6; else goto _L5
_L5:
        int j1;
        j1 = z.size();
        i1 = 0;
_L30:
        if (i1 >= j1) goto _L6; else goto _L7
_L7:
        Object obj = (i)z.get(i1);
        if (!((i) (obj)).a()) goto _L9; else goto _L8
_L8:
        A = ((i) (obj));
        i1 = 1;
_L11:
        if (i1 != 0)
        {
            p();
            return true;
        }
        break; /* Loop/switch isn't completed */
_L4:
        if (i1 == 3 || i1 == 1)
        {
            A = null;
        }
        i1 = 1;
        continue; /* Loop/switch isn't completed */
_L9:
        i1++;
        continue; /* Loop/switch isn't completed */
_L6:
        i1 = 0;
        if (true) goto _L11; else goto _L10
_L10:
        boolean flag;
        boolean flag1;
        if (e == null)
        {
            return false;
        }
        flag = e.e();
        flag1 = e.f();
        if (N == null)
        {
            N = VelocityTracker.obtain();
        }
        N.addMovement(motionevent);
        obj = MotionEvent.obtain(motionevent);
        j1 = ax.a(motionevent);
        i1 = ax.b(motionevent);
        if (j1 == 0)
        {
            int ai1[] = aj;
            aj[1] = 0;
            ai1[0] = 0;
        }
        ((MotionEvent) (obj)).offsetLocation(aj[0], aj[1]);
        j1;
        JVM INSTR tableswitch 0 6: default 284
    //                   0 291
    //                   1 880
    //                   2 442
    //                   3 1222
    //                   4 284
    //                   5 379
    //                   6 872;
           goto _L12 _L13 _L14 _L15 _L16 _L12 _L17 _L18
_L12:
        ((MotionEvent) (obj)).recycle();
        return true;
_L13:
        M = ax.b(motionevent, 0);
        i1 = (int)(motionevent.getX() + 0.5F);
        Q = i1;
        O = i1;
        i1 = (int)(motionevent.getY() + 0.5F);
        R = i1;
        P = i1;
        float f1;
        float f2;
        int k1;
        int l1;
        int i2;
        int j2;
        int k2;
        int l2;
        int i3;
        if (flag)
        {
            i1 = 1;
        } else
        {
            i1 = 0;
        }
        k1 = i1;
        if (flag1)
        {
            k1 = i1 | 2;
        }
        startNestedScroll(k1);
        continue; /* Loop/switch isn't completed */
_L17:
        M = ax.b(motionevent, i1);
        k1 = (int)(ax.c(motionevent, i1) + 0.5F);
        Q = k1;
        O = k1;
        i1 = (int)(ax.d(motionevent, i1) + 0.5F);
        R = i1;
        P = i1;
        continue; /* Loop/switch isn't completed */
_L15:
        i1 = ax.a(motionevent, M);
        if (i1 < 0)
        {
            Log.e("RecyclerView", (new StringBuilder("Error processing scroll; pointer index for id ")).append(M).append(" not found. Did any MotionEvents get skipped?").toString());
            return false;
        }
        l2 = (int)(ax.c(motionevent, i1) + 0.5F);
        i3 = (int)(ax.d(motionevent, i1) + 0.5F);
        i2 = Q - l2;
        l1 = R - i3;
        i1 = l1;
        k1 = i2;
        if (dispatchNestedPreScroll(i2, l1, ai, ah))
        {
            k1 = i2 - ai[0];
            i1 = l1 - ai[1];
            ((MotionEvent) (obj)).offsetLocation(ah[0], ah[1]);
            motionevent = aj;
            motionevent[0] = motionevent[0] + ah[0];
            motionevent = aj;
            motionevent[1] = motionevent[1] + ah[1];
        }
        l1 = i1;
        j2 = k1;
        if (L != 1)
        {
            if (flag && Math.abs(k1) > S)
            {
                if (k1 > 0)
                {
                    k1 -= S;
                } else
                {
                    k1 += S;
                }
                l1 = 1;
            } else
            {
                l1 = 0;
            }
            i2 = i1;
            k2 = l1;
            if (flag1)
            {
                i2 = i1;
                k2 = l1;
                if (Math.abs(i1) > S)
                {
                    if (i1 > 0)
                    {
                        i2 = i1 - S;
                    } else
                    {
                        i2 = i1 + S;
                    }
                    k2 = 1;
                }
            }
            l1 = i2;
            j2 = k1;
            if (k2 != 0)
            {
                setScrollState(1);
                j2 = k1;
                l1 = i2;
            }
        }
        if (L == 1)
        {
            Q = l2 - ah[0];
            R = i3 - ah[1];
            if (!flag)
            {
                j2 = 0;
            }
            if (!flag1)
            {
                l1 = 0;
            }
            if (a(j2, l1, ((MotionEvent) (obj))))
            {
                getParent().requestDisallowInterceptTouchEvent(true);
            }
        }
        continue; /* Loop/switch isn't completed */
_L18:
        a(motionevent);
        continue; /* Loop/switch isn't completed */
_L14:
        N.computeCurrentVelocity(1000, U);
        if (flag)
        {
            f1 = -bg.a(N, M);
        } else
        {
            f1 = 0.0F;
        }
        if (flag1)
        {
            f2 = -bg.b(N, M);
        } else
        {
            f2 = 0.0F;
        }
        if (f1 == 0.0F && f2 == 0.0F) goto _L20; else goto _L19
_L19:
        l1 = (int)f1;
        k1 = (int)f2;
        if (e != null) goto _L22; else goto _L21
_L21:
        Log.e("RecyclerView", "Cannot fling without a LayoutManager set. Call setLayoutManager with a non-null argument.");
_L25:
        i1 = 0;
_L27:
        if (i1 != 0) goto _L23; else goto _L20
_L20:
        setScrollState(0);
_L23:
        N.clear();
        n();
        continue; /* Loop/switch isn't completed */
_L22:
label0:
        {
            flag = e.e();
            flag1 = e.f();
            if (flag)
            {
                i1 = l1;
                if (Math.abs(l1) >= T)
                {
                    break label0;
                }
            }
            i1 = 0;
        }
        if (!flag1 || Math.abs(k1) < T)
        {
            k1 = 0;
        }
        if (i1 == 0 && k1 == 0 || dispatchNestedPreFling(i1, k1)) goto _L25; else goto _L24
_L24:
        if (flag || flag1)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        dispatchNestedFling(i1, k1, flag);
        if (!flag) goto _L25; else goto _L26
_L26:
        i1 = Math.max(-U, Math.min(i1, U));
        k1 = Math.max(-U, Math.min(k1, U));
        motionevent = m;
        ((r) (motionevent)).d.setScrollState(2);
        motionevent.b = 0;
        motionevent.a = 0;
        ((r) (motionevent)).c.a(0, i1, k1, 0x80000000, 0x7fffffff, 0x80000000, 0x7fffffff);
        motionevent.a();
        i1 = 1;
          goto _L27
_L16:
        p();
        if (true) goto _L12; else goto _L28
_L28:
        if (true) goto _L30; else goto _L29
_L29:
    }

    protected void removeDetachedView(View view, boolean flag)
    {
        s s1 = b(view);
        if (s1 != null)
        {
            if (s1.n())
            {
                s1.h();
            } else
            if (!s1.b())
            {
                throw new IllegalArgumentException((new StringBuilder("Called removeDetachedView with a view which is not flagged as tmp detached.")).append(s1).toString());
            }
        }
        e(view);
        super.removeDetachedView(view, flag);
    }

    public void requestChildFocus(View view, View view1)
    {
        int i1;
        if (e.j() || f())
        {
            i1 = 1;
        } else
        {
            i1 = 0;
        }
        if (i1 == 0 && view1 != null)
        {
            w.set(0, 0, view1.getWidth(), view1.getHeight());
            Object obj = view1.getLayoutParams();
            if (obj instanceof LayoutParams)
            {
                obj = (LayoutParams)obj;
                if (!((LayoutParams) (obj)).e)
                {
                    obj = ((LayoutParams) (obj)).d;
                    Rect rect = w;
                    rect.left = rect.left - ((Rect) (obj)).left;
                    rect = w;
                    rect.right = rect.right + ((Rect) (obj)).right;
                    rect = w;
                    rect.top = rect.top - ((Rect) (obj)).top;
                    rect = w;
                    i1 = rect.bottom;
                    rect.bottom = ((Rect) (obj)).bottom + i1;
                }
            }
            offsetDescendantRectToMyCoords(view1, w);
            offsetRectIntoDescendantCoords(view, w);
            obj = w;
            boolean flag;
            if (!f)
            {
                flag = true;
            } else
            {
                flag = false;
            }
            requestChildRectangleOnScreen(view, ((Rect) (obj)), flag);
        }
        super.requestChildFocus(view, view1);
    }

    public boolean requestChildRectangleOnScreen(View view, Rect rect, boolean flag)
    {
        h h1 = e;
        int k2 = h1.n();
        int l1 = h1.o();
        int l2 = h1.l() - h1.p();
        int j2 = h1.m();
        int k3 = h1.q();
        int i3 = view.getLeft() + rect.left;
        int i2 = view.getTop() + rect.top;
        int j3 = i3 + rect.width();
        int l3 = rect.height();
        int i1 = Math.min(0, i3 - k2);
        int j1 = Math.min(0, i2 - l1);
        int k1 = Math.max(0, j3 - l2);
        j2 = Math.max(0, (i2 + l3) - (j2 - k3));
        if (bh.h(h1.r) == 1)
        {
            if (k1 != 0)
            {
                i1 = k1;
            } else
            {
                i1 = Math.max(i1, j3 - l2);
            }
        } else
        if (i1 == 0)
        {
            i1 = Math.min(i3 - k2, k1);
        }
        if (j1 == 0)
        {
            j1 = Math.min(i2 - l1, j2);
        }
        if (i1 != 0 || j1 != 0)
        {
            if (flag)
            {
                scrollBy(i1, j1);
            } else
            if (e == null)
            {
                Log.e("RecyclerView", "Cannot smooth scroll without a LayoutManager set. Call setLayoutManager with a non-null argument.");
            } else
            {
                if (!e.e())
                {
                    i1 = 0;
                }
                if (!e.f())
                {
                    j1 = 0;
                }
                if (i1 != 0 || j1 != 0)
                {
                    m.a(i1, j1);
                }
            }
            return true;
        } else
        {
            return false;
        }
    }

    public void requestDisallowInterceptTouchEvent(boolean flag)
    {
        int j1 = z.size();
        for (int i1 = 0; i1 < j1; i1++)
        {
            z.get(i1);
        }

        super.requestDisallowInterceptTouchEvent(flag);
    }

    public void requestLayout()
    {
        if (!D)
        {
            super.requestLayout();
            return;
        } else
        {
            E = true;
            return;
        }
    }

    public void scrollBy(int i1, int j1)
    {
        if (e == null)
        {
            Log.e("RecyclerView", "Cannot scroll without a LayoutManager set. Call setLayoutManager with a non-null argument.");
        } else
        {
            boolean flag = e.e();
            boolean flag1 = e.f();
            if (flag || flag1)
            {
                if (!flag)
                {
                    i1 = 0;
                }
                if (!flag1)
                {
                    j1 = 0;
                }
                a(i1, j1, ((MotionEvent) (null)));
                return;
            }
        }
    }

    public void scrollTo(int i1, int j1)
    {
        throw new UnsupportedOperationException("RecyclerView does not support scrolling to an absolute position.");
    }

    public void sendAccessibilityEventUnchecked(AccessibilityEvent accessibilityevent)
    {
        int i1 = 0;
        boolean flag = false;
        if (f())
        {
            if (accessibilityevent != null)
            {
                i1 = by.b(accessibilityevent);
            } else
            {
                i1 = 0;
            }
            if (i1 == 0)
            {
                i1 = ((flag) ? 1 : 0);
            }
            F = i1 | F;
            i1 = 1;
        }
        if (i1 != 0)
        {
            return;
        } else
        {
            super.sendAccessibilityEventUnchecked(accessibilityevent);
            return;
        }
    }

    public void setAccessibilityDelegateCompat(fe fe1)
    {
        ad = fe1;
        bh.a(this, ad);
    }

    public void setAdapter(a a1)
    {
        if (d != null)
        {
            a a2 = d;
            n n1 = s;
            a2.a.unregisterObserver(n1);
        }
        if (l != null)
        {
            l.d();
        }
        if (e != null)
        {
            e.c(a);
            e.b(a);
        }
        a.a();
        b.a();
        a a3 = d;
        d = a1;
        if (a1 != null)
        {
            n n2 = s;
            a1.a.registerObserver(n2);
        }
        Object obj = a;
        a1 = d;
        ((l) (obj)).a();
        obj = ((l) (obj)).c();
        if (a3 != null)
        {
            ((k) (obj)).b();
        }
        if (((k) (obj)).c == 0)
        {
            ((k) (obj)).a.clear();
        }
        if (a1 != null)
        {
            ((k) (obj)).a();
        }
        n.i = true;
        v();
        requestLayout();
    }

    public void setChildDrawingOrderCallback(d d1)
    {
        if (d1 == ae)
        {
            return;
        }
        ae = d1;
        boolean flag;
        if (ae != null)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        setChildrenDrawingOrderEnabled(flag);
    }

    public void setClipToPadding(boolean flag)
    {
        if (flag != u)
        {
            o();
        }
        u = flag;
        super.setClipToPadding(flag);
        if (f)
        {
            requestLayout();
        }
    }

    public void setHasFixedSize(boolean flag)
    {
        C = flag;
    }

    public void setItemAnimator(e e1)
    {
        if (l != null)
        {
            l.d();
            l.h = null;
        }
        l = e1;
        if (l != null)
        {
            l.h = ab;
        }
    }

    public void setItemViewCacheSize(int i1)
    {
        l l1 = a;
        l1.e = i1;
        for (int j1 = l1.c.size() - 1; j1 >= 0 && l1.c.size() > i1; j1--)
        {
            l1.c(j1);
        }

    }

    public void setLayoutManager(h h1)
    {
        if (h1 == e)
        {
            return;
        }
        if (e != null)
        {
            if (B)
            {
                e.b(this, a);
            }
            e.a(null);
        }
        a.a();
        ez ez1 = c;
        ez.a a1 = ez1.b;
        do
        {
            a1.a = 0L;
            if (a1.b == null)
            {
                break;
            }
            a1 = a1.b;
        } while (true);
        ez1.c.clear();
        ez1.a.b();
        e = h1;
        if (h1 != null)
        {
            if (h1.r != null)
            {
                throw new IllegalArgumentException((new StringBuilder("LayoutManager ")).append(h1).append(" is already attached to a RecyclerView: ").append(h1.r).toString());
            }
            e.a(this);
            if (B)
            {
                e.u = true;
            }
        }
        requestLayout();
    }

    public void setNestedScrollingEnabled(boolean flag)
    {
        ag.a(flag);
    }

    public void setOnScrollListener(j j1)
    {
        W = j1;
    }

    public void setRecycledViewPool(k k1)
    {
        l l1 = a;
        if (l1.f != null)
        {
            l1.f.b();
        }
        l1.f = k1;
        if (k1 != null)
        {
            k1 = l1.f;
            l1.h.getAdapter();
            k1.a();
        }
    }

    public void setRecyclerListener(m m1)
    {
        x = m1;
    }

    public void setScrollingTouchSlop(int i1)
    {
        ViewConfiguration viewconfiguration = ViewConfiguration.get(getContext());
        switch (i1)
        {
        default:
            Log.w("RecyclerView", (new StringBuilder("setScrollingTouchSlop(): bad argument constant ")).append(i1).append("; using default value").toString());
            // fall through

        case 0: // '\0'
            S = viewconfiguration.getScaledTouchSlop();
            return;

        case 1: // '\001'
            S = bl.a(viewconfiguration);
            break;
        }
    }

    public void setViewCacheExtension(q q1)
    {
        a.g = q1;
    }

    public boolean startNestedScroll(int i1)
    {
        return ag.a(i1);
    }

    public void stopNestedScroll()
    {
        ag.b();
    }

    static 
    {
        boolean flag;
        if (android.os.Build.VERSION.SDK_INT == 18 || android.os.Build.VERSION.SDK_INT == 19 || android.os.Build.VERSION.SDK_INT == 20)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        q = flag;
        r = (new Class[] {
            android/content/Context, android/util/AttributeSet, Integer.TYPE, Integer.TYPE
        });
    }
}
