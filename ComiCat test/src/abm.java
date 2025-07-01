// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 


final class abm extends aag
{

    private byte a[];
    private int b;
    private int c;
    private int d;

    abm(int i, byte abyte0[], int j, int k)
    {
        b = i;
        a = abyte0;
        c = j;
        d = k;
        g = 37;
        S = 38;
        N = 0;
        O = 65535;
        P = 0;
        R = 2;
        T = "\\PIPE\\";
    }

    final int a(byte abyte0[], int i)
    {
        int j = i + 1;
        abyte0[i] = S;
        abyte0[j] = 0;
        a(b, abyte0, j + 1);
        return 4;
    }

    final int b(byte abyte0[], int i)
    {
        return 0;
    }

    final int c(byte abyte0[], int i)
    {
        if (abyte0.length - i < d)
        {
            if (abx.a >= 3)
            {
                e.println("TransTransactNamedPipe data too long for buffer");
            }
            return 0;
        } else
        {
            System.arraycopy(a, c, abyte0, i, d);
            return d;
        }
    }

    public final String toString()
    {
        return new String((new StringBuilder("TransTransactNamedPipe[")).append(super.toString()).append(",pipeFid=").append(b).append("]").toString());
    }
}
