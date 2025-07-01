// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import java.util.Arrays;

public abstract class va extends uz
{

    public static final int af[] = {
        0, 1, 2, 3, 4, 5, 6, 7, 8, 10, 
        12, 14, 16, 20, 24, 28, 32, 40, 48, 56, 
        64, 80, 96, 112, 128, 160, 192, 224
    };
    public static final byte ag[] = {
        0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 
        1, 1, 2, 2, 2, 2, 3, 3, 3, 3, 
        4, 4, 4, 4, 5, 5, 5, 5
    };
    public static final int ah[] = {
        0, 1, 2, 3, 4, 6, 8, 12, 16, 24, 
        32, 48, 64, 96, 128, 192, 256, 384, 512, 768, 
        1024, 1536, 2048, 3072, 4096, 6144, 8192, 12288, 16384, 24576, 
        32768, 49152, 0x10000, 0x18000, 0x20000, 0x30000, 0x40000, 0x50000, 0x60000, 0x70000, 
        0x80000, 0x90000, 0xa0000, 0xb0000, 0xc0000, 0xd0000, 0xe0000, 0xf0000
    };
    public static final int ai[] = {
        0, 0, 0, 0, 1, 1, 2, 2, 3, 3, 
        4, 4, 5, 5, 6, 6, 7, 7, 8, 8, 
        9, 9, 10, 10, 11, 11, 12, 12, 13, 13, 
        14, 14, 15, 15, 16, 16, 16, 16, 16, 16, 
        16, 16, 16, 16, 16, 16, 16, 16
    };
    public static final int aj[] = {
        0, 4, 8, 16, 32, 64, 128, 192
    };
    public static final int ak[] = {
        2, 2, 3, 4, 5, 6, 6, 6
    };
    protected vi T[];
    protected byte U[];
    protected int V;
    protected int W;
    protected int X;
    protected int Y;
    protected vc Z[];
    protected vg aa;
    protected vf ab;
    protected vh ac;
    protected vj ad;
    protected vd ae;

    public va()
    {
        T = new vi[4];
        U = new byte[1028];
        Z = new vc[4];
        aa = new vg();
        ab = new vf();
        ac = new vh();
        ad = new vj();
        ae = new vd();
    }

    private void a(int i, int j)
    {
label0:
        {
            int ai1[] = this.k;
            int k = n;
            n = k + 1;
            ai1[k & 3] = j;
            N = j;
            O = i;
            this.i = this.i - (long)i;
            int l = this.l - j;
            j = l;
            k = i;
            if (l < 0x3ffed4)
            {
                j = l;
                k = i;
                if (this.l < 0x3ffed4)
                {
                    byte abyte0[] = this.j;
                    k = this.l;
                    this.l = k + 1;
                    byte abyte2[] = this.j;
                    j = l + 1;
                    abyte0[k] = abyte2[l];
                    abyte0 = this.j;
                    l = this.l;
                    this.l = l + 1;
                    abyte2 = this.j;
                    k = j + 1;
                    abyte0[l] = abyte2[j];
                    j = i;
                    for (i = k; j > 2; i++)
                    {
                        j--;
                        byte abyte1[] = this.j;
                        k = this.l;
                        this.l = k + 1;
                        abyte1[k] = this.j[i];
                    }

                    break label0;
                }
            }
            for (; k != 0; k--)
            {
                this.j[this.l] = this.j[j & 0x3fffff];
                this.l = this.l + 1 & 0x3fffff;
                j++;
            }

        }
    }

    protected static void a(byte abyte0[], int i, ve ve1, int j)
    {
        int ai2[] = new int[16];
        int ai1[] = new int[16];
        Arrays.fill(ai2, 0);
        Arrays.fill(ve1.a(), 0);
        for (int k = 0; k < j; k++)
        {
            int j1 = abyte0[i + k] & 0xf;
            ai2[j1] = ai2[j1] + 1;
        }

        ai2[0] = 0;
        ai1[0] = 0;
        ve1.c[0] = 0;
        ve1.b[0] = 0;
        long l2 = 0L;
        for (int l = 1; l < 16;)
        {
            long l3 = 2L * (l2 + (long)ai2[l]);
            long l4 = l3 << 15 - l;
            l2 = l4;
            if (l4 > 65535L)
            {
                l2 = 65535L;
            }
            ve1.b[l] = (int)l2;
            int ai4[] = ve1.c;
            int k1 = ve1.c[l - 1] + ai2[l - 1];
            ai4[l] = k1;
            ai1[l] = k1;
            l++;
            l2 = l3;
        }

        for (int i1 = 0; i1 < j; i1++)
        {
            if (abyte0[i + i1] != 0)
            {
                int ai3[] = ve1.a();
                int l1 = abyte0[i + i1] & 0xf;
                int i2 = ai1[l1];
                ai1[l1] = i2 + 1;
                ai3[i2] = i1;
            }
        }

        ve1.a = j;
    }

