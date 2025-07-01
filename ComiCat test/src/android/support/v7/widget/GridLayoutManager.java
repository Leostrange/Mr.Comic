// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package android.support.v7.widget;

import android.content.Context;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.util.Log;
import android.util.SparseIntArray;
import android.view.View;
import bz;
import fd;
import java.util.Arrays;

// Referenced classes of package android.support.v7.widget:
//            LinearLayoutManager

public final class GridLayoutManager extends LinearLayoutManager
{
    public static class LayoutParams extends RecyclerView.LayoutParams
    {

        int a;
        int b;

        static int a(LayoutParams layoutparams)
        {
            return layoutparams.a;
        }

        static int a(LayoutParams layoutparams, int j)
        {
            layoutparams.b = j;
            return j;
        }

        static int b(LayoutParams layoutparams)
        {
            return layoutparams.b;
        }

        static int b(LayoutParams layoutparams, int j)
        {
            layoutparams.a = j;
            return j;
        }

        public LayoutParams()
        {
            a = -1;
            b = 0;
        }

        public LayoutParams(Context context, AttributeSet attributeset)
        {
            super(context, attributeset);
            a = -1;
            b = 0;
        }

        public LayoutParams(android.view.ViewGroup.LayoutParams layoutparams)
        {
            super(layoutparams);
            a = -1;
            b = 0;
        }

        public LayoutParams(android.view.ViewGroup.MarginLayoutParams marginlayoutparams)
        {
            super(marginlayoutparams);
            a = -1;
            b = 0;
        }
    }

    public static abstract class a
    {

        final SparseIntArray a;
        private boolean b;

        private int c(int j, int k)
        {
            int j2 = a();
            if (j2 != k) goto _L2; else goto _L1
_L1:
            return 0;
_L2:
            int l;
            int i1;
            if (!b || a.size() <= 0)
            {
                break MISSING_BLOCK_LABEL_212;
            }
            i1 = a.size() - 1;
            for (l = 0; l <= i1;)
            {
                int j1 = l + i1 >>> 1;
                if (a.keyAt(j1) < j)
                {
                    l = j1 + 1;
                } else
                {
                    i1 = j1 - 1;
                }
            }

            l--;
            int k1;
            if (l >= 0 && l < a.size())
            {
                l = a.keyAt(l);
            } else
            {
                l = -1;
            }
            if (l < 0)
            {
                break MISSING_BLOCK_LABEL_212;
            }
            i1 = a.get(l) + a();
            k1 = l + 1;
            l = i1;
            i1 = k1;
_L4:
            do
            {
                if (i1 >= j)
                {
                    continue; /* Loop/switch isn't completed */
                }
                int l1 = a();
                int i2 = l + l1;
                if (i2 == k)
                {
                    l = 0;
                } else
                {
                    l = l1;
                    if (i2 <= k)
                    {
                        l = i2;
                    }
                }
                i1++;
            } while (true);
            if (l + j2 > k) goto _L1; else goto _L3
_L3:
            return l;
            i1 = 0;
            l = 0;
              goto _L4
        }

        public abstract int a();

        final int a(int j, int k)
        {
            int l;
            if (!b)
            {
                l = c(j, k);
            } else
            {
                int i1 = a.get(j, -1);
                l = i1;
                if (i1 == -1)
                {
                    k = c(j, k);
                    a.put(j, k);
                    return k;
                }
            }
            return l;
        }

        public final int b(int j, int k)
        {
            int i2 = a();
            int j1 = 0;
            int l = 0;
            int i1 = 0;
            while (j1 < j) 
            {
                int k1 = a();
                i1 += k1;
                if (i1 == k)
                {
                    i1 = l + 1;
                    l = 0;
                } else
                if (i1 > k)
                {
                    i1 = l + 1;
                    l = k1;
                } else
                {
                    int l1 = i1;
                    i1 = l;
                    l = l1;
                }
                k1 = j1 + 1;
                j1 = l;
                l = i1;
                i1 = j1;
                j1 = k1;
            }
            j = l;
            if (i1 + i2 > k)
            {
                j = l + 1;
            }
            return j;
        }
    }


    static final int a = android.view.View.MeasureSpec.makeMeasureSpec(0, 0);
    boolean b;
    int c;
    int d[];
    View e[];
    final SparseIntArray f;
    final SparseIntArray g;
    a h;
    final Rect i;

