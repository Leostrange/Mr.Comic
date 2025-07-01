// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 


public final class ajf
{

    static final String a = "-9223372036854775808".substring(1);
    static final String b = "9223372036854775807";

    public static final double a(String s)
    {
        if ("2.2250738585072012e-308".equals(s))
        {
            return 2.2250738585072014E-308D;
        } else
        {
            return Double.parseDouble(s);
        }
    }

    public static final int a(char ac[], int i, int j)
    {
        int k = ac[i] - 48;
        int l = j + i;
        int i1 = i + 1;
        i = k;
        if (i1 < l)
        {
            j = k * 10 + (ac[i1] - 48);
            k = i1 + 1;
            i = j;
            if (k < l)
            {
                j = j * 10 + (ac[k] - 48);
                k++;
                i = j;
                if (k < l)
                {
                    j = j * 10 + (ac[k] - 48);
                    k++;
                    i = j;
                    if (k < l)
                    {
                        j = j * 10 + (ac[k] - 48);
                        k++;
                        i = j;
                        if (k < l)
                        {
                            j = j * 10 + (ac[k] - 48);
                            k++;
                            i = j;
                            if (k < l)
                            {
                                j = j * 10 + (ac[k] - 48);
                                k++;
                                i = j;
                                if (k < l)
                                {
                                    j = j * 10 + (ac[k] - 48);
                                    k++;
                                    i = j;
                                    if (k < l)
                                    {
                                        i = j * 10 + (ac[k] - 48);
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
        return i;
    }

    public static final boolean a(char ac[], int i, int j, boolean flag)
    {
        String s;
        int k;
        if (flag)
        {
            s = a;
        } else
        {
            s = b;
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

    public static final long b(char ac[], int i, int j)
    {
        j -= 9;
        long l = a(ac, i, j);
        return (long)a(ac, j + i, 9) + l * 0x3b9aca00L;
    }

}
