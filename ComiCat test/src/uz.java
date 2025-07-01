// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import java.util.Arrays;

public abstract class uz extends vw
{

    static int P[] = {
        1, 3, 4, 4, 5, 6, 7, 8, 8, 4, 
        4, 5, 6, 6, 4, 0
    };
    static int Q[] = {
        0, 160, 208, 224, 240, 248, 252, 254, 255, 192, 
        128, 144, 152, 156, 176
    };
    static int R[] = {
        2, 3, 3, 3, 4, 4, 5, 6, 6, 4, 
        4, 5, 6, 6, 4, 0
    };
    static int S[] = {
        0, 64, 96, 160, 208, 224, 240, 248, 252, 192, 
        128, 144, 152, 156, 176
    };
    private static int T[] = {
        40960, 49152, 53248, 57344, 59904, 60928, 61440, 61952, 62016, 65535
    };
    private static int U[] = {
        0, 0, 0, 0, 5, 7, 9, 13, 18, 22, 
        26, 34, 36
    };
    private static int V[] = {
        32768, 49152, 57344, 61952, 61952, 61952, 61952, 61952, 65535
    };
    private static int W[] = {
        0, 0, 0, 0, 0, 8, 16, 24, 33, 33, 
        33, 33, 33
    };
    private static int X[] = {
        8192, 49152, 57344, 61440, 61952, 61952, 63456, 65535
    };
    private static int Y[] = {
        0, 0, 0, 0, 0, 0, 4, 44, 60, 76, 
        80, 80, 127
    };
    private static int Z[] = {
        4096, 9216, 32768, 49152, 64000, 65535, 65535, 65535
    };
    private static int a[] = {
        32768, 40960, 49152, 53248, 57344, 59904, 60928, 61440, 61952, 61952, 
        65535
    };
    private static int aa[] = {
        0, 0, 0, 0, 0, 0, 2, 7, 53, 117, 
        233, 0, 0
    };
    private static int ab[] = {
        2048, 9216, 60928, 65152, 65535, 65535, 65535
    };
    private static int ac[] = {
        0, 0, 0, 0, 0, 0, 0, 2, 16, 218, 
        251, 0, 0
    };
    private static int ad[] = {
        65280, 65535, 65535, 65535, 65535, 65535
    };
    private static int ae[] = {
        0, 0, 0, 0, 0, 0, 0, 0, 0, 255, 
        0, 0, 0
    };
    private static int b[] = {
        0, 0, 0, 2, 3, 5, 7, 11, 16, 20, 
        24, 32, 32
    };
    protected int A;
    protected int B;
    protected int C;
    protected int D;
    protected int E;
    protected int F;
    protected int G;
    protected int H;
    protected int I;
    protected int J;
    protected int K;
    protected int L;
    protected int M;
    protected int N;
    protected int O;
    protected int c;
    protected boolean d;
    protected boolean e;
    protected ux f;
    protected boolean g;
    protected int h;
    protected long i;
    protected byte j[];
    protected int k[];
    protected int l;
    protected int m;
    protected int n;
    protected int o[];
    protected int p[];
    protected int q[];
    protected int r[];
    protected int s[];
    protected int t[];
    protected int u[];
    protected int v[];
    protected int w[];
    protected int x[];
    protected int y[];
    protected int z;

    public uz()
    {
        k = new int[4];
        o = new int[256];
        p = new int[256];
        q = new int[256];
        r = new int[256];
        s = new int[256];
        t = new int[256];
        u = new int[256];
        v = new int[256];
        w = new int[256];
        x = new int[256];
        y = new int[256];
    }

    private int a(int i1, int j1, int ai[], int ai1[])
    {
        int k1 = 0;
        int l1 = i1 & 0xfff0;
        for (i1 = 0; ai[i1] <= l1; i1++)
        {
            j1++;
        }

        b(j1);
        if (i1 != 0)
        {
            k1 = ai[i1 - 1];
        }
        return (l1 - k1 >>> 16 - j1) + ai1[j1];
    }

