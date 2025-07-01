// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package android.support.v7.widget;

import aa;
import android.content.Context;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.database.DataSetObserver;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Handler;
import android.os.SystemClock;
import android.support.v7.internal.widget.AppCompatPopupWindow;
import android.support.v7.internal.widget.ListViewCompat;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.util.Log;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.widget.AbsListView;
import android.widget.AdapterView;
import android.widget.LinearLayout;
import android.widget.ListAdapter;
import android.widget.PopupWindow;
import ax;
import bp;
import co;
import cq;
import i;
import java.lang.reflect.Field;
import java.lang.reflect.Method;

public class ListPopupWindow
{
    static final class a extends ListViewCompat
    {

        private boolean g;
        private boolean h;
        private boolean i;
        private bp j;
        private co k;

        static boolean a(a a1, boolean flag)
        {
            a1.g = flag;
            return flag;
        }

        protected final boolean a()
        {
            return i || super.a();
        }

        public final boolean a(MotionEvent motionevent, int i1)
        {
            int j1;
            boolean flag;
            flag = true;
            j1 = ax.a(motionevent);
            j1;
            JVM INSTR tableswitch 1 3: default 36
        //                       1 137
        //                       2 140
        //                       3 129;
               goto _L1 _L2 _L3 _L4
_L1:
            flag = true;
            i1 = 0;
_L7:
            if (!flag || i1 != 0)
            {
                i = false;
                setPressed(false);
                drawableStateChanged();
                if (j != null)
                {
                    j.a();
                    j = null;
                }
            }
            if (!flag) goto _L6; else goto _L5
_L5:
            if (k == null)
            {
                k = new co(this);
            }
            k.a(true);
            k.onTouch(this, motionevent);
_L9:
            return flag;
_L4:
            flag = false;
            i1 = 0;
              goto _L7
_L2:
            flag = false;
_L3:
            int k1;
            int l1;
            k1 = motionevent.findPointerIndex(i1);
            if (k1 < 0)
            {
                flag = false;
                i1 = 0;
            } else
            {
label0:
                {
                    i1 = (int)motionevent.getX(k1);
                    l1 = (int)motionevent.getY(k1);
                    k1 = pointToPosition(i1, l1);
                    if (k1 != -1)
                    {
                        break label0;
                    }
                    i1 = 1;
                }
            }
              goto _L7
            View view = getChildAt(k1 - getFirstVisiblePosition());
            float f1 = i1;
            float f2 = l1;
            i = true;
            setPressed(true);
            layoutChildren();
            setSelection(k1);
            Drawable drawable = getSelector();
            float f3;
            float f4;
            Object obj;
            if (drawable != null && k1 != -1)
            {
                i1 = 1;
            } else
            {
                i1 = 0;
            }
            if (i1 != 0)
            {
                drawable.setVisible(false, false);
            }
            obj = super.a;
            ((Rect) (obj)).set(view.getLeft(), view.getTop(), view.getRight(), view.getBottom());
            obj.left = ((Rect) (obj)).left - super.b;
            obj.top = ((Rect) (obj)).top - super.c;
            obj.right = ((Rect) (obj)).right + super.d;
            obj.bottom = ((Rect) (obj)).bottom + super.e;
            flag = super.f.getBoolean(this);
            if (view.isEnabled() == flag)
            {
                break MISSING_BLOCK_LABEL_415;
            }
            obj = super.f;
            if (!flag)
            {
                flag = true;
            } else
            {
                flag = false;
            }
            ((Field) (obj)).set(this, Boolean.valueOf(flag));
            if (k1 != -1)
            {
                try
                {
                    refreshDrawableState();
                }
                catch (IllegalAccessException illegalaccessexception)
                {
                    illegalaccessexception.printStackTrace();
                }
            }
            if (i1 != 0)
            {
                obj = super.a;
                f3 = ((Rect) (obj)).exactCenterX();
                f4 = ((Rect) (obj)).exactCenterY();
                if (getVisibility() == 0)
                {
                    flag = true;
                } else
                {
                    flag = false;
                }
                drawable.setVisible(flag, false);
                i.a(drawable, f3, f4);
            }
            drawable = getSelector();
            if (drawable != null && k1 != -1)
            {
                i.a(drawable, f1, f2);
            }
            setSelectorEnabled(false);
            refreshDrawableState();
            if (j1 == 1)
            {
                performItemClick(view, k1, getItemIdAtPosition(k1));
            }
              goto _L1
_L6:
            if (k == null) goto _L9; else goto _L8
_L8:
            k.a(false);
            return flag;
              goto _L7
        }

