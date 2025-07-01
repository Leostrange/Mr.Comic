// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 


final class aaz extends aag
{

    static final int a = xj.a("jcifs.smb.client.listSize", 65535);
    static final int b = xj.a("jcifs.smb.client.listCount", 200);
    private int aA;
    private int aB;
    private String aC;
    private int c;
    private int d;

    aaz(String s, String s1)
    {
        aB = 0;
        if (s.equals("\\"))
        {
            A = s;
        } else
        {
            A = (new StringBuilder()).append(s).append("\\").toString();
        }
        aC = s1;
        c = 22;
        g = 50;
        S = 1;
        d = 0;
        aA = 260;
        M = 0;
        N = 10;
        O = a;
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
        a(c, abyte0, i);
        int j = i + 2;
        a(b, abyte0, j);
        j += 2;
        a(d, abyte0, j);
        j += 2;
        a(aA, abyte0, j);
        j += 2;
        b(aB, abyte0, j);
        j += 4;
        return (j + a((new StringBuilder()).append(A).append(aC).toString(), abyte0, j)) - i;
    }

    final int c(byte abyte0[], int i)
    {
        return 0;
    }

    public final String toString()
    {
        return new String((new StringBuilder("Trans2FindFirst2[")).append(super.toString()).append(",searchAttributes=0x").append(abw.a(c, 2)).append(",searchCount=").append(b).append(",flags=0x").append(abw.a(d, 2)).append(",informationLevel=0x").append(abw.a(aA, 3)).append(",searchStorageType=").append(aB).append(",filename=").append(A).append("]").toString());
    }

}
