// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 


public class qq
{

    private static final byte f[][] = {
        si.a("ssh-dss"), si.a("ssh-rsa"), si.a("ecdsa-sha2-nistp256"), si.a("ecdsa-sha2-nistp384"), si.a("ecdsa-sha2-nistp521")
    };
    protected String a;
    protected String b;
    protected int c;
    protected byte d[];
    protected String e;

    public qq(String s, String s1, byte abyte0[])
    {
        a = s;
        b = s1;
        if (abyte0[8] == 100)
        {
            c = 1;
        } else
        if (abyte0[8] == 114)
        {
            c = 2;
        } else
        if (abyte0[8] == 97 && abyte0[20] == 50)
        {
            c = 3;
        } else
        if (abyte0[8] == 97 && abyte0[20] == 51)
        {
            c = 4;
        } else
        if (abyte0[8] == 97 && abyte0[20] == 53)
        {
            c = 5;
        } else
        {
            throw new qy("invalid key type");
        }
        d = abyte0;
        e = null;
    }

    public qq(String s, byte abyte0[])
    {
        this(s, abyte0, (byte)0);
    }

    public qq(String s, byte abyte0[], byte byte0)
    {
        this(s, abyte0, '\0');
    }

    private qq(String s, byte abyte0[], char c1)
    {
        this("", s, abyte0);
    }

    public final String a()
    {
        return b;
    }

    boolean a(String s)
    {
        String s1;
        int i;
        int j;
        int k;
        boolean flag1;
        flag1 = true;
        s1 = b;
        j = s1.length();
        k = s.length();
        i = 0;
_L7:
        if (i >= j) goto _L2; else goto _L1
_L1:
        int l = s1.indexOf(',', i);
        if (l != -1) goto _L4; else goto _L3
_L3:
        boolean flag;
        if (k != j - i)
        {
            break; /* Loop/switch isn't completed */
        }
        flag = s1.regionMatches(true, i, s, 0, k);
_L6:
        return flag;
_L4:
        if (k != l - i)
        {
            continue; /* Loop/switch isn't completed */
        }
        flag = flag1;
        if (s1.regionMatches(true, i, s, 0, k)) goto _L6; else goto _L5
_L5:
        i = l + 1;
          goto _L7
_L2:
        return false;
    }

    public final String b()
    {
        if (c == 1 || c == 2 || c == 3 || c == 4 || c == 5)
        {
            return si.a(f[c - 1]);
        } else
        {
            return "UNKNOWN";
        }
    }

    public final String c()
    {
        return si.a(si.b(d, d.length));
    }

    public final String d()
    {
        return e;
    }

    public final String e()
    {
        return a;
    }

}
