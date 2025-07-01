// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 


public final class xu extends yd.a
{

    static final char a[] = {
        '0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 
        'A', 'B', 'C', 'D', 'E', 'F'
    };

    public xu(String s)
    {
        s = s.toCharArray();
        b = a(s, 0, 8);
        c = (short)(a(s, 9, 4) & 0xffff);
        d = (short)(a(s, 14, 4) & 0xffff);
        e = (byte)(a(s, 19, 2) & 0xff);
        f = (byte)(a(s, 21, 2) & 0xff);
        g = new byte[6];
        g[0] = (byte)(a(s, 24, 2) & 0xff);
        g[1] = (byte)(a(s, 26, 2) & 0xff);
        g[2] = (byte)(a(s, 28, 2) & 0xff);
        g[3] = (byte)(a(s, 30, 2) & 0xff);
        g[4] = (byte)(a(s, 32, 2) & 0xff);
        g[5] = (byte)(a(s, 34, 2) & 0xff);
    }

    private static int a(char ac[], int i, int j)
    {
        int k;
        int l;
        int i1;
        i1 = 0;
        l = i;
        k = 0;
_L2:
        if (l >= ac.length || i1 >= j)
        {
            break MISSING_BLOCK_LABEL_291;
        }
        k <<= 4;
        switch (ac[l])
        {
        default:
            throw new IllegalArgumentException(new String(ac, i, j));

        case 65: // 'A'
        case 66: // 'B'
        case 67: // 'C'
        case 68: // 'D'
        case 69: // 'E'
        case 70: // 'F'
            break; /* Loop/switch isn't completed */

        case 97: // 'a'
        case 98: // 'b'
        case 99: // 'c'
        case 100: // 'd'
        case 101: // 'e'
        case 102: // 'f'
            break MISSING_BLOCK_LABEL_275;

        case 48: // '0'
        case 49: // '1'
        case 50: // '2'
        case 51: // '3'
        case 52: // '4'
        case 53: // '5'
        case 54: // '6'
        case 55: // '7'
        case 56: // '8'
        case 57: // '9'
            k += ac[l] - 48;
            break;
        }
_L3:
        i1++;
        l++;
        if (true) goto _L2; else goto _L1
_L1:
        k += (ac[l] - 65) + 10;
          goto _L3
        k += (ac[l] - 97) + 10;
          goto _L3
        return k;
    }

    private static String a(int i, int j)
    {
        char ac[] = new char[j];
        int k = ac.length;
        j = i;
        i = k;
        do
        {
            int l = i - 1;
            if (i > 0)
            {
                ac[l] = a[j & 0xf];
                j >>>= 4;
                i = l;
            } else
            {
                return new String(ac);
            }
        } while (true);
    }

    public final String toString()
    {
        return (new StringBuilder()).append(a(b, 8)).append('-').append(a(c, 4)).append('-').append(a(d, 4)).append('-').append(a(e, 2)).append(a(f, 2)).append('-').append(a(g[0], 2)).append(a(g[1], 2)).append(a(g[2], 2)).append(a(g[3], 2)).append(a(g[4], 2)).append(a(g[5], 2)).toString();
    }

}
