// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package android.support.v7.widget;

import android.graphics.Rect;
import android.os.Parcel;
import android.os.Parcelable;
import android.view.View;
import android.view.accessibility.AccessibilityEvent;
import bh;
import by;
import cd;
import ez;
import fd;
import ff;
import java.util.List;

// Referenced classes of package android.support.v7.widget:
//            RecyclerView

public class LinearLayoutManager extends RecyclerView.h
{
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
        boolean c;

        final boolean a()
        {
            return a >= 0;
        }

        public int describeContents()
        {
            return 0;
        }

        public void writeToParcel(Parcel parcel, int i1)
        {
            parcel.writeInt(a);
            parcel.writeInt(b);
            if (c)
            {
                i1 = 1;
            } else
            {
                i1 = 0;
            }
            parcel.writeInt(i1);
        }


        public SavedState()
        {
        }

        SavedState(Parcel parcel)
        {
            boolean flag = true;
            super();
            a = parcel.readInt();
            b = parcel.readInt();
            if (parcel.readInt() != 1)
            {
                flag = false;
            }
            c = flag;
        }

        public SavedState(SavedState savedstate)
        {
            a = savedstate.a;
            b = savedstate.b;
            c = savedstate.c;
        }
    }

    final class a
    {

        int a;
        int b;
        boolean c;
        final LinearLayoutManager d;

        final void a()
        {
            int i1;
            if (c)
            {
                i1 = d.k.c();
            } else
            {
                i1 = d.k.b();
            }
            b = i1;
        }

        public final void a(View view)
        {
            if (c)
            {
                b = d.k.b(view) + d.k.a();
            } else
            {
                b = d.k.a(view);
            }
            a = LinearLayoutManager.a(view);
        }

        public final String toString()
        {
            return (new StringBuilder("AnchorInfo{mPosition=")).append(a).append(", mCoordinate=").append(b).append(", mLayoutFromEnd=").append(c).append('}').toString();
        }
    }

    public static final class b
    {

        public int a;
        public boolean b;
        public boolean c;
        public boolean d;

        protected b()
        {
        }
    }

    static final class c
    {

        boolean a;
        int b;
        int c;
        int d;
        int e;
        int f;
        int g;
        int h;
        boolean i;
        int j;
        List k;

        final View a(RecyclerView.l l1)
        {
            if (k != null)
            {
                int j1 = k.size();
                for (int i1 = 0; i1 < j1; i1++)
                {
                    l1 = (RecyclerView.s)k.get(i1);
                    if (!l1.m() && d == l1.c())
                    {
                        a(((RecyclerView.s) (l1)));
                        return ((RecyclerView.s) (l1)).a;
                    }
                }

                return null;
            } else
            {
                l1 = l1.b(d);
                d = d + e;
                return l1;
            }
        }

        public final void a(RecyclerView.s s1)
        {
            int l1 = k.size();
            RecyclerView.s s2 = null;
            int i1 = 0x7fffffff;
            for (int j1 = 0; j1 < l1; j1++)
            {
                RecyclerView.s s3 = (RecyclerView.s)k.get(j1);
                if (s3 == s1 || s3.m())
                {
                    continue;
                }
                int k1 = (s3.c() - d) * e;
                if (k1 < 0 || k1 >= i1)
                {
                    continue;
                }
                s2 = s3;
                if (k1 == 0)
                {
                    break;
                }
                s2 = s3;
                i1 = k1;
            }

            if (s2 == null)
            {
                i1 = -1;
            } else
            {
                i1 = s2.c();
            }
            d = i1;
        }

        final boolean a(RecyclerView.p p1)
        {
            return d >= 0 && d < p1.a();
        }

        c()
        {
            a = true;
            h = 0;
            i = false;
            k = null;
        }
    }


    private c a;
    private boolean b;
    private boolean c;
    private boolean d;
    private boolean e;
    private boolean f;
    int j;
    fd k;
    boolean l;
    int m;
    int n;
    SavedState o;
    final a p;

    private int a(int i1, RecyclerView.l l1, RecyclerView.p p1, boolean flag)
    {
        int j1 = k.c() - i1;
        if (j1 > 0)
        {
            int k1 = -d(-j1, l1, p1);
            j1 = k1;
            if (flag)
            {
                i1 = k.c() - (i1 + k1);
                j1 = k1;
                if (i1 > 0)
                {
                    k.a(i1);
                    j1 = k1 + i1;
                }
            }
            return j1;
        } else
        {
            return 0;
        }
    }

    private int a(RecyclerView.l l1, c c1, RecyclerView.p p1, boolean flag)
    {
        int k1 = c1.c;
        if (c1.g != 0x80000000)
        {
            if (c1.c < 0)
            {
                c1.g = c1.g + c1.c;
            }
            a(l1, c1);
        }
        int i1 = c1.c + c1.h;
        b b1 = new b();
label0:
        do
        {
            int j1;
            do
            {
label1:
                {
                    if (i1 <= 0 || !c1.a(p1))
                    {
                        break label0;
                    }
                    b1.a = 0;
                    b1.b = false;
                    b1.c = false;
                    b1.d = false;
                    a(l1, p1, c1, b1);
                    if (b1.b)
                    {
                        break label0;
                    }
                    c1.b = c1.b + b1.a * c1.f;
                    if (b1.c && a.k == null)
                    {
                        j1 = i1;
                        if (p1.j)
                        {
                            break label1;
                        }
                    }
                    c1.c = c1.c - b1.a;
                    j1 = i1 - b1.a;
                }
                if (c1.g != 0x80000000)
                {
                    c1.g = c1.g + b1.a;
                    if (c1.c < 0)
                    {
                        c1.g = c1.g + c1.c;
                    }
                    a(l1, c1);
                }
                i1 = j1;
            } while (!flag);
            i1 = j1;
        } while (!b1.d);
        return k1 - c1.c;
    }

    private View a(int i1, int j1, boolean flag)
    {
        h();
        int k1 = k.b();
        int l1 = k.c();
        View view;
        byte byte0;
        if (j1 > i1)
        {
            byte0 = 1;
        } else
        {
            byte0 = -1;
        }
        view = null;
        for (; i1 != j1; i1 += byte0)
        {
            View view1 = c(i1);
            int i2 = k.a(view1);
            int j2 = k.b(view1);
            if (i2 >= l1 || j2 <= k1)
            {
                continue;
            }
            if (!flag || i2 >= k1 && j2 <= l1)
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

    private View a(boolean flag)
    {
        if (l)
        {
            return a(k() - 1, -1, flag);
        } else
        {
            return a(0, k(), flag);
        }
    }

    private void a(int i1, int j1, boolean flag, RecyclerView.p p1)
    {
        byte byte0 = -1;
        boolean flag1 = true;
        a.h = g(p1);
        a.f = i1;
        if (i1 == 1)
        {
            p1 = a;
            p1.h = ((c) (p1)).h + k.f();
            p1 = u();
            c c1 = a;
            if (l)
            {
                i1 = byte0;
            } else
            {
                i1 = 1;
            }
            c1.e = i1;
            a.d = a(((View) (p1))) + a.e;
            a.b = k.b(p1);
            i1 = k.b(p1) - k.c();
        } else
        {
            p1 = t();
            c c2 = a;
            c2.h = c2.h + k.b();
            c2 = a;
            if (l)
            {
                i1 = ((flag1) ? 1 : 0);
            } else
            {
                i1 = -1;
            }
            c2.e = i1;
            a.d = a(((View) (p1))) + a.e;
            a.b = k.a(p1);
            i1 = -k.a(p1) + k.b();
        }
        a.c = j1;
        if (flag)
        {
            p1 = a;
            p1.c = ((c) (p1)).c - i1;
        }
        a.g = i1;
    }

    private void a(a a1)
    {
        e(a1.a, a1.b);
    }

    private void a(RecyclerView.l l1, int i1, int j1)
    {
        if (i1 != j1) goto _L2; else goto _L1
_L1:
        return;
_L2:
        int k1;
        k1 = i1;
        if (j1 <= i1)
        {
            break; /* Loop/switch isn't completed */
        }
        j1--;
        while (j1 >= i1) 
        {
            a(j1, l1);
            j1--;
        }
        if (true) goto _L1; else goto _L3
_L3:
        while (k1 > j1) 
        {
            a(k1, l1);
            k1--;
        }
        if (true) goto _L1; else goto _L4
_L4:
    }

    private void a(RecyclerView.l l1, c c1)
    {
        if (c1.a) goto _L2; else goto _L1
_L1:
        return;
_L2:
        if (c1.f != -1)
        {
            break; /* Loop/switch isn't completed */
        }
        int i1 = c1.g;
        int k2 = k();
        if (i1 >= 0)
        {
            int i3 = k.d() - i1;
            if (l)
            {
                int j1 = 0;
                while (j1 < k2) 
                {
                    c1 = c(j1);
                    if (k.a(c1) < i3)
                    {
                        a(l1, 0, j1);
                        return;
                    }
                    j1++;
                }
            } else
            {
                int k1 = k2 - 1;
                while (k1 >= 0) 
                {
                    c1 = c(k1);
                    if (k.a(c1) < i3)
                    {
                        a(l1, k2 - 1, k1);
                        return;
                    }
                    k1--;
                }
            }
        }
        if (true) goto _L1; else goto _L3
_L3:
        int l2;
        int j3;
        l2 = c1.g;
        if (l2 < 0)
        {
            continue; /* Loop/switch isn't completed */
        }
        j3 = k();
        if (!l)
        {
            break; /* Loop/switch isn't completed */
        }
        int i2 = j3 - 1;
        while (i2 >= 0) 
        {
            c1 = c(i2);
            if (k.b(c1) > l2)
            {
                a(l1, j3 - 1, i2);
                return;
            }
            i2--;
        }
        if (true) goto _L1; else goto _L4
_L4:
        int j2 = 0;
        while (j2 < j3) 
        {
            c1 = c(j2);
            if (k.b(c1) > l2)
            {
                a(l1, 0, j2);
                return;
            }
            j2++;
        }
        if (true) goto _L1; else goto _L5
_L5:
    }

    private int b(int i1, RecyclerView.l l1, RecyclerView.p p1, boolean flag)
    {
        int j1 = i1 - k.b();
        if (j1 > 0)
        {
            int k1 = -d(j1, l1, p1);
            j1 = k1;
            if (flag)
            {
                i1 = (i1 + k1) - k.b();
                j1 = k1;
                if (i1 > 0)
                {
                    k.a(-i1);
                    j1 = k1 - i1;
                }
            }
            return j1;
        } else
        {
            return 0;
        }
    }

    private View b(boolean flag)
    {
        if (l)
        {
            return a(0, k(), flag);
        } else
        {
            return a(k() - 1, -1, flag);
        }
    }

    private void b(a a1)
    {
        f(a1.a, a1.b);
    }

    private int d(int i1, RecyclerView.l l1, RecyclerView.p p1)
    {
        if (k() == 0 || i1 == 0)
        {
            return 0;
        }
        a.a = true;
        h();
        int j1;
        int k1;
        int i2;
        if (i1 > 0)
        {
            j1 = 1;
        } else
        {
            j1 = -1;
        }
        k1 = Math.abs(i1);
        a(j1, k1, true, p1);
        i2 = a.g + a(l1, a, p1, false);
        if (i2 < 0)
        {
            return 0;
        }
        if (k1 > i2)
        {
            i1 = j1 * i2;
        }
        k.a(-i1);
        a.j = i1;
        return i1;
    }

    private View d(RecyclerView.l l1, RecyclerView.p p1)
    {
        if (l)
        {
            return f(l1, p1);
        } else
        {
            return g(l1, p1);
        }
    }

    private View e(RecyclerView.l l1, RecyclerView.p p1)
    {
        if (l)
        {
            return g(l1, p1);
        } else
        {
            return f(l1, p1);
        }
    }

    private void e(int i1, int j1)
    {
        a.c = k.c() - j1;
        c c1 = a;
        int k1;
        if (l)
        {
            k1 = -1;
        } else
        {
            k1 = 1;
        }
        c1.e = k1;
        a.d = i1;
        a.f = 1;
        a.b = j1;
        a.g = 0x80000000;
    }

    private View f(RecyclerView.l l1, RecyclerView.p p1)
    {
        return a(l1, p1, 0, k(), p1.a());
    }

    private void f(int i1, int j1)
    {
        a.c = j1 - k.b();
        a.d = i1;
        c c1 = a;
        if (l)
        {
            i1 = 1;
        } else
        {
            i1 = -1;
        }
        c1.e = i1;
        a.f = -1;
        a.b = j1;
        a.g = 0x80000000;
    }

    private int g(RecyclerView.p p1)
    {
        int i1 = 0;
        boolean flag;
        if (p1.a != -1)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        if (flag)
        {
            i1 = k.e();
        }
        return i1;
    }

    private View g(RecyclerView.l l1, RecyclerView.p p1)
    {
        return a(l1, p1, k() - 1, -1, p1.a());
    }

    private int h(RecyclerView.p p1)
    {
        boolean flag1 = true;
        if (k() == 0)
        {
            return 0;
        }
        h();
        fd fd1 = k;
        View view;
        boolean flag;
        if (!e)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        view = a(flag);
        if (!e)
        {
            flag = flag1;
        } else
        {
            flag = false;
        }
        return ff.a(p1, fd1, view, b(flag), this, e, l);
    }

    private int i(RecyclerView.p p1)
    {
        boolean flag1 = true;
        if (k() == 0)
        {
            return 0;
        }
        h();
        fd fd1 = k;
        View view;
        boolean flag;
        if (!e)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        view = a(flag);
        if (!e)
        {
            flag = flag1;
        } else
        {
            flag = false;
        }
        return ff.a(p1, fd1, view, b(flag), this, e);
    }

    private int j(RecyclerView.p p1)
    {
        boolean flag1 = true;
        if (k() == 0)
        {
            return 0;
        }
        h();
        fd fd1 = k;
        View view;
        boolean flag;
        if (!e)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        view = a(flag);
        if (!e)
        {
            flag = flag1;
        } else
        {
            flag = false;
        }
        return ff.b(p1, fd1, view, b(flag), this, e);
    }

    private void s()
    {
        boolean flag = true;
        if (j != 1 && g()) goto _L2; else goto _L1
_L1:
        flag = c;
_L4:
        l = flag;
        return;
_L2:
        if (c)
        {
            flag = false;
        }
        if (true) goto _L4; else goto _L3
_L3:
    }

    private View t()
    {
        int i1;
        if (l)
        {
            i1 = k() - 1;
        } else
        {
            i1 = 0;
        }
        return c(i1);
    }

    private View u()
    {
        int i1;
        if (l)
        {
            i1 = 0;
        } else
        {
            i1 = k() - 1;
        }
        return c(i1);
    }

    public final int a(int i1, RecyclerView.l l1, RecyclerView.p p1)
    {
        if (j == 1)
        {
            return 0;
        } else
        {
            return d(i1, l1, p1);
        }
    }

    public final int a(RecyclerView.p p1)
    {
        return h(p1);
    }

    public final View a(int i1)
    {
        int j1 = k();
        if (j1 != 0) goto _L2; else goto _L1
_L1:
        View view = null;
_L4:
        return view;
_L2:
        View view1;
        int k1 = i1 - a(c(0));
        if (k1 < 0 || k1 >= j1)
        {
            break; /* Loop/switch isn't completed */
        }
        view1 = c(k1);
        view = view1;
        if (a(view1) == i1) goto _L4; else goto _L3
_L3:
        return super.a(i1);
    }

    View a(RecyclerView.l l1, RecyclerView.p p1, int i1, int j1, int k1)
    {
label0:
        {
            Object obj;
label1:
            {
                l1 = null;
                h();
                int j2 = k.b();
                int k2 = k.c();
                int i2;
                if (j1 > i1)
                {
                    i2 = 1;
                } else
                {
                    i2 = -1;
                }
                p1 = null;
                while (i1 != j1) 
                {
                    View view = c(i1);
                    int l2 = a(view);
                    if (l2 >= 0 && l2 < k1)
                    {
                        if (((RecyclerView.LayoutParams)view.getLayoutParams()).c.m())
                        {
                            if (p1 == null)
                            {
                                p1 = view;
                            }
                        } else
                        {
                            if (k.a(view) < k2)
                            {
                                obj = view;
                                if (k.b(view) >= j2)
                                {
                                    break label1;
                                }
                            }
                            if (l1 == null)
                            {
                                l1 = view;
                            }
                        }
                    }
                    i1 += i2;
                }
                if (l1 == null)
                {
                    break label0;
                }
                obj = l1;
            }
            return ((View) (obj));
        }
        return p1;
    }

    public final void a(Parcelable parcelable)
    {
        if (parcelable instanceof SavedState)
        {
            o = (SavedState)parcelable;
            i();
        }
    }

    void a(RecyclerView.l l1, RecyclerView.p p1, a a1)
    {
    }

    void a(RecyclerView.l l1, RecyclerView.p p1, c c1, b b1)
    {
        l1 = c1.a(l1);
        if (l1 == null)
        {
            b1.b = true;
            return;
        }
        p1 = (RecyclerView.LayoutParams)l1.getLayoutParams();
        int i1;
        int j1;
        int k1;
        int i2;
        if (c1.k == null)
        {
            boolean flag2 = l;
            RecyclerView.LayoutParams layoutparams;
            Rect rect;
            boolean flag;
            if (c1.f == -1)
            {
                flag = true;
            } else
            {
                flag = false;
            }
            if (flag2 == flag)
            {
                super.a(l1, -1, false);
            } else
            {
                super.a(l1, 0, false);
            }
        } else
        {
            boolean flag3 = l;
            boolean flag1;
            if (c1.f == -1)
            {
                flag1 = true;
            } else
            {
                flag1 = false;
            }
            if (flag3 == flag1)
            {
                super.a(l1, -1, true);
            } else
            {
                super.a(l1, 0, true);
            }
        }
        layoutparams = (RecyclerView.LayoutParams)l1.getLayoutParams();
        rect = super.r.d(l1);
        i1 = rect.left;
        j1 = rect.right;
        k1 = rect.top;
        i2 = rect.bottom;
        l1.measure(RecyclerView.h.a(l(), i1 + j1 + 0 + (n() + p() + layoutparams.leftMargin + layoutparams.rightMargin), layoutparams.width, e()), RecyclerView.h.a(m(), i2 + k1 + 0 + (o() + q() + layoutparams.topMargin + layoutparams.bottomMargin), layoutparams.height, f()));
        b1.a = k.c(l1);
        if (j == 1)
        {
            if (g())
            {
                i1 = l() - p();
                j1 = i1 - k.d(l1);
            } else
            {
                j1 = n();
                i1 = k.d(l1) + j1;
            }
            if (c1.f == -1)
            {
                k1 = c1.b;
                i2 = c1.b - b1.a;
            } else
            {
                i2 = c1.b;
                k1 = c1.b;
                int j2 = b1.a;
                k1 += j2;
            }
        } else
        {
            i2 = o();
            k1 = k.d(l1) + i2;
            if (c1.f == -1)
            {
                i1 = c1.b;
                j1 = c1.b - b1.a;
            } else
            {
                j1 = c1.b;
                i1 = c1.b + b1.a;
            }
        }
        a(((View) (l1)), j1 + ((RecyclerView.LayoutParams) (p1)).leftMargin, i2 + ((RecyclerView.LayoutParams) (p1)).topMargin, i1 - ((RecyclerView.LayoutParams) (p1)).rightMargin, k1 - ((RecyclerView.LayoutParams) (p1)).bottomMargin);
        if (((RecyclerView.LayoutParams) (p1)).c.m() || ((RecyclerView.LayoutParams) (p1)).c.k())
        {
            b1.c = true;
        }
        b1.d = l1.isFocusable();
    }

    public final void a(RecyclerView recyclerview, RecyclerView.l l1)
    {
        super.a(recyclerview, l1);
        if (f)
        {
            c(l1);
            l1.a();
        }
    }

    public final void a(AccessibilityEvent accessibilityevent)
    {
        byte byte0 = -1;
        super.a(accessibilityevent);
        if (k() > 0)
        {
            accessibilityevent = by.a(accessibilityevent);
            View view = a(0, k(), false);
            int i1;
            if (view == null)
            {
                i1 = -1;
            } else
            {
                i1 = a(view);
            }
            accessibilityevent.b(i1);
            view = a(k() - 1, -1, false);
            if (view == null)
            {
                i1 = byte0;
            } else
            {
                i1 = a(view);
            }
            accessibilityevent.c(i1);
        }
    }

    public final void a(String s1)
    {
        if (o == null)
        {
            super.a(s1);
        }
    }

    public final int b(int i1, RecyclerView.l l1, RecyclerView.p p1)
    {
        if (j == 0)
        {
            return 0;
        } else
        {
            return d(i1, l1, p1);
        }
    }

    public final int b(RecyclerView.p p1)
    {
        return h(p1);
    }

    public RecyclerView.LayoutParams b()
    {
        return new RecyclerView.LayoutParams();
    }

    public final void b(int i1)
    {
        m = i1;
        n = 0x80000000;
        if (o != null)
        {
            o.a = -1;
        }
        i();
    }

    public final int c(RecyclerView.p p1)
    {
        return i(p1);
    }

    public final View c(int i1, RecyclerView.l l1, RecyclerView.p p1)
    {
        s();
        if (k() != 0) goto _L2; else goto _L1
_L1:
        return null;
_L2:
        i1;
        JVM INSTR lookupswitch 6: default 72
    //                   1: 181
    //                   2: 186
    //                   17: 229
    //                   33: 191
    //                   66: 247
    //                   130: 210;
           goto _L3 _L4 _L5 _L6 _L7 _L8 _L9
_L3:
        i1 = 0x80000000;
_L10:
        if (i1 != 0x80000000)
        {
            h();
            View view;
            if (i1 == -1)
            {
                view = e(l1, p1);
            } else
            {
                view = d(l1, p1);
            }
            if (view != null)
            {
                h();
                a(i1, (int)(0.33F * (float)k.e()), false, p1);
                a.g = 0x80000000;
                a.a = false;
                a(l1, a, p1, true);
                if (i1 == -1)
                {
                    l1 = t();
                } else
                {
                    l1 = u();
                }
                if (l1 != view && l1.isFocusable())
                {
                    return l1;
                }
            }
        }
        if (true) goto _L1; else goto _L4
_L4:
        i1 = -1;
          goto _L10
_L5:
        i1 = 1;
          goto _L10
_L7:
        if (j == 1)
        {
            i1 = -1;
        } else
        {
            i1 = 0x80000000;
        }
          goto _L10
_L9:
        if (j == 1)
        {
            i1 = 1;
        } else
        {
            i1 = 0x80000000;
        }
          goto _L10
_L6:
        if (j == 0)
        {
            i1 = -1;
        } else
        {
            i1 = 0x80000000;
        }
          goto _L10
_L8:
        if (j == 0)
        {
            i1 = 1;
        } else
        {
            i1 = 0x80000000;
        }
          goto _L10
    }

    public void c(RecyclerView.l l1, RecyclerView.p p1)
    {
        Object obj;
        Object obj1;
        int i1;
        int j1;
        int k1;
        int i2;
        if (o != null && o.a())
        {
            m = o.a;
        }
        h();
        a.a = false;
        s();
        obj = p;
        obj.a = -1;
        obj.b = 0x80000000;
        obj.c = false;
        p.c = l ^ d;
        obj1 = p;
        RecyclerView.LayoutParams layoutparams;
        int j2;
        if (p1.j || m == -1)
        {
            i1 = 0;
        } else
        if (m < 0 || m >= p1.a())
        {
            m = -1;
            n = 0x80000000;
            i1 = 0;
        } else
        {
label0:
            {
                obj1.a = m;
                if (o == null || !o.a())
                {
                    break label0;
                }
                obj1.c = o.c;
                if (((a) (obj1)).c)
                {
                    obj1.b = k.c() - o.b;
                } else
                {
                    obj1.b = k.b() + o.b;
                }
                i1 = 1;
            }
        }
_L8:
        if (i1 != 0) goto _L2; else goto _L1
_L1:
        if (k() == 0)
        {
            break MISSING_BLOCK_LABEL_1706;
        }
        boolean flag;
        if (super.r == null)
        {
            obj = null;
        } else
        {
            obj = super.r.getFocusedChild();
            if (obj == null || super.q.a(((View) (obj))))
            {
                obj = null;
            }
        }
        if (obj == null) goto _L4; else goto _L3
_L3:
        layoutparams = (RecyclerView.LayoutParams)((View) (obj)).getLayoutParams();
        if (!layoutparams.c.m() && layoutparams.c.c() >= 0 && layoutparams.c.c() < p1.a())
        {
            i1 = 1;
        } else
        {
            i1 = 0;
        }
        if (i1 == 0) goto _L4; else goto _L5
_L5:
        j1 = ((a) (obj1)).d.k.a();
        if (j1 >= 0)
        {
            ((a) (obj1)).a(((View) (obj)));
        } else
        {
            obj1.a = a(((View) (obj)));
            if (((a) (obj1)).c)
            {
                i1 = ((a) (obj1)).d.k.c() - j1 - ((a) (obj1)).d.k.b(((View) (obj)));
                obj1.b = ((a) (obj1)).d.k.c() - i1;
                if (i1 > 0)
                {
                    j1 = ((a) (obj1)).d.k.c(((View) (obj)));
                    k1 = ((a) (obj1)).b;
                    i2 = ((a) (obj1)).d.k.b();
                    j1 = k1 - j1 - (Math.min(((a) (obj1)).d.k.a(((View) (obj))) - i2, 0) + i2);
                    if (j1 < 0)
                    {
                        k1 = ((a) (obj1)).b;
                        obj1.b = Math.min(i1, -j1) + k1;
                    }
                }
            } else
            {
                k1 = ((a) (obj1)).d.k.a(((View) (obj)));
                i1 = k1 - ((a) (obj1)).d.k.b();
                obj1.b = k1;
                if (i1 > 0)
                {
                    i2 = ((a) (obj1)).d.k.c(((View) (obj)));
                    int k2 = ((a) (obj1)).d.k.c();
                    int i3 = ((a) (obj1)).d.k.b(((View) (obj)));
                    j1 = ((a) (obj1)).d.k.c() - Math.min(0, k2 - j1 - i3) - (k1 + i2);
                    if (j1 < 0)
                    {
                        obj1.b = ((a) (obj1)).b - Math.min(i1, -j1);
                    }
                }
            }
        }
        i1 = 1;
_L11:
        if (i1 == 0)
        {
            ((a) (obj1)).a();
            if (d)
            {
                i1 = p1.a() - 1;
            } else
            {
                i1 = 0;
            }
            obj1.a = i1;
        }
_L2:
        i1 = g(p1);
        if (a.j >= 0)
        {
            j1 = 0;
        } else
        {
            j1 = i1;
            i1 = 0;
        }
        k1 = j1 + k.b();
        i2 = i1 + k.f();
        i1 = i2;
        j1 = k1;
        if (p1.j)
        {
            i1 = i2;
            j1 = k1;
            if (m != -1)
            {
                i1 = i2;
                j1 = k1;
                if (n != 0x80000000)
                {
                    obj = a(m);
                    i1 = i2;
                    j1 = k1;
                    if (obj != null)
                    {
                        if (l)
                        {
                            i1 = k.c() - k.b(((View) (obj))) - n;
                        } else
                        {
                            i1 = k.a(((View) (obj)));
                            j1 = k.b();
                            i1 = n - (i1 - j1);
                        }
                        if (i1 > 0)
                        {
                            j1 = k1 + i1;
                            i1 = i2;
                        } else
                        {
                            i1 = i2 - i1;
                            j1 = k1;
                        }
                    }
                }
            }
        }
        a(l1, p1, p);
        a(l1);
        a.i = p1.j;
        if (p.c)
        {
            b(p);
            a.h = j1;
            a(l1, a, p1, false);
            i2 = a.b;
            j2 = a.d;
            j1 = i1;
            if (a.c > 0)
            {
                j1 = i1 + a.c;
            }
            a(p);
            a.h = j1;
            obj = a;
            obj.d = ((c) (obj)).d + a.e;
            a(l1, a, p1, false);
            k1 = a.b;
            int l2;
            int j3;
            int k3;
            int l3;
            boolean flag1;
            if (a.c > 0)
            {
                i1 = a.c;
                f(j2, i2);
                a.h = i1;
                a(l1, a, p1, false);
                i1 = a.b;
            } else
            {
                i1 = i2;
            }
            j1 = i1;
            i1 = k1;
        } else
        {
            a(p);
            a.h = i1;
            a(l1, a, p1, false);
            k1 = a.b;
            l2 = a.d;
            i1 = j1;
            if (a.c > 0)
            {
                i1 = j1 + a.c;
            }
            b(p);
            a.h = i1;
            obj = a;
            obj.d = ((c) (obj)).d + a.e;
            a(l1, a, p1, false);
            i2 = a.b;
            i1 = k1;
            j1 = i2;
            if (a.c > 0)
            {
                i1 = a.c;
                e(l2, k1);
                a.h = i1;
                a(l1, a, p1, false);
                i1 = a.b;
                j1 = i2;
            }
        }
        if (k() > 0)
        {
            if (l ^ d)
            {
                k1 = a(i1, l1, p1, true);
                i2 = j1 + k1;
                j1 = b(i2, l1, p1, false);
                i2 += j1;
                k1 = i1 + k1 + j1;
            } else
            {
                k1 = b(j1, l1, p1, true);
                i1 += k1;
                l2 = a(i1, l1, p1, false);
                i2 = j1 + k1 + l2;
                k1 = i1 + l2;
            }
        } else
        {
            k1 = i1;
            i2 = j1;
        }
        if (p1.l && k() != 0 && !p1.j && c())
        {
            i1 = 0;
            j1 = 0;
            obj = l1.d;
            k3 = ((List) (obj)).size();
            l3 = a(c(0));
            l2 = 0;
            while (l2 < k3) 
            {
                obj1 = (RecyclerView.s)((List) (obj)).get(l2);
                if (!((RecyclerView.s) (obj1)).m())
                {
                    if (((RecyclerView.s) (obj1)).c() < l3)
                    {
                        flag1 = true;
                    } else
                    {
                        flag1 = false;
                    }
                    if (flag1 != l)
                    {
                        j3 = -1;
                    } else
                    {
                        j3 = 1;
                    }
                    if (j3 == -1)
                    {
                        j3 = k.c(((RecyclerView.s) (obj1)).a) + i1;
                        i1 = j1;
                        j1 = j3;
                    } else
                    {
                        j3 = k.c(((RecyclerView.s) (obj1)).a) + j1;
                        j1 = i1;
                        i1 = j3;
                    }
                } else
                {
                    j3 = i1;
                    i1 = j1;
                    j1 = j3;
                }
                j3 = j1;
                l2++;
                j1 = i1;
                i1 = j3;
            }
            a.k = ((List) (obj));
            if (i1 > 0)
            {
                f(a(t()), i2);
                a.h = i1;
                a.c = 0;
                a.a(null);
                a(l1, a, p1, false);
            }
            if (j1 > 0)
            {
                e(a(u()), k1);
                a.h = j1;
                a.c = 0;
                a.a(null);
                a(l1, a, p1, false);
            }
            a.k = null;
        }
        if (!p1.j)
        {
            m = -1;
            n = 0x80000000;
            l1 = k;
            l1.b = l1.e();
        }
        b = d;
        o = null;
        return;
        if (n != 0x80000000)
        {
            break MISSING_BLOCK_LABEL_1154;
        }
        obj = a(m);
        if (obj == null) goto _L7; else goto _L6
_L6:
        if (k.c(((View) (obj))) > k.e())
        {
            ((a) (obj1)).a();
        } else
        if (k.a(((View) (obj))) - k.b() < 0)
        {
            obj1.b = k.b();
            obj1.c = false;
        } else
        {
label1:
            {
                if (k.c() - k.b(((View) (obj))) >= 0)
                {
                    break label1;
                }
                obj1.b = k.c();
                obj1.c = true;
            }
        }
_L10:
        i1 = 1;
          goto _L8
        if (((a) (obj1)).c)
        {
            i1 = k.b(((View) (obj))) + k.a();
        } else
        {
            i1 = k.a(((View) (obj)));
        }
        obj1.b = i1;
_L9:
        i1 = 1;
          goto _L8
_L7:
        if (k() > 0)
        {
            i1 = a(c(0));
            if (m < i1)
            {
                flag = true;
            } else
            {
                flag = false;
            }
            if (flag == l)
            {
                flag = true;
            } else
            {
                flag = false;
            }
            obj1.c = flag;
        }
        ((a) (obj1)).a();
          goto _L9
        obj1.c = l;
        if (l)
        {
            obj1.b = k.c() - n;
        } else
        {
            obj1.b = k.b() + n;
        }
          goto _L10
_L4:
        if (b != d)
        {
            break MISSING_BLOCK_LABEL_1706;
        }
        if (((a) (obj1)).c)
        {
            obj = d(l1, p1);
        } else
        {
            obj = e(l1, p1);
        }
        if (obj == null)
        {
            break MISSING_BLOCK_LABEL_1706;
        }
        ((a) (obj1)).a(((View) (obj)));
        if (!p1.j && c())
        {
            if (k.a(((View) (obj))) >= k.c() || k.b(((View) (obj))) < k.b())
            {
                i1 = 1;
            } else
            {
                i1 = 0;
            }
            if (i1 != 0)
            {
                if (((a) (obj1)).c)
                {
                    i1 = k.c();
                } else
                {
                    i1 = k.b();
                }
                obj1.b = i1;
            }
        }
        i1 = 1;
          goto _L11
        i1 = 0;
          goto _L11
    }

    public boolean c()
    {
        return o == null && b == d;
    }

    public final int d(RecyclerView.p p1)
    {
        return i(p1);
    }

    public final Parcelable d()
    {
        if (o != null)
        {
            return new SavedState(o);
        }
        SavedState savedstate = new SavedState();
        if (k() > 0)
        {
            h();
            boolean flag = b ^ l;
            savedstate.c = flag;
            if (flag)
            {
                View view = u();
                savedstate.b = k.c() - k.b(view);
                savedstate.a = a(view);
                return savedstate;
            } else
            {
                View view1 = t();
                savedstate.a = a(view1);
                savedstate.b = k.a(view1) - k.b();
                return savedstate;
            }
        } else
        {
            savedstate.a = -1;
            return savedstate;
        }
    }

    public final int e(RecyclerView.p p1)
    {
        return j(p1);
    }

    public final boolean e()
    {
        return j == 0;
    }

    public final int f(RecyclerView.p p1)
    {
        return j(p1);
    }

    public final boolean f()
    {
        return j == 1;
    }

    protected final boolean g()
    {
        return bh.h(super.r) == 1;
    }

    final void h()
    {
        if (a == null)
        {
            a = new c();
        }
        if (k == null)
        {
            k = fd.a(this, j);
        }
    }
}