        public final boolean hasFocus()
        {
            return h || super.hasFocus();
        }

        public final boolean hasWindowFocus()
        {
            return h || super.hasWindowFocus();
        }

        public final boolean isFocused()
        {
            return h || super.isFocused();
        }

        public final boolean isInTouchMode()
        {
            return h && g || super.isInTouchMode();
        }

        public a(Context context, boolean flag)
        {
            super(context, null, cv.a.dropDownListViewStyle);
            h = flag;
            setCacheColorHint(0);
        }
    }

    public static abstract class b
        implements android.view.View.OnTouchListener
    {

        private final float a;
        private final int b = ViewConfiguration.getTapTimeout();
        private final int c;
        private final View d;
        private Runnable e;
        private Runnable f;
        private boolean g;
        private boolean h;
        private int i;
        private final int j[] = new int[2];

        static View a(b b1)
        {
            return b1.d;
        }

        private boolean a(MotionEvent motionevent)
        {
            boolean flag1 = true;
            View view = d;
            Object obj = a();
            if (obj == null || !((ListPopupWindow) (obj)).b.isShowing())
            {
                flag1 = false;
            } else
            {
                obj = ListPopupWindow.a(((ListPopupWindow) (obj)));
                if (obj == null || !((a) (obj)).isShown())
                {
                    return false;
                }
                MotionEvent motionevent1 = MotionEvent.obtainNoHistory(motionevent);
                int ai1[] = j;
                view.getLocationOnScreen(ai1);
                motionevent1.offsetLocation(ai1[0], ai1[1]);
                int ai[] = j;
                ((View) (obj)).getLocationOnScreen(ai);
                motionevent1.offsetLocation(-ai[0], -ai[1]);
                boolean flag2 = ((a) (obj)).a(motionevent1, i);
                motionevent1.recycle();
                int i1 = ax.a(motionevent);
                boolean flag;
                if (i1 != 1 && i1 != 3)
                {
                    flag = true;
                } else
                {
                    flag = false;
                }
                if (!flag2 || !flag)
                {
                    return false;
                }
            }
            return flag1;
        }

        static void b(b b1)
        {
            b1.d();
            View view;
            for (view = b1.d; !view.isEnabled() || view.isLongClickable() || !b1.b();)
            {
                return;
            }

            view.getParent().requestDisallowInterceptTouchEvent(true);
            long l1 = SystemClock.uptimeMillis();
            MotionEvent motionevent = MotionEvent.obtain(l1, l1, 3, 0.0F, 0.0F, 0);
            view.onTouchEvent(motionevent);
            motionevent.recycle();
            b1.g = true;
            b1.h = true;
        }

        private void d()
        {
            if (f != null)
            {
                d.removeCallbacks(f);
            }
            if (e != null)
            {
                d.removeCallbacks(e);
            }
        }

        public abstract ListPopupWindow a();

        public boolean b()
        {
            ListPopupWindow listpopupwindow = a();
            if (listpopupwindow != null && !listpopupwindow.b.isShowing())
            {
                listpopupwindow.c();
            }
            return true;
        }

        public boolean c()
        {
            ListPopupWindow listpopupwindow = a();
            if (listpopupwindow != null && listpopupwindow.b.isShowing())
            {
                listpopupwindow.a();
            }
            return true;
        }

        public boolean onTouch(View view, MotionEvent motionevent)
        {
            boolean flag1;
            boolean flag2;
            flag1 = false;
            flag2 = g;
            if (!flag2) goto _L2; else goto _L1
_L1:
            boolean flag;
            if (h)
            {
                flag = a(motionevent);
            } else
            if (a(motionevent) || !c())
            {
                flag = true;
            } else
            {
                flag = false;
            }
_L9:
label0:
            {
                g = flag;
                if (!flag)
                {
                    flag = flag1;
                    if (!flag2)
                    {
                        break label0;
                    }
                }
                flag = true;
            }
            return flag;
_L2:
            view = d;
            if (!view.isEnabled()) goto _L4; else goto _L3
_L3:
            ax.a(motionevent);
            JVM INSTR tableswitch 0 3: default 128
        //                       0 184
        //                       1 393
        //                       2 269
        //                       3 393;
               goto _L5 _L6 _L7 _L8 _L7
_L5:
            break; /* Loop/switch isn't completed */
_L7:
            break MISSING_BLOCK_LABEL_393;
_L4:
            int i1 = 0;
_L12:
            float f1;
            float f2;
            float f3;
            if (i1 != 0 && b())
            {
                flag = true;
            } else
            {
                flag = false;
            }
            if (flag)
            {
                long l1 = SystemClock.uptimeMillis();
                view = MotionEvent.obtain(l1, l1, 3, 0.0F, 0.0F, 0);
                d.onTouchEvent(view);
                view.recycle();
            }
              goto _L9
_L6:
            i = motionevent.getPointerId(0);
            h = false;
            if (e == null)
            {
                e = new a(this, (byte)0);
            }
            view.postDelayed(e, b);
            if (f == null)
            {
                f = new b(this, (byte)0);
            }
            view.postDelayed(f, c);
              goto _L4
_L8:
            i1 = motionevent.findPointerIndex(i);
            if (i1 < 0) goto _L4; else goto _L10
_L10:
            f1 = motionevent.getX(i1);
            f2 = motionevent.getY(i1);
            f3 = a;
            if (f1 >= -f3 && f2 >= -f3 && f1 < (float)(view.getRight() - view.getLeft()) + f3 && f2 < (float)(view.getBottom() - view.getTop()) + f3)
            {
                i1 = 1;
            } else
            {
                i1 = 0;
            }
            if (i1 != 0) goto _L4; else goto _L11
_L11:
            d();
            view.getParent().requestDisallowInterceptTouchEvent(true);
            i1 = 1;
              goto _L12
            d();
              goto _L4
        }

        public b(View view)
        {
            d = view;
            a = ViewConfiguration.get(view.getContext()).getScaledTouchSlop();
            c = (b + ViewConfiguration.getLongPressTimeout()) / 2;
        }
    }

