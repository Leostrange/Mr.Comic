// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package android.support.v7.widget;

import android.content.Context;
import android.graphics.Rect;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.view.View;
import android.view.accessibility.AccessibilityEvent;
import bh;
import by;
import bz;
import cd;
import fb;
import fd;
import ff;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.BitSet;
import java.util.List;

// Referenced classes of package android.support.v7.widget:
//            RecyclerView

public final class StaggeredGridLayoutManager extends RecyclerView.h
{
    public static class LayoutParams extends RecyclerView.LayoutParams
    {

        b a;
        boolean b;

        public final int a()
        {
            if (a == null)
            {
                return -1;
            } else
            {
                return a.e;
            }
        }

        public LayoutParams()
        {
        }

        public LayoutParams(Context context, AttributeSet attributeset)
        {
            super(context, attributeset);
        }

        public LayoutParams(android.view.ViewGroup.LayoutParams layoutparams)
        {
            super(layoutparams);
        }

        public LayoutParams(android.view.ViewGroup.MarginLayoutParams marginlayoutparams)
        {
            super(marginlayoutparams);
        }
    }

    static final class LazySpanLookup
    {

        int a[];
        List b;

        final int a(int i1)
        {
            if (b != null)
            {
                for (int j1 = b.size() - 1; j1 >= 0; j1--)
                {
                    if (((FullSpanItem)b.get(j1)).a >= i1)
                    {
                        b.remove(j1);
                    }
                }

            }
            return b(i1);
        }

        public final FullSpanItem a(int i1, int j1, int k1)
        {
            if (b != null) goto _L2; else goto _L1
_L1:
            FullSpanItem fullspanitem = null;
_L6:
            return fullspanitem;
_L2:
            int l1;
            int i2;
            i2 = b.size();
            l1 = 0;
_L9:
            if (l1 >= i2) goto _L4; else goto _L3
_L3:
            FullSpanItem fullspanitem1;
            fullspanitem1 = (FullSpanItem)b.get(l1);
            if (fullspanitem1.a >= j1)
            {
                return null;
            }
            if (fullspanitem1.a < i1)
            {
                continue; /* Loop/switch isn't completed */
            }
            fullspanitem = fullspanitem1;
            if (k1 == 0) goto _L6; else goto _L5
_L5:
            fullspanitem = fullspanitem1;
            if (fullspanitem1.b == k1) goto _L6; else goto _L7
_L7:
            fullspanitem = fullspanitem1;
            if (fullspanitem1.d) goto _L6; else goto _L8
_L8:
            l1++;
              goto _L9
_L4:
            return null;
        }

        final void a()
        {
            if (a != null)
            {
                Arrays.fill(a, -1);
            }
            b = null;
        }

        final void a(int i1, int j1)
        {
            if (a != null && i1 < a.length) goto _L2; else goto _L1
_L1:
            return;
_L2:
            c(i1 + j1);
            System.arraycopy(a, i1 + j1, a, i1, a.length - i1 - j1);
            Arrays.fill(a, a.length - j1, a.length, -1);
            if (b != null)
            {
                int k1 = b.size() - 1;
                while (k1 >= 0) 
                {
                    FullSpanItem fullspanitem = (FullSpanItem)b.get(k1);
                    if (fullspanitem.a >= i1)
                    {
                        if (fullspanitem.a < i1 + j1)
                        {
                            b.remove(k1);
                        } else
                        {
                            fullspanitem.a = fullspanitem.a - j1;
                        }
                    }
                    k1--;
                }
            }
            if (true) goto _L1; else goto _L3
_L3:
        }

        public final void a(FullSpanItem fullspanitem)
        {
            if (b == null)
            {
                b = new ArrayList();
            }
            int j1 = b.size();
            for (int i1 = 0; i1 < j1; i1++)
            {
                FullSpanItem fullspanitem1 = (FullSpanItem)b.get(i1);
                if (fullspanitem1.a == fullspanitem.a)
                {
                    b.remove(i1);
                }
                if (fullspanitem1.a >= fullspanitem.a)
                {
                    b.add(i1, fullspanitem);
                    return;
                }
            }

            b.add(fullspanitem);
        }

        final int b(int i1)
        {
            if (a == null)
            {
                return -1;
            }
            if (i1 >= a.length)
            {
                return -1;
            }
            if (b == null) goto _L2; else goto _L1
_L1:
            int j1;
            int k1;
            FullSpanItem fullspanitem = d(i1);
            if (fullspanitem != null)
            {
                b.remove(fullspanitem);
            }
            k1 = b.size();
            j1 = 0;
_L6:
            if (j1 >= k1)
            {
                break MISSING_BLOCK_LABEL_175;
            }
            if (((FullSpanItem)b.get(j1)).a < i1) goto _L4; else goto _L3
_L3:
            if (j1 == -1) goto _L2; else goto _L5
_L5:
            FullSpanItem fullspanitem1 = (FullSpanItem)b.get(j1);
            b.remove(j1);
            j1 = fullspanitem1.a;
_L7:
            if (j1 == -1)
            {
                Arrays.fill(a, i1, a.length, -1);
                return a.length;
            } else
            {
                Arrays.fill(a, i1, j1 + 1, -1);
                return j1 + 1;
            }
_L4:
            j1++;
              goto _L6
_L2:
            j1 = -1;
              goto _L7
            j1 = -1;
              goto _L3
        }

        final void b(int i1, int j1)
        {
            if (a != null && i1 < a.length) goto _L2; else goto _L1
_L1:
            return;
_L2:
            c(i1 + j1);
            System.arraycopy(a, i1, a, i1 + j1, a.length - i1 - j1);
            Arrays.fill(a, i1, i1 + j1, -1);
            if (b != null)
            {
                int k1 = b.size() - 1;
                while (k1 >= 0) 
                {
                    FullSpanItem fullspanitem = (FullSpanItem)b.get(k1);
                    if (fullspanitem.a >= i1)
                    {
                        fullspanitem.a = fullspanitem.a + j1;
                    }
                    k1--;
                }
            }
            if (true) goto _L1; else goto _L3
_L3:
        }

        final void c(int i1)
        {
            if (a == null)
            {
                a = new int[Math.max(i1, 10) + 1];
                Arrays.fill(a, -1);
            } else
            if (i1 >= a.length)
            {
                int ai[] = a;
                int j1;
                for (j1 = a.length; j1 <= i1; j1 *= 2) { }
                a = new int[j1];
                System.arraycopy(ai, 0, a, 0, ai.length);
                Arrays.fill(a, ai.length, a.length, -1);
                return;
            }
        }

        public final FullSpanItem d(int i1)
        {
            if (b != null) goto _L2; else goto _L1
_L1:
            FullSpanItem fullspanitem = null;
_L4:
            return fullspanitem;
_L2:
            int j1 = b.size() - 1;
label0:
            do
            {
label1:
                {
                    if (j1 < 0)
                    {
                        break label1;
                    }
                    FullSpanItem fullspanitem1 = (FullSpanItem)b.get(j1);
                    fullspanitem = fullspanitem1;
                    if (fullspanitem1.a == i1)
                    {
                        break label0;
                    }
                    j1--;
                }
            } while (true);
            if (true) goto _L4; else goto _L3
_L3:
            return null;
        }
    }

