// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 


public final class ajg
{

    static final String a = "-9223372036854775808";
    static final char b[];
    static final char c[];
    static final byte d[];
    static final String e[] = {
        "0", "1", "2", "3", "4", "5", "6", "7", "8", "9", 
        "10"
    };
    static final String f[] = {
        "-1", "-2", "-3", "-4", "-5", "-6", "-7", "-8", "-9", "-10"
    };
    private static int g = 0xf4240;
    private static int h = 0x3b9aca00;
    private static long i = 0x2540be400L;
    private static long j = 1000L;
    private static long k = 0xffffffff80000000L;
    private static long l = 0x7fffffffL;

    public static int a(int i1, byte abyte0[], int j1)
    {
        int l1 = i1;
        int k1 = j1;
        if (i1 < 0)
        {
            if (i1 == 0x80000000)
            {
                return a(i1, abyte0, j1);
            }
            abyte0[j1] = 45;
            l1 = -i1;
            k1 = j1 + 1;
        }
        if (l1 < g)
        {
            if (l1 < 1000)
            {
                if (l1 < 10)
                {
                    abyte0[k1] = (byte)(l1 + 48);
                    return k1 + 1;
                } else
                {
                    return b(l1, abyte0, k1);
                }
            } else
            {
                i1 = l1 / 1000;
                return c(l1 - i1 * 1000, abyte0, b(i1, abyte0, k1));
            }
        }
        boolean flag;
        if (l1 >= h)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        i1 = l1;
        j1 = k1;
        if (flag)
        {
            i1 = l1 - h;
            if (i1 >= h)
            {
                i1 -= h;
                abyte0[k1] = 50;
                j1 = k1 + 1;
            } else
            {
                abyte0[k1] = 49;
                j1 = k1 + 1;
            }
        }
        k1 = i1 / 1000;
        l1 = k1 / 1000;
        if (flag)
        {
            j1 = c(l1, abyte0, j1);
        } else
        {
            j1 = b(l1, abyte0, j1);
        }
        return c(i1 - k1 * 1000, abyte0, c(k1 - l1 * 1000, abyte0, j1));
    }

    public static int a(int i1, char ac[], int j1)
    {
        int l1 = i1;
        int k1 = j1;
        if (i1 < 0)
        {
            if (i1 == 0x80000000)
            {
                return a(i1, ac, j1);
            }
            ac[j1] = '-';
            l1 = -i1;
            k1 = j1 + 1;
        }
        if (l1 < g)
        {
            if (l1 < 1000)
            {
                if (l1 < 10)
                {
                    ac[k1] = (char)(l1 + 48);
                    return k1 + 1;
                } else
                {
                    return b(l1, ac, k1);
                }
            } else
            {
                i1 = l1 / 1000;
                return c(l1 - i1 * 1000, ac, b(i1, ac, k1));
            }
        }
        boolean flag;
        if (l1 >= h)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        i1 = l1;
        j1 = k1;
        if (flag)
        {
            i1 = l1 - h;
            if (i1 >= h)
            {
                i1 -= h;
                ac[k1] = '2';
                j1 = k1 + 1;
            } else
            {
                ac[k1] = '1';
                j1 = k1 + 1;
            }
        }
        k1 = i1 / 1000;
        l1 = k1 / 1000;
        if (flag)
        {
            j1 = c(l1, ac, j1);
        } else
        {
            j1 = b(l1, ac, j1);
        }
        return c(i1 - k1 * 1000, ac, c(k1 - l1 * 1000, ac, j1));
    }

    private static int a(long l1)
    {
        int i1 = 10;
        for (long l2 = i; l1 >= l2 && i1 != 19; l2 = (l2 << 1) + (l2 << 3))
        {
            i1++;
        }

        return i1;
    }

    public static int a(long l1, byte abyte0[], int i1)
    {
        if (l1 >= 0L) goto _L2; else goto _L1
_L1:
        if (l1 <= k) goto _L4; else goto _L3
_L3:
        int i2 = a((int)l1, abyte0, i1);
_L6:
        return i2;
_L4:
        if (l1 != 0x8000000000000000L)
        {
            break; /* Loop/switch isn't completed */
        }
        int k2 = a.length();
        int j1 = 0;
        do
        {
            i2 = i1;
            if (j1 >= k2)
            {
                break;
            }
            abyte0[i1] = (byte)a.charAt(j1);
            j1++;
            i1++;
        } while (true);
        if (true) goto _L6; else goto _L5
_L5:
        int k1;
        long l3;
        abyte0[i1] = 45;
        l3 = -l1;
        k1 = i1 + 1;
_L8:
        int i3;
        i3 = k1 + a(l3);
        i1 = i3;
        for (; l3 > l; l3 = l1)
        {
            i1 -= 3;
            l1 = l3 / j;
            c((int)(l3 - j * l1), abyte0, i1);
        }

        break; /* Loop/switch isn't completed */
_L2:
        l3 = l1;
        k1 = i1;
        if (l1 <= l)
        {
            return a((int)l1, abyte0, i1);
        }
        if (true) goto _L8; else goto _L7
_L7:
        int j2 = (int)l3;
        int l2 = i1;
        for (i1 = j2; i1 >= 1000; i1 = j2)
        {
            l2 -= 3;
            j2 = i1 / 1000;
            c(i1 - j2 * 1000, abyte0, l2);
        }

        b(i1, abyte0, k1);
        return i3;
    }