    final class b.a
        implements Runnable
    {

        final b a;

        public final void run()
        {
            b.a(a).getParent().requestDisallowInterceptTouchEvent(true);
        }

        private b.a(b b1)
        {
            a = b1;
            super();
        }

        b.a(b b1, byte byte0)
        {
            this(b1);
        }
    }

    final class b.b
        implements Runnable
    {

        final b a;

        public final void run()
        {
            b.b(a);
        }

        private b.b(b b1)
        {
            a = b1;
            super();
        }

        b.b(b b1, byte byte0)
        {
            this(b1);
        }
    }

    final class c
        implements Runnable
    {

        final ListPopupWindow a;

        public final void run()
        {
            a.e();
        }

        private c()
        {
            a = ListPopupWindow.this;
            super();
        }

        c(byte byte0)
        {
            this();
        }
    }

    final class d extends DataSetObserver
    {

        final ListPopupWindow a;

        public final void onChanged()
        {
            if (a.b.isShowing())
            {
                a.c();
            }
        }

        public final void onInvalidated()
        {
            a.a();
        }

        private d()
        {
            a = ListPopupWindow.this;
            super();
        }

        d(byte byte0)
        {
            this();
        }
    }

    final class e
        implements android.widget.AbsListView.OnScrollListener
    {

        final ListPopupWindow a;

        public final void onScroll(AbsListView abslistview, int i1, int j1, int k1)
        {
        }

        public final void onScrollStateChanged(AbsListView abslistview, int i1)
        {
            if (i1 == 1 && !a.f() && ListPopupWindow.b(a).getContentView() != null)
            {
                ListPopupWindow.d(a).removeCallbacks(ListPopupWindow.c(a));
                ListPopupWindow.c(a).run();
            }
        }

        private e()
        {
            a = ListPopupWindow.this;
            super();
        }

        e(byte byte0)
        {
            this();
        }
    }

    final class f
        implements android.view.View.OnTouchListener
    {

        final ListPopupWindow a;

        public final boolean onTouch(View view, MotionEvent motionevent)
        {
            int i1;
            int j1;
            int k1;
            i1 = motionevent.getAction();
            j1 = (int)motionevent.getX();
            k1 = (int)motionevent.getY();
            if (i1 != 0 || ListPopupWindow.b(a) == null || !ListPopupWindow.b(a).isShowing() || j1 < 0 || j1 >= ListPopupWindow.b(a).getWidth() || k1 < 0 || k1 >= ListPopupWindow.b(a).getHeight()) goto _L2; else goto _L1
_L1:
            ListPopupWindow.d(a).postDelayed(ListPopupWindow.c(a), 250L);
_L4:
            return false;
_L2:
            if (i1 == 1)
            {
                ListPopupWindow.d(a).removeCallbacks(ListPopupWindow.c(a));
            }
            if (true) goto _L4; else goto _L3
_L3:
        }

        private f()
        {
            a = ListPopupWindow.this;
            super();
        }

        f(byte byte0)
        {
            this();
        }
    }

