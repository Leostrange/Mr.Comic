// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.graphics.Bitmap;
import android.graphics.Color;
import android.util.TimingLogger;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;
import java.util.PriorityQueue;

public final class cw
{
    final class a
    {

        int a;
        final cw b;
        private int c;
        private int d;
        private int e;
        private int f;
        private int g;
        private int h;
        private int i;
        private int j;

        final int a()
        {
            return ((f - e) + 1) * ((h - g) + 1) * ((j - i) + 1);
        }

        final boolean b()
        {
            return (a + 1) - c > 1;
        }

        final void c()
        {
            int ai[] = b.a;
            int ai1[] = b.b;
            int j1 = 0x80000000;
            int k2 = 0;
            int i1 = c;
            int l2 = 0x80000000;
            int k = 0x7fffffff;
            int l = 0x7fffffff;
            int i2 = 0x7fffffff;
            int l1 = 0x80000000;
            while (i1 <= a) 
            {
                int k1 = ai[i1];
                int k3 = k2 + ai1[k1];
                int j3 = cw.a(k1);
                int i3 = cw.b(k1);
                k2 = cw.c(k1);
                k1 = l2;
                if (j3 > l2)
                {
                    k1 = j3;
                }
                int j2 = i2;
                if (j3 < i2)
                {
                    j2 = j3;
                }
                i2 = l1;
                if (i3 > l1)
                {
                    i2 = i3;
                }
                j3 = l;
                if (i3 < l)
                {
                    j3 = i3;
                }
                l1 = j1;
                if (k2 > j1)
                {
                    l1 = k2;
                }
                l = k;
                if (k2 < k)
                {
                    l = k2;
                }
                i1++;
                k2 = k3;
                j1 = l1;
                l1 = i2;
                l2 = k1;
                k = l;
                l = j3;
                i2 = j2;
            }
            e = i2;
            f = l2;
            g = l;
            h = l1;
            i = k;
            j = j1;
            d = k2;
        }

        final int d()
        {
            int k = f - e;
            int l = h - g;
            int i1 = j - i;
            int ai[];
            int ai1[];
            if (k >= l && k >= i1)
            {
                k = -3;
            } else
            if (l >= k && l >= i1)
            {
                k = -2;
            } else
            {
                k = -1;
            }
            ai = b.a;
            ai1 = b.b;
            cw.a(ai, k, c, a);
            Arrays.sort(ai, c, a + 1);
            cw.a(ai, k, c, a);
            i1 = d / 2;
            k = c;
            l = 0;
            for (; k <= a; k++)
            {
                l += ai1[ai[k]];
                if (l >= i1)
                {
                    return k;
                }
            }

            return c;
        }

        final cy.c e()
        {
            int k1 = 0;
            int ai[] = b.a;
            int ai1[] = b.b;
            int j1 = c;
            int k = 0;
            int l = 0;
            int i1 = 0;
            for (; j1 <= a; j1++)
            {
                int l1 = ai[j1];
                int i2 = ai1[l1];
                k1 += i2;
                i1 += cw.a(l1) * i2;
                l += cw.b(l1) * i2;
                k += cw.c(l1) * i2;
            }

            return new cy.c(cw.a(Math.round((float)i1 / (float)k1), Math.round((float)l / (float)k1), Math.round((float)k / (float)k1)), k1);
        }

        a(int k, int l)
        {
            b = cw.this;
            super();
            c = k;
            a = l;
            c();
        }
    }


    private static final Comparator f = new Comparator() {

        public final int compare(Object obj, Object obj1)
        {
            obj = (a)obj;
            return ((a)obj1).a() - ((a) (obj)).a();
        }

    };
    final int a[];
    final int b[];
    public final List c;
    final TimingLogger d = null;
    private final float e[] = new float[3];

