// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package android.support.v4.view;

import al;
import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.database.DataSetObserver;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.util.Log;
import android.view.FocusFinder;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.SoundEffectConstants;
import android.view.VelocityTracker;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.accessibility.AccessibilityEvent;
import android.view.animation.Interpolator;
import android.widget.Scroller;
import aq;
import ax;
import bd;
import bg;
import bh;
import bl;
import bz;
import cd;
import cm;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;
import t;
import u;

public class ViewPager extends ViewGroup
{
    public static class LayoutParams extends android.view.ViewGroup.LayoutParams
    {

        public boolean a;
        public int b;
        float c;
        boolean d;
        int e;
        int f;

        public LayoutParams()
        {
            super(-1, -1);
            c = 0.0F;
        }

        public LayoutParams(Context context, AttributeSet attributeset)
        {
            super(context, attributeset);
            c = 0.0F;
            context = context.obtainStyledAttributes(attributeset, ViewPager.c());
            b = context.getInteger(0, 48);
            context.recycle();
        }
    }

    public static class SavedState extends android.view.View.BaseSavedState
    {

        public static final android.os.Parcelable.Creator CREATOR;
        int a;
        Parcelable b;
        ClassLoader c;

        public String toString()
        {
            return (new StringBuilder("FragmentPager.SavedState{")).append(Integer.toHexString(System.identityHashCode(this))).append(" position=").append(a).append("}").toString();
        }

        public void writeToParcel(Parcel parcel, int i1)
        {
            super.writeToParcel(parcel, i1);
            parcel.writeInt(a);
            parcel.writeParcelable(b, i1);
        }

        static 
        {
            Object obj = new t() {

                public final Object a(Parcel parcel, ClassLoader classloader)
                {
                    return new SavedState(parcel, classloader);
                }

                public final volatile Object[] a(int i1)
                {
                    return new SavedState[i1];
                }

            };
            if (android.os.Build.VERSION.SDK_INT >= 13)
            {
                obj = new u(((t) (obj)));
            } else
            {
                obj = new s.a(((t) (obj)));
            }
            CREATOR = ((android.os.Parcelable.Creator) (obj));
        }

        SavedState(Parcel parcel, ClassLoader classloader)
        {
            super(parcel);
            ClassLoader classloader1 = classloader;
            if (classloader == null)
            {
                classloader1 = getClass().getClassLoader();
            }
            a = parcel.readInt();
            b = parcel.readParcelable(classloader1);
            c = classloader1;
        }

        public SavedState(Parcelable parcelable)
        {
            super(parcelable);
        }
    }

    static interface a
    {
    }

    static final class b
    {

        Object a;
        int b;
        boolean c;
        float d;
        float e;

        b()
        {
        }
    }

    final class c extends al
    {

        final ViewPager a;

        private boolean a()
        {
            return ViewPager.b(a) != null && ViewPager.b(a).getCount() > 1;
        }

        public final void onInitializeAccessibilityEvent(View view, AccessibilityEvent accessibilityevent)
        {
            super.onInitializeAccessibilityEvent(view, accessibilityevent);
            accessibilityevent.setClassName(android/support/v4/view/ViewPager.getName());
            view = cd.a();
            view.a(a());
            if (accessibilityevent.getEventType() == 4096 && ViewPager.b(a) != null)
            {
                view.a(ViewPager.b(a).getCount());
                view.b(ViewPager.c(a));
                view.c(ViewPager.c(a));
            }
        }

        public final void onInitializeAccessibilityNodeInfo(View view, bz bz1)
        {
            super.onInitializeAccessibilityNodeInfo(view, bz1);
            bz1.b(android/support/v4/view/ViewPager.getName());
            bz1.i(a());
            if (a.canScrollHorizontally(1))
            {
                bz1.a(4096);
            }
            if (a.canScrollHorizontally(-1))
            {
                bz1.a(8192);
            }
        }

        public final boolean performAccessibilityAction(View view, int i1, Bundle bundle)
        {
            if (super.performAccessibilityAction(view, i1, bundle))
            {
                return true;
            }
            switch (i1)
            {
            default:
                return false;

            case 4096: 
                if (a.canScrollHorizontally(1))
                {
                    a.setCurrentItem(ViewPager.c(a) + 1);
                    return true;
                } else
                {
                    return false;
                }

            case 8192: 
                break;
            }
            if (a.canScrollHorizontally(-1))
            {
                a.setCurrentItem(ViewPager.c(a) - 1);
                return true;
            } else
            {
                return false;
            }
        }

        c()
        {
            a = ViewPager.this;
            super();
        }
    }

    static interface d
    {

        public abstract void a(bd bd1, bd bd2);
    }

    public static interface e
    {

        public abstract void onPageScrollStateChanged(int i1);

        public abstract void onPageScrolled(int i1, float f1, int j1);

        public abstract void onPageSelected(int i1);
    }

    public static interface f
    {
    }

    final class g extends DataSetObserver
    {

        final ViewPager a;

        public final void onChanged()
        {
            a.a();
        }

        public final void onInvalidated()
        {
            a.a();
        }

        private g()
        {
            a = ViewPager.this;
            super();
        }

        g(byte byte0)
        {
            this();
        }
    }

    static final class h
        implements Comparator
    {

        public final int compare(Object obj, Object obj1)
        {
            obj = (View)obj;
            obj1 = (View)obj1;
            obj = (LayoutParams)((View) (obj)).getLayoutParams();
            obj1 = (LayoutParams)((View) (obj1)).getLayoutParams();
            if (((LayoutParams) (obj)).a != ((LayoutParams) (obj1)).a)
            {
                return !((LayoutParams) (obj)).a ? -1 : 1;
            } else
            {
                return ((LayoutParams) (obj)).e - ((LayoutParams) (obj1)).e;
            }
        }

        h()
        {
        }
    }


    private static final h ah = new h();
    private static final int b[] = {
        0x10100b3
    };
    private static final Comparator d = new Comparator() {

        public final volatile int compare(Object obj, Object obj1)
        {
            obj = (b)obj;
            obj1 = (b)obj1;
            return ((b) (obj)).b - ((b) (obj1)).b;
        }

    };
    private static final Interpolator e = new Interpolator() {

        public final float getInterpolation(float f1)
        {
            f1--;
            return f1 * (f1 * f1 * f1 * f1) + 1.0F;
        }

    };
    private int A;
    private boolean B;
    private boolean C;
    private int D;
    private int E;
    private int F;
    private float G;
    private float H;
    private float I;
    private float J;
    private int K;
    private VelocityTracker L;
    private int M;
    private int N;
    private int O;
    private int P;
    private boolean Q;
    private cm R;
    private cm S;
    private boolean T;
    private boolean U;
    private boolean V;
    private int W;
    public List a;
    private e aa;
    private e ab;
    private d ac;
    private f ad;
    private Method ae;
    private int af;
    private ArrayList ag;
    private final Runnable ai;
    private int aj;
    private int c;
    private final ArrayList f;
    private final b g;
    private final Rect h;
    private bd i;
    private int j;
    private int k;
    private Parcelable l;
    private ClassLoader m;
    private Scroller n;
    private g o;
    private int p;
    private Drawable q;
    private int r;
    private int s;
    private float t;
    private float u;
    private int v;
    private int w;
    private boolean x;
    private boolean y;
    private boolean z;

    public ViewPager(Context context)
    {
        super(context);
        f = new ArrayList();
        g = new b();
        h = new Rect();
        k = -1;
        l = null;
        m = null;
        t = -3.402823E+38F;
        u = 3.402823E+38F;
        A = 1;
        K = -1;
        T = true;
        U = false;
        ai = new Runnable() {

            final ViewPager a;

            public final void run()
            {
                ViewPager.a(a);
                a.b();
            }

            
            {
                a = ViewPager.this;
                super();
            }
        };
        aj = 0;
        d();
    }

    public ViewPager(Context context, AttributeSet attributeset)
    {
        super(context, attributeset);
        f = new ArrayList();
        g = new b();
        h = new Rect();
        k = -1;
        l = null;
        m = null;
        t = -3.402823E+38F;
        u = 3.402823E+38F;
        A = 1;
        K = -1;
        T = true;
        U = false;
        ai = new _cls3();
        aj = 0;
        d();
    }

    private Rect a(Rect rect, View view)
    {
        if (rect == null)
        {
            rect = new Rect();
        }
        if (view == null)
        {
            rect.set(0, 0, 0, 0);
            return rect;
        }
        rect.left = view.getLeft();
        rect.right = view.getRight();
        rect.top = view.getTop();
        rect.bottom = view.getBottom();
        for (view = view.getParent(); (view instanceof ViewGroup) && view != this; view = view.getParent())
        {
            view = (ViewGroup)view;
            rect.left = rect.left + view.getLeft();
            rect.right = rect.right + view.getRight();
            rect.top = rect.top + view.getTop();
            rect.bottom = rect.bottom + view.getBottom();
        }

        return rect;
    }

    private b a(int i1, int j1)
    {
        b b1 = new b();
        b1.b = i1;
        b1.a = i.instantiateItem(this, i1);
        b1.d = i.getPageWidth(i1);
        if (j1 < 0 || j1 >= f.size())
        {
            f.add(b1);
            return b1;
        } else
        {
            f.add(j1, b1);
            return b1;
        }
    }

