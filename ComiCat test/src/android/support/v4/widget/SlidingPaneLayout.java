// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package android.support.v4.widget;

import al;
import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.PorterDuffColorFilter;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.util.Log;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityEvent;
import ax;
import bh;
import bz;
import cu;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.util.ArrayList;

public class SlidingPaneLayout extends ViewGroup
{
    public static class LayoutParams extends android.view.ViewGroup.MarginLayoutParams
    {

        private static final int e[] = {
            0x1010181
        };
        public float a;
        boolean b;
        boolean c;
        Paint d;


        public LayoutParams()
        {
            super(-1, -1);
            a = 0.0F;
        }

        public LayoutParams(Context context, AttributeSet attributeset)
        {
            super(context, attributeset);
            a = 0.0F;
            context = context.obtainStyledAttributes(attributeset, e);
            a = context.getFloat(0, 0.0F);
            context.recycle();
        }

        public LayoutParams(android.view.ViewGroup.LayoutParams layoutparams)
        {
            super(layoutparams);
            a = 0.0F;
        }

        public LayoutParams(android.view.ViewGroup.MarginLayoutParams marginlayoutparams)
        {
            super(marginlayoutparams);
            a = 0.0F;
        }
    }

    static class SavedState extends android.view.View.BaseSavedState
    {

        public static final android.os.Parcelable.Creator CREATOR = new android.os.Parcelable.Creator() {

            public final Object createFromParcel(Parcel parcel)
            {
                return new SavedState(parcel, (byte)0);
            }

            public final volatile Object[] newArray(int i1)
            {
                return new SavedState[i1];
            }

        };
        boolean a;

        public void writeToParcel(Parcel parcel, int i1)
        {
            super.writeToParcel(parcel, i1);
            if (a)
            {
                i1 = 1;
            } else
            {
                i1 = 0;
            }
            parcel.writeInt(i1);
        }


        private SavedState(Parcel parcel)
        {
            super(parcel);
            boolean flag;
            if (parcel.readInt() != 0)
            {
                flag = true;
            } else
            {
                flag = false;
            }
            a = flag;
        }

        SavedState(Parcel parcel, byte byte0)
        {
            this(parcel);
        }

        SavedState(Parcelable parcelable)
        {
            super(parcelable);
        }
    }

    final class a extends al
    {

        final SlidingPaneLayout a;
        private final Rect b = new Rect();

        private boolean a(View view)
        {
            return a.b(view);
        }

        public final void onInitializeAccessibilityEvent(View view, AccessibilityEvent accessibilityevent)
        {
            super.onInitializeAccessibilityEvent(view, accessibilityevent);
            accessibilityevent.setClassName(android/support/v4/widget/SlidingPaneLayout.getName());
        }

        public final void onInitializeAccessibilityNodeInfo(View view, bz bz1)
        {
            bz bz2 = bz.a(bz1);
            super.onInitializeAccessibilityNodeInfo(view, bz2);
            Rect rect = b;
            bz2.a(rect);
            bz1.b(rect);
            bz2.c(rect);
            bz1.d(rect);
            bz1.c(bz2.d());
            bz1.a(bz2.j());
            bz1.b(bz2.k());
            bz1.c(bz2.l());
            bz1.h(bz2.i());
            bz1.f(bz2.g());
            bz1.a(bz2.b());
            bz1.b(bz2.c());
            bz1.d(bz2.e());
            bz1.e(bz2.f());
            bz1.g(bz2.h());
            bz1.a(bz2.a());
            int i1 = bz.a.r(bz2.b);
            bz.a.b(bz1.b, i1);
            bz2.m();
            bz1.b(android/support/v4/widget/SlidingPaneLayout.getName());
            bz1.a(view);
            view = bh.i(view);
            if (view instanceof View)
            {
                bz1.c((View)view);
            }
            int k1 = a.getChildCount();
            for (int j1 = 0; j1 < k1; j1++)
            {
                view = a.getChildAt(j1);
                if (!a(view) && view.getVisibility() == 0)
                {
                    bh.c(view, 1);
                    bz1.b(view);
                }
            }

        }

        public final boolean onRequestSendAccessibilityEvent(ViewGroup viewgroup, View view, AccessibilityEvent accessibilityevent)
        {
            if (!a(view))
            {
                return super.onRequestSendAccessibilityEvent(viewgroup, view, accessibilityevent);
            } else
            {
                return false;
            }
        }

        a()
        {
            a = SlidingPaneLayout.this;
            super();
        }
    }

    final class b
        implements Runnable
    {

        final View a;
        final SlidingPaneLayout b;

        public final void run()
        {
            if (a.getParent() == b)
            {
                bh.a(a, 0, null);
                SlidingPaneLayout.a(b, a);
            }
            SlidingPaneLayout.g(b).remove(this);
        }

        b(View view)
        {
            b = SlidingPaneLayout.this;
            super();
            a = view;
        }
    }

    final class c extends cu.a
    {

        final SlidingPaneLayout a;

