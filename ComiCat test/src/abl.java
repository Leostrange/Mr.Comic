// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 


final class abl extends aah
{

    int S;
    private aau T;
    private int U;
    int a;

    abl(aau aau)
    {
        T = aau;
    }

    final int a(byte abyte0[], int i)
    {
        S = d(abyte0, i);
        i += 2;
        U = d(abyte0, i);
        a = d(abyte0, i + 2);
        return 6;
    }

    final int a(byte abyte0[], int i, int j)
    {
        return 0;
    }

    public final String toString()
    {
        return new String((new StringBuilder("TransPeekNamedPipeResponse[")).append(super.toString()).append("]").toString());
    }
}