    private void a()
    {
        int i1 = 0;
        G = 0;
        L = L + 16;
        if (L > 255)
        {
            L = 144;
            K = K >>> 1;
        }
        int k1 = D;
        int j1 = g();
        int l1;
        int k2;
        if (D >= 122)
        {
            i1 = a(j1, 3, T, U);
        } else
        if (D >= 64)
        {
            i1 = a(j1, 2, a, b);
        } else
        if (j1 < 256)
        {
            b(16);
            i1 = j1;
        } else
        {
            for (; (j1 << i1 & 0x8000) == 0; i1++) { }
            b(i1 + 1);
        }
        D = D + i1;
        D = D - (D >>> 5);
        j1 = g();
        if (B > 10495)
        {
            j1 = a(j1, 5, Z, aa);
        } else
        if (B > 1791)
        {
            j1 = a(j1, 5, X, Y);
        } else
        {
            j1 = a(j1, 4, V, W);
        }
        B = B + j1;
        B = B - (B >> 8);
        do
        {
            int i2 = q[j1 & 0xff];
            int ai[] = x;
            l1 = i2 + 1;
            i2 &= 0xff;
            k2 = ai[i2];
            ai[i2] = k2 + 1;
            if ((l1 & 0xff) != 0)
            {
                break;
            }
            a(q, x);
        } while (true);
        q[j1] = q[k2];
        q[k2] = l1;
        l1 = (0xff00 & l1 | g() >>> 8) >>> 1;
        b(7);
        int j2 = E;
        int ai1[];
        if (i1 != 1 && i1 != 4)
        {
            if (i1 == 0 && l1 <= M)
            {
                E = E + 1;
                E = E - (E >> 8);
            } else
            if (E > 0)
            {
                E = E - 1;
            }
        }
        j1 = i1 + 3;
        i1 = j1;
        if (l1 >= M)
        {
            i1 = j1 + 1;
        }
        j1 = i1;
        if (l1 <= 256)
        {
            j1 = i1 + 8;
        }
        if (j2 > 176 || A >= 10752 && k1 < 64)
        {
            M = 32512;
        } else
        {
            M = 8193;
        }
        ai1 = k;
        i1 = n;
        n = i1 + 1;
        ai1[i1] = l1;
        n = n & 3;
        O = j1;
        N = l1;
        a(l1, j1);
    }

    private void a(int i1, int j1)
    {
        i = i - (long)j1;
        for (; j1 != 0; j1--)
        {
            j[l] = j[l - i1 & 0x3fffff];
            l = l + 1 & 0x3fffff;
        }

    }

    private static void a(int ai[], int ai1[])
    {
        int i1 = 7;
        int k1 = 0;
        for (; i1 >= 0; i1--)
        {
            for (int l1 = 0; l1 < 32;)
            {
                ai[k1] = ai[k1] & 0xffffff00 | i1;
                l1++;
                k1++;
            }

        }

        Arrays.fill(ai1, 0);
        for (int j1 = 6; j1 >= 0; j1--)
        {
            ai1[j1] = (7 - j1) * 32;
        }

    }

