// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import java.io.PrintStream;

public abstract class ra
{

    static String a = "diffie-hellman-group1-sha1";
    static String b = "ssh-rsa,ssh-dss";
    static String c = "blowfish-cbc";
    static String d = "blowfish-cbc";
    static String e = "hmac-md5";
    static String f = "hmac-md5";
    static String g = "";
    static String h = "";
    protected ry i;
    protected qp j;
    protected byte k[];
    protected byte l[];
    protected byte m[];
    protected final int n = 0;
    protected final int o = 1;
    protected final int p = 2;
    int q;
    String r;

    public ra()
    {
        i = null;
        j = null;
        k = null;
        l = null;
        m = null;
        q = 0;
        r = "";
    }

    protected static String[] a(byte abyte0[], byte abyte1[])
    {
        String as[];
        int k1;
        as = new String[10];
        abyte0 = new qa(abyte0);
        abyte0.d = 17;
        abyte1 = new qa(abyte1);
        abyte1.d = 17;
        qw.b();
        k1 = 0;
_L14:
        byte abyte2[];
        byte abyte3[];
        int i1;
        int j1;
        if (k1 >= 10)
        {
            break MISSING_BLOCK_LABEL_260;
        }
        abyte2 = abyte0.g();
        abyte3 = abyte1.g();
        i1 = 0;
        j1 = 0;
_L10:
        int l1 = i1;
        if (i1 >= abyte3.length) goto _L2; else goto _L1
_L1:
        String s;
        for (; i1 < abyte3.length && abyte3[i1] != 44; i1++) { }
        if (j1 == i1)
        {
            return null;
        }
        s = si.a(abyte3, j1, i1 - j1);
        j1 = 0;
        l1 = 0;
_L9:
        if (j1 >= abyte2.length) goto _L4; else goto _L3
_L3:
        for (; j1 < abyte2.length && abyte2[j1] != 44; j1++) { }
        if (l1 == j1)
        {
            return null;
        }
        if (!s.equals(si.a(abyte2, l1, j1 - l1))) goto _L6; else goto _L5
_L5:
        as[k1] = s;
        l1 = i1;
_L2:
        if (l1 != 0) goto _L8; else goto _L7
_L7:
        as[k1] = "";
_L12:
        k1++;
        continue; /* Loop/switch isn't completed */
_L6:
        l1 = j1 + 1;
        j1 = l1;
          goto _L9
_L4:
        j1 = i1 + 1;
        i1 = j1;
          goto _L10
_L8:
        if (as[k1] != null) goto _L12; else goto _L11
_L11:
        return null;
        qw.b();
        return as;
        if (true) goto _L14; else goto _L13
_L13:
    }

    public abstract boolean a();

    public abstract int b();

    public final String c()
    {
        qp qp1;
        try
        {
            qp1 = (qp)(qp)Class.forName(i.b("md5")).newInstance();
        }
        catch (Exception exception)
        {
            System.err.println((new StringBuilder("getFingerPrint: ")).append(exception).toString());
            exception = null;
        }
        return si.a(qp1);
    }

    final byte[] d()
    {
        return k;
    }

    final byte[] e()
    {
        return l;
    }

    final qp f()
    {
        return j;
    }

    final byte[] g()
    {
        return m;
    }

}