    private b a(View view)
    {
        for (int i1 = 0; i1 < f.size(); i1++)
        {
            b b1 = (b)f.get(i1);
            if (i.isViewFromObject(view, b1.a))
            {
                return b1;
            }
        }

        return null;
    }

    private void a(int i1)
    {
        float f1;
        float f5;
        Object obj;
        Object obj1;
        Object obj2;
        Object obj3;
        int j1;
        byte byte1;
        int i2;
        int j2;
        int k2;
        int l2;
        int i3;
        int j3;
        int k3;
        if (j != i1)
        {
            byte byte0;
            if (j < i1)
            {
                byte0 = 66;
            } else
            {
                byte0 = 17;
            }
            obj1 = b(j);
            j = i1;
            byte1 = byte0;
        } else
        {
            obj1 = null;
            byte1 = 2;
        }
        if (i != null) goto _L2; else goto _L1
_L1:
        e();
_L4:
        return;
_L2:
        if (z)
        {
            e();
            return;
        }
        if (getWindowToken() == null) goto _L4; else goto _L3
_L3:
        i.startUpdate(this);
        i1 = A;
        j3 = Math.max(0, j - i1);
        l2 = i.getCount();
        i3 = Math.min(l2 - 1, i1 + j);
        if (l2 != c)
        {
            String s1;
            try
            {
                s1 = getResources().getResourceName(getId());
            }
            catch (android.content.res.Resources.NotFoundException notfoundexception)
            {
                notfoundexception = Integer.toHexString(getId());
            }
            throw new IllegalStateException((new StringBuilder("The application's PagerAdapter changed the adapter's contents without calling PagerAdapter#notifyDataSetChanged! Expected adapter item count: ")).append(c).append(", found: ").append(l2).append(" Pager id: ").append(s1).append(" Pager class: ").append(getClass()).append(" Problematic adapter: ").append(i.getClass()).toString());
        }
        i1 = 0;
_L14:
        if (i1 >= f.size())
        {
            break MISSING_BLOCK_LABEL_1270;
        }
        obj = (b)f.get(i1);
        if (((b) (obj)).b < j) goto _L6; else goto _L5
_L5:
        if (((b) (obj)).b != j)
        {
            break MISSING_BLOCK_LABEL_1270;
        }
_L21:
        if (obj == null && l2 > 0)
        {
            obj2 = a(j, i1);
        } else
        {
            obj2 = obj;
        }
        if (obj2 == null) goto _L8; else goto _L7
_L7:
        k2 = i1 - 1;
        float f3;
        if (k2 >= 0)
        {
            obj = (b)f.get(k2);
        } else
        {
            obj = null;
        }
        k3 = getClientWidth();
        if (k3 <= 0)
        {
            f3 = 0.0F;
        } else
        {
            f3 = (2.0F - ((b) (obj2)).d) + (float)getPaddingLeft() / (float)k3;
        }
        j1 = j;
        f5 = 0.0F;
        j2 = j1 - 1;
        i2 = i1;
        obj3 = obj;
        if (j2 < 0) goto _L10; else goto _L9
_L9:
        if (f5 < f3 || j2 >= j3) goto _L12; else goto _L11
_L11:
        if (obj3 == null) goto _L10; else goto _L13
_L13:
        obj = obj3;
        i1 = k2;
        f1 = f5;
        j1 = i2;
        if (j2 == ((b) (obj3)).b)
        {
            obj = obj3;
            i1 = k2;
            f1 = f5;
            j1 = i2;
            if (!((b) (obj3)).c)
            {
                f.remove(k2);
                i.destroyItem(this, j2, ((b) (obj3)).a);
                i1 = k2 - 1;
                j1 = i2 - 1;
                if (i1 >= 0)
                {
                    obj = (b)f.get(i1);
                    f1 = f5;
                } else
                {
                    obj = null;
                    f1 = f5;
                }
            }
        }
_L15:
        j2--;
        obj3 = obj;
        k2 = i1;
        f5 = f1;
        i2 = j1;
        break MISSING_BLOCK_LABEL_376;
_L6:
        i1++;
          goto _L14
_L12:
        if (obj3 != null && j2 == ((b) (obj3)).b)
        {
            f1 = f5 + ((b) (obj3)).d;
            i1 = k2 - 1;
            if (i1 >= 0)
            {
                obj = (b)f.get(i1);
                j1 = i2;
            } else
            {
                obj = null;
                j1 = i2;
            }
        } else
        {
            f1 = f5 + a(j2, k2 + 1).d;
            j1 = i2 + 1;
            if (k2 >= 0)
            {
                obj = (b)f.get(k2);
                i1 = k2;
            } else
            {
                obj = null;
                i1 = k2;
            }
        }
          goto _L15
_L10:
label0:
        {
            float f2 = ((b) (obj2)).d;
            i1 = i2 + 1;
            if (f2 >= 2.0F)
            {
                break label0;
            }
            float f4;
            int k1;
            if (i1 < f.size())
            {
                obj = (b)f.get(i1);
            } else
            {
                obj = null;
            }
            if (k3 <= 0)
            {
                f4 = 0.0F;
            } else
            {
                f4 = (float)getPaddingRight() / (float)k3 + 2.0F;
            }
            k1 = j;
            k1++;
            do
            {
                if (k1 >= l2)
                {
                    break label0;
                }
                if (f2 >= f4 && k1 > i3)
                {
                    if (obj == null)
                    {
                        break label0;
                    }
                    if (k1 == ((b) (obj)).b && !((b) (obj)).c)
                    {
                        f.remove(i1);
                        i.destroyItem(this, k1, ((b) (obj)).a);
                        if (i1 < f.size())
                        {
                            obj = (b)f.get(i1);
                        } else
                        {
                            obj = null;
                        }
                    }
                } else
                if (obj != null && k1 == ((b) (obj)).b)
                {
                    float f6 = ((b) (obj)).d;
                    i1++;
                    if (i1 < f.size())
                    {
                        obj = (b)f.get(i1);
                    } else
                    {
                        obj = null;
                    }
                    f2 += f6;
                } else
                {
                    obj = a(k1, i1);
                    i1++;
                    float f7 = ((b) (obj)).d;
                    if (i1 < f.size())
                    {
                        obj = (b)f.get(i1);
                    } else
                    {
                        obj = null;
                    }
                    f2 += f7;
                }
                k1++;
            } while (true);
        }
        a(((b) (obj2)), i2, ((b) (obj1)));
_L8:
        obj1 = i;
        i1 = j;
        int l1;
        if (obj2 != null)
        {
            obj = ((b) (obj2)).a;
        } else
        {
            obj = null;
        }
        ((bd) (obj1)).setPrimaryItem(this, i1, obj);
        i.finishUpdate(this);
        l1 = getChildCount();
        for (i1 = 0; i1 < l1; i1++)
        {
            obj1 = getChildAt(i1);
            obj = (LayoutParams)((View) (obj1)).getLayoutParams();
            obj.f = i1;
            if (((LayoutParams) (obj)).a || ((LayoutParams) (obj)).c != 0.0F)
            {
                continue;
            }
            obj1 = a(((View) (obj1)));
            if (obj1 != null)
            {
                obj.c = ((b) (obj1)).d;
                obj.e = ((b) (obj1)).b;
            }
        }

        e();
        if (!hasFocus()) goto _L4; else goto _L16
_L16:
        obj = findFocus();
        if (obj != null)
        {
            obj = b(((View) (obj)));
        } else
        {
            obj = null;
        }
        if (obj != null && ((b) (obj)).b == j) goto _L4; else goto _L17
_L17:
        i1 = 0;
_L20:
        if (i1 >= getChildCount()) goto _L4; else goto _L18
_L18:
        obj = getChildAt(i1);
        obj1 = a(((View) (obj)));
        if (obj1 != null && ((b) (obj1)).b == j && ((View) (obj)).requestFocus(byte1)) goto _L4; else goto _L19
_L19:
        i1++;
          goto _L20
        obj = null;
          goto _L21
    }