    private static int a(int j, int k, int l)
    {
        int i1;
        if (k != 0 || l != 0)
        {
            if ((i1 = android.view.View.MeasureSpec.getMode(j)) == 0x80000000 || i1 == 0x40000000)
            {
                return android.view.View.MeasureSpec.makeMeasureSpec(android.view.View.MeasureSpec.getSize(j) - k - l, i1);
            }
        }
        return j;
    }

    private int a(RecyclerView.l l, RecyclerView.p p, int j)
    {
        if (!p.j)
        {
            return h.b(j, c);
        }
        int k = l.a(j);
        if (k == -1)
        {
            Log.w("GridLayoutManager", (new StringBuilder("Cannot find span size for pre layout position. ")).append(j).toString());
            return 0;
        } else
        {
            return h.b(k, c);
        }
    }

    private void a(RecyclerView.l l, RecyclerView.p p, int j, boolean flag)
    {
        int k;
        int i1;
        int j1;
        byte byte0;
        if (flag)
        {
            i1 = 1;
            boolean flag1 = false;
            j1 = j;
            j = ((flag1) ? 1 : 0);
        } else
        {
            j--;
            i1 = -1;
            j1 = -1;
        }
        if (this.j == 1 && g())
        {
            k = c;
            byte0 = -1;
            k--;
        } else
        {
            byte0 = 1;
            k = 0;
        }
        while (j != j1) 
        {
            View view = e[j];
            LayoutParams layoutparams = (LayoutParams)view.getLayoutParams();
            LayoutParams.a(layoutparams, c(l, p, a(view)));
            if (byte0 == -1 && LayoutParams.b(layoutparams) > 1)
            {
                LayoutParams.b(layoutparams, k - (LayoutParams.b(layoutparams) - 1));
            } else
            {
                LayoutParams.b(layoutparams, k);
            }
            k += LayoutParams.b(layoutparams) * byte0;
            j += i1;
        }
    }

    private void a(View view, int j, int k)
    {
        a(view, i);
        RecyclerView.LayoutParams layoutparams = (RecyclerView.LayoutParams)view.getLayoutParams();
        view.measure(a(j, layoutparams.leftMargin + i.left, layoutparams.rightMargin + i.right), a(k, layoutparams.topMargin + i.top, layoutparams.bottomMargin + i.bottom));
    }

    private int b(RecyclerView.l l, RecyclerView.p p, int j)
    {
        int k;
        if (!p.j)
        {
            k = h.a(j, c);
        } else
        {
            int j1 = g.get(j, -1);
            k = j1;
            if (j1 == -1)
            {
                int i1 = l.a(j);
                if (i1 == -1)
                {
                    Log.w("GridLayoutManager", (new StringBuilder("Cannot find span size for pre layout position. It is not cached, not in the adapter. Pos:")).append(j).toString());
                    return 0;
                } else
                {
                    return h.a(i1, c);
                }
            }
        }
        return k;
    }

    private int c(RecyclerView.l l, RecyclerView.p p, int j)
    {
        int k;
        if (!p.j)
        {
            k = h.a();
        } else
        {
            int i1 = f.get(j, -1);
            k = i1;
            if (i1 == -1)
            {
                if (l.a(j) == -1)
                {
                    Log.w("GridLayoutManager", (new StringBuilder("Cannot find span size for pre layout position. It is not cached, not in the adapter. Pos:")).append(j).toString());
                    return 1;
                } else
                {
                    return h.a();
                }
            }
        }
        return k;
    }

    private static int g(int j)
    {
        if (j < 0)
        {
            return a;
        } else
        {
            return android.view.View.MeasureSpec.makeMeasureSpec(j, 0x40000000);
        }
    }

