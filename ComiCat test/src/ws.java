// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import java.util.Random;

public final class ws
{

    static final double a[] = {
        0.46364760900080609D, 0.78539816339744828D, 0.98279372324732905D, 1.5707963267948966D
    };
    static final double b[] = {
        2.2698777452961687E-17D, 3.061616997868383E-17D, 1.3903311031230998E-17D, 6.123233995736766E-17D
    };
    static final double c[] = {
        0.33333333333332932D, -0.19999999999876483D, 0.14285714272503466D, -0.11111110405462356D, 0.090908871334365066D, -0.0769187620504483D, 0.066610731373875312D, -0.058335701337905735D, 0.049768779946159324D, -0.036531572744216916D, 
        0.016285820115365782D
    };
    static final double d[] = {
        0.5D, -0.5D
    };
    static final double e[] = {
        0.69314718036912382D, -0.69314718036912382D
    };
    static final double f[] = {
        1.9082149292705877E-10D, -1.9082149292705877E-10D
    };
    private static final Random g = new Random();
    private static final byte h[] = {
        0, 1, 2, 2, 3, 3, 3, 3, 4, 4, 
        4, 4, 4, 4, 4, 4, 5, 5, 5, 5, 
        5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 
        5, 5, 6, 6, 6, 6, 6, 6, 6, 6, 
        6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 
        6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 
        6, 6, 6, 6, 7, 7, 7, 7, 7, 7, 
        7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 
        7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 
        7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 
        7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 
        7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 
        7, 7, 7, 7, 7, 7, 7, 7, 8, 8, 
        8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 
        8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 
        8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 
        8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 
        8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 
        8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 
        8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 
        8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 
        8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 
        8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 
        8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 
        8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 
        8, 8, 8, 8, 8, 8
    };
    private static final int i[] = {
        1, 5, 25, 125, 625, 3125, 15625, 0x1312d, 0x5f5e1, 0x1dcd65, 
        0x9502f9, 0x2e90edd, 0xe8d4a51, 0x48c27395
    };
    private static double j = 0.43429448190325182D;

    public static double a(long l, int k)
    {
        do
        {
            if (l == 0L)
            {
                return 0.0D;
            }
            if (l != 0x8000000000000000L)
            {
                break;
            }
            l = 0xf333333333333334L;
            k++;
        } while (true);
        if (l < 0L)
        {
            return -a(-l, k);
        }
        if (k >= 0)
        {
            if (k > 308)
            {
                return (1.0D / 0.0D);
            }
            int i1 = 0;
            long l1 = 0L;
            long l4 = l >>> 32;
            long l2 = 0L;
            long l5 = l & 0xffffffffL;
            l = l2;
            while (k != 0) 
            {
                int j1;
                int k1;
                long l3;
                long l6;
                long l7;
                if (k >= i.length)
                {
                    j1 = i.length - 1;
                } else
                {
                    j1 = k;
                }
                k1 = i[j1];
                l3 = l1;
                if ((int)l1 != 0)
                {
                    l3 = l1 * (long)k1;
                }
                l1 = l;
                if ((int)l != 0)
                {
                    l1 = l * (long)k1;
                }
                l = k1;
                l6 = k1;
                l1 += l3 >>> 32;
                l7 = (l1 >>> 32) + l5 * l;
                l = l1 & 0xffffffffL;
                l5 = l4 * l6 + (l7 >>> 32);
                l1 = l7 & 0xffffffffL;
                i1 += j1;
                j1 = k - j1;
                l4 = l5 >>> 32;
                if (l4 != 0L)
                {
                    k = i1 + 32;
                    l5 &= 0xffffffffL;
                    l3 = l1;
                    l1 = l5;
                } else
                {
                    k = i1;
                    l4 = l5;
                    l5 = l3 & 0xffffffffL;
                    l3 = l;
                    l = l5;
                }
                i1 = k;
                l5 = l1;
                l1 = l;
                k = j1;
                l = l3;
            }
            k = 31 - b(l4);
            if (k < 0)
            {
                l = l4 << 31 | l5 >>> 1;
            } else
            {
                l = l >>> 32 - k | (l4 << 32 | l5) << k;
            }
            return b(l, i1 - k);
        }
        if (k < -344)
        {
            return 0.0D;
        }
        l3 = 0L;
        i1 = 0;
        l1 = l;
        l = l3;
        do
        {
            j1 = 63 - b(l1);
            l3 = l1 << j1 | l >>> 63 - j1;
            l = l << j1 & 0x7fffffffffffffffL;
            j1 = i1 - j1;
            if (k != 0)
            {
                if (-k >= i.length)
                {
                    i1 = i.length - 1;
                } else
                {
                    i1 = -k;
                }
                k1 = i[i1];
                l4 = l3 >>> 32;
                l1 = l4 / (long)k1;
                l3 = l3 & 0xffffffffL | l4 - (long)k1 * l1 << 32;
                l4 = l3 / (long)k1;
                l5 = k1;
                l1 = l1 << 32 | l4;
                l3 = l3 - l5 * l4 << 31 | l >>> 32;
                l4 = l3 / (long)k1;
                l = (l & 0xffffffffL | l3 - (long)k1 * l4 << 32) / (long)k1 | l4 << 32;
                k += i1;
                i1 = j1 - i1;
            } else
            {
                return b(l3, j1);
            }
        } while (true);
    }