    private void a(int i1, float f1, int j1)
    {
        if (W <= 0) goto _L2; else goto _L1
_L1:
        int k1;
        int l1;
        int l2;
        int i3;
        int j3;
        int k3;
        i3 = getScrollX();
        k1 = getPaddingLeft();
        l1 = getPaddingRight();
        j3 = getWidth();
        k3 = getChildCount();
        l2 = 0;
_L8:
        if (l2 >= k3) goto _L2; else goto _L3
_L3:
        View view;
        LayoutParams layoutparams;
        view = getChildAt(l2);
        layoutparams = (LayoutParams)view.getLayoutParams();
        if (!layoutparams.a)
        {
            break MISSING_BLOCK_LABEL_464;
        }
        layoutparams.b & 7;
        JVM INSTR tableswitch 1 5: default 116
    //                   1 219
    //                   2 116
    //                   3 190
    //                   4 116
    //                   5 251;
           goto _L4 _L5 _L4 _L6 _L4 _L7
_L4:
        int i2;
        i2 = k1;
        int j2 = l1;
        l1 = k1;
        k1 = j2;
_L9:
        int k2;
        int l3 = (i2 + i3) - view.getLeft();
        i2 = k1;
        k2 = l1;
        if (l3 != 0)
        {
            view.offsetLeftAndRight(l3);
            k2 = l1;
            i2 = k1;
        }
_L10:
        l2++;
        k1 = k2;
        l1 = i2;
          goto _L8
_L6:
        i2 = view.getWidth();
        k2 = i2 + k1;
        i2 = k1;
        k1 = l1;
        l1 = k2;
          goto _L9
_L5:
        i2 = Math.max((j3 - view.getMeasuredWidth()) / 2, k1);
        k2 = k1;
        k1 = l1;
        l1 = k2;
          goto _L9
_L7:
        i2 = j3 - l1 - view.getMeasuredWidth();
        int i4 = view.getMeasuredWidth();
        k2 = k1;
        k1 = l1 + i4;
        l1 = k2;
          goto _L9
_L2:
        if (aa != null)
        {
            aa.onPageScrolled(i1, f1, j1);
        }
        if (a != null)
        {
            l1 = a.size();
            for (k1 = 0; k1 < l1; k1++)
            {
                e e1 = (e)a.get(k1);
                if (e1 != null)
                {
                    e1.onPageScrolled(i1, f1, j1);
                }
            }

        }
        if (ab != null)
        {
            ab.onPageScrolled(i1, f1, j1);
        }
        if (ad != null)
        {
            getScrollX();
            j1 = getChildCount();
            for (i1 = 0; i1 < j1; i1++)
            {
                View view1 = getChildAt(i1);
                if (!((LayoutParams)view1.getLayoutParams()).a)
                {
                    view1.getLeft();
                    getClientWidth();
                }
            }

        }
        V = true;
        return;
        i2 = l1;
        k2 = k1;
          goto _L10
    }

    private void a(int i1, int j1, int k1, int l1)
    {
        if (j1 > 0 && !f.isEmpty())
        {
            int i2 = getPaddingLeft();
            int j2 = getPaddingRight();
            int k2 = getPaddingLeft();
            int l2 = getPaddingRight();
            float f1 = (float)getScrollX() / (float)((j1 - k2 - l2) + l1);
            j1 = (int)((float)((i1 - i2 - j2) + k1) * f1);
            scrollTo(j1, getScrollY());
            if (!n.isFinished())
            {
                k1 = n.getDuration();
                l1 = n.timePassed();
                b b1 = b(j);
                n.startScroll(j1, 0, (int)(b1.e * (float)i1), 0, k1 - l1);
            }
        } else
        {
            b b2 = b(j);
            float f2;
            if (b2 != null)
            {
                f2 = Math.min(b2.e, u);
            } else
            {
                f2 = 0.0F;
            }
            i1 = (int)(f2 * (float)(i1 - getPaddingLeft() - getPaddingRight()));
            if (i1 != getScrollX())
            {
                a(false);
                scrollTo(i1, getScrollY());
                return;
            }
        }
    }

    private void a(int i1, boolean flag, int j1, boolean flag1)
    {
        b b1 = b(i1);
        int k1 = 0;
        if (b1 != null)
        {
            k1 = (int)((float)getClientWidth() * Math.max(t, Math.min(b1.e, u)));
        }
        if (flag)
        {
            if (getChildCount() == 0)
            {
                setScrollingCacheEnabled(false);
            } else
            {
                int l1 = getScrollX();
                int i2 = getScrollY();
                k1 -= l1;
                int j2 = 0 - i2;
                if (k1 == 0 && j2 == 0)
                {
                    a(false);
                    b();
                    setScrollState(0);
                } else
                {
                    setScrollingCacheEnabled(true);
                    setScrollState(2);
                    int k2 = getClientWidth();
                    int l2 = k2 / 2;
                    float f5 = Math.min(1.0F, (1.0F * (float)Math.abs(k1)) / (float)k2);
                    float f1 = l2;
                    float f3 = l2;
                    f5 = (float)Math.sin((float)((double)(f5 - 0.5F) * 0.4712389167638204D));
                    j1 = Math.abs(j1);
                    if (j1 > 0)
                    {
                        j1 = Math.round(1000F * Math.abs((f3 * f5 + f1) / (float)j1)) * 4;
                    } else
                    {
                        float f2 = k2;
                        float f4 = i.getPageWidth(j);
                        j1 = (int)(((float)Math.abs(k1) / (f2 * f4 + (float)p) + 1.0F) * 100F);
                    }
                    j1 = Math.min(j1, 600);
                    n.startScroll(l1, i2, k1, j2, j1);
                    bh.d(this);
                }
            }
        } else
        {
            if (flag1)
            {
                d(i1);
            }
            a(false);
            scrollTo(k1, 0);
            c(k1);
            return;
        }
        if (flag1)
        {
            d(i1);
        }
    }

    private void a(int i1, boolean flag, boolean flag1)
    {
        a(i1, flag, flag1, 0);
    }

    private void a(int i1, boolean flag, boolean flag1, int j1)
    {
        boolean flag2;
        flag2 = false;
        if (i == null || i.getCount() <= 0)
        {
            setScrollingCacheEnabled(false);
            return;
        }
        if (!flag1 && j == i1 && f.size() != 0)
        {
            setScrollingCacheEnabled(false);
            return;
        }
        if (i1 >= 0) goto _L2; else goto _L1
_L1:
        int k1 = 0;
_L4:
        i1 = A;
        if (k1 > j + i1 || k1 < j - i1)
        {
            for (i1 = 0; i1 < f.size(); i1++)
            {
                ((b)f.get(i1)).c = true;
            }

        }
        break; /* Loop/switch isn't completed */
_L2:
        k1 = i1;
        if (i1 >= i.getCount())
        {
            k1 = i.getCount() - 1;
        }
        if (true) goto _L4; else goto _L3
_L3:
        flag1 = flag2;
        if (j != k1)
        {
            flag1 = true;
        }
        if (T)
        {
            j = k1;
            if (flag1)
            {
                d(k1);
            }
            requestLayout();
            return;
        } else
        {
            a(k1);
            a(k1, flag, j1, flag1);
            return;
        }
    }

    private void a(b b1, int i1, b b2)
    {
        int j2 = i.getCount();
        int j1 = getClientWidth();
        float f4;
        if (j1 > 0)
        {
            f4 = (float)p / (float)j1;
        } else
        {
            f4 = 0.0F;
        }
        if (b2 != null)
        {
            j1 = b2.b;
            if (j1 < b1.b)
            {
                float f1 = b2.e + b2.d + f4;
                int k1 = 0;
                for (j1++; j1 <= b1.b && k1 < f.size(); j1++)
                {
                    for (b2 = (b)f.get(k1); j1 > b2.b && k1 < f.size() - 1; b2 = (b)f.get(k1))
                    {
                        k1++;
                    }

                    while (j1 < b2.b) 
                    {
                        float f5 = i.getPageWidth(j1);
                        j1++;
                        f1 = f5 + f4 + f1;
                    }
                    b2.e = f1;
                    f1 += b2.d + f4;
                }

            } else
            if (j1 > b1.b)
            {
                int l1 = f.size();
                float f2 = b2.e;
                l1--;
                for (j1--; j1 >= b1.b && l1 >= 0; j1--)
                {
                    for (b2 = (b)f.get(l1); j1 < b2.b && l1 > 0; b2 = (b)f.get(l1))
                    {
                        l1--;
                    }

                    while (j1 > b2.b) 
                    {
                        float f6 = i.getPageWidth(j1);
                        j1--;
                        f2 -= f6 + f4;
                    }
                    f2 -= b2.d + f4;
                    b2.e = f2;
                }

            }
        }
        int k2 = f.size();
        float f7 = b1.e;
        j1 = b1.b - 1;
        float f3;
        int i2;
        if (b1.b == 0)
        {
            f3 = b1.e;
        } else
        {
            f3 = -3.402823E+38F;
        }
        t = f3;
        if (b1.b == j2 - 1)
        {
            f3 = (b1.e + b1.d) - 1.0F;
        } else
        {
            f3 = 3.402823E+38F;
        }
        u = f3;
        i2 = i1 - 1;
        f3 = f7;
        for (; i2 >= 0; i2--)
        {
            for (b2 = (b)f.get(i2); j1 > b2.b; j1--)
            {
                f3 -= i.getPageWidth(j1) + f4;
            }

            f3 -= b2.d + f4;
            b2.e = f3;
            if (b2.b == 0)
            {
                t = f3;
            }
            j1--;
        }

        f3 = b1.e + b1.d + f4;
        i2 = b1.b + 1;
        j1 = i1 + 1;
        i1 = i2;
        for (; j1 < k2; j1++)
        {
            for (b1 = (b)f.get(j1); i1 < b1.b; i1++)
            {
                f3 += i.getPageWidth(i1) + f4;
            }

            if (b1.b == j2 - 1)
            {
                u = (b1.d + f3) - 1.0F;
            }
            b1.e = f3;
            f3 += b1.d + f4;
            i1++;
        }

        U = false;
    }

    static void a(ViewPager viewpager)
    {
        viewpager.setScrollState(0);
    }

    private void a(MotionEvent motionevent)
    {
        int i1 = ax.b(motionevent);
        if (ax.b(motionevent, i1) == K)
        {
            if (i1 == 0)
            {
                i1 = 1;
            } else
            {
                i1 = 0;
            }
            G = ax.c(motionevent, i1);
            K = ax.b(motionevent, i1);
            if (L != null)
            {
                L.clear();
            }
        }
    }

