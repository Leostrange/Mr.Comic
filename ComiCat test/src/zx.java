// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 


abstract class zx extends aag
{

    int c;

    final int i(byte abyte0[], int j)
    {
        int k;
        int l;
        if (g != -95)
        {
            k = j + 1;
            abyte0[j] = P;
        } else
        {
            k = j + 1;
            abyte0[j] = 0;
        }
        l = k + 1;
        abyte0[k] = 0;
        k = l + 1;
        abyte0[l] = 0;
        b(L, abyte0, k);
        k += 4;
        b(M, abyte0, k);
        l = k + 4;
        k = l;
        if (g != -95)
        {
            b(N, abyte0, l);
            k = l + 4;
            b(O, abyte0, k);
            k += 4;
        }
        b(F, abyte0, k);
        l = k + 4;
        if (F == 0)
        {
            k = 0;
        } else
        {
            k = G;
        }
        b(k, abyte0, l);
        l += 4;
        k = l;
        if (g == -95)
        {
            b(H, abyte0, l);
            k = l + 4;
        }
        b(I, abyte0, k);
        l = k + 4;
        if (I == 0)
        {
            k = 0;
        } else
        {
            k = J;
        }
        b(k, abyte0, l);
        k = l + 4;
        if (g == -95)
        {
            b(K, abyte0, k);
            int i1 = k + 4;
            k = i1 + 1;
            abyte0[i1] = 0;
        } else
        {
            int j1 = k + 1;
            abyte0[k] = (byte)R;
            a(c, abyte0, j1);
            k = j1 + 2;
            k += a(abyte0, k);
        }
        return k - j;
    }
}
