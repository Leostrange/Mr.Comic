// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import java.io.UnsupportedEncodingException;

final class aai extends yv
{

    private static byte H[] = {
        1, 1, 1, 1, 1, 1, 1, 1, 0
    };
    private static final boolean c = xj.a("jcifs.smb.client.disablePlainTextPasswords", true);
    private boolean D;
    private String E;
    private byte F[];
    private int G;
    String b;
    private aav d;

    aai(aav aav1, String s, String s1, zm zm)
    {
        super(zm);
        D = false;
        d = aav1;
        b = s;
        E = s1;
        g = 117;
    }

    final int a(byte byte0)
    {
        switch (byte0 & 0xff)
        {
        default:
            return 0;

        case 16: // '\020'
            return H[0];

        case 0: // '\0'
            return H[2];

        case 6: // '\006'
            return H[3];

        case 1: // '\001'
            return H[4];

        case 45: // '-'
            return H[5];

        case 7: // '\007'
            return H[6];

        case 37: // '%'
            return H[7];

        case 8: // '\b'
            return H[8];
        }
    }

    final int i(byte abyte0[], int i1)
    {
        byte byte0 = 1;
        int j1;
        if (d.e.s.g == 0 && (d.f.m || d.f.j.length() > 0))
        {
            if (d.e.s.h)
            {
                F = d.f.a(d.e.s.p);
                G = F.length;
            } else
            {
                if (c)
                {
                    throw new RuntimeException("Plain text passwords are disabled");
                }
                F = new byte[(d.f.j.length() + 1) * 2];
                G = a(d.f.j, F, 0);
            }
        } else
        {
            G = 1;
        }
        j1 = i1 + 1;
        if (!D)
        {
            byte0 = 0;
        }
        abyte0[i1] = byte0;
        abyte0[j1] = 0;
        a(G, abyte0, j1 + 1);
        return 4;
    }

    final int j(byte abyte0[], int i1)
    {
        int j1;
        if (d.e.s.g == 0 && (d.f.m || d.f.j.length() > 0))
        {
            System.arraycopy(F, 0, abyte0, i1, G);
            j1 = G + i1;
        } else
        {
            j1 = i1 + 1;
            abyte0[i1] = 0;
        }
        j1 += a(b, abyte0, j1);
        try
        {
            System.arraycopy(E.getBytes("ASCII"), 0, abyte0, j1, E.length());
        }
        // Misplaced declaration of an exception variable
        catch (byte abyte0[])
        {
            return 0;
        }
        j1 += E.length();
        abyte0[j1] = 0;
        return (j1 + 1) - i1;
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
        return new String((new StringBuilder("SmbComTreeConnectAndX[")).append(super.toString()).append(",disconnectTid=").append(D).append(",passwordLength=").append(G).append(",password=").append(abw.a(F, 0)).append(",path=").append(b).append(",service=").append(E).append("]").toString());
    }

    static 
    {
        String s = xj.a("jcifs.smb.client.TreeConnectAndX.CheckDirectory");
        if (s != null)
        {
            H[0] = Byte.parseByte(s);
        }
        s = xj.a("jcifs.smb.client.TreeConnectAndX.CreateDirectory");
        if (s != null)
        {
            H[2] = Byte.parseByte(s);
        }
        s = xj.a("jcifs.smb.client.TreeConnectAndX.Delete");
        if (s != null)
        {
            H[3] = Byte.parseByte(s);
        }
        s = xj.a("jcifs.smb.client.TreeConnectAndX.DeleteDirectory");
        if (s != null)
        {
            H[4] = Byte.parseByte(s);
        }
        s = xj.a("jcifs.smb.client.TreeConnectAndX.OpenAndX");
        if (s != null)
        {
            H[5] = Byte.parseByte(s);
        }
        s = xj.a("jcifs.smb.client.TreeConnectAndX.Rename");
        if (s != null)
        {
            H[6] = Byte.parseByte(s);
        }
        s = xj.a("jcifs.smb.client.TreeConnectAndX.Transaction");
        if (s != null)
        {
            H[7] = Byte.parseByte(s);
        }
        s = xj.a("jcifs.smb.client.TreeConnectAndX.QueryInformation");
        if (s != null)
        {
            H[8] = Byte.parseByte(s);
        }
    }
}