    private void a(boolean flag)
    {
label0:
        {
            int i1;
            boolean flag1;
            boolean flag2;
            if (aj == 2)
            {
                i1 = 1;
            } else
            {
                i1 = 0;
            }
            if (i1 != 0)
            {
                setScrollingCacheEnabled(false);
                n.abortAnimation();
                int j1 = getScrollX();
                int k1 = getScrollY();
                int l1 = n.getCurrX();
                int i2 = n.getCurrY();
                if (j1 != l1 || k1 != i2)
                {
                    scrollTo(l1, i2);
                    if (l1 != j1)
                    {
                        c(l1);
                    }
                }
            }
            z = false;
            flag2 = false;
            flag1 = i1;
            for (i1 = ((flag2) ? 1 : 0); i1 < f.size(); i1++)
            {
                b b1 = (b)f.get(i1);
                if (b1.c)
                {
                    b1.c = false;
                    flag1 = true;
                }
            }

            if (flag1)
            {
                if (!flag)
                {
                    break label0;
                }
                bh.a(this, ai);
            }
            return;
        }
        ai.run();
    }

    private boolean a(float f1)
    {
        boolean flag1 = true;
        boolean flag3 = false;
        boolean flag2 = false;
        float f2 = G;
        G = f1;
        float f3 = (float)getScrollX() + (f2 - f1);
        int i1 = getClientWidth();
        f1 = (float)i1 * t;
        f2 = i1;
        float f4 = u;
        b b1 = (b)f.get(0);
        b b2 = (b)f.get(f.size() - 1);
        boolean flag;
        if (b1.b != 0)
        {
            f1 = b1.e * (float)i1;
            flag = false;
        } else
        {
            flag = true;
        }
        if (b2.b != i.getCount() - 1)
        {
            f2 = b2.e * (float)i1;
            flag1 = false;
        } else
        {
            f2 *= f4;
        }
        if (f3 >= f1) goto _L2; else goto _L1
_L1:
        f2 = f1;
        if (flag)
        {
            flag2 = R.a(Math.abs(f1 - f3) / (float)i1);
            f2 = f1;
        }
_L4:
        G = G + (f2 - (float)(int)f2);
        scrollTo((int)f2, getScrollY());
        c((int)f2);
        return flag2;
_L2:
        if (f3 > f2)
        {
            flag2 = flag3;
            if (flag1)
            {
                flag2 = S.a(Math.abs(f3 - f2) / (float)i1);
            }
        } else
        {
            f2 = f3;
        }
        if (true) goto _L4; else goto _L3
_L3:
    }

    private boolean a(View view, boolean flag, int i1, int j1, int k1)
    {
        if (!(view instanceof ViewGroup)) goto _L2; else goto _L1
_L1:
        ViewGroup viewgroup;
        int l1;
        int i2;
        int j2;
        viewgroup = (ViewGroup)view;
        i2 = view.getScrollX();
        j2 = view.getScrollY();
        l1 = viewgroup.getChildCount() - 1;
_L8:
        if (l1 < 0) goto _L2; else goto _L3
_L3:
        View view1 = viewgroup.getChildAt(l1);
        if (j1 + i2 < view1.getLeft() || j1 + i2 >= view1.getRight() || k1 + j2 < view1.getTop() || k1 + j2 >= view1.getBottom() || !a(view1, true, i1, (j1 + i2) - view1.getLeft(), (k1 + j2) - view1.getTop())) goto _L5; else goto _L4
_L4:
        return true;
_L5:
        l1--;
        continue; /* Loop/switch isn't completed */
_L2:
        if (flag && bh.a(view, -i1)) goto _L4; else goto _L6
_L6:
        return false;
        if (true) goto _L8; else goto _L7
_L7:
    }

    private b b(int i1)
    {
        for (int j1 = 0; j1 < f.size(); j1++)
        {
            b b1 = (b)f.get(j1);
            if (b1.b == i1)
            {
                return b1;
            }
        }

        return null;
    }

    private b b(View view)
    {
        do
        {
            ViewParent viewparent = view.getParent();
            if (viewparent != this)
            {
                if (viewparent == null || !(viewparent instanceof View))
                {
                    return null;
                }
                view = (View)viewparent;
            } else
            {
                return a(view);
            }
        } while (true);
    }

    static bd b(ViewPager viewpager)
    {
        return viewpager.i;
    }

    static int c(ViewPager viewpager)
    {
        return viewpager.j;
    }

    private boolean c(int i1)
    {
        boolean flag = false;
        if (f.size() == 0)
        {
            V = false;
            a(0, 0.0F, 0);
            if (!V)
            {
                throw new IllegalStateException("onPageScrolled did not call superclass implementation");
            }
        } else
        {
            b b1 = g();
            int k1 = getClientWidth();
            int l1 = p;
            float f1 = (float)p / (float)k1;
            int j1 = b1.b;
            f1 = ((float)i1 / (float)k1 - b1.e) / (b1.d + f1);
            i1 = (int)((float)(l1 + k1) * f1);
            V = false;
            a(j1, f1, i1);
            if (!V)
            {
                throw new IllegalStateException("onPageScrolled did not call superclass implementation");
            }
            flag = true;
        }
        return flag;
    }

    static int[] c()
    {
        return b;
    }

    private void d()
    {
        setWillNotDraw(false);
        setDescendantFocusability(0x40000);
        setFocusable(true);
        Context context = getContext();
        n = new Scroller(context, e);
        ViewConfiguration viewconfiguration = ViewConfiguration.get(context);
        float f1 = context.getResources().getDisplayMetrics().density;
        F = bl.a(viewconfiguration);
        M = (int)(400F * f1);
        N = viewconfiguration.getScaledMaximumFlingVelocity();
        R = new cm(context);
        S = new cm(context);
        O = (int)(25F * f1);
        P = (int)(2.0F * f1);
        D = (int)(16F * f1);
        bh.a(this, new c());
        if (bh.e(this) == 0)
        {
            bh.c(this, 1);
        }
    }

    private void d(int i1)
    {
        if (aa != null)
        {
            aa.onPageSelected(i1);
        }
        if (a != null)
        {
            int k1 = a.size();
            for (int j1 = 0; j1 < k1; j1++)
            {
                e e1 = (e)a.get(j1);
                if (e1 != null)
                {
                    e1.onPageSelected(i1);
                }
            }

        }
        if (ab != null)
        {
            ab.onPageSelected(i1);
        }
    }

    private void e()
    {
        if (af != 0)
        {
            int j1;
            if (ag == null)
            {
                ag = new ArrayList();
            } else
            {
                ag.clear();
            }
            j1 = getChildCount();
            for (int i1 = 0; i1 < j1; i1++)
            {
                View view = getChildAt(i1);
                ag.add(view);
            }

            Collections.sort(ag, ah);
        }
    }

    private boolean e(int i1)
    {
        View view;
        boolean flag;
        flag = false;
        view = findFocus();
        if (view != this) goto _L2; else goto _L1
_L1:
        Object obj = null;
_L13:
        view = FocusFinder.getInstance().findNextFocus(this, ((View) (obj)), i1);
        if (view == null || view == obj) goto _L4; else goto _L3
_L3:
        if (i1 != 17) goto _L6; else goto _L5
_L5:
        int j1;
        j1 = a(h, view).left;
        int k1 = a(h, ((View) (obj))).left;
        StringBuilder stringbuilder;
        if (obj != null && j1 >= k1)
        {
            flag = i();
        } else
        {
            flag = view.requestFocus();
        }
_L15:
        if (flag)
        {
            playSoundEffect(SoundEffectConstants.getContantForFocusDirection(i1));
        }
        return flag;
_L2:
        if (view == null) goto _L8; else goto _L7
_L7:
        obj = view.getParent();
_L12:
        if (!(obj instanceof ViewGroup))
        {
            break MISSING_BLOCK_LABEL_381;
        }
        if (obj != this) goto _L10; else goto _L9
_L9:
        j1 = 1;
_L20:
        if (j1 != 0) goto _L8; else goto _L11
_L10:
        obj = ((ViewParent) (obj)).getParent();
          goto _L12
_L11:
        stringbuilder = new StringBuilder();
        stringbuilder.append(view.getClass().getSimpleName());
        for (obj = view.getParent(); obj instanceof ViewGroup; obj = ((ViewParent) (obj)).getParent())
        {
            stringbuilder.append(" => ").append(obj.getClass().getSimpleName());
        }

        Log.e("ViewPager", (new StringBuilder("arrowScroll tried to find focus based on non-child current focused view ")).append(stringbuilder.toString()).toString());
        obj = null;
          goto _L13
_L6:
        if (i1 != 66) goto _L15; else goto _L14
_L14:
        int l1;
        j1 = a(h, view).left;
        l1 = a(h, ((View) (obj))).left;
        if (obj != null && j1 <= l1) goto _L17; else goto _L16
_L16:
        flag = view.requestFocus();
          goto _L15
_L4:
        if (i1 != 17 && i1 != 1) goto _L19; else goto _L18
_L18:
        flag = i();
          goto _L15
_L19:
        if (i1 != 66 && i1 != 2) goto _L15; else goto _L17
_L17:
        if (i != null && j < i.getCount() - 1)
        {
            setCurrentItem(j + 1, true);
            flag = true;
        } else
        {
            flag = false;
        }
          goto _L15
_L8:
        obj = view;
          goto _L13
        j1 = 0;
          goto _L20
    }

