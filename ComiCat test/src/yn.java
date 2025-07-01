// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import java.io.UnsupportedEncodingException;

final class yn extends yj
{

    private yk A;
    private int B;
    private byte C[];
    private byte D[];
    yk z[];

    yn(yk yk1)
    {
        A = yk1;
        r = new yf();
        C = new byte[6];
    }

    private int e(byte abyte0[], int i)
    {
        String s;
        boolean flag;
        int j;
        int k;
        z = new yk[B];
        s = A.f.c;
        flag = false;
        k = 0;
        j = i;
_L10:
        if (k >= B) goto _L2; else goto _L1
_L1:
        boolean flag2;
        boolean flag3;
        boolean flag4;
        boolean flag5;
        String s1;
        int l = j + 14;
        while (abyte0[l] == 32) 
        {
            l--;
        }
          goto _L3
_L8:
        s1 = new String(abyte0, j, (l - j) + 1, yf.a);
        l = abyte0[j + 15] & 0xff;
        int i1;
        boolean flag1;
        if ((abyte0[j + 16] & 0x80) == 128)
        {
            flag1 = true;
        } else
        {
            flag1 = false;
        }
        break MISSING_BLOCK_LABEL_357;
        if (flag) goto _L5; else goto _L4
_L4:
        if (A.f.d != l || A.f != yk.b && !A.f.b.equals(s1)) goto _L5; else goto _L6
_L6:
        if (A.f == yk.b)
        {
            A.f = new yf(s1, l, s);
        }
        A.i = flag1;
        A.h = i1;
        A.j = flag2;
        A.k = flag3;
        A.l = flag4;
        A.m = flag5;
        A.o = C;
        A.n = true;
        flag = true;
        try
        {
            z[k] = A;
            break MISSING_BLOCK_LABEL_442;
        }
        // Misplaced declaration of an exception variable
        catch (byte abyte0[]) { }
          goto _L2
_L5:
        z[k] = new yk(new yf(s1, l, s), A.g, flag1, i1, flag2, flag3, flag4, flag5, C);
        break MISSING_BLOCK_LABEL_442;
_L2:
        return j - i;
_L3:
        if (true) goto _L8; else goto _L7
_L7:
        i1 = (abyte0[j + 16] & 0x60) >> 5;
        if ((abyte0[j + 16] & 0x10) == 16)
        {
            flag2 = true;
        } else
        {
            flag2 = false;
        }
        if ((abyte0[j + 16] & 8) == 8)
        {
            flag3 = true;
        } else
        {
            flag3 = false;
        }
        if ((abyte0[j + 16] & 4) == 4)
        {
            flag4 = true;
        } else
        {
            flag4 = false;
        }
        if ((abyte0[j + 16] & 2) == 2)
        {
            flag5 = true;
        } else
        {
            flag5 = false;
        }
        break MISSING_BLOCK_LABEL_108;
        k++;
        j += 18;
        if (true) goto _L10; else goto _L9
_L9:
    }

    final int a(byte abyte0[])
    {
        return 0;
    }

    final int a(byte abyte0[], int i)
    {
        B = abyte0[i] & 0xff;
        int k = B * 18;
        int j = x - k - 1;
        int l = i + 1;
        B = abyte0[i] & 0xff;
        System.arraycopy(abyte0, k + l, C, 0, 6);
        k = e(abyte0, l) + l;
        D = new byte[j];
        System.arraycopy(abyte0, k, D, 0, j);
        return (k + j) - i;
    }

    final int b(byte abyte0[])
    {
        return d(abyte0, 12);
    }

    public final String toString()
    {
        return new String((new StringBuilder("NodeStatusResponse[")).append(super.toString()).append("]").toString());
    }
}
