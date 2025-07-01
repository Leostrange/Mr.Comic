// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import java.util.Arrays;
import java.util.concurrent.atomic.AtomicReference;

public final class ajk
{
    static final class a
    {

        protected final ajm a;
        protected final a b;
        final int c;

        public final ajm a(int i1, int j1, int k1)
        {
            if (a.hashCode() != i1 || !a.a(j1, k1)) goto _L2; else goto _L1
_L1:
            ajm ajm1 = a;
_L6:
            return ajm1;
_L2:
            a a1 = b;
_L7:
            if (a1 == null) goto _L4; else goto _L3
_L3:
            ajm ajm2;
            ajm2 = a1.a;
            if (ajm2.hashCode() != i1)
            {
                continue; /* Loop/switch isn't completed */
            }
            ajm1 = ajm2;
            if (ajm2.a(j1, k1)) goto _L6; else goto _L5
_L5:
            a1 = a1.b;
              goto _L7
_L4:
            return null;
        }

        public final ajm a(int i1, int ai[], int j1)
        {
            if (a.hashCode() != i1 || !a.a(ai, j1)) goto _L2; else goto _L1
_L1:
            ajm ajm1 = a;
_L6:
            return ajm1;
_L2:
            a a1 = b;
_L7:
            if (a1 == null) goto _L4; else goto _L3
_L3:
            ajm ajm2;
            ajm2 = a1.a;
            if (ajm2.hashCode() != i1)
            {
                continue; /* Loop/switch isn't completed */
            }
            ajm1 = ajm2;
            if (ajm2.a(ai, j1)) goto _L6; else goto _L5
_L5:
            a1 = a1.b;
              goto _L7
_L4:
            return null;
        }

        a(ajm ajm1, a a1)
        {
            a = ajm1;
            b = a1;
            int i1;
            if (a1 == null)
            {
                i1 = 1;
            } else
            {
                i1 = a1.c + 1;
            }
            c = i1;
        }
    }

    static final class b
    {

        public final int a;
        public final int b;
        public final int c[];
        public final ajm d[];
        public final a e[];
        public final int f;
        public final int g;
        public final int h;

        public b(ajk ajk1)
        {
            a = ajk1.d;
            b = ajk1.f;
            c = ajk1.g;
            d = ajk1.h;
            e = ajk1.i;
            f = ajk1.j;
            g = ajk1.k;
            h = ajk1.e;
        }

        public b(int ai[], ajm aajm[])
        {
            a = 0;
            b = 63;
            c = ai;
            d = aajm;
            e = null;
            f = 0;
            g = 0;
            h = 0;
        }
    }


    protected final ajk a;
    protected final AtomicReference b;
    protected final boolean c;
    protected int d;
    protected int e;
    protected int f;
    protected int g[];
    protected ajm h[];
    protected a i[];
    protected int j;
    protected int k;
    private final int l;
    private transient boolean m;
    private boolean n;
    private boolean o;
    private boolean p;

    public ajk(int i1)
    {
        a = null;
        l = i1;
        c = true;
        b = new AtomicReference(b());
    }

    private ajk(ajk ajk1, boolean flag, int i1, b b1)
    {
        a = ajk1;
        l = i1;
        c = flag;
        b = null;
        d = b1.a;
        f = b1.b;
        g = b1.c;
        h = b1.d;
        i = b1.e;
        j = b1.f;
        k = b1.g;
        e = b1.h;
        m = false;
        n = true;
        o = true;
        p = true;
    }

    private int b(int i1)
    {
        i1 = l ^ i1;
        i1 += i1 >>> 15;
        return i1 ^ i1 >>> 9;
    }

    private int b(int i1, int j1)
    {
        i1 = (i1 >>> 15 ^ i1) + j1 * 33 ^ l;
        return i1 + (i1 >>> 7);
    }