        public final int clampViewPositionHorizontal(View view, int i1, int j1)
        {
            view = (LayoutParams)SlidingPaneLayout.d(a).getLayoutParams();
            if (SlidingPaneLayout.e(a))
            {
                j1 = a.getWidth();
                int k1 = a.getPaddingRight();
                j1 -= ((LayoutParams) (view)).rightMargin + k1 + SlidingPaneLayout.d(a).getWidth();
                k1 = SlidingPaneLayout.f(a);
                return Math.max(Math.min(i1, j1), j1 - k1);
            } else
            {
                j1 = a.getPaddingLeft();
                j1 = ((LayoutParams) (view)).leftMargin + j1;
                int l1 = SlidingPaneLayout.f(a);
                return Math.min(Math.max(i1, j1), l1 + j1);
            }
        }

        public final int clampViewPositionVertical(View view, int i1, int j1)
        {
            return view.getTop();
        }

        public final int getViewHorizontalDragRange(View view)
        {
            return SlidingPaneLayout.f(a);
        }

        public final void onEdgeDragStarted(int i1, int j1)
        {
            SlidingPaneLayout.b(a).a(SlidingPaneLayout.d(a), j1);
        }

        public final void onViewCaptured(View view, int i1)
        {
            a.a();
        }

        public final void onViewDragStateChanged(int i1)
        {
label0:
            {
                if (SlidingPaneLayout.b(a).a == 0)
                {
                    if (SlidingPaneLayout.c(a) != 0.0F)
                    {
                        break label0;
                    }
                    a.a(SlidingPaneLayout.d(a));
                    SlidingPaneLayout slidingpanelayout = a;
                    SlidingPaneLayout.d(a);
                    slidingpanelayout.sendAccessibilityEvent(32);
                    SlidingPaneLayout.a(a, false);
                }
                return;
            }
            SlidingPaneLayout slidingpanelayout1 = a;
            SlidingPaneLayout.d(a);
            slidingpanelayout1.sendAccessibilityEvent(32);
            SlidingPaneLayout.a(a, true);
        }

        public final void onViewPositionChanged(View view, int i1, int j1, int k1, int l1)
        {
            SlidingPaneLayout.a(a, i1);
            a.invalidate();
        }

        public final void onViewReleased(View view, float f1, float f2)
        {
            LayoutParams layoutparams = (LayoutParams)view.getLayoutParams();
            if (!SlidingPaneLayout.e(a)) goto _L2; else goto _L1
_L1:
            int i1;
label0:
            {
                i1 = a.getPaddingRight();
                int j1 = layoutparams.rightMargin + i1;
                if (f1 >= 0.0F)
                {
                    i1 = j1;
                    if (f1 != 0.0F)
                    {
                        break label0;
                    }
                    i1 = j1;
                    if (SlidingPaneLayout.c(a) <= 0.5F)
                    {
                        break label0;
                    }
                }
                i1 = j1 + SlidingPaneLayout.f(a);
            }
            int k1 = SlidingPaneLayout.d(a).getWidth();
            i1 = a.getWidth() - i1 - k1;
_L4:
            SlidingPaneLayout.b(a).a(i1, view.getTop());
            a.invalidate();
            return;
_L2:
            i1 = a.getPaddingLeft();
            int l1 = layoutparams.leftMargin + i1;
            if (f1 <= 0.0F)
            {
                i1 = l1;
                if (f1 != 0.0F)
                {
                    continue; /* Loop/switch isn't completed */
                }
                i1 = l1;
                if (SlidingPaneLayout.c(a) <= 0.5F)
                {
                    continue; /* Loop/switch isn't completed */
                }
            }
            i1 = l1 + SlidingPaneLayout.f(a);
            if (true) goto _L4; else goto _L3
_L3:
        }

        public final boolean tryCaptureView(View view, int i1)
        {
            if (SlidingPaneLayout.a(a))
            {
                return false;
            } else
            {
                return ((LayoutParams)view.getLayoutParams()).b;
            }
        }

        private c()
        {
            a = SlidingPaneLayout.this;
            super();
        }

        c(byte byte0)
        {
            this();
        }
    }

    public static interface d
    {
    }

    static interface e
    {

        public abstract void a(SlidingPaneLayout slidingpanelayout, View view);
    }

    static class f
        implements e
    {

        public void a(SlidingPaneLayout slidingpanelayout, View view)
        {
            bh.a(slidingpanelayout, view.getLeft(), view.getTop(), view.getRight(), view.getBottom());
        }

        f()
        {
        }
    }

    static final class g extends f
    {

        private Method a;
        private Field b;

        public final void a(SlidingPaneLayout slidingpanelayout, View view)
        {
            if (a != null && b != null)
            {
                try
                {
                    b.setBoolean(view, true);
                    a.invoke(view, null);
                }
                catch (Exception exception)
                {
                    Log.e("SlidingPaneLayout", "Error refreshing display list state", exception);
                }
                super.a(slidingpanelayout, view);
                return;
            } else
            {
                view.invalidate();
                return;
            }
        }

