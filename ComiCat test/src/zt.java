// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 


final class zt extends yv
{

    private int D;
    private int E;
    private int F;
    private int G;
    private int H;
    private long I;
    private byte J;
    private int K;
    int b;
    int c;
    private int d;

    zt(String s, int i1, int j1, int k1)
    {
        super(null);
        A = s;
        g = -94;
        c = j1;
        c = c | 0x89;
        D = 128;
        E = k1;
        if ((i1 & 0x40) == 64)
        {
            if ((i1 & 0x10) == 16)
            {
                F = 5;
            } else
            {
                F = 4;
            }
        } else
        if ((i1 & 0x10) == 16)
        {
            if ((i1 & 0x20) == 32)
            {
                F = 2;
            } else
            {
                F = 3;
            }
        } else
        {
            F = 1;
        }
        G = 64;
        H = 2;
        J = 3;
    }

    final int i(byte abyte0[], int i1)
    {
        int j1 = i1 + 1;
        abyte0[i1] = 0;
        K = j1;
        j1 += 2;
        b(b, abyte0, j1);
        j1 += 4;
        b(d, abyte0, j1);
        j1 += 4;
        b(c, abyte0, j1);
        j1 += 4;
        long l1 = I;
        abyte0[j1] = (byte)(int)l1;
        int k1 = j1 + 1;
        l1 >>= 8;
        abyte0[k1] = (byte)(int)l1;
        k1++;
        l1 >>= 8;
        abyte0[k1] = (byte)(int)l1;
        k1++;
        l1 >>= 8;
        abyte0[k1] = (byte)(int)l1;
        k1++;
        l1 >>= 8;
        abyte0[k1] = (byte)(int)l1;
        k1++;
        l1 >>= 8;
        abyte0[k1] = (byte)(int)l1;
        k1++;
        l1 >>= 8;
        abyte0[k1] = (byte)(int)l1;
        abyte0[k1 + 1] = (byte)(int)(l1 >> 8);
        j1 += 8;
        b(D, abyte0, j1);
        j1 += 4;
        b(E, abyte0, j1);
        j1 += 4;
        b(F, abyte0, j1);
        j1 += 4;
        b(G, abyte0, j1);
        j1 += 4;
        b(H, abyte0, j1);
        j1 += 4;
        abyte0[j1] = J;
        return (j1 + 1) - i1;
    }

    final int j(byte abyte0[], int i1)
    {
        int j1 = a(A, abyte0, i1);
        if (t)
        {
            i1 = A.length() * 2;
        } else
        {
            i1 = j1;
        }
        a(i1, abyte0, K);
        return j1;
    }

    final int k(byte abyte0[], int i1)
    {
        return 0;
    }

    final int l(byte abyte0[], int i1)
    {
        return 0;
    }

    public final String toString()
    {
        return new String((new StringBuilder("SmbComNTCreateAndX[")).append(super.toString()).append(",flags=0x").append(abw.a(b, 2)).append(",rootDirectoryFid=").append(d).append(",desiredAccess=0x").append(abw.a(c, 4)).append(",allocationSize=").append(I).append(",extFileAttributes=0x").append(abw.a(D, 4)).append(",shareAccess=0x").append(abw.a(E, 4)).append(",createDisposition=0x").append(abw.a(F, 4)).append(",createOptions=0x").append(abw.a(G, 8)).append(",impersonationLevel=0x").append(abw.a(H, 4)).append(",securityFlags=0x").append(abw.a(J, 2)).append(",name=").append(A).append("]").toString());
    }
}
