// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import java.util.Date;

final class zu extends yv
{

    int D;
    int E;
    int F;
    long G;
    long H;
    long I;
    long J;
    long K;
    long L;
    boolean M;
    boolean N;
    byte b;
    int c;
    int d;

    zu()
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
        int j1 = i1 + 1;
        b = abyte0[i1];
        c = d(abyte0, j1);
        j1 += 2;
        d = e(abyte0, j1);
        j1 += 4;
        G = g(abyte0, j1);
        j1 += 8;
        H = g(abyte0, j1);
        j1 += 8;
        I = g(abyte0, j1);
        j1 += 8;
        J = g(abyte0, j1);
        j1 += 8;
        D = e(abyte0, j1);
        j1 += 4;
        K = f(abyte0, j1);
        j1 += 8;
        L = f(abyte0, j1);
        j1 += 8;
        E = d(abyte0, j1);
        j1 += 2;
        F = d(abyte0, j1);
        j1 += 2;
        boolean flag;
        if ((abyte0[j1] & 0xff) > 0)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        M = flag;
        return (j1 + 1) - i1;
    }

    final int l(byte abyte0[], int i1)
    {
        return 0;
    }

    public final String toString()
    {
        return new String((new StringBuilder("SmbComNTCreateAndXResponse[")).append(super.toString()).append(",oplockLevel=").append(b).append(",fid=").append(c).append(",createAction=0x").append(abw.a(d, 4)).append(",creationTime=").append(new Date(G)).append(",lastAccessTime=").append(new Date(H)).append(",lastWriteTime=").append(new Date(I)).append(",changeTime=").append(new Date(J)).append(",extFileAttributes=0x").append(abw.a(D, 4)).append(",allocationSize=").append(K).append(",endOfFile=").append(L).append(",fileType=").append(E).append(",deviceState=").append(F).append(",directory=").append(M).append("]").toString());
    }
}
