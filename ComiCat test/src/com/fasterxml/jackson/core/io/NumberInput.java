// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.fasterxml.jackson.core.io;

import java.math.BigDecimal;

public final class NumberInput
{

    static final String MAX_LONG_STR = "9223372036854775807";
    static final String MIN_LONG_STR_NO_SIGN = "-9223372036854775808".substring(1);

    private static NumberFormatException _badBD(String s)
    {
        return new NumberFormatException((new StringBuilder("Value \"")).append(s).append("\" can not be represented as BigDecimal").toString());
    }

    public static boolean inLongRange(char ac[], int i, int j, boolean flag)
    {
        String s;
        int k;
        if (flag)
        {
            s = MIN_LONG_STR_NO_SIGN;
        } else
        {
            s = MAX_LONG_STR;
        }
        k = s.length();
        if (j < k)
        {
            return true;
        }
        if (j > k)
        {
            return false;
        }
        for (j = 0; j < k; j++)
        {
            int l = ac[i + j] - s.charAt(j);
            if (l != 0)
            {
                return l < 0;
            }
        }

        return true;
    }

    public static BigDecimal parseBigDecimal(char ac[])
    {
        return parseBigDecimal(ac, 0, ac.length);
    }

    public static BigDecimal parseBigDecimal(char ac[], int i, int j)
    {
        BigDecimal bigdecimal;
        try
        {
            bigdecimal = new BigDecimal(ac, i, j);
        }
        catch (NumberFormatException numberformatexception)
        {
            throw _badBD(new String(ac, i, j));
        }
        return bigdecimal;
    }

    public static double parseDouble(String s)
    {
        if ("2.2250738585072012e-308".equals(s))
        {
            return 4.9406564584124654E-324D;
        } else
        {
            return Double.parseDouble(s);
        }
    }

    public static int parseInt(char ac[], int i, int j)
    {
        int k;
        int i1;
        int j1;
        int k1;
        k1 = ac[i] - 48;
        k = k1;
        j1 = i;
        i1 = j;
        if (j <= 4) goto _L2; else goto _L1
_L1:
        int l1;
        k = i + 1;
        i = ac[k];
        i1 = k + 1;
        k = ac[i1];
        j1 = i1 + 1;
        i1 = ac[j1];
        l1 = j1 + 1;
        i = (((k1 * 10 + (i - 48)) * 10 + (k - 48)) * 10 + (i1 - 48)) * 10 + (ac[l1] - 48);
        j -= 4;
        k = i;
        j1 = l1;
        i1 = j;
        if (j <= 4) goto _L2; else goto _L3
_L3:
        k = l1 + 1;
        j = ac[k];
        i1 = k + 1;
        k = ac[i1];
        i1++;
        i = (((i * 10 + (j - 48)) * 10 + (k - 48)) * 10 + (ac[i1] - 48)) * 10 + (ac[i1 + 1] - 48);
_L5:
        return i;
_L2:
        i = k;
        if (i1 > 1)
        {
            j1++;
            j = k * 10 + (ac[j1] - 48);
            i = j;
            if (i1 > 2)
            {
                int l = j1 + 1;
                j = j * 10 + (ac[l] - 48);
                i = j;
                if (i1 > 3)
                {
                    return j * 10 + (ac[l + 1] - 48);
                }
            }
        }
        if (true) goto _L5; else goto _L4
_L4:
    }

    public static long parseLong(char ac[], int i, int j)
    {
        j -= 9;
        long l = parseInt(ac, i, j);
        return (long)parseInt(ac, j + i, 9) + l * 0x3b9aca00L;
    }

}
