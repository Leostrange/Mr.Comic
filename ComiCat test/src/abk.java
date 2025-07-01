// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 


final class abk extends aag
{

    private int a;

    abk(String s, int i)
    {
        T = s;
        a = i;
        g = 37;
        S = 35;
        Q = -1;
        N = 6;
        O = 1;
        P = 0;
        R = 2;
    }

    final int a(byte abyte0[], int i)
    {
        int j = i + 1;
        abyte0[i] = S;
        abyte0[j] = 0;
        a(a, abyte0, j + 1);
        return 4;
    }

    final int b(byte abyte0[], int i)
    {
        return 0;
    }

    final int c(byte abyte0[], int i)
    {
        return 0;
    }

    public final String toString()
    {
        return new String((new StringBuilder("TransPeekNamedPipe[")).append(super.toString()).append(",pipeName=").append(T).append("]").toString());
    }
}
