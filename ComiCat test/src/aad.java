// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 


final class aad extends yv
{

    int D;
    int E;
    byte b[];
    int c;
    int d;

    aad()
    {
    }

    aad(byte abyte0[], int i1)
    {
        b = abyte0;
        c = i1;
    }

    final int i(byte abyte0[], int i1)
    {
        return 0;
    }

    final int j(byte abyte0[], int i1)
    {
        return 0;
    }

    final int k(byte abyte0[], int i1)
    {
        int j1 = i1 + 2;
        d = d(abyte0, j1);
        j1 += 4;
        D = d(abyte0, j1);
        j1 += 2;
        E = d(abyte0, j1);
        return (j1 + 12) - i1;
    }

    final int l(byte abyte0[], int i1)
    {
        return 0;
    }

    public final String toString()
    {
        return new String((new StringBuilder("SmbComReadAndXResponse[")).append(super.toString()).append(",dataCompactionMode=").append(d).append(",dataLength=").append(D).append(",dataOffset=").append(E).append("]").toString());
    }
}