    final class g
        implements Runnable
    {

        final ListPopupWindow a;

        public final void run()
        {
            if (ListPopupWindow.a(a) != null && ListPopupWindow.a(a).getCount() > ListPopupWindow.a(a).getChildCount() && ListPopupWindow.a(a).getChildCount() <= a.e)
            {
                ListPopupWindow.b(a).setInputMethodMode(2);
                a.c();
            }
        }

        private g()
        {
            a = ListPopupWindow.this;
            super();
        }

        g(byte byte0)
        {
            this();
        }
    }


    private static Method a;
    private Handler A;
    private Rect B;
    private boolean C;
    private int D;
    public PopupWindow b;
    public a c;
    public int d;
    int e;
    protected int f;
    public View g;
    public android.widget.AdapterView.OnItemClickListener h;
    private Context i;
    private ListAdapter j;
    private int k;
    private int l;
    private int m;
    private int n;
    private boolean o;
    private boolean p;
    private boolean q;
    private View r;
    private DataSetObserver s;
    private Drawable t;
    private android.widget.AdapterView.OnItemSelectedListener u;
    private final g v;
    private final f w;
    private final e x;
    private final c y;
    private Runnable z;

    public ListPopupWindow(Context context)
    {
        this(context, null, cv.a.listPopupWindowStyle);
    }

    public ListPopupWindow(Context context, AttributeSet attributeset)
    {
        this(context, attributeset, cv.a.listPopupWindowStyle);
    }

    public ListPopupWindow(Context context, AttributeSet attributeset, int i1)
    {
        this(context, attributeset, i1, 0);
    }

    public ListPopupWindow(Context context, AttributeSet attributeset, int i1, int j1)
    {
        k = -2;
        l = -2;
        d = 0;
        p = false;
        q = false;
        e = 0x7fffffff;
        f = 0;
        v = new g((byte)0);
        w = new f((byte)0);
        x = new e((byte)0);
        y = new c((byte)0);
        A = new Handler();
        B = new Rect();
        i = context;
        TypedArray typedarray = context.obtainStyledAttributes(attributeset, cv.k.ListPopupWindow, i1, j1);
        m = typedarray.getDimensionPixelOffset(cv.k.ListPopupWindow_android_dropDownHorizontalOffset, 0);
        n = typedarray.getDimensionPixelOffset(cv.k.ListPopupWindow_android_dropDownVerticalOffset, 0);
        if (n != 0)
        {
            o = true;
        }
        typedarray.recycle();
        b = new AppCompatPopupWindow(context, attributeset, i1);
        b.setInputMethodMode(1);
        D = aa.a(i.getResources().getConfiguration().locale);
    }

    static a a(ListPopupWindow listpopupwindow)
    {
        return listpopupwindow.c;
    }

    static PopupWindow b(ListPopupWindow listpopupwindow)
    {
        return listpopupwindow.b;
    }

    static g c(ListPopupWindow listpopupwindow)
    {
        return listpopupwindow.v;
    }

    static Handler d(ListPopupWindow listpopupwindow)
    {
        return listpopupwindow.A;
    }

    public final void a()
    {
        b.dismiss();
        if (r != null)
        {
            ViewParent viewparent = r.getParent();
            if (viewparent instanceof ViewGroup)
            {
                ((ViewGroup)viewparent).removeView(r);
            }
        }
        b.setContentView(null);
        c = null;
        A.removeCallbacks(v);
    }

    public final void a(int i1)
    {
        Drawable drawable = b.getBackground();
        if (drawable != null)
        {
            drawable.getPadding(B);
            l = B.left + B.right + i1;
            return;
        } else
        {
            l = i1;
            return;
        }
    }

    public void a(ListAdapter listadapter)
    {
        if (s != null) goto _L2; else goto _L1
_L1:
        s = new d((byte)0);
_L4:
        j = listadapter;
        if (j != null)
        {
            listadapter.registerDataSetObserver(s);
        }
        if (c != null)
        {
            c.setAdapter(j);
        }
        return;
_L2:
        if (j != null)
        {
            j.unregisterDataSetObserver(s);
        }
        if (true) goto _L4; else goto _L3
_L3:
    }