        g()
        {
            try
            {
                a = android/view/View.getDeclaredMethod("getDisplayList", null);
            }
            catch (NoSuchMethodException nosuchmethodexception)
            {
                Log.e("SlidingPaneLayout", "Couldn't fetch getDisplayList method; dimming won't work right.", nosuchmethodexception);
            }
            try
            {
                b = android/view/View.getDeclaredField("mRecreateDisplayList");
                b.setAccessible(true);
                return;
            }
            catch (NoSuchFieldException nosuchfieldexception)
            {
                Log.e("SlidingPaneLayout", "Couldn't fetch mRecreateDisplayList field; dimming will be slow.", nosuchfieldexception);
            }
        }
    }

    static final class h extends f
    {

        public final void a(SlidingPaneLayout slidingpanelayout, View view)
        {
            bh.a(view, ((LayoutParams)view.getLayoutParams()).d);
        }

        h()
        {
        }
    }


    static final e a;
    private int b;
    private int c;
    private Drawable d;
    private Drawable e;
    private final int f;
    private boolean g;
    private View h;
    private float i;
    private float j;
    private int k;
    private boolean l;
    private int m;
    private float n;
    private float o;
    private d p;
    private final cu q;
    private boolean r;
    private boolean s;
    private final Rect t;
    private final ArrayList u;

    public SlidingPaneLayout(Context context)
    {
        this(context, null);
    }

    public SlidingPaneLayout(Context context, AttributeSet attributeset)
    {
        this(context, attributeset, 0);
    }

    public SlidingPaneLayout(Context context, AttributeSet attributeset, int i1)
    {
        super(context, attributeset, i1);
        b = 0xcccccccc;
        s = true;
        t = new Rect();
        u = new ArrayList();
        float f1 = context.getResources().getDisplayMetrics().density;
        f = (int)(32F * f1 + 0.5F);
        ViewConfiguration.get(context);
        setWillNotDraw(false);
        bh.a(this, new a());
        bh.c(this, 1);
        q = cu.a(this, 0.5F, new c((byte)0));
        q.h = f1 * 400F;
    }

    static void a(SlidingPaneLayout slidingpanelayout, int i1)
    {
        if (slidingpanelayout.h == null)
        {
            slidingpanelayout.i = 0.0F;
        } else
        {
            boolean flag = slidingpanelayout.c();
            LayoutParams layoutparams = (LayoutParams)slidingpanelayout.h.getLayoutParams();
            int k1 = slidingpanelayout.h.getWidth();
            int j1 = i1;
            if (flag)
            {
                j1 = slidingpanelayout.getWidth() - i1 - k1;
            }
            if (flag)
            {
                i1 = slidingpanelayout.getPaddingRight();
            } else
            {
                i1 = slidingpanelayout.getPaddingLeft();
            }
            if (flag)
            {
                k1 = layoutparams.rightMargin;
            } else
            {
                k1 = layoutparams.leftMargin;
            }
            slidingpanelayout.i = (float)(j1 - (k1 + i1)) / (float)slidingpanelayout.k;
            if (slidingpanelayout.m != 0)
            {
                slidingpanelayout.b(slidingpanelayout.i);
            }
            if (layoutparams.c)
            {
                slidingpanelayout.a(slidingpanelayout.h, slidingpanelayout.i, slidingpanelayout.b);
                return;
            }
        }
    }

    static void a(SlidingPaneLayout slidingpanelayout, View view)
    {
        slidingpanelayout.c(view);
    }

    private void a(View view, float f1, int i1)
    {
        LayoutParams layoutparams = (LayoutParams)view.getLayoutParams();
        if (f1 > 0.0F && i1 != 0)
        {
            int j1 = (int)((float)((0xff000000 & i1) >>> 24) * f1);
            if (layoutparams.d == null)
            {
                layoutparams.d = new Paint();
            }
            layoutparams.d.setColorFilter(new PorterDuffColorFilter(j1 << 24 | 0xffffff & i1, android.graphics.PorterDuff.Mode.SRC_OVER));
            if (bh.g(view) != 2)
            {
                bh.a(view, 2, layoutparams.d);
            }
            c(view);
        } else
        if (bh.g(view) != 0)
        {
            if (layoutparams.d != null)
            {
                layoutparams.d.setColorFilter(null);
            }
            view = new b(view);
            u.add(view);
            bh.a(this, view);
            return;
        }
    }

    private boolean a(float f1)
    {
        if (!g)
        {
            return false;
        }
        boolean flag = c();
        LayoutParams layoutparams = (LayoutParams)h.getLayoutParams();
        int i1;
        if (flag)
        {
            i1 = getPaddingRight();
            int j1 = layoutparams.rightMargin;
            int k1 = h.getWidth();
            i1 = (int)((float)getWidth() - ((float)(j1 + i1) + (float)k * f1 + (float)k1));
        } else
        {
            i1 = getPaddingLeft();
            i1 = (int)((float)(layoutparams.leftMargin + i1) + (float)k * f1);
        }
        if (q.a(h, i1, h.getTop()))
        {
            a();
            bh.d(this);
            return true;
        } else
        {
            return false;
        }
    }

    static boolean a(SlidingPaneLayout slidingpanelayout)
    {
        return slidingpanelayout.l;
    }

    static boolean a(SlidingPaneLayout slidingpanelayout, boolean flag)
    {
        slidingpanelayout.r = flag;
        return flag;
    }

