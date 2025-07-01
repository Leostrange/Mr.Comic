// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 


final class aal extends zm
{

    int D;
    byte E[];
    int a;
    int b;
    int c;
    int d;

    aal()
    {
        g = 11;
    }

    final int i(byte abyte0[], int i1)
    {
        a(a, abyte0, i1);
        int j1 = i1 + 2;
        a(b, abyte0, j1);
        j1 += 2;
        b(c, abyte0, j1);
        j1 += 4;
        a(d, abyte0, j1);
        return (j1 + 2) - i1;
    }

    final int j(byte abyte0[], int i1)
    {
        int j1 = i1 + 1;
        abyte0[i1] = 1;
        a(b, abyte0, j1);
        j1 += 2;
        System.arraycopy(E, D, abyte0, j1, b);
        return (j1 + b) - i1;
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
        return new String((new StringBuilder("SmbComWrite[")).append(super.toString()).append(",fid=").append(a).append(",count=").append(b).append(",offset=").append(c).append(",remaining=").append(d).append("]").toString());
    }
}