    private void b()
    {
        int l1 = g();
        int i1;
        int j1;
        if (A > 30207)
        {
            i1 = a(l1, 8, ad, ae);
        } else
        if (A > 24063)
        {
            i1 = a(l1, 6, ab, ac);
        } else
        if (A > 13823)
        {
            i1 = a(l1, 5, Z, aa);
        } else
        if (A > 3583)
        {
            i1 = a(l1, 5, X, Y);
        } else
        {
            i1 = a(l1, 4, V, W);
        }
        j1 = i1 & 0xff;
        if (H != 0)
        {
            i1 = j1;
            if (j1 == 0)
            {
                i1 = j1;
                if (l1 > 4095)
                {
                    i1 = 256;
                }
            }
            j1 = i1 - 1;
            i1 = j1;
            if (j1 == -1)
            {
                i1 = g();
                b(1);
                if ((0x8000 & i1) != 0)
                {
                    H = 0;
                    G = 0;
                    return;
                }
                if ((i1 & 0x4000) != 0)
                {
                    i1 = 4;
                } else
                {
                    i1 = 3;
                }
                b(1);
                j1 = a(g(), 5, Z, aa);
                l1 = g();
                b(5);
                a(j1 << 5 | l1 >>> 11, i1);
                return;
            }
        } else
        {
            int i2 = G;
            G = i2 + 1;
            i1 = j1;
            if (i2 >= 16)
            {
                i1 = j1;
                if (J == 0)
                {
                    H = 1;
                    i1 = j1;
                }
            }
        }
        A = A + i1;
        A = A - (A >>> 8);
        K = K + 16;
        if (K > 255)
        {
            K = 144;
            L = L >>> 1;
        }
        byte abyte0[] = j;
        j1 = l;
        l = j1 + 1;
        abyte0[j1] = (byte)(o[i1] >>> 8);
        i = i - 1L;
        do
        {
            int j2 = o[i1];
            int ai[] = w;
            int k1 = j2 + 1;
            j2 &= 0xff;
            int k2 = ai[j2];
            ai[j2] = k2 + 1;
            if ((k1 & 0xff) > 161)
            {
                a(o, w);
            } else
            {
                o[i1] = o[k2];
                o[k2] = k1;
                return;
            }
        } while (true);
    }

    private int c(int i1)
    {
        if (i1 == 1)
        {
            return F + 3;
        } else
        {
            return P[i1];
        }
    }

    private int d(int i1)
    {
        if (i1 == 3)
        {
            return F + 3;
        } else
        {
            return R[i1];
        }
    }

    private void j()
    {
        int i1 = a(g(), 5, Z, aa);
        do
        {
            int k1 = r[i1];
            z = k1 >>> 8;
            int ai[] = y;
            int j1 = k1 + 1;
            k1 &= 0xff;
            int l1 = ai[k1];
            ai[k1] = l1 + 1;
            if ((j1 & 0xff) == 0)
            {
                a(r, y);
            } else
            {
                r[i1] = r[l1];
                r[l1] = j1;
                return;
            }
        } while (true);
    }

    protected abstract void a(boolean flag);