    private int b(int ai[], int i1)
    {
        int j1 = 3;
        if (i1 < 3)
        {
            throw new IllegalArgumentException();
        }
        int k1 = ai[0] ^ l;
        k1 = ((k1 + (k1 >>> 9)) * 33 + ai[1]) * 0x1003f;
        k1 = k1 + (k1 >>> 15) ^ ai[2];
        k1 += k1 >>> 17;
        for (; j1 < i1; j1++)
        {
            k1 = k1 * 31 ^ ai[j1];
            k1 += k1 >>> 3;
            k1 ^= k1 << 7;
        }

        i1 = (k1 >>> 15) + k1;
        return i1 ^ i1 << 9;
    }

    private static b b()
    {
        return new b(new int[64], new ajm[64]);
    }

    private int c()
    {
        a aa[] = i;
        int j1 = 0x7fffffff;
        int k1 = -1;
        int i1 = 0;
        for (int i2 = k; i1 < i2; i1++)
        {
            int l1 = aa[i1].c;
            if (l1 >= j1)
            {
                continue;
            }
            if (l1 == 1)
            {
                return i1;
            }
            k1 = i1;
            j1 = l1;
        }

        return k1;
    }

    private void d()
    {
        a aa[] = i;
        int i1 = aa.length;
        i = new a[i1 + i1];
        System.arraycopy(aa, 0, i, 0, i1);
    }

    public final ajk a(boolean flag)
    {
        return new ajk(this, flag, l, (b)b.get());
    }

    public final ajm a(int i1)
    {
        int j1;
        int k1;
        int i2;
        j1 = b(i1);
        k1 = f & j1;
        i2 = g[k1];
        if ((i2 >> 8 ^ j1) << 8 != 0) goto _L2; else goto _L1
_L1:
        ajm ajm1 = h[k1];
        if (ajm1 != null) goto _L4; else goto _L3
_L3:
        return null;
_L4:
        if (ajm1.a(i1))
        {
            return ajm1;
        }
        break; /* Loop/switch isn't completed */
_L2:
        if (i2 == 0) goto _L3; else goto _L5
_L5:
        int l1 = i2 & 0xff;
        if (l1 > 0)
        {
            a a1 = i[l1 - 1];
            if (a1 != null)
            {
                return a1.a(j1, i1, 0);
            }
        }
        if (true) goto _L3; else goto _L6
_L6:
    }

    public final ajm a(int i1, int j1)
    {
        int k1;
        int l1;
        int i2;
        if (j1 == 0)
        {
            k1 = b(i1);
        } else
        {
            k1 = b(i1, j1);
        }
        l1 = f & k1;
        i2 = g[l1];
        if ((i2 >> 8 ^ k1) << 8 == 0)
        {
            ajm ajm1 = h[l1];
            if (ajm1 == null)
            {
                return null;
            }
            if (ajm1.a(i1, j1))
            {
                return ajm1;
            }
        } else
        if (i2 == 0)
        {
            return null;
        }
        l1 = i2 & 0xff;
        if (l1 > 0)
        {
            a a1 = i[l1 - 1];
            if (a1 != null)
            {
                return a1.a(k1, i1, j1);
            }
        }
        return null;
    }