    private void f()
    {
        ViewParent viewparent = getParent();
        if (viewparent != null)
        {
            viewparent.requestDisallowInterceptTouchEvent(true);
        }
    }

    private b g()
    {
        int i1 = getClientWidth();
        float f1;
        float f2;
        float f3;
        float f4;
        b b2;
        boolean flag;
        int j1;
        if (i1 > 0)
        {
            f1 = (float)getScrollX() / (float)i1;
        } else
        {
            f1 = 0.0F;
        }
        if (i1 > 0)
        {
            f2 = (float)p / (float)i1;
        } else
        {
            f2 = 0.0F;
        }
        f4 = 0.0F;
        f3 = 0.0F;
        j1 = -1;
        i1 = 0;
        flag = true;
        b2 = null;
        do
        {
            b b1;
label0:
            {
                b b3;
label1:
                {
                    b3 = b2;
                    if (i1 >= f.size())
                    {
                        break label1;
                    }
                    b1 = (b)f.get(i1);
                    if (!flag && b1.b != j1 + 1)
                    {
                        b1 = g;
                        b1.e = f4 + f3 + f2;
                        b1.b = j1 + 1;
                        b1.d = i.getPageWidth(b1.b);
                        i1--;
                    }
                    f3 = b1.e;
                    f4 = b1.d;
                    if (!flag)
                    {
                        b3 = b2;
                        if (f1 < f3)
                        {
                            break label1;
                        }
                    }
                    if (f1 >= f4 + f3 + f2 && i1 != f.size() - 1)
                    {
                        break label0;
                    }
                    b3 = b1;
                }
                return b3;
            }
            j1 = b1.b;
            f4 = b1.d;
            flag = false;
            i1++;
            b2 = b1;
        } while (true);
    }

    private int getClientWidth()
    {
        return getMeasuredWidth() - getPaddingLeft() - getPaddingRight();
    }

    private void h()
    {
        B = false;
        C = false;
        if (L != null)
        {
            L.recycle();
            L = null;
        }
    }

    private boolean i()
    {
        if (j > 0)
        {
            setCurrentItem(j - 1, true);
            return true;
        } else
        {
            return false;
        }
    }

    private void setScrollState(int i1)
    {
        boolean flag1 = false;
        if (aj != i1)
        {
            aj = i1;
            if (ad != null)
            {
                boolean flag;
                int k1;
                int i2;
                if (i1 != 0)
                {
                    flag = true;
                } else
                {
                    flag = false;
                }
                i2 = getChildCount();
                k1 = 0;
                while (k1 < i2) 
                {
                    byte byte0;
                    if (flag)
                    {
                        byte0 = 2;
                    } else
                    {
                        byte0 = 0;
                    }
                    bh.a(getChildAt(k1), byte0, null);
                    k1++;
                }
            }
            if (aa != null)
            {
                aa.onPageScrollStateChanged(i1);
            }
            if (a != null)
            {
                int l1 = a.size();
                for (int j1 = ((flag1) ? 1 : 0); j1 < l1; j1++)
                {
                    e e1 = (e)a.get(j1);
                    if (e1 != null)
                    {
                        e1.onPageScrollStateChanged(i1);
                    }
                }

            }
            if (ab != null)
            {
                ab.onPageScrollStateChanged(i1);
                return;
            }
        }
    }

    private void setScrollingCacheEnabled(boolean flag)
    {
        if (y != flag)
        {
            y = flag;
        }
    }

    final e a(e e1)
    {
        e e2 = ab;
        ab = e1;
        return e2;
    }

    final void a()
    {
        Object obj;
        int i1;
        int j1;
        int k1;
        int l1;
        int i2;
        int l2 = i.getCount();
        c = l2;
        int j2;
        if (f.size() < A * 2 + 1 && f.size() < l2)
        {
            i1 = 1;
        } else
        {
            i1 = 0;
        }
        j1 = j;
        k1 = 0;
        i2 = 0;
        l1 = i1;
        i1 = j1;
        j1 = k1;
        k1 = i2;
        if (k1 >= f.size())
        {
            break; /* Loop/switch isn't completed */
        }
        obj = (b)f.get(k1);
        i2 = i.getItemPosition(((b) (obj)).a);
        if (i2 == -1)
        {
            break MISSING_BLOCK_LABEL_369;
        }
        if (i2 == -2)
        {
            f.remove(k1);
            l1 = k1 - 1;
            k1 = j1;
            if (j1 == 0)
            {
                i.startUpdate(this);
                k1 = 1;
            }
            i.destroyItem(this, ((b) (obj)).b, ((b) (obj)).a);
            int k2;
            if (j == ((b) (obj)).b)
            {
                j1 = Math.max(0, Math.min(j, l2 - 1));
                i1 = k1;
                k1 = 1;
            } else
            {
                j1 = i1;
                boolean flag = true;
                i1 = k1;
                k1 = ((flag) ? 1 : 0);
            }
        } else
        {
            if (((b) (obj)).b == i2)
            {
                break MISSING_BLOCK_LABEL_369;
            }
            if (((b) (obj)).b == j)
            {
                i1 = i2;
            }
            obj.b = i2;
            i2 = i1;
            k2 = 1;
            l1 = k1;
            i1 = j1;
            j1 = i2;
            k1 = k2;
        }
        i2 = k1;
        j2 = j1;
        k1 = l1 + 1;
        j1 = i1;
        i1 = j2;
        l1 = i2;
        if (true) goto _L2; else goto _L1
_L2:
        break MISSING_BLOCK_LABEL_70;
_L1:
        if (j1 != 0)
        {
            i.finishUpdate(this);
        }
        Collections.sort(f, d);
        if (l1 != 0)
        {
            k1 = getChildCount();
            for (j1 = 0; j1 < k1; j1++)
            {
                obj = (LayoutParams)getChildAt(j1).getLayoutParams();
                if (!((LayoutParams) (obj)).a)
                {
                    obj.c = 0.0F;
                }
            }

            a(i1, false, true);
            requestLayout();
        }
        return;
        i2 = i1;
        k2 = l1;
        l1 = k1;
        i1 = j1;
        j1 = i2;
        k1 = k2;
        if (false)
        {
        } else
        {
            break MISSING_BLOCK_LABEL_204;
        }
    }

    public void addFocusables(ArrayList arraylist, int i1, int j1)
    {
        int l1 = arraylist.size();
        int i2 = getDescendantFocusability();
        if (i2 != 0x60000)
        {
            for (int k1 = 0; k1 < getChildCount(); k1++)
            {
                View view = getChildAt(k1);
                if (view.getVisibility() == 0)
                {
                    b b1 = a(view);
                    if (b1 != null && b1.b == j)
                    {
                        view.addFocusables(arraylist, i1, j1);
                    }
                }
            }

        }
        while (i2 == 0x40000 && l1 != arraylist.size() || !isFocusable() || (j1 & 1) == 1 && isInTouchMode() && !isFocusableInTouchMode() || arraylist == null) 
        {
            return;
        }
        arraylist.add(this);
    }

    public void addTouchables(ArrayList arraylist)
    {
        for (int i1 = 0; i1 < getChildCount(); i1++)
        {
            View view = getChildAt(i1);
            if (view.getVisibility() != 0)
            {
                continue;
            }
            b b1 = a(view);
            if (b1 != null && b1.b == j)
            {
                view.addTouchables(arraylist);
            }
        }

    }

    public void addView(View view, int i1, android.view.ViewGroup.LayoutParams layoutparams)
    {
        if (!checkLayoutParams(layoutparams))
        {
            layoutparams = generateLayoutParams(layoutparams);
        }
        LayoutParams layoutparams1 = (LayoutParams)layoutparams;
        layoutparams1.a = layoutparams1.a | (view instanceof a);
        if (x)
        {
            if (layoutparams1 != null && layoutparams1.a)
            {
                throw new IllegalStateException("Cannot add pager decor view during layout");
            } else
            {
                layoutparams1.d = true;
                addViewInLayout(view, i1, layoutparams);
                return;
            }
        } else
        {
            super.addView(view, i1, layoutparams);
            return;
        }
    }

    final void b()
    {
        a(j);
    }

    public boolean canScrollHorizontally(int i1)
    {
        if (i != null) goto _L2; else goto _L1
_L1:
        return false;
_L2:
        int j1;
        int k1;
        j1 = getClientWidth();
        k1 = getScrollX();
        if (i1 >= 0)
        {
            continue; /* Loop/switch isn't completed */
        }
        if (k1 <= (int)((float)j1 * t)) goto _L1; else goto _L3
_L3:
        return true;
        if (i1 <= 0 || k1 >= (int)((float)j1 * u)) goto _L1; else goto _L4
_L4:
        return true;
    }

    protected boolean checkLayoutParams(android.view.ViewGroup.LayoutParams layoutparams)
    {
        return (layoutparams instanceof LayoutParams) && super.checkLayoutParams(layoutparams);
    }