    public static float a(float f1)
    {
        float f2 = f1;
        if (f1 < 0.0F)
        {
            f2 = -f1;
        }
        return f2;
    }

    public static int a(double d1)
    {
        int k = (int)(0.3010299956639812D * (double)c(d1));
        double d2 = a(1L, k);
        if (d2 <= d1 && 10D * d2 > d1)
        {
            return k;
        }
        if (d2 > d1)
        {
            return k - 1;
        } else
        {
            return k + 1;
        }
    }

    public static int a(int k)
    {
_L11:
        if (k < 0) goto _L2; else goto _L1
_L1:
        if (k < 0x186a0) goto _L4; else goto _L3
_L3:
        if (k < 0x989680) goto _L6; else goto _L5
_L5:
        if (k < 0x3b9aca00) goto _L8; else goto _L7
_L7:
        return 10;
_L8:
        return k < 0x5f5e100 ? 8 : 9;
_L6:
        return k < 0xf4240 ? 6 : 7;
_L4:
        if (k >= 100)
        {
            if (k >= 10000)
            {
                return 5;
            }
            return k < 1000 ? 3 : 4;
        }
        return k < 10 ? 1 : 2;
_L2:
        if (k == 0x80000000) goto _L7; else goto _L9
_L9:
        k = -k;
        if (true) goto _L11; else goto _L10
_L10:
    }

    public static int a(int k, int l)
    {
        if (k < l)
        {
            return k;
        } else
        {
            return l;
        }
    }

    public static int a(long l)
    {
        byte byte0 = 19;
_L6:
        if (l < 0L) goto _L2; else goto _L1
_L1:
        int k;
        if (l <= 0x7fffffffL)
        {
            k = a((int)l);
        } else
        if (l >= 0x5af3107a4000L)
        {
            if (l >= 0x2386f26fc10000L)
            {
                k = byte0;
                if (l < 0xde0b6b3a7640000L)
                {
                    return l < 0x16345785d8a0000L ? 17 : 18;
                }
            } else
            {
                return l < 0x38d7ea4c68000L ? 15 : 16;
            }
        } else
        {
            if (l >= 0x174876e800L)
            {
                if (l >= 0x9184e72a000L)
                {
                    return 14;
                }
                return l < 0xe8d4a51000L ? 12 : 13;
            }
            return l < 0x2540be400L ? 10 : 11;
        }
_L4:
        return k;
_L2:
        k = byte0;
        if (l == 0x8000000000000000L) goto _L4; else goto _L3
_L3:
        l = -l;
        if (true) goto _L6; else goto _L5
_L5:
    }

    public static long a(double d1, int k)
    {
_L8:
        int l;
        boolean flag;
        long l1;
        l1 = Double.doubleToLongBits(d1);
        if (l1 >> 63 != 0L)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        l = (int)(l1 >> 52) & 0x7ff;
        l1 &= 0xfffffffffffffL;
        if (l == 2047)
        {
            throw new ArithmeticException("Cannot convert to long (Infinity or NaN)");
        }
        if (l != 0) goto _L2; else goto _L1
_L1:
        if (l1 != 0L) goto _L4; else goto _L3
_L3:
        l1 = 0L;
_L6:
        return l1;
_L4:
        d1 *= 10000000000000000D;
        k -= 16;
        continue; /* Loop/switch isn't completed */
_L2:
        long l3 = l1 | 0x10000000000000L;
        l = l - 1023 - 52;
        if (k >= 0)
        {
            long l2 = 0L;
            l1 = 0L;
            long l4 = l3 & 0xffffffffL;
            l3 >>>= 32;
            while (k != 0) 
            {
                int i1;
                int j1;
                long l5;
                long l7;
                if (k >= i.length)
                {
                    i1 = i.length - 1;
                } else
                {
                    i1 = k;
                }
                j1 = i[i1];
                if ((int)l2 != 0)
                {
                    l2 *= j1;
                }
                if ((int)l1 != 0)
                {
                    l1 = (long)j1 * l1;
                }
                l7 = j1;
                l5 = j1;
                l1 += l2 >>> 32;
                l4 = l7 * l4 + (l1 >>> 32);
                l1 = 0xffffffffL & l1;
                l3 = (l4 >>> 32) + l5 * l3;
                l4 &= 0xffffffffL;
                l += i1;
                l5 = l3 >>> 32;
                if (l5 != 0L)
                {
                    l2 = l3 & 0xffffffffL;
                    l += 32;
                    l3 = l1;
                    l1 = l4;
                    l4 = l2;
                    l2 = l5;
                } else
                {
                    long l6 = 0xffffffffL & l2;
                    l2 = l3;
                    l3 = l6;
                }
                l5 = l3;
                l3 = l2;
                k -= i1;
                l2 = l5;
            }
            i1 = 31 - b(l3);
            k = l - i1;
            if (i1 < 0)
            {
                l1 = l3 << 31 | l4 >>> 1;
            } else
            {
                l1 = l1 >>> 32 - i1 | (l3 << 32 | l4) << i1;
            }
        } else
        {
            l1 = 0L;
            l2 = l3;
            do
            {
                i1 = 63 - b(l2);
                l2 = l2 << i1 | l1 >>> 63 - i1;
                l1 = 0x7fffffffffffffffL & l1 << i1;
                i1 = l - i1;
                if (k == 0)
                {
                    break;
                }
                if (-k >= i.length)
                {
                    l = i.length - 1;
                } else
                {
                    l = -k;
                }
                j1 = i[l];
                l4 = l2 >>> 32;
                l3 = l4 / (long)j1;
                l4 = l2 & 0xffffffffL | l4 - (long)j1 * l3 << 32;
                l5 = l4 / (long)j1;
                l7 = j1;
                l2 = l3 << 32 | l5;
                l3 = l4 - l7 * l5 << 31 | l1 >>> 32;
                l4 = l3 / (long)j1;
                l1 = (l1 & 0xffffffffL | l3 - (long)j1 * l4 << 32) / (long)j1 | l4 << 32;
                k += l;
                l = i1 - l;
            } while (true);
            l1 = l2;
            k = i1;
        }
        if (k > 0)
        {
            throw new ArithmeticException("Overflow");
        }
        if (k < -63)
        {
            return 0L;
        }
        l = -k;
        l2 = (l1 >> -(k + 1) & 1L) + (l1 >> l);
        l1 = l2;
        if (!flag) goto _L6; else goto _L5
_L5:
        return -l2;
        if (true) goto _L8; else goto _L7
_L7:
    }