    static class LazySpanLookup.FullSpanItem
        implements Parcelable
    {

        public static final android.os.Parcelable.Creator CREATOR = new android.os.Parcelable.Creator() {

            public final Object createFromParcel(Parcel parcel)
            {
                return new LazySpanLookup.FullSpanItem(parcel);
            }

            public final volatile Object[] newArray(int i1)
            {
                return new LazySpanLookup.FullSpanItem[i1];
            }

        };
        int a;
        int b;
        int c[];
        boolean d;

        final int a(int i1)
        {
            if (c == null)
            {
                return 0;
            } else
            {
                return c[i1];
            }
        }

        public int describeContents()
        {
            return 0;
        }

        public String toString()
        {
            return (new StringBuilder("FullSpanItem{mPosition=")).append(a).append(", mGapDir=").append(b).append(", mHasUnwantedGapAfter=").append(d).append(", mGapPerSpan=").append(Arrays.toString(c)).append('}').toString();
        }

        public void writeToParcel(Parcel parcel, int i1)
        {
            parcel.writeInt(a);
            parcel.writeInt(b);
            if (d)
            {
                i1 = 1;
            } else
            {
                i1 = 0;
            }
            parcel.writeInt(i1);
            if (c != null && c.length > 0)
            {
                parcel.writeInt(c.length);
                parcel.writeIntArray(c);
                return;
            } else
            {
                parcel.writeInt(0);
                return;
            }
        }


        public LazySpanLookup.FullSpanItem()
        {
        }

        public LazySpanLookup.FullSpanItem(Parcel parcel)
        {
            boolean flag = true;
            super();
            a = parcel.readInt();
            b = parcel.readInt();
            int i1;
            if (parcel.readInt() != 1)
            {
                flag = false;
            }
            d = flag;
            i1 = parcel.readInt();
            if (i1 > 0)
            {
                c = new int[i1];
                parcel.readIntArray(c);
            }
        }
    }

    static class SavedState
        implements Parcelable
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
        int b;
        int c;
        int d[];
        int e;
        int f[];
        List g;
        boolean h;
        boolean i;
        boolean j;

        public int describeContents()
        {
            return 0;
        }

        public void writeToParcel(Parcel parcel, int i1)
        {
            boolean flag = true;
            parcel.writeInt(a);
            parcel.writeInt(b);
            parcel.writeInt(c);
            if (c > 0)
            {
                parcel.writeIntArray(d);
            }
            parcel.writeInt(e);
            if (e > 0)
            {
                parcel.writeIntArray(f);
            }
            if (h)
            {
                i1 = 1;
            } else
            {
                i1 = 0;
            }
            parcel.writeInt(i1);
            if (i)
            {
                i1 = 1;
            } else
            {
                i1 = 0;
            }
            parcel.writeInt(i1);
            if (j)
            {
                i1 = ((flag) ? 1 : 0);
            } else
            {
                i1 = 0;
            }
            parcel.writeInt(i1);
            parcel.writeList(g);
        }


        public SavedState()
        {
        }

        SavedState(Parcel parcel)
        {
            boolean flag1 = true;
            super();
            a = parcel.readInt();
            b = parcel.readInt();
            c = parcel.readInt();
            if (c > 0)
            {
                d = new int[c];
                parcel.readIntArray(d);
            }
            e = parcel.readInt();
            if (e > 0)
            {
                f = new int[e];
                parcel.readIntArray(f);
            }
            boolean flag;
            if (parcel.readInt() == 1)
            {
                flag = true;
            } else
            {
                flag = false;
            }
            h = flag;
            if (parcel.readInt() == 1)
            {
                flag = true;
            } else
            {
                flag = false;
            }
            i = flag;
            if (parcel.readInt() == 1)
            {
                flag = flag1;
            } else
            {
                flag = false;
            }
            j = flag;
            g = parcel.readArrayList(android/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem.getClassLoader());
        }