    public final ajm a(String s, int ai[], int i1)
    {
        int ai1[];
        int l1;
        if (c)
        {
            s = ajv.a.a(s);
        }
        if (i1 < 3)
        {
            int j1;
            if (i1 == 1)
            {
                j1 = b(ai[0]);
            } else
            {
                j1 = b(ai[0], ai[1]);
            }
            l1 = j1;
        } else
        {
            l1 = b(ai, i1);
        }
        if (i1 >= 4) goto _L2; else goto _L1
_L1:
        i1;
        JVM INSTR tableswitch 1 3: default 72
    //                   1 130
    //                   2 392
    //                   3 412;
           goto _L2 _L3 _L4 _L5
_L2:
        ai1 = new int[i1];
        for (j1 = 0; j1 < i1; j1++)
        {
            ai1[j1] = ai[j1];
        }

        break; /* Loop/switch isn't completed */
_L3:
        s = new ajn(s, l1, ai[0]);
_L16:
        int k1;
        int j2;
        if (n)
        {
            ai = g;
            i1 = g.length;
            g = new int[i1];
            System.arraycopy(ai, 0, g, 0, i1);
            n = false;
        }
        if (m)
        {
            m = false;
            o = false;
            int k2 = g.length;
            i1 = k2 + k2;
            if (i1 > 0x10000)
            {
                d = 0;
                e = 0;
                Arrays.fill(g, 0);
                Arrays.fill(h, null);
                Arrays.fill(i, null);
                j = 0;
                k = 0;
            } else
            {
                g = new int[i1];
                f = i1 - 1;
                ai = h;
                h = new ajm[i1];
                i1 = 0;
                for (k1 = 0; k1 < k2;)
                {
                    ajm ajm1 = ai[k1];
                    j2 = i1;
                    if (ajm1 != null)
                    {
                        j2 = i1 + 1;
                        i1 = ajm1.hashCode();
                        int i3 = f & i1;
                        h[i3] = ajm1;
                        g[i3] = i1 << 8;
                    }
                    k1++;
                    i1 = j2;
                }

                int k3 = k;
                if (k3 == 0)
                {
                    e = 0;
                } else
                {
                    j = 0;
                    k = 0;
                    p = false;
                    a aa[] = i;
                    i = new a[aa.length];
                    int l2 = 0;
                    j2 = 0;
                    k1 = i1;
                    while (j2 < k3) 
                    {
                        ai = aa[j2];
                        i1 = l2;
                        while (ai != null) 
                        {
                            l2 = k1 + 1;
                            Object obj = ((a) (ai)).a;
                            k1 = ((ajm) (obj)).hashCode();
                            int l3 = f & k1;
                            int i4 = g[l3];
                            if (h[l3] == null)
                            {
                                g[l3] = k1 << 8;
                                h[l3] = ((ajm) (obj));
                            } else
                            {
                                j = j + 1;
                                k1 = i4 & 0xff;
                                if (k1 == 0)
                                {
                                    if (k <= 254)
                                    {
                                        int j3 = k;
                                        k = k + 1;
                                        k1 = j3;
                                        if (j3 >= i.length)
                                        {
                                            d();
                                            k1 = j3;
                                        }
                                    } else
                                    {
                                        k1 = c();
                                    }
                                    g[l3] = i4 & 0xffffff00 | k1 + 1;
                                } else
                                {
                                    k1--;
                                }
                                obj = new a(((ajm) (obj)), i[k1]);
                                i[k1] = ((a) (obj));
                                i1 = Math.max(i1, ((a) (obj)).c);
                            }
                            ai = ((a) (ai)).b;
                            k1 = l2;
                        }
                        j2++;
                        l2 = i1;
                    }
                    e = l2;
                    if (k1 != d)
                    {
                        throw new RuntimeException((new StringBuilder("Internal error: count after rehash ")).append(k1).append("; should be ").append(d).toString());
                    }
                }
            }
        }
        d = d + 1;
        j2 = l1 & f;
        if (h[j2] != null) goto _L7; else goto _L6
_L6:
        g[j2] = l1 << 8;
        if (o)
        {
            ai = h;
            i1 = ai.length;
            h = new ajm[i1];
            System.arraycopy(ai, 0, h, 0, i1);
            o = false;
        }
        h[j2] = s;
_L13:
        i1 = g.length;
        if (d <= i1 >> 1) goto _L9; else goto _L8
_L8:
        k1 = i1 >> 2;
        if (d <= i1 - k1) goto _L11; else goto _L10
_L10:
        m = true;
_L9:
        return s;
_L4:
        s = new ajo(s, l1, ai[0], ai[1]);
        continue; /* Loop/switch isn't completed */
_L5:
        s = new ajp(s, l1, ai[0], ai[1], ai[2]);
        continue; /* Loop/switch isn't completed */
        s = new ajq(s, l1, ai1, i1);
        continue; /* Loop/switch isn't completed */
_L7:
        if (p)
        {
            ai = i;
            int i2;
            if (ai == null)
            {
                i = new a[32];
            } else
            {
                i1 = ai.length;
                i = new a[i1];
                System.arraycopy(ai, 0, i, 0, i1);
            }
            p = false;
        }
        j = j + 1;
        i2 = g[j2];
        i1 = i2 & 0xff;
        if (i1 == 0)
        {
            if (k <= 254)
            {
                k1 = k;
                k = k + 1;
                i1 = k1;
                if (k1 >= i.length)
                {
                    d();
                    i1 = k1;
                }
            } else
            {
                i1 = c();
            }
            g[j2] = i2 & 0xffffff00 | i1 + 1;
        } else
        {
            i1--;
        }
        ai = new a(s, i[i1]);
        i[i1] = ai;
        e = Math.max(((a) (ai)).c, e);
        if (e <= 255) goto _L13; else goto _L12
_L12:
        throw new IllegalStateException((new StringBuilder("Longest collision chain in symbol table (of size ")).append(d).append(") now exceeds maximum, 255 -- suspect a DoS attack based on hash collisions").toString());
_L11:
        if (j < k1) goto _L9; else goto _L14
_L14:
        m = true;
        return s;
        if (true) goto _L16; else goto _L15
_L15:
    }