    private boolean a()
    {
        byte abyte0[];
        byte abyte1[];
        boolean flag;
        flag = false;
        abyte0 = new byte[19];
        abyte1 = new byte[1028];
        if (al <= h - 25 || c()) goto _L2; else goto _L1
_L1:
        return false;
_L2:
        int i;
        int i1;
        i = f();
        V = 0x8000 & i;
        if ((i & 0x4000) == 0)
        {
            Arrays.fill(U, (byte)0);
        }
        a(2);
        if (V != 0)
        {
            W = (i >>> 12 & 3) + 1;
            if (X >= W)
            {
                X = 0;
            }
            a(2);
            i1 = W * 257;
        } else
        {
            i1 = 374;
        }
        for (i = 0; i < 19; i++)
        {
            abyte0[i] = (byte)(f() >>> 12);
            a(4);
        }

        a(abyte0, 0, ((ve) (ae)), 19);
        i = 0;
_L4:
        int k;
        do
        {
            if (i >= i1)
            {
                break MISSING_BLOCK_LABEL_396;
            }
            if (al > h - 5 && !c())
            {
                continue; /* Loop/switch isn't completed */
            }
label0:
            {
                k = a(((ve) (ae)));
                if (k >= 16)
                {
                    break label0;
                }
                abyte1[i] = (byte)(k + U[i] & 0xf);
                i++;
            }
        } while (true);
        continue; /* Loop/switch isn't completed */
        int j1;
        if (k != 16)
        {
            break MISSING_BLOCK_LABEL_308;
        }
        j1 = (f() >>> 14) + 3;
        a(2);
        k = i;
_L6:
        i = k;
        if (j1 <= 0) goto _L4; else goto _L3
_L3:
        i = k;
        if (k >= i1) goto _L4; else goto _L5
_L5:
        abyte1[k] = abyte1[k - 1];
        k++;
        j1--;
          goto _L6
        if (k == 17)
        {
            k = (f() >>> 13) + 3;
            a(3);
            j1 = i;
        } else
        {
            k = (f() >>> 9) + 11;
            a(7);
            j1 = i;
        }
        i = j1;
        if (k <= 0) goto _L4; else goto _L7
_L7:
        i = j1;
        if (j1 >= i1) goto _L4; else goto _L8
_L8:
        abyte1[j1] = 0;
        j1++;
        k--;
        break MISSING_BLOCK_LABEL_334;
        if (al > h)
        {
            return true;
        }
        int l;
        if (V != 0)
        {
            int j = 0;
            do
            {
                l = ((flag) ? 1 : 0);
                if (j >= W)
                {
                    break;
                }
                a(abyte1, j * 257, ((ve) (T[j])), 257);
                j++;
            } while (true);
        } else
        {
            a(abyte1, 0, ((ve) (aa)), 298);
            a(abyte1, 298, ((ve) (ab)), 48);
            a(abyte1, 346, ((ve) (ad)), 28);
            l = ((flag) ? 1 : 0);
        }
        for (; l < U.length; l++)
        {
            U[l] = abyte1[l];
        }

        return true;
        if (true) goto _L1; else goto _L9
_L9:
    }

