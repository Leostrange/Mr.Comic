// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.devsmart.android.ui;

import android.content.Context;
import android.database.DataSetObserver;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.view.GestureDetector;
import android.view.MotionEvent;
import android.view.View;
import android.widget.Adapter;
import android.widget.AdapterView;
import android.widget.ListAdapter;
import android.widget.Scroller;
import java.util.LinkedList;
import java.util.Queue;

public class HorizontalListView extends AdapterView
{

    public boolean a;
    protected ListAdapter b;
    protected int c;
    protected int d;
    protected Scroller e;
    private int f;
    private int g;
    private int h;
    private int i;
    private GestureDetector j;
    private Queue k;
    private android.widget.AdapterView.OnItemSelectedListener l;
    private android.widget.AdapterView.OnItemClickListener m;
    private android.widget.AdapterView.OnItemLongClickListener n;
    private boolean o;
    private DataSetObserver p;
    private android.view.GestureDetector.OnGestureListener q;

    public HorizontalListView(Context context, AttributeSet attributeset)
    {
        super(context, attributeset);
        a = true;
        f = -1;
        g = 0;
        h = 0x7fffffff;
        i = 0;
        k = new LinkedList();
        o = false;
        p = new DataSetObserver() {

            final HorizontalListView a;

            public final void onChanged()
            {
                synchronized (a)
                {
                    HorizontalListView.a(a);
                }
                a.invalidate();
                a.requestLayout();
                return;
                exception;
                horizontallistview;
                JVM INSTR monitorexit ;
                throw exception;
            }

            public final void onInvalidated()
            {
                HorizontalListView.b(a);
                a.invalidate();
                a.requestLayout();
            }

            
            {
                a = HorizontalListView.this;
                super();
            }
        };
        q = new android.view.GestureDetector.SimpleOnGestureListener() {

            final HorizontalListView a;

            private static boolean a(MotionEvent motionevent, View view)
            {
                Rect rect = new Rect();
                int ai[] = new int[2];
                view.getLocationOnScreen(ai);
                int i1 = ai[0];
                int j1 = view.getWidth();
                int k1 = ai[1];
                rect.set(i1, k1, j1 + i1, view.getHeight() + k1);
                return rect.contains((int)motionevent.getRawX(), (int)motionevent.getRawY());
            }

            public final boolean onDown(MotionEvent motionevent)
            {
                return a.a();
            }

            public final boolean onFling(MotionEvent motionevent, MotionEvent motionevent1, float f1, float f2)
            {
                return a.a(f1);
            }

            public final void onLongPress(MotionEvent motionevent)
            {
                int j1 = a.getChildCount();
                int i1 = 0;
                do
                {
label0:
                    {
                        if (i1 < j1)
                        {
                            View view = a.getChildAt(i1);
                            if (!a(motionevent, view))
                            {
                                break label0;
                            }
                            if (HorizontalListView.f(a) != null)
                            {
                                HorizontalListView.f(a).onItemLongClick(a, view, HorizontalListView.d(a) + 1 + i1, a.b.getItemId(i1 + (HorizontalListView.d(a) + 1)));
                            }
                        }
                        return;
                    }
                    i1++;
                } while (true);
            }

            public final boolean onScroll(MotionEvent motionevent, MotionEvent motionevent1, float f1, float f2)
            {
                synchronized (a)
                {
                    motionevent1 = a;
                    motionevent1.d = ((HorizontalListView) (motionevent1)).d + (int)f1;
                }
                a.requestLayout();
                return true;
                motionevent1;
                motionevent;
                JVM INSTR monitorexit ;
                throw motionevent1;
            }

            public final boolean onSingleTapConfirmed(MotionEvent motionevent)
            {
                int i1 = 0;
                do
                {
label0:
                    {
                        if (i1 < a.getChildCount())
                        {
                            View view = a.getChildAt(i1);
                            if (!a(motionevent, view))
                            {
                                break label0;
                            }
                            if (HorizontalListView.c(a) != null)
                            {
                                HorizontalListView.c(a).onItemClick(a, view, HorizontalListView.d(a) + 1 + i1, a.b.getItemId(HorizontalListView.d(a) + 1 + i1));
                            }
                            if (HorizontalListView.e(a) != null)
                            {
                                HorizontalListView.e(a).onItemSelected(a, view, HorizontalListView.d(a) + 1 + i1, a.b.getItemId(HorizontalListView.d(a) + 1 + i1));
                            }
                        }
                        return true;
                    }
                    i1++;
                } while (true);
            }

            
            {
                a = HorizontalListView.this;
                super();
            }
        };
        b();
    }

