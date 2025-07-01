// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import java.math.BigInteger;

public final class rf extends rb
{

    private static final byte p[] = si.a("-----BEGIN RSA PRIVATE KEY-----");
    private static final byte q[] = si.a("-----END RSA PRIVATE KEY-----");
    private static final byte r[] = si.a("ssh-rsa");
    private byte g[];
    private byte h[];
    private byte i[];
    private byte j[];
    private byte k[];
    private byte l[];
    private byte m[];
    private byte n[];
    private int o;

    public rf(qw qw1)
    {
        this(qw1, null, null, null);
    }

    public rf(qw qw1, byte abyte0[], byte abyte1[], byte abyte2[])
    {
        super(qw1);
        o = 1024;
        g = abyte0;
        h = abyte1;
        i = abyte2;
        if (abyte0 != null)
        {
            o = (new BigInteger(abyte0)).bitLength();
        }
    }

    static rb a(qw qw1, qa qa1)
    {
        qa1 = qa1.a(8, "invalid key format");
        qw1 = new rf(qw1, qa1[1], qa1[2], qa1[3]);
        qw1.n = qa1[4];
        qw1.j = qa1[5];
        qw1.k = qa1[6];
        qw1.b = new String(qa1[7]);
        qw1.a = 0;
        return qw1;
    }

    private byte[] e()
    {
        if (l == null)
        {
            l = (new BigInteger(i)).mod((new BigInteger(j)).subtract(BigInteger.ONE)).toByteArray();
        }
        return l;
    }

    private byte[] f()
    {
        if (m == null)
        {
            m = (new BigInteger(i)).mod((new BigInteger(k)).subtract(BigInteger.ONE)).toByteArray();
        }
        return m;
    }

    final byte[] a()
    {
        int i1 = a(1) + 1 + 1 + 1 + a(g.length) + g.length + 1 + a(h.length) + h.length + 1 + a(i.length) + i.length + 1 + a(j.length) + j.length + 1 + a(k.length) + k.length + 1 + a(l.length) + l.length + 1 + a(m.length) + m.length + 1 + a(n.length) + n.length;
        byte abyte0[] = new byte[a(i1) + 1 + i1];
        a(abyte0, a(abyte0, a(abyte0, a(abyte0, a(abyte0, a(abyte0, a(abyte0, a(abyte0, a(abyte0, a(abyte0, i1), new byte[1]), g), h), i), j), k), l), m), n);
        return abyte0;
    }