    static cu b(SlidingPaneLayout slidingpanelayout)
    {
        return slidingpanelayout.q;
    }

    private void b(float f1)
    {
        int i1;
        boolean flag = c();
        Object obj = (LayoutParams)h.getLayoutParams();
        if (!((LayoutParams) (obj)).c)
        {
            break MISSING_BLOCK_LABEL_174;
        }
        int j1;
        int k1;
        int l1;
        int i2;
        if (flag)
        {
            i1 = ((LayoutParams) (obj)).rightMargin;
        } else
        {
            i1 = ((LayoutParams) (obj)).leftMargin;
        }
        if (i1 > 0)
        {
            break MISSING_BLOCK_LABEL_174;
        }
        i1 = 1;
_L1:
        i2 = getChildCount();
        j1 = 0;
        while (j1 < i2) 
        {
            obj = getChildAt(j1);
            if (obj != h)
            {
                k1 = (int)((1.0F - j) * (float)m);
                j = f1;
                l1 = k1 - (int)((1.0F - f1) * (float)m);
                k1 = l1;
                if (flag)
                {
                    k1 = -l1;
                }
                ((View) (obj)).offsetLeftAndRight(k1);
                if (i1 != 0)
                {
                    float f2;
                    if (flag)
                    {
                        f2 = j - 1.0F;
                    } else
                    {
                        f2 = 1.0F - j;
                    }
                    a(((View) (obj)), f2, c);
                }
            }
            j1++;
        }
        break MISSING_BLOCK_LABEL_190;
        i1 = 0;
          goto _L1
    }

    private boolean b()
    {
        boolean flag = false;
        if (s || a(0.0F))
        {
            r = false;
            flag = true;
        }
        return flag;
    }

    static float c(SlidingPaneLayout slidingpanelayout)
    {
        return slidingpanelayout.i;
    }

    private void c(View view)
    {
        a.a(this, view);
    }

    private boolean c()
    {
        return bh.h(this) == 1;
    }

    static View d(SlidingPaneLayout slidingpanelayout)
    {
        return slidingpanelayout.h;
    }

    static boolean e(SlidingPaneLayout slidingpanelayout)
    {
        return slidingpanelayout.c();
    }

    static int f(SlidingPaneLayout slidingpanelayout)
    {
        return slidingpanelayout.k;
    }

    static ArrayList g(SlidingPaneLayout slidingpanelayout)
    {
        return slidingpanelayout.u;
    }

    final void a()
    {
        int j1 = getChildCount();
        for (int i1 = 0; i1 < j1; i1++)
        {
            View view = getChildAt(i1);
            if (view.getVisibility() == 4)
            {
                view.setVisibility(0);
            }
        }

    }

    final void a(View view)
    {
        int i1;
        int j1;
        int k1;
        int l1;
        int i2;
        int j2;
        boolean flag = c();
        View view1;
        int k2;
        int i3;
        int j3;
        int k3;
        int l3;
        int i4;
        int j4;
        int k4;
        if (flag)
        {
            i1 = getWidth() - getPaddingRight();
        } else
        {
            i1 = getPaddingLeft();
        }
        if (flag)
        {
            j1 = getPaddingLeft();
        } else
        {
            j1 = getWidth() - getPaddingRight();
        }
        i3 = getPaddingTop();
        j3 = getHeight();
        k3 = getPaddingBottom();
        if (view == null) goto _L2; else goto _L1
_L1:
        if (!bh.j(view)) goto _L4; else goto _L3
_L3:
        k1 = 1;
_L6:
        if (k1 != 0)
        {
            j2 = view.getLeft();
            i2 = view.getRight();
            l1 = view.getTop();
            k1 = view.getBottom();
            break MISSING_BLOCK_LABEL_93;
        }
          goto _L2
_L4:
        if (android.os.Build.VERSION.SDK_INT < 18)
        {
            Drawable drawable = view.getBackground();
            if (drawable != null)
            {
                if (drawable.getOpacity() == -1)
                {
                    k1 = 1;
                } else
                {
                    k1 = 0;
                }
                continue; /* Loop/switch isn't completed */
            }
        }
        k1 = 0;
        continue; /* Loop/switch isn't completed */
_L2:
        k1 = 0;
        l1 = 0;
        i2 = 0;
        j2 = 0;
        l3 = getChildCount();
        k2 = 0;
        do
        {
            if (k2 >= l3)
            {
                break;
            }
            view1 = getChildAt(k2);
            if (view1 == view)
            {
                break;
            }
            int l2;
            if (flag)
            {
                l2 = j1;
            } else
            {
                l2 = i1;
            }
            i4 = Math.max(l2, view1.getLeft());
            j4 = Math.max(i3, view1.getTop());
            if (flag)
            {
                l2 = i1;
            } else
            {
                l2 = j1;
            }
            l2 = Math.min(l2, view1.getRight());
            k4 = Math.min(j3 - k3, view1.getBottom());
            if (i4 >= j2 && j4 >= l1 && l2 <= i2 && k4 <= k1)
            {
                l2 = 4;
            } else
            {
                l2 = 0;
            }
            view1.setVisibility(l2);
            k2++;
        } while (true);
        return;
        if (true) goto _L6; else goto _L5
_L5:
    }