    public static int a(long l1, char ac[], int i1)
    {
        int k1;
        int k2;
        long l2;
        if (l1 < 0L)
        {
            if (l1 > k)
            {
                return a((int)l1, ac, i1);
            }
            if (l1 == 0x8000000000000000L)
            {
                int j1 = a.length();
                a.getChars(0, j1, ac, i1);
                return i1 + j1;
            }
            ac[i1] = '-';
            l2 = -l1;
            k1 = i1 + 1;
        } else
        {
            l2 = l1;
            k1 = i1;
            if (l1 <= l)
            {
                return a((int)l1, ac, i1);
            }
        }
        k2 = k1 + a(l2);
        i1 = k2;
        for (; l2 > l; l2 = l1)
        {
            i1 -= 3;
            l1 = l2 / j;
            c((int)(l2 - j * l1), ac, i1);
        }

        int i2 = (int)l2;
        int j2 = i1;
        for (i1 = i2; i1 >= 1000; i1 = i2)
        {
            j2 -= 3;
            i2 = i1 / 1000;
            c(i1 - i2 * 1000, ac, j2);
        }

        b(i1, ac, k1);
        return k2;
    }

    private static int b(int i1, byte abyte0[], int j1)
    {
        i1 <<= 2;
        char ac[] = b;
        int k1 = i1 + 1;
        char c1 = ac[i1];
        i1 = j1;
        if (c1 != 0)
        {
            abyte0[j1] = (byte)c1;
            i1 = j1 + 1;
        }
        c1 = b[k1];
        j1 = i1;
        if (c1 != 0)
        {
            abyte0[i1] = (byte)c1;
            j1 = i1 + 1;
        }
        abyte0[j1] = (byte)b[k1 + 1];
        return j1 + 1;
    }

    private static int b(int i1, char ac[], int j1)
    {
        i1 <<= 2;
        char ac1[] = b;
        int k1 = i1 + 1;
        char c1 = ac1[i1];
        i1 = j1;
        if (c1 != 0)
        {
            ac[j1] = c1;
            i1 = j1 + 1;
        }
        c1 = b[k1];
        j1 = i1;
        if (c1 != 0)
        {
            ac[i1] = c1;
            j1 = i1 + 1;
        }
        ac[j1] = b[k1 + 1];
        return j1 + 1;
    }

    private static int c(int i1, byte abyte0[], int j1)
    {
        int l1 = i1 << 2;
        i1 = j1 + 1;
        byte abyte1[] = d;
        int k1 = l1 + 1;
        abyte0[j1] = abyte1[l1];
        j1 = i1 + 1;
        abyte0[i1] = d[k1];
        abyte0[j1] = d[k1 + 1];
        return j1 + 1;
    }

    private static int c(int i1, char ac[], int j1)
    {
        int l1 = i1 << 2;
        i1 = j1 + 1;
        char ac1[] = c;
        int k1 = l1 + 1;
        ac[j1] = ac1[l1];
        j1 = i1 + 1;
        ac[i1] = c[k1];
        ac[j1] = c[k1 + 1];
        return j1 + 1;
    }

    static 
    {
        b = new char[4000];
        c = new char[4000];
        int k1 = 0;
        int i1 = 0;
        for (; k1 < 10; k1++)
        {
            char c3 = (char)(k1 + 48);
            char c1;
            char c2;
            char c4;
            int l1;
            if (k1 == 0)
            {
                c1 = '\0';
            } else
            {
                c1 = c3;
            }
            for (l1 = 0; l1 < 10; l1++)
            {
                c4 = (char)(l1 + 48);
                int i2;
                if (k1 == 0 && l1 == 0)
                {
                    c2 = '\0';
                } else
                {
                    c2 = c4;
                }
                for (i2 = 0; i2 < 10; i2++)
                {
                    char c5 = (char)(i2 + 48);
                    b[i1] = c1;
                    b[i1 + 1] = c2;
                    b[i1 + 2] = c5;
                    c[i1] = c3;
                    c[i1 + 1] = c4;
                    c[i1 + 2] = c5;
                    i1 += 4;
                }

            }

        }

        d = new byte[4000];
        for (int j1 = 0; j1 < 4000; j1++)
        {
            d[j1] = (byte)c[j1];
        }

    }
}
