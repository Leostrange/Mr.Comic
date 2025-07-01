// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 


final class abi extends aag
{

    private byte a[];
    private int b;
    private int c;

    abi(String s, byte abyte0[], int i, int j)
    {
        T = s;
        a = abyte0;
        b = i;
        c = j;
        g = 37;
        S = 84;
        Q = -1;
        N = 0;
        O = 65535;
        P = 0;
        R = 2;
    }

    final int a(byte abyte0[], int i)
    {
        int j = i + 1;
        abyte0[i] = S;
        i = j + 1;
        abyte0[j] = 0;
        abyte0[i] = 0;
        abyte0[i + 1] = 0;
        return 4;
    }

    final int b(byte abyte0[], int i)
    {
        return 0;
    }

    final int c(byte abyte0[], int i)
    {
        if (abyte0.length - i < c)
        {
            if (abx.a >= 3)
            {
                e.println("TransCallNamedPipe data too long for buffer");
            }
            return 0;
        } else
        {
            System.arraycopy(a, b, abyte0, i, c);
            return c;
        }
    }

    public final String toString()
    {
        return new String((new StringBuilder("TransCallNamedPipe[")).append(super.toString()).append(",pipeName=").append(T).append("]").toString());
    }
}
