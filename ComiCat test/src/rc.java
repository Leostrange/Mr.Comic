// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import java.math.BigInteger;

public final class rc extends rb
{

    private static final byte m[] = si.a("-----BEGIN DSA PRIVATE KEY-----");
    private static final byte n[] = si.a("-----END DSA PRIVATE KEY-----");
    private static final byte o[] = si.a("ssh-dss");
    private byte g[];
    private byte h[];
    private byte i[];
    private byte j[];
    private byte k[];
    private int l;

    public rc(qw qw1)
    {
        this(qw1, null, null, null, null, null);
    }

    public rc(qw qw1, byte abyte0[], byte abyte1[], byte abyte2[], byte abyte3[], byte abyte4[])
    {
        super(qw1);
        l = 1024;
        g = abyte0;
        h = abyte1;
        i = abyte2;
        j = abyte3;
        k = abyte4;
        if (abyte0 != null)
        {
            l = (new BigInteger(abyte0)).bitLength();
        }
    }

    static rb a(qw qw1, qa qa1)
    {
        qa1 = qa1.a(7, "invalid key format");
        qw1 = new rc(qw1, qa1[1], qa1[2], qa1[3], qa1[4], qa1[5]);
        qw1.b = new String(qa1[6]);
        qw1.a = 0;
        return qw1;
    }

    final byte[] a()
    {
        int i1 = a(1) + 1 + 1 + 1 + a(g.length) + g.length + 1 + a(h.length) + h.length + 1 + a(i.length) + i.length + 1 + a(j.length) + j.length + 1 + a(k.length) + k.length;
        byte abyte0[] = new byte[a(i1) + 1 + i1];
        a(abyte0, a(abyte0, a(abyte0, a(abyte0, a(abyte0, a(abyte0, a(abyte0, i1), new byte[1]), g), h), i), j), k);
        return abyte0;
    }

    public final byte[] a(byte abyte0[])
    {
        try
        {
            abyte0 = ((sb)(sb)Class.forName(qw.a("signature.dss")).newInstance()).a();
            abyte0 = qa.a(new byte[][] {
                o, abyte0
            }).b;
        }
        // Misplaced declaration of an exception variable
        catch (byte abyte0[])
        {
            return null;
        }
        return abyte0;
    }