    final boolean b(View view)
    {
        if (view == null)
        {
            return false;
        }
        view = (LayoutParams)view.getLayoutParams();
        return g && ((LayoutParams) (view)).c && i > 0.0F;
    }

    protected boolean checkLayoutParams(android.view.ViewGroup.LayoutParams layoutparams)
    {
        return (layoutparams instanceof LayoutParams) && super.checkLayoutParams(layoutparams);
    }

    public void computeScroll()
    {
label0:
        {
            if (q.c())
            {
                if (g)
                {
                    break label0;
                }
                q.b();
            }
            return;
        }
        bh.d(this);
    }

    public void draw(Canvas canvas)
    {
        super.draw(canvas);
        Drawable drawable;
        View view;
        if (c())
        {
            drawable = e;
        } else
        {
            drawable = d;
        }
        if (getChildCount() > 1)
        {
            view = getChildAt(1);
        } else
        {
            view = null;
        }
        if (view == null || drawable == null)
        {
            return;
        }
        int k1 = view.getTop();
        int l1 = view.getBottom();
        int i2 = drawable.getIntrinsicWidth();
        int i1;
        int j1;
        if (c())
        {
            j1 = view.getRight();
            i1 = j1 + i2;
        } else
        {
            i1 = view.getLeft();
            j1 = i1 - i2;
        }
        drawable.setBounds(j1, k1, i1, l1);
        drawable.draw(canvas);
    }

    protected boolean drawChild(Canvas canvas, View view, long l1)
    {
        boolean flag;
        LayoutParams layoutparams = (LayoutParams)view.getLayoutParams();
        int i1 = canvas.save(2);
        if (g && !layoutparams.b && h != null)
        {
            canvas.getClipBounds(t);
            android.graphics.Bitmap bitmap;
            if (c())
            {
                t.left = Math.max(t.left, h.getRight());
            } else
            {
                t.right = Math.min(t.right, h.getLeft());
            }
            canvas.clipRect(t);
        }
        if (android.os.Build.VERSION.SDK_INT >= 11) goto _L2; else goto _L1
_L1:
        if (!layoutparams.c || i <= 0.0F) goto _L4; else goto _L3
_L3:
        if (!view.isDrawingCacheEnabled())
        {
            view.setDrawingCacheEnabled(true);
        }
        bitmap = view.getDrawingCache();
        if (bitmap == null) goto _L6; else goto _L5
_L5:
        canvas.drawBitmap(bitmap, view.getLeft(), view.getTop(), layoutparams.d);
        flag = false;
_L7:
        canvas.restoreToCount(i1);
        return flag;
_L6:
        Log.e("SlidingPaneLayout", (new StringBuilder("drawChild: child view ")).append(view).append(" returned null drawing cache").toString());
_L2:
        flag = super.drawChild(canvas, view, l1);
        if (true) goto _L7; else goto _L4
_L4:
        if (view.isDrawingCacheEnabled())
        {
            view.setDrawingCacheEnabled(false);
        }
          goto _L2
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
        if (layoutparams instanceof android.view.ViewGroup.MarginLayoutParams)
        {
            return new LayoutParams((android.view.ViewGroup.MarginLayoutParams)layoutparams);
        } else
        {
            return new LayoutParams(layoutparams);
        }
    }

    public int getCoveredFadeColor()
    {
        return c;
    }

    public int getParallaxDistance()
    {
        return m;
    }

    public int getSliderFadeColor()
    {
        return b;
    }

    protected void onAttachedToWindow()
    {
        super.onAttachedToWindow();
        s = true;
    }

    protected void onDetachedFromWindow()
    {
        super.onDetachedFromWindow();
        s = true;
        int j1 = u.size();
        for (int i1 = 0; i1 < j1; i1++)
        {
            ((b)u.get(i1)).run();
        }

        u.clear();
    }

    public boolean onInterceptTouchEvent(MotionEvent motionevent)
    {
        int i1;
        boolean flag;
        boolean flag1;
        flag1 = false;
        i1 = ax.a(motionevent);
        if (!g && i1 == 0 && getChildCount() > 1)
        {
            View view = getChildAt(1);
            if (view != null)
            {
                if (!cu.b(view, (int)motionevent.getX(), (int)motionevent.getY()))
                {
                    flag = true;
                } else
                {
                    flag = false;
                }
                r = flag;
            }
        }
        if (g && (!l || i1 == 0)) goto _L2; else goto _L1
_L1:
        q.a();
        flag = super.onInterceptTouchEvent(motionevent);
_L7:
        return flag;
_L2:
        if (i1 == 3 || i1 == 1)
        {
            q.a();
            return false;
        }
        i1;
        JVM INSTR tableswitch 0 2: default 160
    //                   0 185
    //                   1 160
    //                   2 241;
           goto _L3 _L4 _L3 _L5
_L3:
        i1 = 0;
_L9:
        if (q.a(motionevent))
        {
            break; /* Loop/switch isn't completed */
        }
        flag = flag1;
        if (!i1) goto _L7; else goto _L6
_L6:
        return true;
_L4:
        float f1;
        float f3;
        l = false;
        f1 = motionevent.getX();
        f3 = motionevent.getY();
        n = f1;
        o = f3;
        if (!cu.b(h, (int)f1, (int)f3) || !b(h)) goto _L3; else goto _L8
_L8:
        i1 = 1;
          goto _L9
_L5:
        float f4 = motionevent.getX();
        float f2 = motionevent.getY();
        f4 = Math.abs(f4 - n);
        f2 = Math.abs(f2 - o);
        if (f4 > (float)q.b && f2 > f4)
        {
            q.a();
            l = true;
            return false;
        }
          goto _L3
    }