    public final ajm a(int ai[], int i1)
    {
        int j1 = 0;
        if (i1 >= 3) goto _L2; else goto _L1
_L1:
        ajm ajm1;
        int k1 = ai[0];
        if (i1 < 2)
        {
            i1 = j1;
        } else
        {
            i1 = ai[1];
        }
        ajm1 = a(k1, i1);
_L6:
        return ajm1;
_L2:
        int l1;
        int j2;
        j1 = b(ai, i1);
        l1 = f & j1;
        j2 = g[l1];
        if ((j2 >> 8 ^ j1) << 8 != 0) goto _L4; else goto _L3
_L3:
        ajm ajm2;
        ajm2 = h[l1];
        ajm1 = ajm2;
        if (ajm2 == null) goto _L6; else goto _L5
_L5:
        ajm1 = ajm2;
        if (ajm2.a(ai, i1)) goto _L6; else goto _L7
_L7:
        int i2 = j2 & 0xff;
        if (i2 > 0)
        {
            a a1 = i[i2 - 1];
            if (a1 != null)
            {
                return a1.a(j1, ai, i1);
            }
        }
        break; /* Loop/switch isn't completed */
_L4:
        if (j2 == 0)
        {
            return null;
        }
        if (true) goto _L7; else goto _L8
_L8:
        return null;
    }

    public final void a()
    {
label0:
        {
label1:
            {
label2:
                {
                    if (a == null)
                    {
                        break label0;
                    }
                    b b1;
                    b b2;
                    ajk ajk1;
                    b b3;
                    int i1;
                    if (!n)
                    {
                        i1 = 1;
                    } else
                    {
                        i1 = 0;
                    }
                    if (i1 == 0)
                    {
                        break label0;
                    }
                    ajk1 = a;
                    b2 = new b(this);
                    i1 = b2.a;
                    b3 = (b)ajk1.b.get();
                    if (i1 <= b3.a)
                    {
                        break label1;
                    }
                    if (i1 <= 6000)
                    {
                        b1 = b2;
                        if (b2.h <= 63)
                        {
                            break label2;
                        }
                    }
                    b1 = b();
                }
                ajk1.b.compareAndSet(b3, b1);
            }
            n = true;
            o = true;
            p = true;
        }
    }
}
