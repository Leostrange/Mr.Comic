// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 


final class aac extends yv
{

    private static final int D = xj.a("jcifs.smb.client.ReadAndX.Close", 1);
    private long E;
    private int F;
    private int G;
    int b;
    int c;
    int d;

    aac()
    {
        super(null);
        g = 46;
        G = -1;
    }

    aac(int i1, long l1, int j1)
    {
        super(null);
        F = i1;
        E = l1;
        c = j1;
        b = j1;
        g = 46;
        G = -1;
    }

    final int a(byte byte0)
    {
        if (byte0 == 4)
        {
            return D;
        } else
        {
            return 0;
        }
    }

    final int i(byte abyte0[], int i1)
    {
        a(F, abyte0, i1);
        int j1 = i1 + 2;
        b(E, abyte0, j1);
        j1 += 4;
        a(b, abyte0, j1);
        j1 += 2;
        a(c, abyte0, j1);
        j1 += 2;
        b(G, abyte0, j1);
        j1 += 4;
        a(d, abyte0, j1);
        j1 += 2;
        b(E >> 32, abyte0, j1);
        return (j1 + 4) - i1;
    }

    final int j(byte abyte0[], int i1)
    {
        return 0;
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
        return new String((new StringBuilder("SmbComReadAndX[")).append(super.toString()).append(",fid=").append(F).append(",offset=").append(E).append(",maxCount=").append(b).append(",minCount=").append(c).append(",openTimeout=").append(G).append(",remaining=").append(d).append(",offset=").append(E).append("]").toString());
    }

}