    protected void onLayout(boolean flag, int i1, int j1, int k1, int l1)
    {
        boolean flag2 = c();
        int i3;
        int j3;
        int k3;
        if (flag2)
        {
            q.j = 2;
        } else
        {
            q.j = 1;
        }
        i3 = k1 - i1;
        if (flag2)
        {
            i1 = getPaddingRight();
        } else
        {
            i1 = getPaddingLeft();
        }
        if (flag2)
        {
            k1 = getPaddingLeft();
        } else
        {
            k1 = getPaddingRight();
        }
        k3 = getPaddingTop();
        j3 = getChildCount();
        if (s)
        {
            float f1;
            View view;
            int i2;
            boolean flag1;
            int i4;
            if (g && r)
            {
                f1 = 1.0F;
            } else
            {
                f1 = 0.0F;
            }
            i = f1;
        }
        l1 = 0;
        j1 = i1;
        while (l1 < j3) 
        {
            view = getChildAt(l1);
            if (view.getVisibility() != 8)
            {
                LayoutParams layoutparams = (LayoutParams)view.getLayoutParams();
                int l3 = view.getMeasuredWidth();
                flag1 = false;
                int j2;
                int l2;
                if (layoutparams.b)
                {
                    i2 = layoutparams.leftMargin;
                    i4 = layoutparams.rightMargin;
                    i4 = Math.min(i1, i3 - k1 - f) - j1 - (i2 + i4);
                    k = i4;
                    if (flag2)
                    {
                        j2 = layoutparams.rightMargin;
                    } else
                    {
                        j2 = layoutparams.leftMargin;
                    }
                    if (j1 + j2 + i4 + l3 / 2 > i3 - k1)
                    {
                        flag = true;
                    } else
                    {
                        flag = false;
                    }
                    layoutparams.c = flag;
                    i4 = (int)((float)i4 * i);
                    j1 += j2 + i4;
                    i = (float)i4 / (float)k;
                    j2 = ((flag1) ? 1 : 0);
                } else
                {
                    if (g && m != 0)
                    {
                        j1 = (int)((1.0F - i) * (float)m);
                    } else
                    {
                        j1 = 0;
                    }
                    j2 = j1;
                    j1 = i1;
                }
                if (flag2)
                {
                    l2 = (i3 - j1) + j2;
                    j2 = l2 - l3;
                } else
                {
                    j2 = j1 - j2;
                    l2 = j2 + l3;
                }
                view.layout(j2, k3, l2, view.getMeasuredHeight() + k3);
                j2 = view.getWidth() + i1;
                i1 = j1;
                j1 = j2;
            } else
            {
                int k2 = j1;
                j1 = i1;
                i1 = k2;
            }
            j2 = l1 + 1;
            l1 = i1;
            i1 = j1;
            j1 = l1;
            l1 = j2;
        }
        if (s)
        {
            if (g)
            {
                if (m != 0)
                {
                    b(i);
                }
                if (((LayoutParams)h.getLayoutParams()).c)
                {
                    a(h, i, b);
                }
            } else
            {
                i1 = 0;
                while (i1 < j3) 
                {
                    a(getChildAt(i1), 0.0F, b);
                    i1++;
                }
            }
            a(h);
        }
        s = false;
    }

