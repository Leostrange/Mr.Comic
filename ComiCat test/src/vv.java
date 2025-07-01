// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 


public class vv
{

    public static final int a;
    public static final boolean u;
    public int b;
    int c[];
    int d[];
    int e;
    public int f;
    int g;
    int h;
    public final vr i[] = new vr[38];
    int j;
    int k;
    public int l;
    int m;
    public byte n[];
    public int o;
    public int p;
    public vr q;
    public vq r;
    public vq s;
    public vq t;

    public vv()
    {
        c = new int[38];
        d = new int[128];
        q = null;
        r = null;
        s = null;
        t = null;
        b = 0;
    }

    static int b(int i1)
    {
        return a * i1;
    }

    private static int b(int i1, int j1)
    {
        return a * j1 + i1;
    }

    private int d(int i1)
    {
        vq vq1;
        vq vq2;
        int k1;
        if (e != 0)
        {
            break MISSING_BLOCK_LABEL_416;
        }
        e = 255;
        vq1 = r;
        vq1.c(p);
        vq2 = s;
        vq vq3 = t;
        if (g != h)
        {
            n[g] = 0;
        }
        vq1.c(vq1);
        vq1.b(vq1);
        for (int j1 = 0; j1 < 38; j1++)
        {
            for (; i[j1].a() != 0; vq2.a(c[j1]))
            {
                vq2.c(a(j1));
                vq2.a(vq1);
                vq2.f();
            }

        }

        vq2.c(vq1.b());
        for (; vq2.c() != vq1.c(); vq2.c(vq2.b()))
        {
            vq3.c(b(vq2.c(), vq2.d()));
            for (; vq3.e() == 65535 && vq2.d() + vq3.d() < 0x10000; vq3.c(b(vq2.c(), vq2.d())))
            {
                vq3.a();
                vq2.a(vq2.d() + vq3.d());
            }

        }

_L4:
        vq2.c(vq1.b());
        if (vq2.c() == vq1.c())
        {
            break; /* Loop/switch isn't completed */
        }
        vq2.a();
        k1 = vq2.d();
        while (k1 > 128) 
        {
            a(vq2.c(), 37);
            vq2.c(b(vq2.c(), 128));
            k1 -= 128;
        }
        if (true) goto _L2; else goto _L1
_L1:
        break; /* Loop/switch isn't completed */
_L2:
        int ai[] = c;
        int l2 = d[k1 - 1];
        int i2 = l2;
        if (ai[l2] != k1)
        {
            int ai1[] = c;
            i2 = l2 - 1;
            l2 = k1 - ai1[i2];
            a(b(vq2.c(), k1 - l2), l2 - 1);
        }
        a(vq2.c(), i2);
        if (true) goto _L4; else goto _L3
_L3:
        if (i[i1].a() != 0)
        {
            return a(i1);
        }
        int l1 = i1;
        do
        {
            l1++;
            if (l1 == 38)
            {
                e = e - 1;
                l1 = c[i1];
                int j2 = a;
                i1 = c[i1] * 12;
                if (m - j > i1)
                {
                    m = m - i1;
                    k = k - l1 * j2;
                    return k;
                } else
                {
                    return 0;
                }
            }
        } while (i[l1].a() == 0);
        int k2 = a(l1);
        a(k2, l1, i1);
        return k2;
    }

    final int a(int i1)
    {
        int j1 = i[i1].a();
        vr vr1 = q;
        vr1.c(j1);
        i[i1].a(vr1.a());
        return j1;
    }

    public final void a()
    {
        if (b != 0)
        {
            b = 0;
            wk.b.a(n);
            n = null;
            f = 1;
            q = null;
            r = null;
            s = null;
            t = null;
        }
    }

    final void a(int i1, int j1)
    {
        vr vr1 = q;
        vr1.c(i1);
        vr1.a(i[j1].a());
        i[j1].a(vr1);
    }

    final void a(int i1, int j1, int k1)
    {
        int l1 = c[j1] - c[k1];
        k1 = c[k1] * a + i1;
        int ai[] = c;
        int i2 = d[l1 - 1];
        j1 = k1;
        i1 = l1;
        if (ai[i2] != l1)
        {
            i1 = i2 - 1;
            a(k1, i1);
            i1 = c[i1];
            j1 = k1 + a * i1;
            i1 = l1 - i1;
        }
        a(j1, d[i1 - 1]);
    }

    public final int b()
    {
        if (h != g)
        {
            int i1 = h - a;
            h = i1;
            return i1;
        }
        if (i[0].a() != 0)
        {
            return a(0);
        } else
        {
            return d(0);
        }
    }

    public final int c(int i1)
    {
        int j1 = d[i1 - 1];
        if (i[j1].a() != 0)
        {
            i1 = a(j1);
        } else
        {
            i1 = g;
            g = g + c[j1] * a;
            if (g > h)
            {
                g = g - c[j1] * a;
                return d(j1);
            }
        }
        return i1;
    }

    public String toString()
    {
        StringBuilder stringbuilder = new StringBuilder();
        stringbuilder.append("SubAllocator[");
        stringbuilder.append("\n  subAllocatorSize=");
        stringbuilder.append(b);
        stringbuilder.append("\n  glueCount=");
        stringbuilder.append(e);
        stringbuilder.append("\n  heapStart=");
        stringbuilder.append(f);
        stringbuilder.append("\n  loUnit=");
        stringbuilder.append(g);
        stringbuilder.append("\n  hiUnit=");
        stringbuilder.append(h);
        stringbuilder.append("\n  pText=");
        stringbuilder.append(j);
        stringbuilder.append("\n  unitsStart=");
        stringbuilder.append(k);
        stringbuilder.append("\n]");
        return stringbuilder.toString();
    }

    static 
    {
        boolean flag;
        if (!vv.desiredAssertionStatus())
        {
            flag = true;
        } else
        {
            flag = false;
        }
        u = flag;
        a = Math.max(vn.a, 12);
    }
}