    private void a(View view, int i1)
    {
        android.view.ViewGroup.LayoutParams layoutparams1 = view.getLayoutParams();
        android.view.ViewGroup.LayoutParams layoutparams = layoutparams1;
        if (layoutparams1 == null)
        {
            layoutparams = new android.view.ViewGroup.LayoutParams(-1, -1);
        }
        addViewInLayout(view, i1, layoutparams, true);
        view.measure(android.view.View.MeasureSpec.makeMeasureSpec(getWidth(), 0x80000000), android.view.View.MeasureSpec.makeMeasureSpec(getHeight(), 0x80000000));
    }

    static boolean a(HorizontalListView horizontallistview)
    {
        horizontallistview.o = true;
        return true;
    }

    private void b()
    {
        this;
        JVM INSTR monitorenter ;
        f = -1;
        g = 0;
        i = 0;
        c = 0;
        d = 0;
        h = 0x7fffffff;
        e = new Scroller(getContext());
        j = new GestureDetector(getContext(), q);
        this;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        throw exception;
    }

    static void b(HorizontalListView horizontallistview)
    {
        horizontallistview.c();
    }

    static android.widget.AdapterView.OnItemClickListener c(HorizontalListView horizontallistview)
    {
        return horizontallistview.m;
    }

    private void c()
    {
        this;
        JVM INSTR monitorenter ;
        b();
        removeAllViewsInLayout();
        requestLayout();
        this;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        throw exception;
    }

    static int d(HorizontalListView horizontallistview)
    {
        return horizontallistview.f;
    }

    static android.widget.AdapterView.OnItemSelectedListener e(HorizontalListView horizontallistview)
    {
        return horizontallistview.l;
    }

    static android.widget.AdapterView.OnItemLongClickListener f(HorizontalListView horizontallistview)
    {
        return horizontallistview.n;
    }

    protected final boolean a()
    {
        e.forceFinished(true);
        return true;
    }

    protected final boolean a(float f1)
    {
        this;
        JVM INSTR monitorenter ;
        e.fling(d, 0, (int)(-f1), 0, 0, h, 0, 0);
        this;
        JVM INSTR monitorexit ;
        requestLayout();
        return true;
        Exception exception;
        exception;
        this;
        JVM INSTR monitorexit ;
        throw exception;
    }

    public boolean dispatchTouchEvent(MotionEvent motionevent)
    {
        return super.dispatchTouchEvent(motionevent) | j.onTouchEvent(motionevent);
    }

    public volatile Adapter getAdapter()
    {
        return getAdapter();
    }

    public ListAdapter getAdapter()
    {
        return b;
    }

    public View getSelectedView()
    {
        return null;
    }