    final boolean b(byte abyte0[])
    {
        boolean flag = true;
        if (a != 1) goto _L2; else goto _L1
_L1:
        if (abyte0[0] == 48) goto _L4; else goto _L3
_L3:
        abyte0 = new qa(abyte0);
        abyte0.b();
        g = abyte0.f();
        i = abyte0.f();
        h = abyte0.f();
        j = abyte0.f();
        k = abyte0.f();
        if (g == null) goto _L6; else goto _L5
_L5:
        l = (new BigInteger(g)).bitLength();
        return true;
_L2:
        qa qa1;
        if (a != 2)
        {
            break MISSING_BLOCK_LABEL_141;
        }
        qa1 = new qa(abyte0);
        qa1.b(abyte0.length);
        try
        {
            k = qa1.a(1, "")[0];
        }
        // Misplaced declaration of an exception variable
        catch (byte abyte0[])
        {
            return false;
        }
        return true;
        int i1;
        int j1;
        int k1;
        int l1;
        int i2;
        if (abyte0[0] != 48)
        {
            return false;
        }
        i1 = abyte0[1] & 0xff;
        if ((i1 & 0x80) != 0)
        {
            j1 = i1 & 0x7f;
            i1 = 2;
            do
            {
                k1 = i1;
                if (j1 <= 0)
                {
                    break;
                }
                i1++;
                j1--;
            } while (true);
        } else
        {
            k1 = 2;
        }
        if (abyte0[k1] != 2)
        {
            return false;
        }
        j1 = k1 + 1;
        i1 = j1 + 1;
        j1 = abyte0[j1] & 0xff;
        l1 = j1;
        i2 = i1;
        if ((j1 & 0x80) != 0)
        {
            k1 = j1 & 0x7f;
            j1 = 0;
            do
            {
                l1 = j1;
                i2 = i1;
                if (k1 <= 0)
                {
                    break;
                }
                j1 = (j1 << 8) + (abyte0[i1] & 0xff);
                i1++;
                k1--;
            } while (true);
        }
        j1 = l1 + i2 + 1;
        i1 = j1 + 1;
        j1 = abyte0[j1] & 0xff;
        l1 = j1;
        i2 = i1;
          goto _L7
_L22:
        g = new byte[l1];
        System.arraycopy(abyte0, i2, g, 0, l1);
        i1 = l1 + i2 + 1;
        j1 = i1 + 1;
        i1 = abyte0[i1] & 0xff;
        k1 = i1;
        l1 = j1;
        if ((i1 & 0x80) == 0) goto _L9; else goto _L8
_L8:
        i2 = i1 & 0x7f;
        i1 = 0;
          goto _L10
_L9:
        h = new byte[k1];
        System.arraycopy(abyte0, l1, h, 0, k1);
        i1 = k1 + l1 + 1;
        j1 = i1 + 1;
        i1 = abyte0[i1] & 0xff;
        k1 = i1;
        l1 = j1;
        if ((i1 & 0x80) == 0) goto _L12; else goto _L11
_L11:
        i2 = i1 & 0x7f;
        i1 = 0;
          goto _L13
_L12:
        i = new byte[k1];
        System.arraycopy(abyte0, l1, i, 0, k1);
        i1 = k1 + l1 + 1;
        j1 = i1 + 1;
        i1 = abyte0[i1] & 0xff;
        k1 = i1;
        l1 = j1;
        if ((i1 & 0x80) == 0) goto _L15; else goto _L14
_L14:
        i2 = i1 & 0x7f;
        i1 = 0;
          goto _L16
_L15:
        j = new byte[k1];
        System.arraycopy(abyte0, l1, j, 0, k1);
        i1 = k1 + l1 + 1;
        j1 = i1 + 1;
        i1 = abyte0[i1] & 0xff;
        k1 = i1;
        l1 = j1;
        if ((i1 & 0x80) == 0) goto _L18; else goto _L17
_L17:
        i2 = i1 & 0x7f;
        i1 = 0;
          goto _L19
_L18:
        k = new byte[k1];
        System.arraycopy(abyte0, l1, k, 0, k1);
        if (g == null) goto _L6; else goto _L20
_L20:
        l = (new BigInteger(g)).bitLength();
        return true;
        abyte0;
        flag = false;
_L6:
        return flag;
_L4:
        return false;
_L7:
        if ((j1 & 0x80) == 0) goto _L22; else goto _L21
_L21:
        k1 = j1 & 0x7f;
        j1 = 0;
_L24:
        l1 = j1;
        i2 = i1;
        if (k1 <= 0) goto _L22; else goto _L23
_L23:
        j1 = (j1 << 8) + (abyte0[i1] & 0xff);
        i1++;
        k1--;
          goto _L24
          goto _L22
_L10:
        k1 = i1;
        l1 = j1;
        if (i2 <= 0) goto _L9; else goto _L25
_L25:
        i1 = (i1 << 8) + (abyte0[j1] & 0xff);
        j1++;
        i2--;
          goto _L10
          goto _L9
_L13:
        k1 = i1;
        l1 = j1;
        if (i2 <= 0) goto _L12; else goto _L26
_L26:
        i1 = (i1 << 8) + (abyte0[j1] & 0xff);
        j1++;
        i2--;
          goto _L13
          goto _L12
_L16:
        k1 = i1;
        l1 = j1;
        if (i2 <= 0) goto _L15; else goto _L27
_L27:
        i1 = (i1 << 8) + (abyte0[j1] & 0xff);
        j1++;
        i2--;
          goto _L16
          goto _L15
_L19:
        k1 = i1;
        l1 = j1;
        if (i2 <= 0) goto _L18; else goto _L28
_L28:
        i1 = (i1 << 8) + (abyte0[j1] & 0xff);
        j1++;
        i2--;
          goto _L19
    }

    public final byte[] b()
    {
        byte abyte0[] = super.b();
        if (abyte0 != null)
        {
            return abyte0;
        }
        if (g == null)
        {
            return null;
        } else
        {
            return qa.a(new byte[][] {
                o, g, h, i, j
            }).b;
        }
    }

    public final void d()
    {
        super.d();
        si.b(k);
    }

}
