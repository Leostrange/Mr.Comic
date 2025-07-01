// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 


final class abc extends aag
{

    private int a;

    abc(String s)
    {
        a = 3;
        A = s;
        g = 50;
        S = 16;
        M = 0;
        N = 0;
        O = 4096;
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
        int j = i + 2;
        return (j + a(A, abyte0, j)) - i;
    }

    final int c(byte abyte0[], int i)
    {
        return 0;
    }

    public final String toString()
    {
        return new String((new StringBuilder("Trans2GetDfsReferral[")).append(super.toString()).append(",maxReferralLevel=0x").append(a).append(",filename=").append(A).append("]").toString());
    }
}
