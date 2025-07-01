// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import java.io.IOException;
import java.net.UnknownHostException;

public final class yr extends yq
{

    private static final int d;
    private static final String e = xj.b("jcifs.smb.client.domain", null);
    private static final String f;
    private String g;
    private String h;

    public yr()
    {
        this(d, e, f);
    }

    public yr(int i, String s, String s1)
    {
        super.c = d | i;
        g = s;
        s = s1;
        if (s1 == null)
        {
            s = f;
        }
        h = s;
    }

    public static String b()
    {
        return f;
    }

    public final byte[] a()
    {
        int k = 16;
        boolean flag = true;
        String s;
        byte abyte0[];
        byte abyte1[];
        String s1;
        byte abyte2[];
        int i;
        int j;
        try
        {
            s = g;
            s1 = h;
            i = super.c;
        }
        catch (IOException ioexception)
        {
            throw new IllegalStateException(ioexception.getMessage());
        }
        if (s == null) goto _L2; else goto _L1
_L1:
        if (s.length() == 0) goto _L2; else goto _L3
_L3:
        abyte0 = s.toUpperCase().getBytes(yq.b);
        j = i | 0x1000;
        i = 1;
_L4:
        abyte1 = new byte[0];
        if (s1 == null)
        {
            break MISSING_BLOCK_LABEL_186;
        }
        if (s1.length() == 0)
        {
            break MISSING_BLOCK_LABEL_186;
        }
        j |= 0x2000;
        abyte1 = s1.toUpperCase().getBytes(yq.b);
_L5:
        for (i = ((flag) ? 1 : 0); i == 0;)
        {
            break MISSING_BLOCK_LABEL_109;
        }

        k = abyte0.length + 32 + abyte1.length;
        abyte2 = new byte[k];
        System.arraycopy(a, 0, abyte2, 0, 8);
        a(abyte2, 8, 1);
        a(abyte2, 12, j);
        if (i == 0)
        {
            break MISSING_BLOCK_LABEL_166;
        }
        a(abyte2, 16, 32, abyte0);
        a(abyte2, 24, abyte0.length + 32, abyte1);
        return abyte2;
_L2:
        j = i & 0xffffefff;
        abyte0 = new byte[0];
        i = 0;
          goto _L4
        j &= 0xffffdfff;
          goto _L5
    }

    public final String toString()
    {
        Object obj = g;
        String s1 = h;
        StringBuilder stringbuilder = new StringBuilder("Type1Message[suppliedDomain=");
        String s = ((String) (obj));
        if (obj == null)
        {
            s = "null";
        }
        obj = stringbuilder.append(s).append(",suppliedWorkstation=");
        if (s1 == null)
        {
            s = "null";
        } else
        {
            s = s1;
        }
        return ((StringBuilder) (obj)).append(s).append(",flags=0x").append(abw.a(super.c, 8)).append("]").toString();
    }

    static 
    {
        int i = 1;
        String s;
        if (!xj.a("jcifs.smb.client.useUnicode", true))
        {
            i = 2;
        }
        d = i | 0x200;
        try
        {
            s = yk.a().f();
        }
        catch (UnknownHostException unknownhostexception)
        {
            unknownhostexception = null;
        }
        f = s;
    }
}
