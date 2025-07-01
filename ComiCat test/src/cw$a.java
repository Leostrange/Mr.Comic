// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import java.util.Arrays;

final class c
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

    final c e()
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

        return new <init>(cw.a(Math.round((float)i1 / (float)k1), Math.round((float)l / (float)k1), Math.round((float)k / (float)k1)), k1);
    }

    >(cw cw1, int k, int l)
    {
        b = cw1;
        super();
        c = k;
        a = l;
        c();
    }
}