    public void computeScroll()
    {
        if (!n.isFinished() && n.computeScrollOffset())
        {
            int i1 = getScrollX();
            int j1 = getScrollY();
            int k1 = n.getCurrX();
            int l1 = n.getCurrY();
            if (i1 != k1 || j1 != l1)
            {
                scrollTo(k1, l1);
                if (!c(k1))
                {
                    n.abortAnimation();
                    scrollTo(0, l1);
                }
            }
            bh.d(this);
            return;
        } else
        {
            a(true);
            return;
        }
    }

    public boolean dispatchKeyEvent(KeyEvent keyevent)
    {
        boolean flag1 = false;
        if (super.dispatchKeyEvent(keyevent)) goto _L2; else goto _L1
_L1:
        if (keyevent.getAction() != 0) goto _L4; else goto _L3
_L3:
        keyevent.getKeyCode();
        JVM INSTR lookupswitch 3: default 56
    //                   21: 66
    //                   22: 76
    //                   61: 86;
           goto _L4 _L5 _L6 _L7
_L4:
        boolean flag = false;
_L9:
        if (!flag) goto _L8; else goto _L2
_L2:
        flag1 = true;
_L8:
        return flag1;
_L5:
        flag = e(17);
          goto _L9
_L6:
        flag = e(66);
          goto _L9
_L7:
        if (android.os.Build.VERSION.SDK_INT < 11) goto _L4; else goto _L10
_L10:
        if (!aq.b(keyevent))
        {
            continue; /* Loop/switch isn't completed */
        }
        flag = e(2);
          goto _L9
        if (!aq.a(keyevent)) goto _L4; else goto _L11
_L11:
        flag = e(1);
          goto _L9
    }

    public boolean dispatchPopulateAccessibilityEvent(AccessibilityEvent accessibilityevent)
    {
        boolean flag1 = false;
        if (accessibilityevent.getEventType() != 4096) goto _L2; else goto _L1
_L1:
        boolean flag = super.dispatchPopulateAccessibilityEvent(accessibilityevent);
_L4:
        return flag;
_L2:
        int j1 = getChildCount();
        int i1 = 0;
        do
        {
            flag = flag1;
            if (i1 >= j1)
            {
                continue;
            }
            View view = getChildAt(i1);
            if (view.getVisibility() == 0)
            {
                b b1 = a(view);
                if (b1 != null && b1.b == j && view.dispatchPopulateAccessibilityEvent(accessibilityevent))
                {
                    return true;
                }
            }
            i1++;
        } while (true);
        if (true) goto _L4; else goto _L3
_L3:
    }

    public void draw(Canvas canvas)
    {
        super.draw(canvas);
        int j1 = 0;
        int i1 = 0;
        int k1 = bh.a(this);
        if (k1 == 0 || k1 == 1 && i != null && i.getCount() > 1)
        {
            if (!R.a())
            {
                j1 = canvas.save();
                i1 = getHeight() - getPaddingTop() - getPaddingBottom();
                int l1 = getWidth();
                canvas.rotate(270F);
                canvas.translate(-i1 + getPaddingTop(), t * (float)l1);
                R.a(i1, l1);
                i1 = R.a(canvas) | false;
                canvas.restoreToCount(j1);
            }
            j1 = i1;
            if (!S.a())
            {
                int i2 = canvas.save();
                j1 = getWidth();
                int j2 = getHeight();
                int k2 = getPaddingTop();
                int l2 = getPaddingBottom();
                canvas.rotate(90F);
                canvas.translate(-getPaddingTop(), -(u + 1.0F) * (float)j1);
                S.a(j2 - k2 - l2, j1);
                j1 = i1 | S.a(canvas);
                canvas.restoreToCount(i2);
            }
        } else
        {
            R.b();
            S.b();
        }
        if (j1 != 0)
        {
            bh.d(this);
        }
    }

    protected void drawableStateChanged()
    {
        super.drawableStateChanged();
        Drawable drawable = q;
        if (drawable != null && drawable.isStateful())
        {
            drawable.setState(getDrawableState());
        }
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
        return generateDefaultLayoutParams();
    }

    public bd getAdapter()
    {
        return i;
    }

    protected int getChildDrawingOrder(int i1, int j1)
    {
        int k1 = j1;
        if (af == 2)
        {
            k1 = i1 - 1 - j1;
        }
        return ((LayoutParams)((View)ag.get(k1)).getLayoutParams()).f;
    }

    public int getCurrentItem()
    {
        return j;
    }

    public int getOffscreenPageLimit()
    {
        return A;
    }

    public int getPageMargin()
    {
        return p;
    }

    protected void onAttachedToWindow()
    {
        super.onAttachedToWindow();
        T = true;
    }

    protected void onDetachedFromWindow()
    {
        removeCallbacks(ai);
        super.onDetachedFromWindow();
    }

    protected void onDraw(Canvas canvas)
    {
        super.onDraw(canvas);
        if (p > 0 && q != null && f.size() > 0 && i != null)
        {
            int k1 = getScrollX();
            int l1 = getWidth();
            float f3 = (float)p / (float)l1;
            Object obj = (b)f.get(0);
            float f1 = ((b) (obj)).e;
            int i2 = f.size();
            int i1 = ((b) (obj)).b;
            int j2 = ((b)f.get(i2 - 1)).b;
            int j1 = 0;
            do
            {
                if (i1 >= j2)
                {
                    break;
                }
                for (; i1 > ((b) (obj)).b && j1 < i2; obj = (b)((ArrayList) (obj)).get(j1))
                {
                    obj = f;
                    j1++;
                }

                float f2;
                if (i1 == ((b) (obj)).b)
                {
                    f2 = (((b) (obj)).e + ((b) (obj)).d) * (float)l1;
                    f1 = ((b) (obj)).e + ((b) (obj)).d + f3;
                } else
                {
                    float f4 = i.getPageWidth(i1);
                    f2 = (f1 + f4) * (float)l1;
                    f1 += f4 + f3;
                }
                if ((float)p + f2 > (float)k1)
                {
                    q.setBounds((int)f2, r, (int)((float)p + f2 + 0.5F), s);
                    q.draw(canvas);
                }
                if (f2 > (float)(k1 + l1))
                {
                    break;
                }
                i1++;
            } while (true);
        }
    }

    public boolean onInterceptTouchEvent(MotionEvent motionevent)
    {
        int i1 = motionevent.getAction() & 0xff;
        if (i1 != 3 && i1 != 1) goto _L2; else goto _L1
_L1:
        B = false;
        C = false;
        K = -1;
        if (L != null)
        {
            L.recycle();
            L = null;
        }
_L4:
        return false;
_L2:
        if (i1 == 0)
        {
            break; /* Loop/switch isn't completed */
        }
        if (B)
        {
            return true;
        }
        if (C) goto _L4; else goto _L3
_L3:
        i1;
        JVM INSTR lookupswitch 3: default 116
    //                   0: 427
    //                   2: 143
    //                   6: 558;
           goto _L5 _L6 _L7 _L8
_L5:
        if (L == null)
        {
            L = VelocityTracker.obtain();
        }
        L.addMovement(motionevent);
        return B;
_L7:
        float f1;
        float f3;
        float f4;
        float f5;
        float f6;
        int j1 = K;
        if (j1 == -1)
        {
            continue; /* Loop/switch isn't completed */
        }
        j1 = ax.a(motionevent, j1);
        f3 = ax.c(motionevent, j1);
        f1 = f3 - G;
        f5 = Math.abs(f1);
        f4 = ax.d(motionevent, j1);
        f6 = Math.abs(f4 - J);
        if (f1 != 0.0F)
        {
            float f7 = G;
            boolean flag;
            if (f7 < (float)E && f1 > 0.0F || f7 > (float)(getWidth() - E) && f1 < 0.0F)
            {
                flag = true;
            } else
            {
                flag = false;
            }
            if (!flag && a(this, false, (int)f1, (int)f3, (int)f4))
            {
                G = f3;
                H = f4;
                C = true;
                return false;
            }
        }
        if (f5 <= (float)F || 0.5F * f5 <= f6) goto _L10; else goto _L9
_L9:
        B = true;
        f();
        setScrollState(1);
        if (f1 > 0.0F)
        {
            f1 = I + (float)F;
        } else
        {
            f1 = I - (float)F;
        }
        G = f1;
        H = f4;
        setScrollingCacheEnabled(true);
_L11:
        if (B && a(f3))
        {
            bh.d(this);
        }
        continue; /* Loop/switch isn't completed */
_L10:
        if (f6 > (float)F)
        {
            C = true;
        }
        if (true) goto _L11; else goto _L6
_L6:
        float f2 = motionevent.getX();
        I = f2;
        G = f2;
        f2 = motionevent.getY();
        J = f2;
        H = f2;
        K = ax.b(motionevent, 0);
        C = false;
        n.computeScrollOffset();
        if (aj == 2 && Math.abs(n.getFinalX() - n.getCurrX()) > P)
        {
            n.abortAnimation();
            z = false;
            b();
            B = true;
            f();
            setScrollState(1);
        } else
        {
            a(false);
            B = false;
        }
        continue; /* Loop/switch isn't completed */
_L8:
        a(motionevent);
        if (true) goto _L5; else goto _L12
_L12:
    }

