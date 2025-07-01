// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 


final class abg extends aag
{

    private int a;

    abg(String s, int i)
    {
        A = s;
        a = i;
        g = 50;
        S = 5;
        M = 0;
        N = 2;
        O = 40;
        P = 0;
    }

    final int a(byte abyte0[], int i)
    {
        abyte0[i] = S;
        abyte0[i + 1] = 0;
        return 2;
    }

    final int b(byte abyte0[], int i)
    {
        a(a, abyte0, i);
        int k = i + 2;
        int j = k + 1;
        abyte0[k] = 0;
        k = j + 1;
        abyte0[j] = 0;
        j = k + 1;
        abyte0[k] = 0;
        k = j + 1;
        abyte0[j] = 0;
        return (k + a(A, abyte0, k)) - i;
    }

    final int c(byte abyte0[], int i)
    {
        return 0;
    }

    public final String toString()
    {
        return new String((new StringBuilder("Trans2QueryPathInformation[")).append(super.toString()).append(",informationLevel=0x").append(abw.a(a, 3)).append(",filename=").append(A).append("]").toString());
    }
}