    protected final int a(ve ve1)
    {
        int i = 1;
        long l = f() & 0xfffe;
        int ai1[] = ve1.b;
        int j;
        if (l < (long)ai1[8])
        {
            if (l < (long)ai1[4])
            {
                if (l < (long)ai1[2])
                {
                    if (l >= (long)ai1[1])
                    {
                        i = 2;
                    }
                } else
                if (l < (long)ai1[3])
                {
                    i = 3;
                } else
                {
                    i = 4;
                }
            } else
            if (l < (long)ai1[6])
            {
                if (l < (long)ai1[5])
                {
                    i = 5;
                } else
                {
                    i = 6;
                }
            } else
            if (l < (long)ai1[7])
            {
                i = 7;
            } else
            {
                i = 8;
            }
        } else
        if (l < (long)ai1[12])
        {
            if (l < (long)ai1[10])
            {
                if (l < (long)ai1[9])
                {
                    i = 9;
                } else
                {
                    i = 10;
                }
            } else
            if (l < (long)ai1[11])
            {
                i = 11;
            } else
            {
                i = 12;
            }
        } else
        if (l < (long)ai1[14])
        {
            if (l < (long)ai1[13])
            {
                i = 13;
            } else
            {
                i = 14;
            }
        } else
        {
            i = 15;
        }
        a(i);
        j = ve1.c[i];
        j = ((int)l - ai1[i - 1] >>> 16 - i) + j;
        i = j;
        if (j >= ve1.a)
        {
            i = 0;
        }
        return ve1.a()[i];
    }