    public final void a(android.widget.PopupWindow.OnDismissListener ondismisslistener)
    {
        b.setOnDismissListener(ondismisslistener);
    }

    public final boolean b()
    {
        return b.isShowing();
    }

    public final void c()
    {
        byte byte2;
        boolean flag1;
        boolean flag2;
        flag2 = true;
        flag1 = true;
        byte2 = -1;
        if (c != null) goto _L2; else goto _L1
_L1:
        Object obj;
        Object obj1;
        View view;
        android.widget.LinearLayout.LayoutParams layoutparams;
        int i1;
        int l1;
        int i2;
        boolean flag;
        obj1 = i;
        z = new Runnable() {

            final ListPopupWindow a;

            public final void run()
            {
                View view1 = a.g;
                if (view1 != null && view1.getWindowToken() != null)
                {
                    a.c();
                }
            }

            
            {
                a = ListPopupWindow.this;
                super();
            }
        };
        int j1;
        if (!C)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        c = new a(((Context) (obj1)), flag);
        if (t != null)
        {
            c.setSelector(t);
        }
        c.setAdapter(j);
        c.setOnItemClickListener(h);
        c.setFocusable(true);
        c.setFocusableInTouchMode(true);
        c.setOnItemSelectedListener(new android.widget.AdapterView.OnItemSelectedListener() {

            final ListPopupWindow a;

            public final void onItemSelected(AdapterView adapterview, View view1, int j2, long l2)
            {
                if (j2 != -1)
                {
                    adapterview = ListPopupWindow.a(a);
                    if (adapterview != null)
                    {
                        a.a(adapterview, false);
                    }
                }
            }

            public final void onNothingSelected(AdapterView adapterview)
            {
            }

            
            {
                a = ListPopupWindow.this;
                super();
            }
        });
        c.setOnScrollListener(x);
        if (u != null)
        {
            c.setOnItemSelectedListener(u);
        }
        obj = c;
        view = r;
        if (view == null)
        {
            break MISSING_BLOCK_LABEL_1188;
        }
        obj1 = new LinearLayout(((Context) (obj1)));
        ((LinearLayout) (obj1)).setOrientation(1);
        layoutparams = new android.widget.LinearLayout.LayoutParams(-1, 0, 1.0F);
        f;
        JVM INSTR tableswitch 0 1: default 224
    //                   0 562
    //                   1 547;
           goto _L3 _L4 _L5
_L3:
        Log.e("ListPopupWindow", (new StringBuilder("Invalid hint position ")).append(f).toString());
_L10:
        view.measure(android.view.View.MeasureSpec.makeMeasureSpec(l, 0x80000000), 0);
        obj = (android.widget.LinearLayout.LayoutParams)view.getLayoutParams();
        i1 = view.getMeasuredHeight();
        j1 = ((android.widget.LinearLayout.LayoutParams) (obj)).topMargin;
        i1 = ((android.widget.LinearLayout.LayoutParams) (obj)).bottomMargin + (i1 + j1);
        obj = obj1;
_L19:
        b.setContentView(((View) (obj)));
_L11:
        obj = b.getBackground();
        if (obj != null)
        {
            ((Drawable) (obj)).getPadding(B);
            j1 = B.top + B.bottom;
            l1 = j1;
            if (!o)
            {
                n = -B.top;
                l1 = j1;
            }
        } else
        {
            B.setEmpty();
            l1 = 0;
        }
        b.getInputMethodMode();
        i2 = b.getMaxAvailableHeight(g, n);
        if (!p && k != -1) goto _L7; else goto _L6
_L6:
        i1 = i2 + l1;
_L15:
        flag = f();
        if (!b.isShowing()) goto _L9; else goto _L8
_L8:
        int k1;
        if (l == -1)
        {
            k1 = -1;
        } else
        if (l == -2)
        {
            k1 = g.getWidth();
        } else
        {
            k1 = l;
        }
        if (k == -1)
        {
            if (!flag)
            {
                i1 = -1;
            }
            if (flag)
            {
                obj = b;
                if (l == -1)
                {
                    l1 = byte2;
                } else
                {
                    l1 = 0;
                }
                ((PopupWindow) (obj)).setWindowLayoutMode(l1, 0);
            } else
            {
                obj = b;
                byte byte1;
                if (l == -1)
                {
                    byte1 = -1;
                } else
                {
                    byte1 = 0;
                }
                ((PopupWindow) (obj)).setWindowLayoutMode(byte1, -1);
            }
        } else
        if (k != -2)
        {
            i1 = k;
        }
        obj = b;
        if (!q && !p)
        {
            flag = flag1;
        } else
        {
            flag = false;
        }
        ((PopupWindow) (obj)).setOutsideTouchable(flag);
        b.update(g, m, n, k1, i1);
_L18:
        return;
_L5:
        ((LinearLayout) (obj1)).addView(((View) (obj)), layoutparams);
        ((LinearLayout) (obj1)).addView(view);
          goto _L10
_L4:
        ((LinearLayout) (obj1)).addView(view);
        ((LinearLayout) (obj1)).addView(((View) (obj)), layoutparams);
          goto _L10
_L2:
        b.getContentView();
        obj = r;
        Exception exception;
        byte byte0;
        if (obj != null)
        {
            obj1 = (android.widget.LinearLayout.LayoutParams)((View) (obj)).getLayoutParams();
            i1 = ((View) (obj)).getMeasuredHeight();
            k1 = ((android.widget.LinearLayout.LayoutParams) (obj1)).topMargin;
            i1 = ((android.widget.LinearLayout.LayoutParams) (obj1)).bottomMargin + (i1 + k1);
        } else
        {
            i1 = 0;
        }
          goto _L11
_L7:
        l;
        JVM INSTR tableswitch -2 -1: default 668
    //                   -2 722
    //                   -1 762;
           goto _L12 _L13 _L14
_L14:
        break MISSING_BLOCK_LABEL_762;
_L12:
        k1 = android.view.View.MeasureSpec.makeMeasureSpec(l, 0x40000000);
_L16:
        i2 = c.a(k1, i2 - i1);
        k1 = i1;
        if (i2 > 0)
        {
            k1 = i1 + l1;
        }
        i1 = k1 + i2;
          goto _L15
_L13:
        k1 = android.view.View.MeasureSpec.makeMeasureSpec(i.getResources().getDisplayMetrics().widthPixels - (B.left + B.right), 0x80000000);
          goto _L16
        k1 = android.view.View.MeasureSpec.makeMeasureSpec(i.getResources().getDisplayMetrics().widthPixels - (B.left + B.right), 0x40000000);
          goto _L16
_L9:
        if (l == -1)
        {
            byte0 = -1;
        } else
        if (l == -2)
        {
            b.setWidth(g.getWidth());
            byte0 = 0;
        } else
        {
            b.setWidth(l);
            byte0 = 0;
        }
        if (k == -1)
        {
            i1 = -1;
        } else
        if (k == -2)
        {
            b.setHeight(i1);
            i1 = 0;
        } else
        {
            b.setHeight(k);
            i1 = 0;
        }
        b.setWindowLayoutMode(byte0, i1);
        if (a != null)
        {
            try
            {
                a.invoke(b, new Object[] {
                    Boolean.valueOf(true)
                });
            }
            // Misplaced declaration of an exception variable
            catch (Exception exception)
            {
                Log.i("ListPopupWindow", "Could not call setClipToScreenEnabled() on PopupWindow. Oh well.");
            }
        }
        obj = b;
        if (!q && !p)
        {
            flag = flag2;
        } else
        {
            flag = false;
        }
        ((PopupWindow) (obj)).setOutsideTouchable(flag);
        b.setTouchInterceptor(w);
        cq.a(b, g, m, n, d);
        c.setSelection(-1);
        if (!C || c.isInTouchMode())
        {
            e();
        }
        if (C) goto _L18; else goto _L17
_L17:
        A.post(y);
        return;
        i1 = 0;
          goto _L19
    }

    public final void d()
    {
        C = true;
        b.setFocusable(true);
    }

    public final void e()
    {
        a a1 = c;
        if (a1 != null)
        {
            a.a(a1, true);
            a1.requestLayout();
        }
    }

    public final boolean f()
    {
        return b.getInputMethodMode() == 2;
    }

    static 
    {
        try
        {
            a = android/widget/PopupWindow.getDeclaredMethod("setClipToScreenEnabled", new Class[] {
                Boolean.TYPE
            });
        }
        catch (NoSuchMethodException nosuchmethodexception)
        {
            Log.i("ListPopupWindow", "Could not find method setClipToScreenEnabled() on PopupWindow. Oh well.");
        }
    }
}
