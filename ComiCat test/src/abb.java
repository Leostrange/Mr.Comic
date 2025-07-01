// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 


final class abb extends aag
{

    private int a;
    private String aA;
    private int b;
    private int c;
    private int d;

    abb(int i, int j, String s)
    {
        a = i;
        c = j;
        aA = s;
        g = 50;
        S = 2;
        b = 260;
        d = 0;
        N = 8;
        O = aaz.a;
        P = 0;
    }

    final int a(byte abyte0[], int i)
    {
        abyte0[i] = S;
        abyte0[i + 1] = 0;
        return 2;
    }

    final void a(int i, String s)
    {
        super.e();
        c = i;
        aA = s;
        m = 0;
    }

    final int b(byte abyte0[], int i)
    {
        a(a, abyte0, i);
        int j = i + 2;
        a(aaz.b, abyte0, j);
        j += 2;
        a(b, abyte0, j);
        j += 2;
        b(c, abyte0, j);
        j += 4;
        a(d, abyte0, j);
        j += 2;
        return (j + a(aA, abyte0, j)) - i;
    }

    final int c(byte abyte0[], int i)
    {
        return 0;
    }

    public final String toString()
    {
        return new String((new StringBuilder("Trans2FindNext2[")).append(super.toString()).append(",sid=").append(a).append(",searchCount=").append(aaz.a).append(",informationLevel=0x").append(abw.a(b, 3)).append(",resumeKey=0x").append(abw.a(c, 4)).append(",flags=0x").append(abw.a(d, 2)).append(",filename=").append(aA).append("]").toString());
    }
}