    private cw(int ai[], int i)
    {
        boolean flag = false;
        super();
        int ai1[] = new int[32768];
        b = ai1;
        for (int j = 0; j < ai.length; j++)
        {
            int i1 = ai[j];
            int l1 = c(Color.red(i1), 8, 5);
            int l2 = c(Color.green(i1), 8, 5);
            i1 = c(Color.blue(i1), 8, 5) | (l1 << 10 | l2 << 5);
            ai[j] = i1;
            ai1[i1] = ai1[i1] + 1;
        }

        int k = 0;
        int j1;
        int j2;
        for (j1 = 0; k < 32768; j1 = j2)
        {
            if (ai1[k] > 0)
            {
                int i2 = d(k);
                ai = e;
                h.a(Color.red(i2), Color.green(i2), Color.blue(i2), ai);
                if (a(e))
                {
                    ai1[k] = 0;
                }
            }
            j2 = j1;
            if (ai1[k] > 0)
            {
                j2 = j1 + 1;
            }
            k++;
        }

        ai = new int[j1];
        a = ai;
        int k2 = 0;
        k = 0;
        for (; k2 < 32768; k2++)
        {
            if (ai1[k2] > 0)
            {
                int i3 = k + 1;
                ai[k] = k2;
                k = i3;
            }
        }

        if (j1 <= i)
        {
            c = new ArrayList();
            int l = ai.length;
            for (i = ((flag) ? 1 : 0); i < l; i++)
            {
                int k1 = ai[i];
                c.add(new cy.c(d(k1), ai1[k1]));
            }

        } else
        {
            ai = new PriorityQueue(i, f);
            ai.offer(new a(0, a.length - 1));
            a(ai, i);
            c = a(ai);
        }
    }

    static int a(int i)
    {
        return i >> 10 & 0x1f;
    }

    static int a(int i, int j, int k)
    {
        return b(i, j, k);
    }

    public static cw a(Bitmap bitmap, int i)
    {
        int j = bitmap.getWidth();
        int k = bitmap.getHeight();
        int ai[] = new int[j * k];
        bitmap.getPixels(ai, 0, j, 0, 0, j, k);
        return new cw(ai, i);
    }

    private static List a(Collection collection)
    {
        ArrayList arraylist = new ArrayList(collection.size());
        collection = collection.iterator();
        do
        {
            if (!collection.hasNext())
            {
                break;
            }
            cy.c c1 = ((a)collection.next()).e();
            if (!a(c1.a()))
            {
                arraylist.add(c1);
            }
        } while (true);
        return arraylist;
    }

    private static void a(PriorityQueue priorityqueue, int i)
    {
        do
        {
            if (priorityqueue.size() >= i)
            {
                break;
            }
            a a1 = (a)priorityqueue.poll();
            if (a1 == null || !a1.b())
            {
                break;
            }
            if (!a1.b())
            {
                throw new IllegalStateException("Can not split a box with only 1 color");
            }
            int j = a1.d();
            a a2 = a1.b. new a(j + 1, a1.a);
            a1.a = j;
            a1.c();
            priorityqueue.offer(a2);
            priorityqueue.offer(a1);
        } while (true);
    }

    static void a(int ai[], int i, int j, int k)
    {
        int l = j;
        i;
        JVM INSTR tableswitch -3 -1: default 32
    //                   -3 32
    //                   -2 33
    //                   -1 81;
           goto _L1 _L1 _L2 _L3
_L1:
        return;
_L2:
        while (l <= k) 
        {
            i = ai[l];
            ai[l] = i & 0x1f | ((i >> 5 & 0x1f) << 10 | (i >> 10 & 0x1f) << 5);
            l++;
        }
        continue; /* Loop/switch isn't completed */
_L3:
        while (j <= k) 
        {
            i = ai[j];
            ai[j] = i >> 10 & 0x1f | ((i & 0x1f) << 10 | (i >> 5 & 0x1f) << 5);
            j++;
        }
        if (true) goto _L1; else goto _L4
_L4:
    }

    private static boolean a(float af[])
    {
label0:
        {
            boolean flag1 = false;
            boolean flag;
            if (af[2] >= 0.95F)
            {
                flag = true;
            } else
            {
                flag = false;
            }
            if (!flag)
            {
                if (af[2] <= 0.05F)
                {
                    flag = true;
                } else
                {
                    flag = false;
                }
                if (!flag)
                {
                    if (af[0] >= 10F && af[0] <= 37F && af[1] <= 0.82F)
                    {
                        flag = true;
                    } else
                    {
                        flag = false;
                    }
                    if (!flag)
                    {
                        break label0;
                    }
                }
            }
            flag1 = true;
        }
        return flag1;
    }

    static int b(int i)
    {
        return i >> 5 & 0x1f;
    }

    private static int b(int i, int j, int k)
    {
        return Color.rgb(c(i, 5, 8), c(j, 5, 8), c(k, 5, 8));
    }

    static int c(int i)
    {
        return i & 0x1f;
    }

    private static int c(int i, int j, int k)
    {
        if (k > j)
        {
            i = (((1 << k) - 1) * i) / ((1 << j) - 1);
        } else
        {
            i >>= j - k;
        }
        return i & (1 << k) - 1;
    }

    private static int d(int i)
    {
        return b(i >> 10 & 0x1f, i >> 5 & 0x1f, i & 0x1f);
    }

}
