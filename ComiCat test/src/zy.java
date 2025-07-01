// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import java.util.Date;

final class zy extends yv
{

    private static final int H = xj.a("jcifs.smb.client.OpenAndX.ReadAndX", 1);
    int D;
    int E;
    int F;
    int G;
    int b;
    int c;
    int d;

    zy(String s, int i1, int j1)
    {
        super(null);
        A = s;
        g = 45;
        c = i1 & 3;
        if (c == 3)
        {
            c = 2;
        }
        c = c | 0x40;
        c = c & -2;
        d = 22;
        D = 0;
        if ((j1 & 0x40) == 64)
        {
            if ((j1 & 0x10) == 16)
            {
                F = 18;
                return;
            } else
            {
                F = 2;
                return;
            }
        }
        if ((j1 & 0x10) == 16)
        {
            if ((j1 & 0x20) == 32)
            {
                F = 16;
                return;
            } else
            {
                F = 17;
                return;
            }
        } else
        {
            F = 1;
            return;
        }
    }

    final int a(byte byte0)
    {
        if (byte0 == 46)
        {
            return H;
        } else
        {
            return 0;
        }
    }

    final int i(byte abyte0[], int i1)
    {
        a(b, abyte0, i1);
        int j1 = i1 + 2;
        a(c, abyte0, j1);
        j1 += 2;
        a(d, abyte0, j1);
        j1 += 2;
        a(D, abyte0, j1);
        j1 += 2;
        E = 0;
        b(E, abyte0, j1);
        j1 += 4;
        a(F, abyte0, j1);
        j1 += 2;
        b(G, abyte0, j1);
        j1 += 4;
        for (int k1 = 0; k1 < 8;)
        {
            abyte0[j1] = 0;
            k1++;
            j1++;
        }

        return j1 - i1;
    }

    final int j(byte abyte0[], int i1)
    {
        int j1;
        if (t)
        {
            j1 = i1 + 1;
            abyte0[i1] = 0;
        } else
        {
            j1 = i1;
        }
        return (j1 + a(A, abyte0, j1)) - i1;
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
        return new String((new StringBuilder("SmbComOpenAndX[")).append(super.toString()).append(",flags=0x").append(abw.a(b, 2)).append(",desiredAccess=0x").append(abw.a(c, 4)).append(",searchAttributes=0x").append(abw.a(d, 4)).append(",fileAttributes=0x").append(abw.a(D, 4)).append(",creationTime=").append(new Date(E)).append(",openFunction=0x").append(abw.a(F, 2)).append(",allocationSize=").append(G).append(",fileName=").append(A).append("]").toString());
    }

}
