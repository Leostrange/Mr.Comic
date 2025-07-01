// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import java.io.PrintStream;

public final class abw
{

    public static final char a[] = {
        '0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 
        'A', 'B', 'C', 'D', 'E', 'F'
    };
    private static final String b;
    private static final int c;
    private static final char d[] = {
        ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', 
        ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', 
        ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', 
        ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', 
        ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' '
    };

    public static String a(int i, int j)
    {
        char ac[] = new char[j];
        a(i, ac, 0, j);
        return new String(ac);
    }

    public static String a(byte abyte0[], int i)
    {
        int k = 0;
        char ac[] = new char[i];
        int j;
        if (i % 2 == 0)
        {
            i /= 2;
        } else
        {
            i = i / 2 + 1;
        }
        j = 0;
        do
        {
            if (j >= i)
            {
                break;
            }
            int l = k + 1;
            ac[k] = a[abyte0[j] >> 4 & 0xf];
            if (l == ac.length)
            {
                break;
            }
            k = l + 1;
            ac[l] = a[abyte0[j] & 0xf];
            j++;
        } while (true);
        return new String(ac);
    }

    private static void a(int i, char ac[], int j, int k)
    {
        while (k > 0) 
        {
            int l = (j + k) - 1;
            if (l < ac.length)
            {
                ac[l] = a[i & 0xf];
            }
            l = i;
            if (i != 0)
            {
                l = i >>> 4;
            }
            k--;
            i = l;
        }
    }

    public static void a(PrintStream printstream, byte abyte0[], int i, int j)
    {
        char ac[];
        char ac1[];
        int k;
        int l;
        int i1;
        if (j == 0)
        {
            return;
        }
        int l1 = j % 16;
        int j1;
        if (l1 == 0)
        {
            k = j / 16;
        } else
        {
            k = j / 16 + 1;
        }
        ac = new char[k * (c + 74)];
        ac1 = new char[16];
        i1 = 0;
        l = 0;
        a(l, ac, i1, 5);
        k = i1 + 5;
        i1 = k + 1;
        ac[k] = ':';
        k = l;
        l = i1;
_L2:
        if (k == j)
        {
            j1 = 16 - l1;
            System.arraycopy(d, 0, ac, l, j1 * 3);
            i1 = l + j1 * 3;
            System.arraycopy(d, 0, ac1, l1, j1);
        } else
        {
            i1 = l + 1;
            ac[l] = ' ';
            l = abyte0[i + k] & 0xff;
            a(l, ac, i1, 2);
            i1 += 2;
            int k1;
            if (l < 0 || Character.isISOControl((char)l))
            {
                ac1[k % 16] = '.';
            } else
            {
                ac1[k % 16] = (char)l;
            }
            k1 = k + 1;
            l = i1;
            k = k1;
            if (k1 % 16 != 0)
            {
                continue; /* Loop/switch isn't completed */
            }
            k = k1;
        }
        l = i1 + 1;
        ac[i1] = ' ';
        i1 = l + 1;
        ac[l] = ' ';
        l = i1 + 1;
        ac[i1] = '|';
        System.arraycopy(ac1, 0, ac, l, 16);
        l += 16;
        i1 = l + 1;
        ac[l] = '|';
        b.getChars(0, c, ac, i1);
        i1 = c + i1;
        l = k;
        if (k >= j)
        {
            printstream.println(ac);
            return;
        }
        break MISSING_BLOCK_LABEL_47;
        if (true) goto _L2; else goto _L1
_L1:
    }

    static 
    {
        String s = System.getProperty("line.separator");
        b = s;
        c = s.length();
    }
}