    public static double b(double d1)
    {
        double d2 = d1;
        if (d1 < 0.0D)
        {
            d2 = -d1;
        }
        return d2;
    }

    private static double b(long l, int k)
    {
        do
        {
            if (l == 0L)
            {
                return 0.0D;
            }
            if (l != 0x8000000000000000L)
            {
                break;
            }
            l = 0xc000000000000000L;
            k++;
        } while (true);
        if (l < 0L)
        {
            return -b(-l, k);
        }
        int i1 = b(l) - 53;
        long l2 = 1075L + (long)k + (long)i1;
        if (l2 >= 2047L)
        {
            return (1.0D / 0.0D);
        }
        if (l2 <= 0L)
        {
            if (l2 <= -54L)
            {
                return 0.0D;
            } else
            {
                return b(l, k + 54) / 18014398509481984D;
            }
        }
        long l1;
        if (i1 > 0)
        {
            l = (l >> i1 - 1 & 1L) + (l >> i1);
        } else
        {
            l <<= -i1;
        }
        l1 = l2;
        if (l >> 52 != 1L)
        {
            l2++;
            l1 = l2;
            if (l2 >= 2047L)
            {
                return (1.0D / 0.0D);
            }
        }
        return Double.longBitsToDouble(l1 << 52 | l & 0xfffffffffffffL);
    }

    private static int b(long l)
    {
        int k = 32;
_L10:
        int i1 = (int)(l >> 32);
        if (i1 <= 0) goto _L2; else goto _L1
_L1:
        if (i1 >= 0x10000) goto _L4; else goto _L3
_L3:
        if (i1 >= 256) goto _L6; else goto _L5
_L5:
        k = h[i1] + 32;
_L8:
        return k;
_L6:
        return h[i1 >>> 8] + 40;
_L4:
        if (i1 < 0x1000000)
        {
            return h[i1 >>> 16] + 48;
        } else
        {
            return h[i1 >>> 24] + 56;
        }
_L2:
        if (i1 < 0)
        {
            l = -(1L + l);
            continue; /* Loop/switch isn't completed */
        }
        i1 = (int)l;
        if (i1 < 0) goto _L8; else goto _L7
_L7:
        if (i1 < 0x10000)
        {
            if (i1 < 256)
            {
                return h[i1];
            } else
            {
                return h[i1 >>> 8] + 8;
            }
        }
        if (i1 < 0x1000000)
        {
            return h[i1 >>> 16] + 16;
        }
        return h[i1 >>> 24] + 24;
        if (true) goto _L10; else goto _L9
_L9:
    }

    private static int c(double d1)
    {
        if (d1 <= 0.0D)
        {
            throw new ArithmeticException("Negative number or zero");
        }
        int k = (int)(Double.doubleToLongBits(d1) >> 52) & 0x7ff;
        if (k == 2047)
        {
            throw new ArithmeticException("Infinity or NaN");
        }
        if (k == 0)
        {
            return c(18014398509481984D * d1) - 54;
        } else
        {
            return k - 1023;
        }
    }

}