        public SavedState(SavedState savedstate)
        {
            c = savedstate.c;
            a = savedstate.a;
            b = savedstate.b;
            d = savedstate.d;
            e = savedstate.e;
            f = savedstate.f;
            h = savedstate.h;
            i = savedstate.i;
            j = savedstate.j;
            g = savedstate.g;
        }
    }

    final class a
    {

        int a;
        int b;
        boolean c;
        boolean d;
        final StaggeredGridLayoutManager e;
    }

    final class b
    {

        ArrayList a;
        int b;
        int c;
        int d;
        final int e;
        final StaggeredGridLayoutManager f;

        private void f()
        {
            View view = (View)a.get(0);
            LayoutParams layoutparams = (LayoutParams)view.getLayoutParams();
            b = f.a.a(view);
            if (layoutparams.b)
            {
                LazySpanLookup.FullSpanItem fullspanitem = f.f.d(((RecyclerView.LayoutParams) (layoutparams)).c.c());
                if (fullspanitem != null && fullspanitem.b == -1)
                {
                    b = b - fullspanitem.a(e);
                }
            }
        }

        private void g()
        {
            View view = (View)a.get(a.size() - 1);
            LayoutParams layoutparams = (LayoutParams)view.getLayoutParams();
            c = f.a.b(view);
            if (layoutparams.b)
            {
                LazySpanLookup.FullSpanItem fullspanitem = f.f.d(((RecyclerView.LayoutParams) (layoutparams)).c.c());
                if (fullspanitem != null && fullspanitem.b == 1)
                {
                    int i1 = c;
                    c = fullspanitem.a(e) + i1;
                }
            }
        }

        final int a()
        {
            if (b != 0x80000000)
            {
                return b;
            } else
            {
                f();
                return b;
            }
        }

        final int a(int i1)
        {
            if (b != 0x80000000)
            {
                i1 = b;
            } else
            if (a.size() != 0)
            {
                f();
                return b;
            }
            return i1;
        }

        final void a(View view)
        {
            LayoutParams layoutparams = (LayoutParams)view.getLayoutParams();
            layoutparams.a = this;
            a.add(0, view);
            b = 0x80000000;
            if (a.size() == 1)
            {
                c = 0x80000000;
            }
            if (((RecyclerView.LayoutParams) (layoutparams)).c.m() || ((RecyclerView.LayoutParams) (layoutparams)).c.k())
            {
                d = d + f.a.c(view);
            }
        }

        final int b()
        {
            if (c != 0x80000000)
            {
                return c;
            } else
            {
                g();
                return c;
            }
        }

        final int b(int i1)
        {
            if (c != 0x80000000)
            {
                i1 = c;
            } else
            if (a.size() != 0)
            {
                g();
                return c;
            }
            return i1;
        }

        final void b(View view)
        {
            LayoutParams layoutparams = (LayoutParams)view.getLayoutParams();
            layoutparams.a = this;
            a.add(view);
            c = 0x80000000;
            if (a.size() == 1)
            {
                b = 0x80000000;
            }
            if (((RecyclerView.LayoutParams) (layoutparams)).c.m() || ((RecyclerView.LayoutParams) (layoutparams)).c.k())
            {
                d = d + f.a.c(view);
            }
        }

        final void c()
        {
            a.clear();
            b = 0x80000000;
            c = 0x80000000;
            d = 0;
        }

        final void c(int i1)
        {
            b = i1;
            c = i1;
        }

        final void d()
        {
            int i1 = a.size();
            View view = (View)a.remove(i1 - 1);
            LayoutParams layoutparams = (LayoutParams)view.getLayoutParams();
            layoutparams.a = null;
            if (((RecyclerView.LayoutParams) (layoutparams)).c.m() || ((RecyclerView.LayoutParams) (layoutparams)).c.k())
            {
                d = d - f.a.c(view);
            }
            if (i1 == 1)
            {
                b = 0x80000000;
            }
            c = 0x80000000;
        }

        final void d(int i1)
        {
            if (b != 0x80000000)
            {
                b = b + i1;
            }
            if (c != 0x80000000)
            {
                c = c + i1;
            }
        }

        final void e()
        {
            View view = (View)a.remove(0);
            LayoutParams layoutparams = (LayoutParams)view.getLayoutParams();
            layoutparams.a = null;
            if (a.size() == 0)
            {
                c = 0x80000000;
            }
            if (((RecyclerView.LayoutParams) (layoutparams)).c.m() || ((RecyclerView.LayoutParams) (layoutparams)).c.k())
            {
                d = d - f.a.c(view);
            }
            b = 0x80000000;
        }
    }


    private final a A;
    private boolean B;
    private boolean C;
    private final Runnable D;
    fd a;
    fd b;
    boolean c;
    int d;
    int e;
    LazySpanLookup f;
    private int g;
    private b h[];
    private int i;
    private int j;
    private fb k;
    private boolean l;
    private BitSet m;
    private int n;
    private boolean o;
    private boolean p;
    private SavedState v;
    private int w;
    private int x;
    private int y;
    private final Rect z;

    private static int a(int i1, int j1, int k1)
    {
        int l1;
        if (j1 != 0 || k1 != 0)
        {
            if ((l1 = android.view.View.MeasureSpec.getMode(i1)) == 0x80000000 || l1 == 0x40000000)
            {
                return android.view.View.MeasureSpec.makeMeasureSpec(android.view.View.MeasureSpec.getSize(i1) - j1 - k1, l1);
            }
        }
        return i1;
    }

    private int a(RecyclerView.l l1, fb fb1, RecyclerView.p p1)
    {
        Object obj;
        Object obj1;
        View view;
        LayoutParams layoutparams;
        int i1;
        int j1;
        int k2;
        int l2;
        int i3;
        int l3;
        m.set(0, g, true);
        int k1;
        if (fb1.d == 1)
        {
            k2 = fb1.f + fb1.a;
        } else
        {
            k2 = fb1.e - fb1.a;
        }
        f(fb1.d, k2);
        if (c)
        {
            l2 = a.c();
        } else
        {
            l2 = a.b();
        }
        i1 = 0;
_L31:
        if (fb1.b >= 0 && fb1.b < p1.a())
        {
            j1 = 1;
        } else
        {
            j1 = 0;
        }
        if (j1 == 0 || m.isEmpty()) goto _L2; else goto _L1
_L1:
        view = l1.b(fb1.b);
        fb1.b = fb1.b + fb1.c;
        layoutparams = (LayoutParams)view.getLayoutParams();
        l3 = ((RecyclerView.LayoutParams) (layoutparams)).c.c();
        obj = f;
        if (((LazySpanLookup) (obj)).a == null || l3 >= ((LazySpanLookup) (obj)).a.length)
        {
            i1 = -1;
        } else
        {
            i1 = ((LazySpanLookup) (obj)).a[l3];
        }
        if (i1 == -1)
        {
            i3 = 1;
        } else
        {
            i3 = 0;
        }
        if (i3 == 0) goto _L4; else goto _L3
_L3:
        if (!layoutparams.b) goto _L6; else goto _L5
_L5:
        obj = h[0];
_L9:
        obj1 = f;
        ((LazySpanLookup) (obj1)).c(l3);
        ((LazySpanLookup) (obj1)).a[l3] = ((b) (obj)).e;
_L12:
        layoutparams.a = ((b) (obj));
        if (fb1.d == 1)
        {
            super.a(view, -1, false);
        } else
        {
            super.a(view, 0, false);
        }
        if (layoutparams.b)
        {
            if (i == 1)
            {
                a(view, w, e(layoutparams.height, y));
            } else
            {
                a(view, e(layoutparams.width, x), w);
            }
        } else
        if (i == 1)
        {
            a(view, x, e(layoutparams.height, y));
        } else
        {
            a(view, e(layoutparams.width, x), y);
        }
        if (fb1.d == 1)
        {
            int i2;
            int j3;
            int k3;
            int i4;
            boolean flag;
            if (layoutparams.b)
            {
                i1 = i(l2);
            } else
            {
                i1 = ((b) (obj)).b(l2);
            }
            j1 = i1 + a.c(view);
            if (i3 == 0 || !layoutparams.b)
            {
                break MISSING_BLOCK_LABEL_1604;
            }
            obj1 = new LazySpanLookup.FullSpanItem();
            obj1.c = new int[g];
            for (k1 = 0; k1 < g; k1++)
            {
                ((LazySpanLookup.FullSpanItem) (obj1)).c[k1] = i1 - h[k1].b(i1);
            }

            obj1.b = -1;
            obj1.a = l3;
            f.a(((LazySpanLookup.FullSpanItem) (obj1)));
            j2 = i1;
        } else
        {
            if (layoutparams.b)
            {
                j1 = h(l2);
            } else
            {
                j1 = ((b) (obj)).a(l2);
            }
            j2 = a.c(view);
            if (i3 != 0 && layoutparams.b)
            {
                obj1 = new LazySpanLookup.FullSpanItem();
                obj1.c = new int[g];
                for (i1 = 0; i1 < g; i1++)
                {
                    ((LazySpanLookup.FullSpanItem) (obj1)).c[i1] = h[i1].a(j1) - j1;
                }

                obj1.b = 1;
                obj1.a = l3;
                f.a(((LazySpanLookup.FullSpanItem) (obj1)));
            }
            j2 = j1 - j2;
        }
          goto _L7
_L6:
        i1 = fb1.d;
        if (i == 0)
        {
            if (i1 == -1)
            {
                flag = true;
            } else
            {
                flag = false;
            }
            if (flag != c)
            {
                i1 = 1;
            } else
            {
                i1 = 0;
            }
        } else
        {
            if (i1 == -1)
            {
                flag = true;
            } else
            {
                flag = false;
            }
            if (flag == c)
            {
                flag = true;
            } else
            {
                flag = false;
            }
            if (flag == t())
            {
                i1 = 1;
            } else
            {
                i1 = 0;
            }
        }
        if (i1 != 0)
        {
            i1 = g - 1;
            i2 = -1;
            j1 = -1;
        } else
        {
            i1 = 0;
            i2 = g;
            j1 = 1;
        }
        if (fb1.d != 1)
        {
            break MISSING_BLOCK_LABEL_671;
        }
        obj1 = null;
        k3 = 0x7fffffff;
        i4 = a.b();
        j3 = i1;
        i1 = k3;
        obj = obj1;
        if (j3 == i2) goto _L9; else goto _L8
_L8:
        obj = h[j3];
        k3 = ((b) (obj)).b(i4);
        int j2;
        if (k3 < i1)
        {
            i1 = k3;
        } else
        {
            obj = obj1;
        }
        j3 += j1;
        obj1 = obj;
        break MISSING_BLOCK_LABEL_536;
        obj1 = null;
        k3 = 0x80000000;
        i4 = a.c();
        j3 = i1;
        i1 = k3;
_L11:
        obj = obj1;
        if (j3 == i2) goto _L9; else goto _L10
_L10:
        obj = h[j3];
        k3 = ((b) (obj)).a(i4);
        if (k3 > i1)
        {
            i1 = k3;
        } else
        {
            obj = obj1;
        }
        j3 += j1;
        obj1 = obj;
          goto _L11
          goto _L9
_L4:
        obj = h[i1];
          goto _L12
_L7:
        if (!layoutparams.b || fb1.c != -1) goto _L14; else goto _L13
_L13:
        if (i3 != 0) goto _L16; else goto _L15
_L15:
        if (fb1.d != 1) goto _L18; else goto _L17
_L17:
        i3 = h[0].b(0x80000000);
        i1 = 1;
_L24:
        if (i1 >= g) goto _L20; else goto _L19
_L19:
        if (h[i1].b(0x80000000) == i3) goto _L22; else goto _L21
_L21:
        i1 = 0;
_L25:
        if (i1 == 0)
        {
            i1 = 1;
        } else
        {
            i1 = 0;
        }
_L28:
        if (i1 == 0) goto _L14; else goto _L23
_L23:
        obj1 = f.d(l3);
        if (obj1 != null)
        {
            obj1.d = true;
        }
_L16:
        B = true;
          goto _L14
_L22:
        i1++;
          goto _L24
_L20:
        i1 = 1;
          goto _L25
_L18:
        i3 = h[0].a(0x80000000);
        i1 = 1;
_L29:
        if (i1 >= g)
        {
            break MISSING_BLOCK_LABEL_1291;
        }
        if (h[i1].a(0x80000000) == i3) goto _L27; else goto _L26
_L26:
        i1 = 0;
_L30:
        if (i1 == 0)
        {
            i1 = 1;
        } else
        {
            i1 = 0;
        }
          goto _L28
_L27:
        i1++;
          goto _L29
        i1 = 1;
          goto _L30
_L14:
        if (fb1.d == 1)
        {
            if (layoutparams.b)
            {
                for (i1 = g - 1; i1 >= 0; i1--)
                {
                    h[i1].b(view);
                }

            } else
            {
                layoutparams.a.b(view);
            }
        } else
        if (layoutparams.b)
        {
            i1 = g - 1;
            while (i1 >= 0) 
            {
                h[i1].a(view);
                i1--;
            }
        } else
        {
            layoutparams.a.a(view);
        }
        if (layoutparams.b)
        {
            i1 = b.b();
        } else
        {
            i1 = ((b) (obj)).e * j + b.b();
        }
        i3 = b.c(view) + i1;
        if (i == 1)
        {
            b(view, i1, j2, i3, j1);
        } else
        {
            b(view, j2, i1, j1, i3);
        }
        if (layoutparams.b)
        {
            f(k.d, k2);
        } else
        {
            a(((b) (obj)), k.d, k2);
        }
        a(l1, k);
        i1 = 1;
          goto _L31
_L2:
        if (i1 == 0)
        {
            a(l1, k);
        }
        if (k.d == -1)
        {
            i1 = h(a.b());
            i1 = a.b() - i1;
        } else
        {
            i1 = i(a.c()) - a.c();
        }
        if (i1 > 0)
        {
            return Math.min(fb1.a, i1);
        } else
        {
            return 0;
        }
        j2 = i1;
          goto _L7
    }

    private View a(boolean flag)
    {
        h();
        int j1 = a.b();
        int k1 = a.c();
        int l1 = k();
        View view = null;
        for (int i1 = 0; i1 < l1; i1++)
        {
            View view1 = c(i1);
            int i2 = a.a(view1);
            if (a.b(view1) <= j1 || i2 >= k1)
            {
                continue;
            }
            if (i2 >= j1 || !flag)
            {
                return view1;
            }
            if (view == null)
            {
                view = view1;
            }
        }

        return view;
    }

    private void a(int i1, RecyclerView.p p1)
    {
        boolean flag1;
        flag1 = false;
        k.a = 0;
        k.b = i1;
        if (!j()) goto _L2; else goto _L1
_L1:
        int j1 = p1.a;
        if (j1 == -1) goto _L2; else goto _L3
_L3:
        boolean flag3 = c;
        boolean flag;
        boolean flag2;
        if (j1 < i1)
        {
            flag2 = true;
        } else
        {
            flag2 = false;
        }
        if (flag3 == flag2)
        {
            i1 = a.e();
            j1 = 0;
        } else
        {
            j1 = a.e();
            i1 = 0;
        }
_L5:
        flag = flag1;
        if (super.r != null)
        {
            flag = flag1;
            if (RecyclerView.p(super.r))
            {
                flag = true;
            }
        }
        if (flag)
        {
            k.e = a.b() - j1;
            k.f = i1 + a.c();
            return;
        } else
        {
            k.f = i1 + a.d();
            k.e = -j1;
            return;
        }
_L2:
        i1 = 0;
        j1 = 0;
        if (true) goto _L5; else goto _L4
_L4:
    }

    private void a(RecyclerView.l l1, int i1)
    {
_L12:
        if (k() <= 0) goto _L2; else goto _L1
_L1:
        View view = c(0);
        if (a.b(view) > i1) goto _L2; else goto _L3
_L3:
        LayoutParams layoutparams = (LayoutParams)view.getLayoutParams();
        if (!layoutparams.b) goto _L5; else goto _L4
_L4:
        int j1 = 0;
_L9:
        if (j1 >= g) goto _L7; else goto _L6
_L6:
        if (h[j1].a.size() != 1) goto _L8; else goto _L2
_L2:
        return;
_L8:
        j1++;
          goto _L9
_L7:
        for (int k1 = 0; k1 < g; k1++)
        {
            h[k1].e();
        }

        break; /* Loop/switch isn't completed */
_L5:
        if (layoutparams.a.a.size() == 1)
        {
            continue; /* Loop/switch isn't completed */
        }
        layoutparams.a.e();
        break; /* Loop/switch isn't completed */
        if (true) goto _L2; else goto _L10
_L10:
        a(view, l1);
        if (true) goto _L12; else goto _L11
_L11:
    }

    private void a(RecyclerView.l l1, RecyclerView.p p1, boolean flag)
    {
        int i1 = i(a.c());
        i1 = a.c() - i1;
        if (i1 > 0)
        {
            i1 -= -d(-i1, l1, p1);
            if (flag && i1 > 0)
            {
                a.a(i1);
            }
        }
    }

    private void a(RecyclerView.l l1, fb fb1)
    {
        int j2 = 1;
        int i1 = 1;
        if (fb1.a == 0)
        {
            if (fb1.d == -1)
            {
                b(l1, fb1.f);
                return;
            } else
            {
                a(l1, fb1.e);
                return;
            }
        }
        if (fb1.d == -1)
        {
            int j3 = fb1.e;
            int l3 = fb1.e;
            int j1;
            for (j1 = h[0].a(l3); i1 < g; j1 = j2)
            {
                int l2 = h[i1].a(l3);
                j2 = j1;
                if (l2 > j1)
                {
                    j2 = l2;
                }
                i1++;
            }

            i1 = j3 - j1;
            if (i1 < 0)
            {
                i1 = fb1.f;
            } else
            {
                i1 = fb1.f - Math.min(i1, fb1.a);
            }
            b(l1, i1);
            return;
        }
        int k3 = fb1.f;
        int k1 = h[0].b(k3);
        for (i1 = j2; i1 < g;)
        {
            int i3 = h[i1].b(k3);
            int k2 = k1;
            if (i3 < k1)
            {
                k2 = i3;
            }
            i1++;
            k1 = k2;
        }

        i1 = k1 - fb1.f;
        if (i1 < 0)
        {
            i1 = fb1.e;
        } else
        {
            int i2 = fb1.e;
            i1 = Math.min(i1, fb1.a) + i2;
        }
        a(l1, i1);
    }

    private void a(b b1, int i1, int j1)
    {
        int k1 = b1.d;
        if (i1 == -1)
        {
            if (k1 + b1.a() <= j1)
            {
                m.set(b1.e, false);
            }
        } else
        if (b1.b() - k1 >= j1)
        {
            m.set(b1.e, false);
            return;
        }
    }

    private void a(View view, int i1, int j1)
    {
        a(view, z);
        LayoutParams layoutparams = (LayoutParams)view.getLayoutParams();
        view.measure(a(i1, layoutparams.leftMargin + z.left, layoutparams.rightMargin + z.right), a(j1, layoutparams.topMargin + z.top, layoutparams.bottomMargin + z.bottom));
    }

    private View b(boolean flag)
    {
        h();
        int j1 = a.b();
        int k1 = a.c();
        View view = null;
        for (int i1 = k() - 1; i1 >= 0; i1--)
        {
            View view1 = c(i1);
            int l1 = a.a(view1);
            int i2 = a.b(view1);
            if (i2 <= j1 || l1 >= k1)
            {
                continue;
            }
            if (i2 <= k1 || !flag)
            {
                return view1;
            }
            if (view == null)
            {
                view = view1;
            }
        }

        return view;
    }

    private void b(int i1, int j1, int k1)
    {
        int l1;
        int i2;
        int j2;
        if (c)
        {
            j2 = u();
        } else
        {
            j2 = v();
        }
        if (k1 == 3)
        {
            if (i1 < j1)
            {
                i2 = j1 + 1;
                l1 = i1;
            } else
            {
                i2 = i1 + 1;
                l1 = j1;
            }
        } else
        {
            i2 = i1 + j1;
            l1 = i1;
        }
        f.b(l1);
        k1;
        JVM INSTR tableswitch 0 3: default 72
    //                   0 111
    //                   1 123
    //                   2 72
    //                   3 135;
           goto _L1 _L2 _L3 _L1 _L4
_L1:
        if (i2 > j2) goto _L6; else goto _L5
_L5:
        return;
_L2:
        f.b(i1, j1);
        continue; /* Loop/switch isn't completed */
_L3:
        f.a(i1, j1);
        continue; /* Loop/switch isn't completed */
_L4:
        f.a(i1, 1);
        f.b(j1, 1);
        continue; /* Loop/switch isn't completed */
_L6:
        if (c)
        {
            i1 = v();
        } else
        {
            i1 = u();
        }
        if (l1 > i1) goto _L5; else goto _L7
_L7:
        i();
        return;
        if (true) goto _L1; else goto _L8
_L8:
    }

    private void b(RecyclerView.l l1, int i1)
    {
        int j1 = k() - 1;
_L12:
        if (j1 < 0) goto _L2; else goto _L1
_L1:
        View view = c(j1);
        if (a.a(view) < i1) goto _L2; else goto _L3
_L3:
        LayoutParams layoutparams = (LayoutParams)view.getLayoutParams();
        if (!layoutparams.b) goto _L5; else goto _L4
_L4:
        int k1 = 0;
_L9:
        if (k1 >= g) goto _L7; else goto _L6
_L6:
        if (h[k1].a.size() != 1) goto _L8; else goto _L2
_L2:
        return;
_L8:
        k1++;
          goto _L9
_L7:
        for (int i2 = 0; i2 < g; i2++)
        {
            h[i2].d();
        }

        break; /* Loop/switch isn't completed */
_L5:
        if (layoutparams.a.a.size() == 1)
        {
            continue; /* Loop/switch isn't completed */
        }
        layoutparams.a.d();
        break; /* Loop/switch isn't completed */
        if (true) goto _L2; else goto _L10
_L10:
        a(view, l1);
        j1--;
        if (true) goto _L12; else goto _L11
_L11:
    }

    private void b(RecyclerView.l l1, RecyclerView.p p1, boolean flag)
    {
        int i1 = h(a.b()) - a.b();
        if (i1 > 0)
        {
            i1 -= d(i1, l1, p1);
            if (flag && i1 > 0)
            {
                a.a(-i1);
            }
        }
    }

    private static void b(View view, int i1, int j1, int k1, int l1)
    {
        LayoutParams layoutparams = (LayoutParams)view.getLayoutParams();
        a(view, layoutparams.leftMargin + i1, layoutparams.topMargin + j1, k1 - layoutparams.rightMargin, l1 - layoutparams.bottomMargin);
    }

    private int d(int i1, RecyclerView.l l1, RecyclerView.p p1)
    {
        h();
        int j1;
        int k1;
        int i2;
        if (i1 > 0)
        {
            j1 = 1;
            k1 = u();
        } else
        {
            j1 = -1;
            k1 = v();
        }
        a(k1, p1);
        g(j1);
        k.b = k1 + k.c;
        i2 = Math.abs(i1);
        k.a = i2;
        k1 = a(l1, k, p1);
        j1 = i1;
        if (i2 >= k1)
        {
            if (i1 < 0)
            {
                j1 = -k1;
            } else
            {
                j1 = k1;
            }
        }
        a.a(-j1);
        o = c;
        return j1;
    }

    private static int e(int i1, int j1)
    {
        if (i1 < 0)
        {
            return j1;
        } else
        {
            return android.view.View.MeasureSpec.makeMeasureSpec(i1, 0x40000000);
        }
    }

    private void f(int i1, int j1)
    {
        for (int k1 = 0; k1 < g; k1++)
        {
            if (!h[k1].a.isEmpty())
            {
                a(h[k1], i1, j1);
            }
        }

    }

    private int g(RecyclerView.p p1)
    {
        boolean flag1 = true;
        if (k() == 0)
        {
            return 0;
        }
        h();
        fd fd1 = a;
        View view;
        boolean flag;
        if (!C)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        view = a(flag);
        if (!C)
        {
            flag = flag1;
        } else
        {
            flag = false;
        }
        return ff.a(p1, fd1, view, b(flag), this, C, c);
    }

    private View g()
    {
        BitSet bitset;
        View view;
        LayoutParams layoutparams;
        b b1;
        int i1;
        byte byte0;
        int j1;
        byte byte1;
        int k1;
        i1 = k() - 1;
        bitset = new BitSet(g);
        bitset.set(0, g, true);
        if (i == 1 && t())
        {
            byte0 = 1;
        } else
        {
            byte0 = -1;
        }
        if (c)
        {
            j1 = -1;
        } else
        {
            j1 = i1 + 1;
            i1 = 0;
        }
        if (i1 < j1)
        {
            byte1 = 1;
        } else
        {
            byte1 = -1;
        }
        k1 = i1;
_L9:
        if (k1 == j1) goto _L2; else goto _L1
_L1:
        view = c(k1);
        layoutparams = (LayoutParams)view.getLayoutParams();
        if (!bitset.get(layoutparams.a.e))
        {
            break MISSING_BLOCK_LABEL_208;
        }
        b1 = layoutparams.a;
        if (!c) goto _L4; else goto _L3
_L3:
        if (b1.b() >= a.c()) goto _L6; else goto _L5
_L5:
        i1 = 1;
_L8:
        if (i1 != 0)
        {
            return view;
        }
        break; /* Loop/switch isn't completed */
_L4:
        if (b1.a() > a.b())
        {
            i1 = 1;
            continue; /* Loop/switch isn't completed */
        }
_L6:
        i1 = 0;
        if (true) goto _L8; else goto _L7
_L7:
        bitset.clear(layoutparams.a.e);
        int i2;
        if (layoutparams.b || k1 + byte1 == j1)
        {
            continue; /* Loop/switch isn't completed */
        }
        Object obj = c(k1 + byte1);
        if (c)
        {
            i1 = a.b(view);
            int l1 = a.b(((View) (obj)));
            if (i1 < l1)
            {
                return view;
            }
            if (i1 != l1)
            {
                break MISSING_BLOCK_LABEL_404;
            }
            i1 = 1;
        } else
        {
            i1 = a.a(view);
            i2 = a.a(((View) (obj)));
            if (i1 > i2)
            {
                return view;
            }
            if (i1 != i2)
            {
                break MISSING_BLOCK_LABEL_404;
            }
            i1 = 1;
        }
_L10:
        if (i1 == 0)
        {
            continue; /* Loop/switch isn't completed */
        }
        obj = (LayoutParams)((View) (obj)).getLayoutParams();
        if (layoutparams.a.e - ((LayoutParams) (obj)).a.e < 0)
        {
            i1 = 1;
        } else
        {
            i1 = 0;
        }
        if (byte0 < 0)
        {
            i2 = 1;
        } else
        {
            i2 = 0;
        }
        if (i1 != i2)
        {
            return view;
        }
        continue; /* Loop/switch isn't completed */
        k1 += byte1;
          goto _L9
_L2:
        return null;
        i1 = 0;
          goto _L10
    }

    private void g(int i1)
    {
        boolean flag = true;
        k.d = i1;
        fb fb1 = k;
        boolean flag2 = c;
        boolean flag1;
        if (i1 == -1)
        {
            flag1 = true;
        } else
        {
            flag1 = false;
        }
        if (flag2 == flag1)
        {
            i1 = ((flag) ? 1 : 0);
        } else
        {
            i1 = -1;
        }
        fb1.c = i1;
    }

    private int h(int i1)
    {
        int k1 = h[0].a(i1);
        for (int j1 = 1; j1 < g;)
        {
            int i2 = h[j1].a(i1);
            int l1 = k1;
            if (i2 < k1)
            {
                l1 = i2;
            }
            j1++;
            k1 = l1;
        }

        return k1;
    }

    private int h(RecyclerView.p p1)
    {
        boolean flag1 = true;
        if (k() == 0)
        {
            return 0;
        }
        h();
        fd fd1 = a;
        View view;
        boolean flag;
        if (!C)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        view = a(flag);
        if (!C)
        {
            flag = flag1;
        } else
        {
            flag = false;
        }
        return ff.a(p1, fd1, view, b(flag), this, C);
    }

    private void h()
    {
        if (a == null)
        {
            a = fd.a(this, i);
            b = fd.a(this, 1 - i);
            k = new fb();
        }
    }

    private int i(int i1)
    {
        int k1 = h[0].b(i1);
        for (int j1 = 1; j1 < g;)
        {
            int i2 = h[j1].b(i1);
            int l1 = k1;
            if (i2 > k1)
            {
                l1 = i2;
            }
            j1++;
            k1 = l1;
        }

        return k1;
    }

    private int i(RecyclerView.p p1)
    {
        boolean flag1 = true;
        if (k() == 0)
        {
            return 0;
        }
        h();
        fd fd1 = a;
        View view;
        boolean flag;
        if (!C)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        view = a(flag);
        if (!C)
        {
            flag = flag1;
        } else
        {
            flag = false;
        }
        return ff.b(p1, fd1, view, b(flag), this, C);
    }

    private void s()
    {
        boolean flag = true;
        if (i != 1 && t()) goto _L2; else goto _L1
_L1:
        flag = l;
_L4:
        c = flag;
        return;
_L2:
        if (l)
        {
            flag = false;
        }
        if (true) goto _L4; else goto _L3
_L3:
    }

    private boolean t()
    {
        return bh.h(super.r) == 1;
    }

    private int u()
    {
        int i1 = k();
        if (i1 == 0)
        {
            return 0;
        } else
        {
            return a(c(i1 - 1));
        }
    }

    private int v()
    {
        if (k() == 0)
        {
            return 0;
        } else
        {
            return a(c(0));
        }
    }

    public final int a(int i1, RecyclerView.l l1, RecyclerView.p p1)
    {
        return d(i1, l1, p1);
    }

    public final int a(RecyclerView.l l1, RecyclerView.p p1)
    {
        if (i == 0)
        {
            return g;
        } else
        {
            return super.a(l1, p1);
        }
    }

    public final int a(RecyclerView.p p1)
    {
        return g(p1);
    }

    public final RecyclerView.LayoutParams a(Context context, AttributeSet attributeset)
    {
        return new LayoutParams(context, attributeset);
    }

    public final RecyclerView.LayoutParams a(android.view.ViewGroup.LayoutParams layoutparams)
    {
        if (layoutparams instanceof android.view.ViewGroup.MarginLayoutParams)
        {
            return new LayoutParams((android.view.ViewGroup.MarginLayoutParams)layoutparams);
        } else
        {
            return new LayoutParams(layoutparams);
        }
    }

    public final void a()
    {
        f.a();
        i();
    }

    public final void a(int i1, int j1)
    {
        b(i1, j1, 0);
    }

    public final void a(Parcelable parcelable)
    {
        if (parcelable instanceof SavedState)
        {
            v = (SavedState)parcelable;
            i();
        }
    }

    public final void a(RecyclerView.l l1, RecyclerView.p p1, View view, bz bz1)
    {
        int k1 = 1;
        int i1 = 1;
        int j1 = -1;
        l1 = view.getLayoutParams();
        if (!(l1 instanceof LayoutParams))
        {
            super.a(view, bz1);
            return;
        }
        l1 = (LayoutParams)l1;
        int i2;
        if (i == 0)
        {
            i2 = l1.a();
            if (((LayoutParams) (l1)).b)
            {
                i1 = g;
            }
            byte byte0 = -1;
            k1 = i1;
            i1 = byte0;
        } else
        {
            i1 = l1.a();
            if (((LayoutParams) (l1)).b)
            {
                int j2 = g;
                i2 = -1;
                j1 = i1;
                k1 = -1;
                i1 = j2;
            } else
            {
                i2 = -1;
                j1 = i1;
                byte byte1 = -1;
                i1 = k1;
                k1 = byte1;
            }
        }
        bz1.a(bz.j.a(i2, k1, j1, i1, ((LayoutParams) (l1)).b));
    }

    public final void a(RecyclerView recyclerview, RecyclerView.l l1)
    {
        a(D);
        for (int i1 = 0; i1 < g; i1++)
        {
            h[i1].c();
        }

    }

    public final void a(AccessibilityEvent accessibilityevent)
    {
        View view;
        View view1;
label0:
        {
            super.a(accessibilityevent);
            if (k() > 0)
            {
                accessibilityevent = by.a(accessibilityevent);
                view = a(false);
                view1 = b(false);
                if (view != null && view1 != null)
                {
                    break label0;
                }
            }
            return;
        }
        int i1 = a(view);
        int j1 = a(view1);
        if (i1 < j1)
        {
            accessibilityevent.b(i1);
            accessibilityevent.c(j1);
            return;
        } else
        {
            accessibilityevent.b(j1);
            accessibilityevent.c(i1);
            return;
        }
    }

    public final void a(String s1)
    {
        if (v == null)
        {
            super.a(s1);
        }
    }

    public final boolean a(RecyclerView.LayoutParams layoutparams)
    {
        return layoutparams instanceof LayoutParams;
    }

    public final int b(int i1, RecyclerView.l l1, RecyclerView.p p1)
    {
        return d(i1, l1, p1);
    }

    public final int b(RecyclerView.l l1, RecyclerView.p p1)
    {
        if (i == 1)
        {
            return g;
        } else
        {
            return super.b(l1, p1);
        }
    }

    public final int b(RecyclerView.p p1)
    {
        return g(p1);
    }

    public final RecyclerView.LayoutParams b()
    {
        return new LayoutParams();
    }

    public final void b(int i1)
    {
        if (v != null && v.a != i1)
        {
            SavedState savedstate = v;
            savedstate.d = null;
            savedstate.c = 0;
            savedstate.a = -1;
            savedstate.b = -1;
        }
        d = i1;
        e = 0x80000000;
        i();
    }

    public final void b(int i1, int j1)
    {
        b(i1, j1, 1);
    }

    public final int c(RecyclerView.p p1)
    {
        return h(p1);
    }

    public final void c(int i1, int j1)
    {
        b(i1, j1, 2);
    }

    public final void c(RecyclerView.l l1, RecyclerView.p p1)
    {
        a a1;
        int j1;
        boolean flag1;
        flag1 = true;
        h();
        a1 = A;
        a1.a = -1;
        a1.b = 0x80000000;
        a1.c = false;
        a1.d = false;
        if (v != null)
        {
            if (v.c > 0)
            {
                if (v.c == g)
                {
                    int i2 = 0;
                    while (i2 < g) 
                    {
                        h[i2].c();
                        int i3 = v.d[i2];
                        int i1 = i3;
                        if (i3 != 0x80000000)
                        {
                            if (v.i)
                            {
                                i1 = i3 + a.c();
                            } else
                            {
                                i1 = i3 + a.b();
                            }
                        }
                        h[i2].c(i1);
                        i2++;
                    }
                } else
                {
                    SavedState savedstate = v;
                    savedstate.d = null;
                    savedstate.c = 0;
                    savedstate.e = 0;
                    savedstate.f = null;
                    savedstate.g = null;
                    v.a = v.b;
                }
            }
            p = v.j;
            boolean flag2 = v.h;
            a(((String) (null)));
            if (v != null && v.h != flag2)
            {
                v.h = flag2;
            }
            l = flag2;
            i();
            s();
            int j2;
            int j3;
            if (v.a != -1)
            {
                d = v.a;
                a1.c = v.i;
            } else
            {
                a1.c = c;
            }
            if (v.e > 1)
            {
                f.a = v.f;
                f.b = v.g;
            }
        } else
        {
            s();
            a1.c = c;
        }
        if (!p1.j && d != -1) goto _L2; else goto _L1
_L1:
        j1 = 0;
_L37:
        if (j1 != 0) goto _L4; else goto _L3
_L3:
        if (!o) goto _L6; else goto _L5
_L5:
        j3 = p1.a();
        j1 = k() - 1;
_L22:
        if (j1 < 0) goto _L8; else goto _L7
_L7:
        j2 = a(c(j1));
        if (j2 < 0 || j2 >= j3)
        {
            continue; /* Loop/switch isn't completed */
        }
        j1 = j2;
_L23:
        a1.a = j1;
        a1.b = 0x80000000;
          goto _L4
_L2:
        if (d < 0 || d >= p1.a())
        {
            d = -1;
            e = 0x80000000;
            j1 = 0;
            continue; /* Loop/switch isn't completed */
        }
        if (v != null && v.a != -1 && v.c > 0) goto _L10; else goto _L9
_L9:
        view = a(d);
        if (view == null) goto _L12; else goto _L11
_L11:
        if (c)
        {
            j1 = u();
        } else
        {
            j1 = v();
        }
        a1.a = j1;
        if (e != 0x80000000)
        {
            if (a1.c)
            {
                a1.b = a.c() - e - a.b(view);
            } else
            {
                a1.b = (a.b() + e) - a.a(view);
            }
            j1 = 1;
            continue; /* Loop/switch isn't completed */
        }
        if (a.c(view) > a.e())
        {
            if (a1.c)
            {
                j1 = a.c();
            } else
            {
                j1 = a.b();
            }
            a1.b = j1;
        } else
        {
            j1 = a.a(view) - a.b();
            if (j1 < 0)
            {
                a1.b = -j1;
            } else
            {
                j1 = a.c() - a.b(view);
                if (j1 < 0)
                {
                    a1.b = j1;
                } else
                {
                    a1.b = 0x80000000;
                }
            }
        }
_L21:
        j1 = 1;
        continue; /* Loop/switch isn't completed */
_L12:
        a1.a = d;
        if (e != 0x80000000)
        {
            break MISSING_BLOCK_LABEL_1062;
        }
        j1 = a1.a;
        if (k() != 0) goto _L14; else goto _L13
_L13:
        if (c) goto _L16; else goto _L15
_L15:
        j1 = -1;
_L18:
        boolean flag3;
        if (j1 == 1)
        {
            flag3 = true;
        } else
        {
            flag3 = false;
        }
        a1.c = flag3;
        if (a1.c)
        {
            j1 = a1.e.a.c();
        } else
        {
            j1 = a1.e.a.b();
        }
        a1.b = j1;
_L19:
        a1.d = true;
        continue; /* Loop/switch isn't completed */
_L14:
        if (j1 < v())
        {
            flag3 = true;
        } else
        {
            flag3 = false;
        }
        if (flag3 == c) goto _L16; else goto _L17
_L17:
        j1 = -1;
          goto _L18
_L16:
        j1 = 1;
          goto _L18
        j1 = e;
        if (a1.c)
        {
            a1.b = a1.e.a.c() - j1;
        } else
        {
            a1.b = j1 + a1.e.a.b();
        }
          goto _L19
_L10:
        a1.b = 0x80000000;
        a1.a = d;
        if (true) goto _L21; else goto _L20
_L20:
        j1--;
          goto _L22
_L8:
        j1 = 0;
          goto _L23
_L6:
        i4 = p1.a();
        k4 = k();
        k2 = 0;
_L27:
        if (k2 >= k4) goto _L25; else goto _L24
_L24:
        k3 = a(c(k2));
        if (k3 < 0)
        {
            continue; /* Loop/switch isn't completed */
        }
        j1 = k3;
        if (k3 < i4) goto _L23; else goto _L26
_L26:
        k2++;
          goto _L27
_L25:
        j1 = 0;
          goto _L23
_L4:
        boolean flag;
        if (v == null && (a1.c != o || t() != p))
        {
            f.a();
            a1.d = true;
        }
        View view;
        int k2;
        int k3;
        int i4;
        int k4;
        if (k() > 0 && (v == null || v.c <= 0))
        {
            if (a1.d)
            {
                for (j1 = 0; j1 < g; j1++)
                {
                    h[j1].c();
                    if (a1.b != 0x80000000)
                    {
                        h[j1].c(a1.b);
                    }
                }

            } else
            {
                int l2 = 0;
                while (l2 < g) 
                {
                    b b1 = h[l2];
                    boolean flag4 = c;
                    int j4 = a1.b;
                    int k1;
                    if (flag4)
                    {
                        k1 = b1.b(0x80000000);
                    } else
                    {
                        k1 = b1.a(0x80000000);
                    }
                    b1.c();
                    if (k1 != 0x80000000 && (!flag4 || k1 >= b1.f.a.c()) && (flag4 || k1 <= b1.f.a.b()))
                    {
                        int l3 = k1;
                        if (j4 != 0x80000000)
                        {
                            l3 = k1 + j4;
                        }
                        b1.c = l3;
                        b1.b = l3;
                    }
                    l2++;
                }
            }
        }
        a(l1);
        B = false;
        j = b.e() / g;
        w = android.view.View.MeasureSpec.makeMeasureSpec(b.e(), 0x40000000);
        if (i == 1)
        {
            x = android.view.View.MeasureSpec.makeMeasureSpec(j, 0x40000000);
            y = android.view.View.MeasureSpec.makeMeasureSpec(0, 0);
        } else
        {
            y = android.view.View.MeasureSpec.makeMeasureSpec(j, 0x40000000);
            x = android.view.View.MeasureSpec.makeMeasureSpec(0, 0);
        }
        a(a1.a, p1);
        if (a1.c)
        {
            g(-1);
            a(l1, k, p1);
            g(1);
            k.b = a1.a + k.c;
            a(l1, k, p1);
        } else
        {
            g(1);
            a(l1, k, p1);
            g(-1);
            k.b = a1.a + k.c;
            a(l1, k, p1);
        }
        if (k() > 0)
        {
            if (c)
            {
                a(l1, p1, true);
                b(l1, p1, false);
            } else
            {
                b(l1, p1, true);
                a(l1, p1, false);
            }
        }
        if (p1.j) goto _L29; else goto _L28
_L28:
        if (n == 0 || k() <= 0) goto _L31; else goto _L30
_L30:
        flag = flag1;
        if (B) goto _L33; else goto _L32
_L32:
        if (g() == null) goto _L31; else goto _L34
_L34:
        flag = flag1;
_L33:
        if (flag)
        {
            a(D);
            l1 = D;
            if (super.r != null)
            {
                bh.a(super.r, l1);
            }
        }
        d = -1;
        e = 0x80000000;
_L29:
        o = a1.c;
        p = t();
        v = null;
        return;
_L31:
        flag = false;
        if (true) goto _L33; else goto _L35
_L35:
        if (true) goto _L37; else goto _L36
_L36:
    }

    public final boolean c()
    {
        return v == null;
    }

    public final int d(RecyclerView.p p1)
    {
        return h(p1);
    }

    public final Parcelable d()
    {
        if (v != null)
        {
            return new SavedState(v);
        }
        SavedState savedstate = new SavedState();
        savedstate.h = l;
        savedstate.i = o;
        savedstate.j = p;
        if (f != null && f.a != null)
        {
            savedstate.f = f.a;
            savedstate.e = savedstate.f.length;
            savedstate.g = f.b;
        } else
        {
            savedstate.e = 0;
        }
        if (k() > 0)
        {
            h();
            View view;
            int i1;
            int j1;
            if (o)
            {
                i1 = u();
            } else
            {
                i1 = v();
            }
            savedstate.a = i1;
            if (c)
            {
                view = b(true);
            } else
            {
                view = a(true);
            }
            if (view == null)
            {
                i1 = -1;
            } else
            {
                i1 = a(view);
            }
            savedstate.b = i1;
            savedstate.c = g;
            savedstate.d = new int[g];
            j1 = 0;
            while (j1 < g) 
            {
                if (o)
                {
                    int k1 = h[j1].b(0x80000000);
                    i1 = k1;
                    if (k1 != 0x80000000)
                    {
                        i1 = k1 - a.c();
                    }
                } else
                {
                    int l1 = h[j1].a(0x80000000);
                    i1 = l1;
                    if (l1 != 0x80000000)
                    {
                        i1 = l1 - a.b();
                    }
                }
                savedstate.d[j1] = i1;
                j1++;
            }
        } else
        {
            savedstate.a = -1;
            savedstate.b = -1;
            savedstate.c = 0;
        }
        return savedstate;
    }

    public final void d(int i1)
    {
        super.d(i1);
        for (int j1 = 0; j1 < g; j1++)
        {
            h[j1].d(i1);
        }

    }

    public final void d(int i1, int j1)
    {
        b(i1, j1, 3);
    }

    public final int e(RecyclerView.p p1)
    {
        return i(p1);
    }

    public final void e(int i1)
    {
        super.e(i1);
        for (int j1 = 0; j1 < g; j1++)
        {
            h[j1].d(i1);
        }

    }

    public final boolean e()
    {
        return i == 0;
    }

    public final int f(RecyclerView.p p1)
    {
        return i(p1);
    }

    public final void f(int i1)
    {
        if (i1 == 0 && k() != 0 && n != 0 && super.u) goto _L2; else goto _L1
_L1:
        return;
_L2:
        int j1;
        if (c)
        {
            j1 = u();
            i1 = v();
        } else
        {
            j1 = v();
            i1 = u();
        }
        if (j1 != 0 || g() == null)
        {
            continue; /* Loop/switch isn't completed */
        }
        f.a();
_L4:
        super.t = true;
        i();
        return;
        if (!B) goto _L1; else goto _L3
_L3:
        LazySpanLookup.FullSpanItem fullspanitem;
        byte byte0;
        if (c)
        {
            byte0 = -1;
        } else
        {
            byte0 = 1;
        }
        fullspanitem = f.a(j1, i1 + 1, byte0);
        if (fullspanitem == null)
        {
            B = false;
            f.a(i1 + 1);
            return;
        }
        LazySpanLookup.FullSpanItem fullspanitem1 = f.a(j1, fullspanitem.a, byte0 * -1);
        if (fullspanitem1 == null)
        {
            f.a(fullspanitem.a);
        } else
        {
            f.a(fullspanitem1.a + 1);
        }
          goto _L4
        if (true) goto _L1; else goto _L5
_L5:
    }

    public final boolean f()
    {
        return i == 1;
    }
}