    public final byte[] a(byte abyte0[])
    {
        try
        {
            abyte0 = ((sd)(sd)Class.forName(qw.a("signature.rsa")).newInstance()).a();
            abyte0 = qa.a(new byte[][] {
                r, abyte0
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
        qa qa1;
        if (a != 2)
        {
            break MISSING_BLOCK_LABEL_71;
        }
        qa1 = new qa(abyte0);
        qa1.b(abyte0.length);
        int i1;
        int j1;
        int k1;
        int l1;
        int i2;
        try
        {
            abyte0 = qa1.a(4, "");
            i = abyte0[0];
            j = abyte0[1];
            k = abyte0[2];
            n = abyte0[3];
        }
        // Misplaced declaration of an exception variable
        catch (byte abyte0[])
        {
            return false;
        }
        e();
        f();
        return true;
        if (a != 1) goto _L2; else goto _L1
_L1:
        if (abyte0[0] == 48) goto _L4; else goto _L3
_L3:
        abyte0 = new qa(abyte0);
        h = abyte0.f();
        i = abyte0.f();
        g = abyte0.f();
        abyte0.f();
        j = abyte0.f();
        k = abyte0.f();
        if (g != null)
        {
            o = (new BigInteger(g)).bitLength();
        }
        e();
        f();
        if (n != null) goto _L6; else goto _L5
_L5:
        n = (new BigInteger(k)).modInverse(new BigInteger(j)).toByteArray();
        return true;
_L29:
        try
        {
            g = new byte[l1];
            System.arraycopy(abyte0, i2, g, 0, l1);
        }
        // Misplaced declaration of an exception variable
        catch (byte abyte0[])
        {
            return false;
        }
        i1 = l1 + i2 + 1;
        j1 = i1 + 1;
        i1 = abyte0[i1] & 0xff;
        k1 = i1;
        l1 = j1;
        if ((i1 & 0x80) == 0) goto _L8; else goto _L7
_L7:
        i2 = i1 & 0x7f;
        i1 = 0;
          goto _L9
_L8:
        h = new byte[k1];
        System.arraycopy(abyte0, l1, h, 0, k1);
        i1 = k1 + l1 + 1;
        j1 = i1 + 1;
        i1 = abyte0[i1] & 0xff;
        k1 = i1;
        l1 = j1;
        if ((i1 & 0x80) == 0) goto _L11; else goto _L10
_L10:
        i2 = i1 & 0x7f;
        i1 = 0;
          goto _L12
_L11:
        i = new byte[k1];
        System.arraycopy(abyte0, l1, i, 0, k1);
        i1 = k1 + l1 + 1;
        j1 = i1 + 1;
        i1 = abyte0[i1] & 0xff;
        k1 = i1;
        l1 = j1;
        if ((i1 & 0x80) == 0) goto _L14; else goto _L13
_L13:
        i2 = i1 & 0x7f;
        i1 = 0;
          goto _L15
_L14:
        j = new byte[k1];
        System.arraycopy(abyte0, l1, j, 0, k1);
        i1 = k1 + l1 + 1;
        j1 = i1 + 1;
        i1 = abyte0[i1] & 0xff;
        k1 = i1;
        l1 = j1;
        if ((i1 & 0x80) == 0) goto _L17; else goto _L16
_L16:
        i2 = i1 & 0x7f;
        i1 = 0;
          goto _L18
_L17:
        k = new byte[k1];
        System.arraycopy(abyte0, l1, k, 0, k1);
        i1 = k1 + l1 + 1;
        j1 = i1 + 1;
        i1 = abyte0[i1] & 0xff;
        k1 = i1;
        l1 = j1;
        if ((i1 & 0x80) == 0) goto _L20; else goto _L19
_L19:
        i2 = i1 & 0x7f;
        i1 = 0;
          goto _L21
_L20:
        l = new byte[k1];
        System.arraycopy(abyte0, l1, l, 0, k1);
        i1 = k1 + l1 + 1;
        j1 = i1 + 1;
        i1 = abyte0[i1] & 0xff;
        k1 = i1;
        l1 = j1;
        if ((i1 & 0x80) == 0) goto _L23; else goto _L22
_L22:
        i2 = i1 & 0x7f;
        i1 = 0;
          goto _L24
_L23:
        m = new byte[k1];
        System.arraycopy(abyte0, l1, m, 0, k1);
        i1 = k1 + l1 + 1;
        j1 = i1 + 1;
        i1 = abyte0[i1] & 0xff;
        k1 = i1;
        l1 = j1;
        if ((i1 & 0x80) == 0) goto _L26; else goto _L25
_L25:
        i2 = i1 & 0x7f;
        i1 = 0;
          goto _L27
_L26:
        n = new byte[k1];
        System.arraycopy(abyte0, l1, n, 0, k1);
        if (g != null)
        {
            o = (new BigInteger(g)).bitLength();
        }
_L6:
        return true;
_L4:
        return false;
_L2:
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
        if ((j1 & 0x80) == 0) goto _L29; else goto _L28
_L28:
        k1 = j1 & 0x7f;
        j1 = 0;
_L31:
        l1 = j1;
        i2 = i1;
        if (k1 <= 0) goto _L29; else goto _L30
_L30:
        j1 = (j1 << 8) + (abyte0[i1] & 0xff);
        i1++;
        k1--;
          goto _L31
          goto _L29
_L9:
        k1 = i1;
        l1 = j1;
        if (i2 <= 0) goto _L8; else goto _L32
_L32:
        i1 = (i1 << 8) + (abyte0[j1] & 0xff);
        j1++;
        i2--;
          goto _L9
          goto _L8
_L12:
        k1 = i1;
        l1 = j1;
        if (i2 <= 0) goto _L11; else goto _L33
_L33:
        i1 = (i1 << 8) + (abyte0[j1] & 0xff);
        j1++;
        i2--;
          goto _L12
          goto _L11
_L15:
        k1 = i1;
        l1 = j1;
        if (i2 <= 0) goto _L14; else goto _L34
_L34:
        i1 = (i1 << 8) + (abyte0[j1] & 0xff);
        j1++;
        i2--;
          goto _L15
          goto _L14
_L18:
        k1 = i1;
        l1 = j1;
        if (i2 <= 0) goto _L17; else goto _L35
_L35:
        i1 = (i1 << 8) + (abyte0[j1] & 0xff);
        j1++;
        i2--;
          goto _L18
          goto _L17
_L21:
        k1 = i1;
        l1 = j1;
        if (i2 <= 0) goto _L20; else goto _L36
_L36:
        i1 = (i1 << 8) + (abyte0[j1] & 0xff);
        j1++;
        i2--;
          goto _L21
          goto _L20
_L24:
        k1 = i1;
        l1 = j1;
        if (i2 <= 0) goto _L23; else goto _L37
_L37:
        i1 = (i1 << 8) + (abyte0[j1] & 0xff);
        j1++;
        i2--;
          goto _L24
          goto _L23
_L27:
        k1 = i1;
        l1 = j1;
        if (i2 <= 0) goto _L26; else goto _L38
_L38:
        i1 = (i1 << 8) + (abyte0[j1] & 0xff);
        j1++;
        i2--;
          goto _L27
    }

    public final byte[] b()
    {
        byte abyte0[] = super.b();
        if (abyte0 != null)
        {
            return abyte0;
        }
        if (h == null)
        {
            return null;
        } else
        {
            return qa.a(new byte[][] {
                r, h, g
            }).b;
        }
    }

    public final void d()
    {
        super.d();
        si.b(i);
    }

}
