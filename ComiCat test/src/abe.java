// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 


final class abe extends aag
{

    private int a;

    abe()
    {
        g = 50;
        S = 3;
        a = 1;
        L = 2;
        M = 0;
        N = 0;
        O = 800;
        P = 0;
    }

    final int a(byte abyte0[], int i)
    {
        abyte0[i] = S;
        abyte0[i + 1] = 0;
        return 2;
    }

    final int b(byte abyte0[], int i)
    {
        a(a, abyte0, i);
        return (i + 2) - i;
    }

    final int c(byte abyte0[], int i)
    {
        return 0;
    }

    public final String toString()
    {
        return new String((new StringBuilder("Trans2QueryFSInformation[")).append(super.toString()).append(",informationLevel=0x").append(abw.a(a, 3)).append("]").toString());
    }
}