    protected void onMeasure(int i1, int j1)
    {
        int k1;
        int l1;
        int i2;
        i2 = android.view.View.MeasureSpec.getMode(i1);
        k1 = android.view.View.MeasureSpec.getSize(i1);
        l1 = android.view.View.MeasureSpec.getMode(j1);
        i1 = android.view.View.MeasureSpec.getSize(j1);
        if (i2 == 0x40000000) goto _L2; else goto _L1
_L1:
        if (!isInEditMode()) goto _L4; else goto _L3
_L3:
        if (i2 == 0x80000000 || i2 != 0) goto _L6; else goto _L5
_L5:
        k1 = l1;
        l1 = 300;
_L21:
        k1;
        JVM INSTR lookupswitch 2: default 88
    //                   -2147483648: 286
    //                   1073741824: 268;
           goto _L7 _L8 _L9
_L7:
        i1 = 0;
        i2 = -1;
_L15:
        float f1;
        int j4;
        int l4;
        int i5;
        boolean flag;
        flag = false;
        l4 = l1 - getPaddingLeft() - getPaddingRight();
        i5 = getChildCount();
        if (i5 > 2)
        {
            Log.e("SlidingPaneLayout", "onMeasure: More than two child views are not supported.");
        }
        h = null;
        j4 = 0;
        j1 = l4;
        f1 = 0.0F;
_L14:
        if (j4 >= i5) goto _L11; else goto _L10
_L10:
        View view;
        LayoutParams layoutparams;
        view = getChildAt(j4);
        layoutparams = (LayoutParams)view.getLayoutParams();
        if (view.getVisibility() != 8) goto _L13; else goto _L12
_L12:
        layoutparams.c = false;
        int j2 = j1;
        j1 = i1;
        i1 = j2;
_L19:
        j4++;
        int k2 = j1;
        j1 = i1;
        i1 = k2;
          goto _L14
_L4:
        throw new IllegalStateException("Width must have an exact value or MATCH_PARENT");
_L2:
        if (l1 == 0)
        {
            if (isInEditMode())
            {
                if (l1 == 0)
                {
                    j1 = 0x80000000;
                    l1 = k1;
                    i1 = 300;
                    k1 = j1;
                    continue; /* Loop/switch isn't completed */
                }
            } else
            {
                throw new IllegalStateException("Height must not be UNSPECIFIED");
            }
        }
          goto _L6
_L9:
        i1 = i1 - getPaddingTop() - getPaddingBottom();
        i2 = i1;
          goto _L15
_L8:
        i2 = getPaddingTop();
        int l2 = getPaddingBottom();
        j1 = 0;
        i2 = i1 - i2 - l2;
        i1 = j1;
          goto _L15
_L13:
        float f2 = f1;
        if (layoutparams.a <= 0.0F) goto _L17; else goto _L16
_L16:
        f2 = f1 + layoutparams.a;
        if (layoutparams.width == 0) goto _L18; else goto _L17
_L17:
        int i3 = layoutparams.leftMargin + layoutparams.rightMargin;
        int l3;
        int j5;
        boolean flag1;
        if (layoutparams.width == -2)
        {
            i3 = android.view.View.MeasureSpec.makeMeasureSpec(l4 - i3, 0x80000000);
        } else
        if (layoutparams.width == -1)
        {
            i3 = android.view.View.MeasureSpec.makeMeasureSpec(l4 - i3, 0x40000000);
        } else
        {
            i3 = android.view.View.MeasureSpec.makeMeasureSpec(layoutparams.width, 0x40000000);
        }
        if (layoutparams.height == -2)
        {
            l3 = android.view.View.MeasureSpec.makeMeasureSpec(i2, 0x80000000);
        } else
        if (layoutparams.height == -1)
        {
            l3 = android.view.View.MeasureSpec.makeMeasureSpec(i2, 0x40000000);
        } else
        {
            l3 = android.view.View.MeasureSpec.makeMeasureSpec(layoutparams.height, 0x40000000);
        }
        view.measure(i3, l3);
        l3 = view.getMeasuredWidth();
        j5 = view.getMeasuredHeight();
        i3 = i1;
        if (k1 == 0x80000000)
        {
            i3 = i1;
            if (j5 > i1)
            {
                i3 = Math.min(j5, i2);
            }
        }
        i1 = j1 - l3;
        if (i1 < 0)
        {
            flag1 = true;
        } else
        {
            flag1 = false;
        }
        layoutparams.b = flag1;
        if (layoutparams.b)
        {
            h = view;
        }
        f1 = f2;
        flag = flag1 | flag;
        j1 = i3;
          goto _L19
_L11:
        if (flag || f1 > 0.0F)
        {
            int k4 = l4 - f;
            int j3 = 0;
            while (j3 < i5) 
            {
                View view1 = getChildAt(j3);
                if (view1.getVisibility() == 8)
                {
                    continue;
                }
                LayoutParams layoutparams1 = (LayoutParams)view1.getLayoutParams();
                if (view1.getVisibility() != 8)
                {
                    int i4;
                    if (layoutparams1.width == 0 && layoutparams1.a > 0.0F)
                    {
                        k1 = 1;
                    } else
                    {
                        k1 = 0;
                    }
                    if (k1 != 0)
                    {
                        i4 = 0;
                    } else
                    {
                        i4 = view1.getMeasuredWidth();
                    }
                    if (flag && view1 != h)
                    {
                        if (layoutparams1.width < 0 && (i4 > k4 || layoutparams1.a > 0.0F))
                        {
                            if (k1 != 0)
                            {
                                if (layoutparams1.height == -2)
                                {
                                    k1 = android.view.View.MeasureSpec.makeMeasureSpec(i2, 0x80000000);
                                } else
                                if (layoutparams1.height == -1)
                                {
                                    k1 = android.view.View.MeasureSpec.makeMeasureSpec(i2, 0x40000000);
                                } else
                                {
                                    k1 = android.view.View.MeasureSpec.makeMeasureSpec(layoutparams1.height, 0x40000000);
                                }
                            } else
                            {
                                k1 = android.view.View.MeasureSpec.makeMeasureSpec(view1.getMeasuredHeight(), 0x40000000);
                            }
                            view1.measure(android.view.View.MeasureSpec.makeMeasureSpec(k4, 0x40000000), k1);
                        }
                    } else
                    if (layoutparams1.a > 0.0F)
                    {
                        if (layoutparams1.width == 0)
                        {
                            if (layoutparams1.height == -2)
                            {
                                k1 = android.view.View.MeasureSpec.makeMeasureSpec(i2, 0x80000000);
                            } else
                            if (layoutparams1.height == -1)
                            {
                                k1 = android.view.View.MeasureSpec.makeMeasureSpec(i2, 0x40000000);
                            } else
                            {
                                k1 = android.view.View.MeasureSpec.makeMeasureSpec(layoutparams1.height, 0x40000000);
                            }
                        } else
                        {
                            k1 = android.view.View.MeasureSpec.makeMeasureSpec(view1.getMeasuredHeight(), 0x40000000);
                        }
                        if (flag)
                        {
                            int k5 = layoutparams1.leftMargin;
                            k5 = l4 - (layoutparams1.rightMargin + k5);
                            int i6 = android.view.View.MeasureSpec.makeMeasureSpec(k5, 0x40000000);
                            if (i4 != k5)
                            {
                                view1.measure(i6, k1);
                            }
                        } else
                        {
                            int l5 = Math.max(0, j1);
                            view1.measure(android.view.View.MeasureSpec.makeMeasureSpec((int)((layoutparams1.a * (float)l5) / f1) + i4, 0x40000000), k1);
                        }
                    }
                }
                j3++;
            }
        }
        setMeasuredDimension(l1, getPaddingTop() + i1 + getPaddingBottom());
        g = flag;
        if (q.a != 0 && !flag)
        {
            q.b();
        }
        return;
_L18:
        int k3 = i1;
        f1 = f2;
        i1 = j1;
        j1 = k3;
          goto _L19
_L6:
        j1 = l1;
        l1 = k1;
        k1 = j1;
        if (true) goto _L21; else goto _L20
_L20:
    }