    protected void onLayout(boolean flag, int i1, int j1, int k1, int l1)
    {
        int i2;
        int j2;
        int j3;
        int l4;
        int i5;
        int j5;
        int k5;
        l4 = getChildCount();
        j5 = k1 - i1;
        i5 = l1 - j1;
        j1 = getPaddingLeft();
        i1 = getPaddingTop();
        i2 = getPaddingRight();
        k1 = getPaddingBottom();
        k5 = getScrollX();
        j2 = 0;
        j3 = 0;
_L14:
        if (j3 >= l4) goto _L2; else goto _L1
_L1:
        View view = getChildAt(j3);
        if (view.getVisibility() == 8) goto _L4; else goto _L3
_L3:
        LayoutParams layoutparams = (LayoutParams)view.getLayoutParams();
        if (!layoutparams.a) goto _L4; else goto _L5
_L5:
        int l5;
        l1 = layoutparams.b;
        l5 = layoutparams.b;
        l1 & 7;
        JVM INSTR tableswitch 1 5: default 148
    //                   1 304
    //                   2 148
    //                   3 285
    //                   4 148
    //                   5 326;
           goto _L6 _L7 _L6 _L8 _L6 _L9
_L6:
        int k2;
        l1 = j1;
        k2 = j1;
_L15:
        l5 & 0x70;
        JVM INSTR lookupswitch 3: default 192
    //                   16: 394
    //                   48: 367
    //                   80: 422;
           goto _L10 _L11 _L12 _L13
_L10:
        int k3 = i1;
        j1 = i1;
        i1 = k1;
        k1 = k3;
_L16:
        l1 += k5;
        view.layout(l1, k1, view.getMeasuredWidth() + l1, view.getMeasuredHeight() + k1);
        j2++;
        l1 = i2;
        k1 = k2;
        i2 = i1;
        i1 = j2;
_L17:
        j3++;
        k2 = k1;
        j2 = i1;
        i1 = j1;
        k1 = i2;
        i2 = l1;
        j1 = k2;
          goto _L14
_L8:
        k2 = view.getMeasuredWidth();
        l1 = j1;
        k2 += j1;
          goto _L15
_L7:
        l1 = Math.max((j5 - view.getMeasuredWidth()) / 2, j1);
        k2 = j1;
          goto _L15
_L9:
        k2 = view.getMeasuredWidth();
        l1 = i2 + view.getMeasuredWidth();
        int l3 = j5 - i2 - k2;
        i2 = l1;
        k2 = j1;
        l1 = l3;
          goto _L15
_L12:
        int i4 = view.getMeasuredHeight();
        j1 = k1;
        i4 += i1;
        k1 = i1;
        i1 = j1;
        j1 = i4;
          goto _L16
_L11:
        int j4 = Math.max((i5 - view.getMeasuredHeight()) / 2, i1);
        j1 = i1;
        i1 = k1;
        k1 = j4;
          goto _L16
_L13:
        int k4 = i5 - k1 - view.getMeasuredHeight();
        int i6 = view.getMeasuredHeight();
        j1 = i1;
        i1 = k1 + i6;
        k1 = k4;
          goto _L16
_L2:
        i2 = j5 - j1 - i2;
        for (l1 = 0; l1 < l4; l1++)
        {
            View view1 = getChildAt(l1);
            if (view1.getVisibility() == 8)
            {
                continue;
            }
            LayoutParams layoutparams1 = (LayoutParams)view1.getLayoutParams();
            if (layoutparams1.a)
            {
                continue;
            }
            b b1 = a(view1);
            if (b1 == null)
            {
                continue;
            }
            float f1 = i2;
            int l2 = (int)(b1.e * f1) + j1;
            if (layoutparams1.d)
            {
                layoutparams1.d = false;
                float f2 = i2;
                view1.measure(android.view.View.MeasureSpec.makeMeasureSpec((int)(layoutparams1.c * f2), 0x40000000), android.view.View.MeasureSpec.makeMeasureSpec(i5 - i1 - k1, 0x40000000));
            }
            view1.layout(l2, i1, view1.getMeasuredWidth() + l2, view1.getMeasuredHeight() + i1);
        }

        r = i1;
        s = i5 - k1;
        W = j2;
        if (T)
        {
            a(j, false, 0, false);
        }
        T = false;
        return;
_L4:
        l1 = j2;
        j2 = i1;
        int i3 = j1;
        i1 = l1;
        l1 = i2;
        i2 = k1;
        j1 = j2;
        k1 = i3;
          goto _L17
    }

    protected void onMeasure(int i1, int j1)
    {
label0:
        {
            setMeasuredDimension(getDefaultSize(0, i1), getDefaultSize(0, j1));
            i1 = getMeasuredWidth();
            E = Math.min(i1 / 10, D);
            i1 = i1 - getPaddingLeft() - getPaddingRight();
            j1 = getMeasuredHeight() - getPaddingTop() - getPaddingBottom();
            int j3 = getChildCount();
            int i2 = 0;
            while (i2 < j3) 
            {
label1:
                {
                    {
                        View view = getChildAt(i2);
                        int k1 = i1;
                        int l1 = j1;
                        if (view.getVisibility() == 8)
                        {
                            break label1;
                        }
                        LayoutParams layoutparams = (LayoutParams)view.getLayoutParams();
                        k1 = i1;
                        l1 = j1;
                        if (layoutparams == null)
                        {
                            break label1;
                        }
                        k1 = i1;
                        l1 = j1;
                        if (!layoutparams.a)
                        {
                            break label1;
                        }
                        k1 = layoutparams.b & 7;
                        int j2 = layoutparams.b & 0x70;
                        int k2 = 0x80000000;
                        l1 = 0x80000000;
                        boolean flag;
                        boolean flag1;
                        if (j2 == 48 || j2 == 80)
                        {
                            flag = true;
                        } else
                        {
                            flag = false;
                        }
                        if (k1 == 3 || k1 == 5)
                        {
                            flag1 = true;
                        } else
                        {
                            flag1 = false;
                        }
                        if (flag)
                        {
                            k1 = 0x40000000;
                        } else
                        {
                            k1 = k2;
                            if (flag1)
                            {
                                l1 = 0x40000000;
                                k1 = k2;
                            }
                        }
                        if (layoutparams.width != -2)
                        {
                            k2 = 0x40000000;
                            float f1;
                            int l2;
                            int i3;
                            if (layoutparams.width != -1)
                            {
                                k1 = layoutparams.width;
                            } else
                            {
                                k1 = i1;
                            }
                        } else
                        {
                            k2 = k1;
                            k1 = i1;
                        }
                        if (layoutparams.height == -2)
                        {
                            break label0;
                        }
                        l2 = 0x40000000;
                        l1 = l2;
                        if (layoutparams.height == -1)
                        {
                            break label0;
                        }
                        i3 = layoutparams.height;
                        l1 = l2;
                        l2 = i3;
                    }
                    view.measure(android.view.View.MeasureSpec.makeMeasureSpec(k1, k2), android.view.View.MeasureSpec.makeMeasureSpec(l2, l1));
                    if (flag)
                    {
                        l1 = j1 - view.getMeasuredHeight();
                        k1 = i1;
                    } else
                    {
                        k1 = i1;
                        l1 = j1;
                        if (flag1)
                        {
                            k1 = i1 - view.getMeasuredWidth();
                            l1 = j1;
                        }
                    }
                }
                i2++;
                i1 = k1;
                j1 = l1;
            }
            v = android.view.View.MeasureSpec.makeMeasureSpec(i1, 0x40000000);
            w = android.view.View.MeasureSpec.makeMeasureSpec(j1, 0x40000000);
            x = true;
            b();
            x = false;
            k1 = getChildCount();
            for (j1 = 0; j1 < k1; j1++)
            {
                view = getChildAt(j1);
                if (view.getVisibility() == 8)
                {
                    continue;
                }
                layoutparams = (LayoutParams)view.getLayoutParams();
                if (layoutparams == null || !layoutparams.a)
                {
                    f1 = i1;
                    view.measure(android.view.View.MeasureSpec.makeMeasureSpec((int)(layoutparams.c * f1), 0x40000000), w);
                }
            }

            return;
        }
        l2 = j1;
        break MISSING_BLOCK_LABEL_282;
    }

    protected boolean onRequestFocusInDescendants(int i1, Rect rect)
    {
        byte byte0 = -1;
        int k1 = getChildCount();
        int j1;
        if ((i1 & 2) != 0)
        {
            byte0 = 1;
            j1 = 0;
        } else
        {
            j1 = k1 - 1;
            k1 = -1;
        }
        for (; j1 != k1; j1 += byte0)
        {
            View view = getChildAt(j1);
            if (view.getVisibility() != 0)
            {
                continue;
            }
            b b1 = a(view);
            if (b1 != null && b1.b == j && view.requestFocus(i1, rect))
            {
                return true;
            }
        }

        return false;
    }

