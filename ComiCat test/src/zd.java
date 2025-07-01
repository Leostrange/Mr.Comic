// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import java.io.UnsupportedEncodingException;

final class zd extends aag
{

    static final String a[] = {
        "WrLehDO\000B16BBDz\0", "WrLehDz\000B16BBDz\0"
    };
    String b;
    String c;
    int d;

    zd(String s, int i)
    {
        c = null;
        b = s;
        d = i;
        g = 37;
        S = 104;
        T = "\\PIPE\\LANMAN";
        N = 8;
        O = 16384;
        P = 0;
        R = 0;
        Q = 5000;
    }

    final int a(byte abyte0[], int i)
    {
        return 0;
    }

    final void a(int i, String s)
    {
        super.e();
        c = s;
    }

    final int b(byte abyte0[], int i)
    {
        byte abyte1[];
        int j;
        int k;
        if (S == 104)
        {
            j = 0;
        } else
        {
            j = 1;
        }
        try
        {
            abyte1 = a[j].getBytes("ASCII");
        }
        // Misplaced declaration of an exception variable
        catch (byte abyte0[])
        {
            return 0;
        }
        a(S & 0xff, abyte0, i);
        k = i + 2;
        System.arraycopy(abyte1, 0, abyte0, k, abyte1.length);
        k = abyte1.length + k;
        a(1L, abyte0, k);
        k += 2;
        a(O, abyte0, k);
        k += 2;
        b(d, abyte0, k);
        k += 4;
        k += a(b.toUpperCase(), abyte0, k, false);
        if (j == 1)
        {
            j = a(c.toUpperCase(), abyte0, k, false) + k;
        } else
        {
            j = k;
        }
        return j - i;
    }

    final int c(byte abyte0[], int i)
    {
        return 0;
    }

    public final String toString()
    {
        StringBuilder stringbuilder = (new StringBuilder("NetServerEnum2[")).append(super.toString()).append(",name=").append(T).append(",serverTypes=");
        String s;
        if (d == -1)
        {
            s = "SV_TYPE_ALL";
        } else
        {
            s = "SV_TYPE_DOMAIN_ENUM";
        }
        return new String(stringbuilder.append(s).append("]").toString());
    }

}
