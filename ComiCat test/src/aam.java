// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 


final class aam extends yv
{

    private static final int c = xj.a("jcifs.smb.client.WriteAndX.ReadAndX", 1);
    private static final int d = xj.a("jcifs.smb.client.WriteAndX.Close", 1);
    private int D;
    private int E;
    private int F;
    private int G;
    private int H;
    private byte I[];
    private long J;
    private int K;
    int b;

    aam()
    {
        super(null);
        g = 47;
    }

    final int a(byte byte0)
    {
        if (byte0 == 46)
        {
            return c;
        }
        if (byte0 == 4)
        {
            return d;
        } else
        {
            return 0;
        }
    }

    final void a(int i1, long l1, int j1, byte abyte0[], int k1, int i2)
    {
        D = i1;
        J = l1;
        E = j1;
        I = abyte0;
        H = k1;
        F = i2;
        B = null;
    }

    final int i(byte abyte0[], int i1)
    {
        G = (i1 - i) + 26;
        K = (G - i) % 4;
        int j1;
        if (K == 0)
        {
            j1 = 0;
        } else
        {
            j1 = 4 - K;
        }
        K = j1;
        G = G + K;
        a(D, abyte0, i1);
        j1 = i1 + 2;
        b(J, abyte0, j1);
        j1 += 4;
        for (int k1 = 0; k1 < 4;)
        {
            abyte0[j1] = -1;
            k1++;
            j1++;
        }

        a(b, abyte0, j1);
        j1 += 2;
        a(E, abyte0, j1);
        int l1 = j1 + 2;
        j1 = l1 + 1;
        abyte0[l1] = 0;
        l1 = j1 + 1;
        abyte0[j1] = 0;
        a(F, abyte0, l1);
        j1 = l1 + 2;
        a(G, abyte0, j1);
        j1 += 2;
        b(J >> 32, abyte0, j1);
        return (j1 + 4) - i1;
    }

    final int j(byte abyte0[], int i1)
    {
        int j1 = i1;
        do
        {
            int k1 = K;
            K = k1 - 1;
            if (k1 > 0)
            {
                abyte0[j1] = -18;
                j1++;
            } else
            {
                System.arraycopy(I, H, abyte0, j1, F);
                return (j1 + F) - i1;
            }
        } while (true);
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
        return new String((new StringBuilder("SmbComWriteAndX[")).append(super.toString()).append(",fid=").append(D).append(",offset=").append(J).append(",writeMode=").append(b).append(",remaining=").append(E).append(",dataLength=").append(F).append(",dataOffset=").append(G).append("]").toString());
    }

}