    protected final void c(boolean flag)
    {
        if (!d) goto _L2; else goto _L1
_L1:
        this.l = m;
_L30:
        if (this.i < 0L) goto _L4; else goto _L3
_L3:
        this.l = this.l & 0x3fffff;
        if (al > h - 30 && !c()) goto _L4; else goto _L5
_L5:
        if ((m - this.l & 0x3fffff) >= 270 || m == this.l) goto _L7; else goto _L6
_L6:
        d();
        if (!d) goto _L7; else goto _L8
_L8:
        return;
_L2:
        a(flag);
        if (!c() || !flag && !a()) goto _L8; else goto _L9
_L9:
        this.i = this.i - 1L;
        continue; /* Loop/switch isn't completed */
_L7:
        if (V == 0) goto _L11; else goto _L10
_L10:
        int i = a(T[X]);
        if (i != 256) goto _L13; else goto _L12
_L12:
        if (a())
        {
            continue; /* Loop/switch isn't completed */
        }
_L4:
        int ai1[];
        vc vc1;
        int ai2[];
        int j;
        int k;
        int l;
        int i1;
        int j1;
        if (h >= al + 5)
        {
            if (V != 0)
            {
                if (a(T[X]) == 256)
                {
                    a();
                }
            } else
            if (a(aa) == 269)
            {
                a();
            }
        }
        d();
        return;
_L13:
        ai1 = this.j;
        i1 = this.l;
        this.l = i1 + 1;
        vc1 = Z[X];
        vc1.l = vc1.l + 1;
        vc1.i = vc1.h;
        vc1.h = vc1.g;
        vc1.g = vc1.j - vc1.f;
        vc1.f = vc1.j;
        j1 = (vc1.m * 8 + vc1.a * vc1.f + (vc1.b * vc1.g + vc1.c * vc1.h) + (vc1.d * vc1.i + vc1.e * Y) >>> 3 & 0xff) - i;
        i = (byte)i << 3;
        ai2 = vc1.k;
        ai2[0] = ai2[0] + Math.abs(i);
        ai2 = vc1.k;
        ai2[1] = ai2[1] + Math.abs(i - vc1.f);
        ai2 = vc1.k;
        ai2[2] = ai2[2] + Math.abs(vc1.f + i);
        ai2 = vc1.k;
        ai2[3] = ai2[3] + Math.abs(i - vc1.g);
        ai2 = vc1.k;
        ai2[4] = ai2[4] + Math.abs(vc1.g + i);
        ai2 = vc1.k;
        ai2[5] = ai2[5] + Math.abs(i - vc1.h);
        ai2 = vc1.k;
        ai2[6] = ai2[6] + Math.abs(vc1.h + i);
        ai2 = vc1.k;
        ai2[7] = ai2[7] + Math.abs(i - vc1.i);
        ai2 = vc1.k;
        ai2[8] = ai2[8] + Math.abs(vc1.i + i);
        ai2 = vc1.k;
        ai2[9] = ai2[9] + Math.abs(i - Y);
        ai2 = vc1.k;
        j = ai2[10];
        ai2[10] = Math.abs(i + Y) + j;
        vc1.j = (byte)(j1 - vc1.m);
        Y = vc1.j;
        vc1.m = j1;
        if ((vc1.l & 0x1f) != 0) goto _L15; else goto _L14
_L14:
        j = vc1.k[0];
        vc1.k[0] = 0;
        i = 1;
        l = 0;
        while (i < vc1.k.length) 
        {
            k = j;
            if (vc1.k[i] < j)
            {
                k = vc1.k[i];
                l = i;
            }
            vc1.k[i] = 0;
            i++;
            j = k;
        }
        l;
        JVM INSTR tableswitch 1 10: default 828
    //                   1 876
    //                   2 898
    //                   3 920
    //                   4 942
    //                   5 964
    //                   6 986
    //                   7 1008
    //                   8 1030
    //                   9 1052
    //                   10 1074;
           goto _L15 _L16 _L17 _L18 _L19 _L20 _L21 _L22 _L23 _L24 _L25
_L15:
        ai1[i1] = (byte)j1;
        i = X + 1;
        X = i;
        if (i == W)
        {
            X = 0;
        }
        this.i = this.i - 1L;
        break; /* Loop/switch isn't completed */
_L16:
        if (vc1.a >= -16)
        {
            vc1.a = vc1.a - 1;
        }
        continue; /* Loop/switch isn't completed */
_L17:
        if (vc1.a < 16)
        {
            vc1.a = vc1.a + 1;
        }
        continue; /* Loop/switch isn't completed */
_L18:
        if (vc1.b >= -16)
        {
            vc1.b = vc1.b - 1;
        }
        continue; /* Loop/switch isn't completed */
_L19:
        if (vc1.b < 16)
        {
            vc1.b = vc1.b + 1;
        }
        continue; /* Loop/switch isn't completed */
_L20:
        if (vc1.c >= -16)
        {
            vc1.c = vc1.c - 1;
        }
        continue; /* Loop/switch isn't completed */
_L21:
        if (vc1.c < 16)
        {
            vc1.c = vc1.c + 1;
        }
        continue; /* Loop/switch isn't completed */
_L22:
        if (vc1.d >= -16)
        {
            vc1.d = vc1.d - 1;
        }
        continue; /* Loop/switch isn't completed */
_L23:
        if (vc1.d < 16)
        {
            vc1.d = vc1.d + 1;
        }
        continue; /* Loop/switch isn't completed */
_L24:
        if (vc1.e >= -16)
        {
            vc1.e = vc1.e - 1;
        }
        continue; /* Loop/switch isn't completed */
_L25:
        if (vc1.e < 16)
        {
            vc1.e = vc1.e + 1;
        }
        if (true) goto _L15; else goto _L11
_L11:
        i = a(aa);
        if (i >= 256) goto _L27; else goto _L26
_L26:
        ai1 = this.j;
        j = this.l;
        this.l = j + 1;
        ai1[j] = (byte)i;
          goto _L9
_L27:
        if (i > 269)
        {
            ai1 = af;
            i -= 270;
            j = ai1[i] + 3;
            k = ag[i];
            i = j;
            if (k > 0)
            {
                i = j + (f() >>> 16 - k);
                a(k);
            }
            k = a(ab);
            j = ah[k] + 1;
            l = ai[k];
            k = j;
            if (l > 0)
            {
                k = j + (f() >>> 16 - l);
                a(l);
            }
            j = i;
            if (k >= 8192)
            {
                i++;
                j = i;
                if ((long)k >= 0x40000L)
                {
                    j = i + 1;
                }
            }
            a(j, k);
            break; /* Loop/switch isn't completed */
        }
        if (i != 269) goto _L29; else goto _L28
_L28:
        if (a()) goto _L30; else goto _L4
_L29:
        if (i == 256)
        {
            a(O, N);
        } else
        if (i < 261)
        {
            k = this.k[n - (i - 256) & 3];
            j = a(ad);
            i = af[j] + 2;
            l = ag[j];
            j = i;
            if (l > 0)
            {
                j = i + (f() >>> 16 - l);
                a(l);
            }
            i = j;
            if (k >= 257)
            {
                j++;
                i = j;
                if (k >= 8192)
                {
                    j++;
                    i = j;
                    if (k >= 0x40000)
                    {
                        i = j + 1;
                    }
                }
            }
            a(i, k);
        } else
        if (i < 270)
        {
            ai1 = aj;
            i -= 261;
            j = ai1[i] + 1;
            k = ak[i];
            i = j;
            if (k > 0)
            {
                i = j + (f() >>> 16 - k);
                a(k);
            }
            a(2, i);
        }
        if (true) goto _L30; else goto _L31
_L31:
    }

    protected final void d(boolean flag)
    {
        if (!flag)
        {
            X = 0;
            Y = 0;
            W = 1;
            Arrays.fill(Z, new vc());
            Arrays.fill(U, (byte)0);
        }
    }

}