    protected void onRestoreInstanceState(Parcelable parcelable)
    {
        parcelable = (SavedState)parcelable;
        super.onRestoreInstanceState(parcelable.getSuperState());
        if (((SavedState) (parcelable)).a)
        {
            if (s || a(1.0F))
            {
                r = true;
            }
        } else
        {
            b();
        }
        r = ((SavedState) (parcelable)).a;
    }

    protected Parcelable onSaveInstanceState()
    {
        SavedState savedstate = new SavedState(super.onSaveInstanceState());
        boolean flag;
        if (g)
        {
            if (!g || i == 1.0F)
            {
                flag = true;
            } else
            {
                flag = false;
            }
        } else
        {
            flag = r;
        }
        savedstate.a = flag;
        return savedstate;
    }

    protected void onSizeChanged(int i1, int j1, int k1, int l1)
    {
        super.onSizeChanged(i1, j1, k1, l1);
        if (i1 != k1)
        {
            s = true;
        }
    }

    public boolean onTouchEvent(MotionEvent motionevent)
    {
        if (!g)
        {
            return super.onTouchEvent(motionevent);
        }
        q.b(motionevent);
        motionevent.getAction() & 0xff;
        JVM INSTR tableswitch 0 1: default 52
    //                   0 54
    //                   1 77;
           goto _L1 _L2 _L3
_L1:
        return true;
_L2:
        float f1 = motionevent.getX();
        float f3 = motionevent.getY();
        n = f1;
        o = f3;
        continue; /* Loop/switch isn't completed */
_L3:
        if (b(h))
        {
            float f2 = motionevent.getX();
            float f4 = motionevent.getY();
            float f5 = f2 - n;
            float f6 = f4 - o;
            int i1 = q.b;
            if (f5 * f5 + f6 * f6 < (float)(i1 * i1) && cu.b(h, (int)f2, (int)f4))
            {
                b();
            }
        }
        if (true) goto _L1; else goto _L4
_L4:
    }

    public void requestChildFocus(View view, View view1)
    {
        super.requestChildFocus(view, view1);
        if (!isInTouchMode() && !g)
        {
            boolean flag;
            if (view == h)
            {
                flag = true;
            } else
            {
                flag = false;
            }
            r = flag;
        }
    }

    public void setCoveredFadeColor(int i1)
    {
        c = i1;
    }

    public void setPanelSlideListener(d d1)
    {
        p = d1;
    }

    public void setParallaxDistance(int i1)
    {
        m = i1;
        requestLayout();
    }

    public void setShadowDrawable(Drawable drawable)
    {
        setShadowDrawableLeft(drawable);
    }

    public void setShadowDrawableLeft(Drawable drawable)
    {
        d = drawable;
    }

    public void setShadowDrawableRight(Drawable drawable)
    {
        e = drawable;
    }

    public void setShadowResource(int i1)
    {
        setShadowDrawable(getResources().getDrawable(i1));
    }

    public void setShadowResourceLeft(int i1)
    {
        setShadowDrawableLeft(getResources().getDrawable(i1));
    }

    public void setShadowResourceRight(int i1)
    {
        setShadowDrawableRight(getResources().getDrawable(i1));
    }

    public void setSliderFadeColor(int i1)
    {
        b = i1;
    }

    static 
    {
        int i1 = android.os.Build.VERSION.SDK_INT;
        if (i1 >= 17)
        {
            a = new h();
        } else
        if (i1 >= 16)
        {
            a = new g();
        } else
        {
            a = new f();
        }
    }
}