    public void onRestoreInstanceState(Parcelable parcelable)
    {
        if (!(parcelable instanceof SavedState))
        {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        parcelable = (SavedState)parcelable;
        super.onRestoreInstanceState(parcelable.getSuperState());
        if (i != null)
        {
            i.restoreState(((SavedState) (parcelable)).b, ((SavedState) (parcelable)).c);
            a(((SavedState) (parcelable)).a, false, true);
            return;
        } else
        {
            k = ((SavedState) (parcelable)).a;
            l = ((SavedState) (parcelable)).b;
            m = ((SavedState) (parcelable)).c;
            return;
        }
    }

    public Parcelable onSaveInstanceState()
    {
        SavedState savedstate = new SavedState(super.onSaveInstanceState());
        savedstate.a = j;
        if (i != null)
        {
            savedstate.b = i.saveState();
        }
        return savedstate;
    }

    protected void onSizeChanged(int i1, int j1, int k1, int l1)
    {
        super.onSizeChanged(i1, j1, k1, l1);
        if (i1 != k1)
        {
            a(i1, k1, p, p);
        }
    }

    public boolean onTouchEvent(MotionEvent motionevent)
    {
        int i1;
        int j1;
        j1 = 0;
        if (Q)
        {
            return true;
        }
        if (motionevent.getAction() == 0 && motionevent.getEdgeFlags() != 0)
        {
            return false;
        }
        if (i == null || i.getCount() == 0)
        {
            return false;
        }
        if (L == null)
        {
            L = VelocityTracker.obtain();
        }
        L.addMovement(motionevent);
        i1 = j1;
        motionevent.getAction() & 0xff;
        JVM INSTR tableswitch 0 6: default 124
    //                   0 139
    //                   1 391
    //                   2 201
    //                   3 675
    //                   4 128
    //                   5 726
    //                   6 759;
           goto _L1 _L2 _L3 _L4 _L5 _L6 _L7 _L8
_L6:
        break; /* Loop/switch isn't completed */
_L1:
        i1 = j1;
_L10:
        if (i1 != 0)
        {
            bh.d(this);
        }
        return true;
_L2:
        n.abortAnimation();
        z = false;
        b();
        float f1 = motionevent.getX();
        I = f1;
        G = f1;
        f1 = motionevent.getY();
        J = f1;
        H = f1;
        K = ax.b(motionevent, 0);
        i1 = j1;
        continue; /* Loop/switch isn't completed */
_L4:
        if (!B)
        {
            i1 = ax.a(motionevent, K);
            float f2 = ax.c(motionevent, i1);
            float f6 = Math.abs(f2 - G);
            float f4 = ax.d(motionevent, i1);
            float f7 = Math.abs(f4 - H);
            if (f6 > (float)F && f6 > f7)
            {
                B = true;
                f();
                ViewParent viewparent;
                if (f2 - I > 0.0F)
                {
                    f2 = I + (float)F;
                } else
                {
                    f2 = I - (float)F;
                }
                G = f2;
                H = f4;
                setScrollState(1);
                setScrollingCacheEnabled(true);
                viewparent = getParent();
                if (viewparent != null)
                {
                    viewparent.requestDisallowInterceptTouchEvent(true);
                }
            }
        }
        i1 = j1;
        if (B)
        {
            i1 = a(ax.c(motionevent, ax.a(motionevent, K))) | false;
        }
        continue; /* Loop/switch isn't completed */
_L3:
        i1 = j1;
        if (B)
        {
            Object obj = L;
            ((VelocityTracker) (obj)).computeCurrentVelocity(1000, N);
            int k1 = (int)bg.a(((VelocityTracker) (obj)), K);
            z = true;
            j1 = getClientWidth();
            int l1 = getScrollX();
            obj = g();
            i1 = ((b) (obj)).b;
            float f5 = ((float)l1 / (float)j1 - ((b) (obj)).e) / ((b) (obj)).d;
            if (Math.abs((int)(ax.c(motionevent, ax.a(motionevent, K)) - I)) > O && Math.abs(k1) > M)
            {
                if (k1 <= 0)
                {
                    i1++;
                }
            } else
            {
                float f3;
                if (i1 >= j)
                {
                    f3 = 0.4F;
                } else
                {
                    f3 = 0.6F;
                }
                i1 = (int)((float)i1 + f5 + f3);
            }
            j1 = i1;
            if (f.size() > 0)
            {
                motionevent = (b)f.get(0);
                b b1 = (b)f.get(f.size() - 1);
                j1 = Math.max(((b) (motionevent)).b, Math.min(i1, b1.b));
            }
            a(j1, true, true, k1);
            K = -1;
            h();
            i1 = R.c() | S.c();
        }
        continue; /* Loop/switch isn't completed */
_L5:
        i1 = j1;
        if (B)
        {
            a(j, true, 0, false);
            K = -1;
            h();
            i1 = R.c() | S.c();
        }
        continue; /* Loop/switch isn't completed */
_L7:
        i1 = ax.b(motionevent);
        G = ax.c(motionevent, i1);
        K = ax.b(motionevent, i1);
        i1 = j1;
        continue; /* Loop/switch isn't completed */
_L8:
        a(motionevent);
        G = ax.c(motionevent, ax.a(motionevent, K));
        i1 = j1;
        if (true) goto _L10; else goto _L9
_L9:
    }

    public void removeView(View view)
    {
        if (x)
        {
            removeViewInLayout(view);
            return;
        } else
        {
            super.removeView(view);
            return;
        }
    }

    public void setAdapter(bd bd1)
    {
        if (i != null)
        {
            i.unregisterDataSetObserver(o);
            i.startUpdate(this);
            for (int i1 = 0; i1 < f.size(); i1++)
            {
                b b1 = (b)f.get(i1);
                i.destroyItem(this, b1.b, b1.a);
            }

            i.finishUpdate(this);
            f.clear();
            int k1;
            for (int j1 = 0; j1 < getChildCount(); j1 = k1 + 1)
            {
                k1 = j1;
                if (!((LayoutParams)getChildAt(j1).getLayoutParams()).a)
                {
                    removeViewAt(j1);
                    k1 = j1 - 1;
                }
            }

            j = 0;
            scrollTo(0, 0);
        }
        bd bd2 = i;
        i = bd1;
        c = 0;
        if (i != null)
        {
            if (o == null)
            {
                o = new g((byte)0);
            }
            i.registerDataSetObserver(o);
            z = false;
            boolean flag = T;
            T = true;
            c = i.getCount();
            if (k >= 0)
            {
                i.restoreState(l, m);
                a(k, false, true);
                k = -1;
                l = null;
                m = null;
            } else
            if (!flag)
            {
                b();
            } else
            {
                requestLayout();
            }
        }
        if (ac != null && bd2 != bd1)
        {
            ac.a(bd2, bd1);
        }
    }

    void setChildrenDrawingOrderEnabledCompat(boolean flag)
    {
        if (android.os.Build.VERSION.SDK_INT < 7)
        {
            break MISSING_BLOCK_LABEL_57;
        }
        if (ae == null)
        {
            try
            {
                ae = android/view/ViewGroup.getDeclaredMethod("setChildrenDrawingOrderEnabled", new Class[] {
                    Boolean.TYPE
                });
            }
            catch (NoSuchMethodException nosuchmethodexception)
            {
                Log.e("ViewPager", "Can't find setChildrenDrawingOrderEnabled", nosuchmethodexception);
            }
        }
        ae.invoke(this, new Object[] {
            Boolean.valueOf(flag)
        });
        return;
        Exception exception;
        exception;
        Log.e("ViewPager", "Error changing children drawing order", exception);
        return;
    }

    public void setCurrentItem(int i1)
    {
        z = false;
        boolean flag;
        if (!T)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        a(i1, flag, false);
    }

    public void setCurrentItem(int i1, boolean flag)
    {
        z = false;
        a(i1, flag, false);
    }

    public void setOffscreenPageLimit(int i1)
    {
        int j1 = i1;
        if (i1 <= 0)
        {
            Log.w("ViewPager", (new StringBuilder("Requested offscreen page limit ")).append(i1).append(" too small; defaulting to 1").toString());
            j1 = 1;
        }
        if (j1 != A)
        {
            A = j1;
            b();
        }
    }

    void setOnAdapterChangeListener(d d1)
    {
        ac = d1;
    }

    public void setOnPageChangeListener(e e1)
    {
        aa = e1;
    }

    public void setPageMargin(int i1)
    {
        int j1 = p;
        p = i1;
        int k1 = getWidth();
        a(k1, k1, i1, j1);
        requestLayout();
    }

    public void setPageMarginDrawable(int i1)
    {
        setPageMarginDrawable(getContext().getResources().getDrawable(i1));
    }

    public void setPageMarginDrawable(Drawable drawable)
    {
        q = drawable;
        if (drawable != null)
        {
            refreshDrawableState();
        }
        boolean flag;
        if (drawable == null)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        setWillNotDraw(flag);
        invalidate();
    }

    public void setPageTransformer(boolean flag, f f1)
    {
        int i1 = 1;
        if (android.os.Build.VERSION.SDK_INT >= 11)
        {
            boolean flag1;
            boolean flag2;
            boolean flag3;
            if (f1 != null)
            {
                flag2 = true;
            } else
            {
                flag2 = false;
            }
            if (ad != null)
            {
                flag3 = true;
            } else
            {
                flag3 = false;
            }
            if (flag2 != flag3)
            {
                flag1 = true;
            } else
            {
                flag1 = false;
            }
            ad = f1;
            setChildrenDrawingOrderEnabledCompat(flag2);
            if (flag2)
            {
                if (flag)
                {
                    i1 = 2;
                }
                af = i1;
            } else
            {
                af = 0;
            }
            if (flag1)
            {
                b();
            }
        }
    }

    protected boolean verifyDrawable(Drawable drawable)
    {
        return super.verifyDrawable(drawable) || drawable == q;
    }

}