    protected void onLayout(boolean flag, int i1, int j1, int k1, int l1)
    {
        boolean flag1 = false;
        this;
        JVM INSTR monitorenter ;
        Object obj;
        super.onLayout(flag, i1, j1, k1, l1);
        obj = b;
        if (obj != null) goto _L2; else goto _L1
_L1:
        this;
        JVM INSTR monitorexit ;
        return;
_L2:
        if (o)
        {
            i1 = c;
            b();
            removeAllViewsInLayout();
            d = i1;
            o = false;
        }
        if (e.computeScrollOffset())
        {
            d = e.getCurrX();
        }
        if (d <= 0)
        {
            d = 0;
            e.forceFinished(true);
        }
        if (d >= h)
        {
            d = h;
            e.forceFinished(true);
        }
        j1 = c - d;
        obj = getChildAt(0);
_L3:
        if (obj == null)
        {
            break MISSING_BLOCK_LABEL_212;
        }
        if (((View) (obj)).getRight() + j1 > 0)
        {
            break MISSING_BLOCK_LABEL_212;
        }
        i = i + ((View) (obj)).getMeasuredWidth();
        k.offer(obj);
        removeViewInLayout(((View) (obj)));
        f = f + 1;
        obj = getChildAt(0);
          goto _L3
_L5:
        obj = getChildAt(getChildCount() - 1);
        if (obj == null)
        {
            break MISSING_BLOCK_LABEL_281;
        }
        if (((View) (obj)).getLeft() + j1 < getWidth())
        {
            break MISSING_BLOCK_LABEL_281;
        }
        k.offer(obj);
        removeViewInLayout(((View) (obj)));
        g = g - 1;
        if (true) goto _L5; else goto _L4
_L4:
        Exception exception;
        exception;
        throw exception;
        exception = getChildAt(getChildCount() - 1);
        if (exception == null)
        {
            break MISSING_BLOCK_LABEL_662;
        }
        i1 = exception.getRight();
_L10:
        while (i1 + j1 < getWidth() && g < b.getCount()) 
        {
            exception = b.getView(g, (View)k.poll(), this);
            a(exception, -1);
            i1 = exception.getMeasuredWidth() + i1;
            if (g == b.getCount() - 1)
            {
                h = (c + i1) - getWidth();
            }
            if (h < 0)
            {
                h = 0;
            }
            g = g + 1;
        }
        exception = getChildAt(0);
        if (exception == null)
        {
            break MISSING_BLOCK_LABEL_657;
        }
        i1 = exception.getLeft();
_L6:
        if (i1 + j1 <= 0)
        {
            break MISSING_BLOCK_LABEL_542;
        }
        if (f < 0)
        {
            break MISSING_BLOCK_LABEL_542;
        }
        View view = b.getView(f, (View)k.poll(), this);
        a(view, 0);
        k1 = view.getMeasuredWidth();
        f = f - 1;
        i = i - view.getMeasuredWidth();
        i1 -= k1;
          goto _L6
        if (getChildCount() <= 0) goto _L8; else goto _L7
_L7:
        i = i + j1;
        j1 = i;
        i1 = ((flag1) ? 1 : 0);
_L9:
        if (i1 >= getChildCount())
        {
            break; /* Loop/switch isn't completed */
        }
        View view1 = getChildAt(i1);
        k1 = view1.getMeasuredWidth();
        view1.layout(j1, 0, j1 + k1, view1.getMeasuredHeight());
        j1 += view1.getPaddingRight() + k1;
        i1++;
        if (true) goto _L9; else goto _L8
_L8:
        c = d;
        if (!e.isFinished())
        {
            post(new Runnable() {

                final HorizontalListView a;

                public final void run()
                {
                    a.requestLayout();
                }

            
            {
                a = HorizontalListView.this;
                super();
            }
            });
        }
          goto _L1
        i1 = 0;
          goto _L6
        i1 = 0;
          goto _L10
    }

    public volatile void setAdapter(Adapter adapter)
    {
        setAdapter((ListAdapter)adapter);
    }

    public void setAdapter(ListAdapter listadapter)
    {
        if (b != null)
        {
            b.unregisterDataSetObserver(p);
        }
        b = listadapter;
        b.registerDataSetObserver(p);
        c();
    }

    public void setOnItemClickListener(android.widget.AdapterView.OnItemClickListener onitemclicklistener)
    {
        m = onitemclicklistener;
    }

    public void setOnItemLongClickListener(android.widget.AdapterView.OnItemLongClickListener onitemlongclicklistener)
    {
        n = onitemlongclicklistener;
    }

    public void setOnItemSelectedListener(android.widget.AdapterView.OnItemSelectedListener onitemselectedlistener)
    {
        l = onitemselectedlistener;
    }

    public void setSelection(int i1)
    {
    }
}
