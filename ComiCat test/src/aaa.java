// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 


final class aaa extends zm
{

    aaa(String s)
    {
        A = s;
        g = 8;
    }

    final int i(byte abyte0[], int i1)
    {
        return 0;
    }

    final int j(byte abyte0[], int i1)
    {
        int j1 = i1 + 1;
        abyte0[i1] = 4;
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
        return new String((new StringBuilder("SmbComQueryInformation[")).append(super.toString()).append(",filename=").append(A).append("]").toString());
    }
}