    protected final void b(boolean flag)
    {
        if (d)
        {
            l = m;
        } else
        {
            a(flag);
            if (!flag)
            {
                F = 0;
                G = 0;
                E = 0;
                D = 0;
                C = 0;
                B = 0;
                A = 13568;
                M = 8193;
                L = 128;
                K = 128;
            }
            J = 0;
            z = 0;
            H = 0;
            I = 0;
            h = 0;
            c();
            if (!flag)
            {
                for (int i1 = 0; i1 < 256; i1++)
                {
                    int ai[] = s;
                    int ai4[] = t;
                    u[i1] = i1;
                    ai4[i1] = i1;
                    ai[i1] = i1;
                    v[i1] = ~i1 + 1 & 0xff;
                    ai = o;
                    ai4 = q;
                    int k1 = i1 << 8;
                    ai4[i1] = k1;
                    ai[i1] = k1;
                    p[i1] = i1;
                    r[i1] = (~i1 + 1 & 0xff) << 8;
                }

                Arrays.fill(w, 0);
                Arrays.fill(x, 0);
                Arrays.fill(y, 0);
                a(q, x);
                l = 0;
            } else
            {
                l = m;
            }
            i = i - 1L;
        }
        if (i >= 0L)
        {
            j();
            J = 8;
        }
        do
        {
            if (i < 0L)
            {
                break;
            }
            l = l & 0x3fffff;
            if (al > h - 30 && !c())
            {
                break;
            }
            if ((m - l & 0x3fffff) < 270 && m != l)
            {
                d();
                if (d)
                {
                    return;
                }
            }
            if (H != 0)
            {
                b();
                continue;
            }
            int j1 = J - 1;
            J = j1;
            if (j1 < 0)
            {
                j();
                J = 7;
            }
            if ((z & 0x80) != 0)
            {
                z = z << 1;
                if (L > K)
                {
                    a();
                } else
                {
                    b();
                }
                continue;
            }
            z = z << 1;
            j1 = J - 1;
            J = j1;
            if (j1 < 0)
            {
                j();
                J = 7;
            }
            if ((z & 0x80) != 0)
            {
                z = z << 1;
                if (L > K)
                {
                    b();
                } else
                {
                    a();
                }
                continue;
            }
            z = z << 1;
            G = 0;
            int l1 = g();
            j1 = l1;
            if (I == 2)
            {
                b(1);
                if (l1 >= 32768)
                {
                    a(N, O);
                    continue;
                }
                j1 = l1 << 1;
                I = 0;
            }
            l1 = j1 >>> 8;
            if (C < 37)
            {
                for (j1 = 0; ((Q[j1] ^ l1) & ~(255 >>> c(j1))) != 0; j1++) { }
                b(c(j1));
            } else
            {
                for (j1 = 0; ((S[j1] ^ l1) & ~(255 >> d(j1))) != 0; j1++) { }
                b(d(j1));
            }
            if (j1 >= 9)
            {
                if (j1 == 9)
                {
                    I = I + 1;
                    a(N, O);
                } else
                if (j1 == 14)
                {
                    I = 0;
                    j1 = a(g(), 3, T, U) + 5;
                    int i2 = g() >> 1 | 0x8000;
                    b(15);
                    O = j1;
                    N = i2;
                    a(i2, j1);
                } else
                {
                    I = 0;
                    int l2 = k[n - (j1 - 9) & 3];
                    int j2 = a(g(), 2, a, b) + 2;
                    if (j2 == 257 && j1 == 10)
                    {
                        F = F ^ 1;
                    } else
                    {
                        j1 = j2;
                        if (l2 > 256)
                        {
                            j1 = j2 + 1;
                        }
                        j2 = j1;
                        if (l2 >= M)
                        {
                            j2 = j1 + 1;
                        }
                        int ai1[] = k;
                        j1 = n;
                        n = j1 + 1;
                        ai1[j1] = l2;
                        n = n & 3;
                        O = j2;
                        N = l2;
                        a(l2, j2);
                    }
                }
            } else
            {
                I = 0;
                C = C + j1;
                C = C - (C >> 4);
                int i3 = a(g(), 5, Z, aa) & 0xff;
                int k2 = p[i3];
                i3--;
                if (i3 != -1)
                {
                    int ai2[] = t;
                    ai2[k2] = ai2[k2] - 1;
                    int j3 = p[i3];
                    ai2 = t;
                    ai2[j3] = ai2[j3] + 1;
                    p[i3 + 1] = j3;
                    p[i3] = k2;
                }
                j1 += 2;
                int ai3[] = k;
                i3 = n;
                n = i3 + 1;
                k2++;
                ai3[i3] = k2;
                n = n & 3;
                O = j1;
                N = k2;
                a(k2, j1);
            }
        } while (true);
        d();
    }

    protected final boolean c()
    {
        int i1 = h - al;
        if (i1 < 0)
        {
            return false;
        }
        if (al > 16384)
        {
            if (i1 > 0)
            {
                System.arraycopy(an, al, an, 0, i1);
            }
            al = 0;
            h = i1;
        } else
        {
            i1 = h;
        }
        i1 = f.a(an, i1, 32768 - i1 & 0xfffffff0);
        if (i1 > 0)
        {
            h = h + i1;
        }
        c = h - 30;
        return i1 != -1;
    }

    protected final void d()
    {
        if (l != m)
        {
            g = true;
        }
        if (l < m)
        {
            f.b(j, m, -m & 0x3fffff);
            f.b(j, 0, l);
            e = true;
        } else
        {
            f.b(j, m, l - m);
        }
        m = l;
    }

}
