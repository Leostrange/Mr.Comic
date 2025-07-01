// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 


final class zz extends yv
{

    int D;
    int E;
    int F;
    int G;
    int H;
    long I;
    int b;
    int c;
    int d;

    zz()
    {
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
        b = d(abyte0, i1);
        int j1 = i1 + 2;
        c = d(abyte0, j1);
        j1 += 2;
        I = h(abyte0, j1);
        j1 += 4;
        d = e(abyte0, j1);
        j1 += 4;
        D = d(abyte0, j1);
        j1 += 2;
        E = d(abyte0, j1);
        j1 += 2;
        F = d(abyte0, j1);
        j1 += 2;
        G = d(abyte0, j1);
        j1 += 2;
        H = e(abyte0, j1);
        return (j1 + 6) - i1;
    }

    final int l(byte abyte0[], int i1)
    {
        return 0;
    }

    public final String toString()
    {
        return new String((new StringBuilder("SmbComOpenAndXResponse[")).append(super.toString()).append(",fid=").append(b).append(",fileAttributes=").append(c).append(",lastWriteTime=").append(I).append(",dataSize=").append(d).append(",grantedAccess=").append(D).append(",fileType=").append(E).append(",deviceState=").append(F).append(",action=").append(G).append(",serverFid=").append(H).append("]").toString());
    }
}
