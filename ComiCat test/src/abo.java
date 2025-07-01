// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 


final class abo extends aag
{

    abo(String s)
    {
        T = s;
        g = 37;
        S = 83;
        Q = -1;
        N = 0;
        O = 0;
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
        return 0;
    }

    public final String toString()
    {
        return new String((new StringBuilder("TransWaitNamedPipe[")).append(super.toString()).append(",pipeName=").append(T).append("]").toString());
    }
}