    public final int a(RecyclerView.l l, RecyclerView.p p)
    {
        if (j == 0)
        {
            return c;
        }
        if (p.a() <= 0)
        {
            return 0;
        } else
        {
            return a(l, p, p.a() - 1);
        }
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

    final View a(RecyclerView.l l, RecyclerView.p p, int j, int k, int i1)
    {
        View view1;
label0:
        {
            View view3;
label1:
            {
                View view = null;
                h();
                int k1 = this.k.b();
                int l1 = this.k.c();
                int j1;
                if (k > j)
                {
                    j1 = 1;
                } else
                {
                    j1 = -1;
                }
                view1 = null;
                while (j != k) 
                {
                    View view2 = c(j);
                    int i2 = a(view2);
                    if (i2 >= 0 && i2 < i1 && b(l, p, i2) == 0)
                    {
                        if (((RecyclerView.LayoutParams)view2.getLayoutParams()).c.m())
                        {
                            if (view1 == null)
                            {
                                view1 = view2;
                            }
                        } else
                        {
                            if (this.k.a(view2) < l1)
                            {
                                view3 = view2;
                                if (this.k.b(view2) >= k1)
                                {
                                    break label1;
                                }
                            }
                            if (view == null)
                            {
                                view = view2;
                            }
                        }
                    }
                    j += j1;
                }
                if (view == null)
                {
                    break label0;
                }
                view3 = view;
            }
            return view3;
        }
        return view1;
    }

    public final void a()
    {
        h.a.clear();
    }

    public final void a(int j, int k)
    {
        h.a.clear();
    }

    final void a(RecyclerView.l l, RecyclerView.p p, LinearLayoutManager.a a1)
    {
        int k = 0;
        super.a(l, p, a1);
        int j;
        int i1;
        int k1;
        int l1;
        if (super.j == 1)
        {
            j = l() - p() - n();
        } else
        {
            j = m() - q() - o();
        }
        if (d == null || d.length != c + 1 || d[d.length - 1] != j)
        {
            d = new int[c + 1];
        }
        d[0] = 0;
        k1 = j / c;
        l1 = j % c;
        i1 = 1;
        j = 0;
        while (i1 <= c) 
        {
            j += l1;
            int j1;
            if (j > 0 && c - j < l1)
            {
                j -= c;
                j1 = k1 + 1;
            } else
            {
                j1 = k1;
            }
            k += j1;
            d[i1] = k;
            i1++;
        }
        if (p.a() > 0 && !p.j)
        {
            for (j = b(l, p, a1.a); j > 0 && a1.a > 0; j = b(l, p, a1.a))
            {
                a1.a = a1.a - 1;
            }

        }
        if (e == null || e.length != c)
        {
            e = new View[c];
        }
    }

    final void a(RecyclerView.l l, RecyclerView.p p, LinearLayoutManager.c c1, LinearLayoutManager.b b1)
    {
        int j;
        int k;
        int j2;
        boolean flag1;
        if (c1.e == 1)
        {
            flag1 = true;
        } else
        {
            flag1 = false;
        }
        k = 0;
        j = c;
        j2 = k;
        if (!flag1)
        {
            j = b(l, p, c1.d) + c(l, p, c1.d);
            j2 = k;
        }
        do
        {
            if (j2 >= c || !c1.a(p) || j <= 0)
            {
                break;
            }
            k = c1.d;
            int i1 = c(l, p, k);
            if (i1 > c)
            {
                throw new IllegalArgumentException((new StringBuilder("Item at position ")).append(k).append(" requires ").append(i1).append(" spans but GridLayoutManager has only ").append(c).append(" spans.").toString());
            }
            j -= i1;
            if (j < 0)
            {
                break;
            }
            View view = c1.a(l);
            if (view == null)
            {
                break;
            }
            e[j2] = view;
            j2++;
        } while (true);
        if (j2 == 0)
        {
            b1.b = true;
            return;
        }
        j = 0;
        a(l, p, j2, flag1);
        k = 0;
        while (k < j2) 
        {
            l = e[k];
            int j1;
            if (c1.k == null)
            {
                if (flag1)
                {
                    super.a(l, -1, false);
                } else
                {
                    super.a(l, 0, false);
                }
            } else
            if (flag1)
            {
                super.a(l, -1, true);
            } else
            {
                super.a(l, 0, true);
            }
            p = (LayoutParams)l.getLayoutParams();
            j1 = android.view.View.MeasureSpec.makeMeasureSpec(d[LayoutParams.a(p) + LayoutParams.b(p)] - d[LayoutParams.a(p)], 0x40000000);
            if (this.j == 1)
            {
                a(((View) (l)), j1, g(((LayoutParams) (p)).height));
            } else
            {
                a(((View) (l)), g(((LayoutParams) (p)).width), j1);
            }
            j1 = this.k.c(l);
            if (j1 > j)
            {
                j = j1;
            }
            k++;
        }
        int k1 = g(j);
        k = 0;
        while (k < j2) 
        {
            l = e[k];
            if (this.k.c(l) != j)
            {
                p = (LayoutParams)l.getLayoutParams();
                int l1 = android.view.View.MeasureSpec.makeMeasureSpec(d[LayoutParams.a(p) + LayoutParams.b(p)] - d[LayoutParams.a(p)], 0x40000000);
                if (this.j == 1)
                {
                    a(((View) (l)), l1, k1);
                } else
                {
                    a(((View) (l)), k1, l1);
                }
            }
            k++;
        }
        b1.a = j;
        k1 = 0;
        int i2 = 0;
        int k2;
        boolean flag;
        if (this.j == 1)
        {
            if (c1.f == -1)
            {
                i2 = c1.b;
                j = i2 - j;
                k = 0;
            } else
            {
                k = c1.b;
                i2 = k + j;
                j = k;
                k = 0;
            }
        } else
        if (c1.f == -1)
        {
            k = c1.b;
            k1 = k - j;
            j = 0;
        } else
        {
            k1 = c1.b;
            k = j + k1;
            j = 0;
        }
        flag = false;
        k2 = j;
        j = ((flag) ? 1 : 0);
        while (j < j2) 
        {
            l = e[j];
            p = (LayoutParams)l.getLayoutParams();
            if (this.j == 1)
            {
                k1 = n() + d[LayoutParams.a(p)];
                k = this.k.d(l) + k1;
            } else
            {
                i2 = o();
                k2 = d[LayoutParams.a(p)] + i2;
                i2 = this.k.d(l) + k2;
            }
            a(((View) (l)), ((LayoutParams) (p)).leftMargin + k1, ((LayoutParams) (p)).topMargin + k2, k - ((LayoutParams) (p)).rightMargin, i2 - ((LayoutParams) (p)).bottomMargin);
            if (((RecyclerView.LayoutParams) (p)).c.m() || ((RecyclerView.LayoutParams) (p)).c.k())
            {
                b1.c = true;
            }
            b1.d = b1.d | l.isFocusable();
            j++;
        }
        Arrays.fill(e, null);
    }

    public final void a(RecyclerView.l l, RecyclerView.p p, View view, bz bz1)
    {
        boolean flag2 = false;
        android.view.ViewGroup.LayoutParams layoutparams = view.getLayoutParams();
        if (!(layoutparams instanceof LayoutParams))
        {
            super.a(view, bz1);
            return;
        }
        view = (LayoutParams)layoutparams;
        int j = a(l, p, ((RecyclerView.LayoutParams) (view)).c.c());
        if (this.j == 0)
        {
            int k = ((LayoutParams) (view)).a;
            int j1 = ((LayoutParams) (view)).b;
            boolean flag;
            if (c > 1 && ((LayoutParams) (view)).b == c)
            {
                flag = true;
            } else
            {
                flag = false;
            }
            bz1.a(bz.j.a(k, j1, j, 1, flag));
            return;
        }
        int i1 = ((LayoutParams) (view)).a;
        int k1 = ((LayoutParams) (view)).b;
        boolean flag1 = flag2;
        if (c > 1)
        {
            flag1 = flag2;
            if (((LayoutParams) (view)).b == c)
            {
                flag1 = true;
            }
        }
        bz1.a(bz.j.a(j, 1, i1, k1, flag1));
    }

    public final boolean a(RecyclerView.LayoutParams layoutparams)
    {
        return layoutparams instanceof LayoutParams;
    }

    public final int b(RecyclerView.l l, RecyclerView.p p)
    {
        if (j == 1)
        {
            return c;
        }
        if (p.a() <= 0)
        {
            return 0;
        } else
        {
            return a(l, p, p.a() - 1);
        }
    }

    public final RecyclerView.LayoutParams b()
    {
        return new LayoutParams();
    }

    public final void b(int j, int k)
    {
        h.a.clear();
    }

    public final void c(int j, int k)
    {
        h.a.clear();
    }

    public final void c(RecyclerView.l l, RecyclerView.p p)
    {
        if (p.j)
        {
            int k = k();
            for (int j = 0; j < k; j++)
            {
                LayoutParams layoutparams = (LayoutParams)c(j).getLayoutParams();
                int i1 = ((RecyclerView.LayoutParams) (layoutparams)).c.c();
                f.put(i1, layoutparams.b);
                g.put(i1, layoutparams.a);
            }

        }
        super.c(l, p);
        f.clear();
        g.clear();
        if (!p.j)
        {
            b = false;
        }
    }

    public final boolean c()
    {
        return o == null && !b;
    }

    public final void d(int j, int k)
    {
        h.a.clear();
    }

}
