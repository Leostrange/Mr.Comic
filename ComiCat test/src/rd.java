// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 


public final class rd extends rb
{

    private static byte g[][] = {
        {
            6, 8, 42, -122, 72, -50, 61, 3, 1, 7
        }, {
            6, 5, 43, -127, 4, 0, 34
        }, {
            6, 5, 43, -127, 4, 0, 35
        }
    };
    private static String h[] = {
        "nistp256", "nistp384", "nistp521"
    };
    private static final byte n[] = si.a("-----BEGIN EC PRIVATE KEY-----");
    private static final byte o[] = si.a("-----END EC PRIVATE KEY-----");
    private byte i[];
    private byte j[];
    private byte k[];
    private byte l[];
    private int m;

    public rd(qw qw1)
    {
        this(qw1, null, null, null, null);
    }

    private rd(qw qw1, byte abyte0[], byte abyte1[], byte abyte2[], byte abyte3[])
    {
        int i1;
        i1 = 256;
        super(qw1);
        i = si.a(h[0]);
        m = 256;
        if (abyte0 != null)
        {
            i = abyte0;
        }
        j = abyte1;
        k = abyte2;
        l = abyte3;
        if (abyte3 == null) goto _L2; else goto _L1
_L1:
        if (abyte3.length < 64) goto _L4; else goto _L3
_L3:
        i1 = 521;
_L6:
        m = i1;
_L2:
        return;
_L4:
        if (abyte3.length >= 48)
        {
            i1 = 384;
        }
        if (true) goto _L6; else goto _L5
_L5:
    }

    static rb a(qw qw1, qa qa1)
    {
        qa1 = qa1.a(5, "invalid key format");
        byte abyte0[] = qa1[1];
        byte abyte1[][] = d(qa1[2]);
        qw1 = new rd(qw1, abyte0, abyte1[0], abyte1[1], qa1[3]);
        qw1.b = new String(qa1[4]);
        qw1.a = 0;
        return qw1;
    }

    private static byte[][] d(byte abyte0[])
    {
        int i1;
        for (i1 = 0; abyte0[i1] != 4; i1++) { }
        i1++;
        byte abyte1[] = new byte[(abyte0.length - i1) / 2];
        byte abyte2[] = new byte[(abyte0.length - i1) / 2];
        System.arraycopy(abyte0, i1, abyte1, 0, abyte1.length);
        System.arraycopy(abyte0, i1 + abyte1.length, abyte2, 0, abyte2.length);
        return (new byte[][] {
            abyte1, abyte2
        });
    }

    final byte[] a()
    {
        Object obj = g;
        byte abyte0[];
        byte abyte1[];
        byte abyte2[];
        int i1;
        if (j.length >= 64)
        {
            i1 = 2;
        } else
        if (j.length >= 48)
        {
            i1 = 1;
        } else
        {
            i1 = 0;
        }
        obj = obj[i1];
        abyte1 = j;
        abyte2 = k;
        abyte0 = new byte[abyte1.length + 1 + abyte2.length];
        abyte0[0] = 4;
        System.arraycopy(abyte1, 0, abyte0, 1, abyte1.length);
        System.arraycopy(abyte2, 0, abyte0, abyte1.length + 1, abyte2.length);
        if ((abyte0.length + 1 & 0x80) == 0)
        {
            i1 = 3;
        } else
        {
            i1 = 4;
        }
        abyte1 = new byte[abyte0.length + i1];
        System.arraycopy(abyte0, 0, abyte1, i1, abyte0.length);
        abyte1[0] = 3;
        if (i1 == 3)
        {
            abyte1[1] = (byte)(abyte0.length + 1);
        } else
        {
            abyte1[1] = -127;
            abyte1[2] = (byte)(abyte0.length + 1);
        }
        i1 = a(1) + 1 + 1 + 1 + a(l.length) + l.length + 1 + a(obj.length) + obj.length + 1 + a(abyte1.length) + abyte1.length;
        abyte0 = new byte[a(i1) + 1 + i1];
        i1 = a(abyte0, a(abyte0, i1), new byte[] {
            1
        });
        abyte2 = l;
        abyte0[i1] = 4;
        i1 = rb.a(abyte0, i1 + 1, abyte2.length);
        System.arraycopy(abyte2, 0, abyte0, i1, abyte2.length);
        a(abyte0, (byte)-95, a(abyte0, (byte)-96, i1 + abyte2.length, ((byte []) (obj))), abyte1);
        return abyte0;
    }

    public final byte[] a(byte abyte0[])
    {
        try
        {
            abyte0 = ((sc)(sc)Class.forName(qw.a("signature.ecdsa")).newInstance()).a();
            abyte0 = qa.a(new byte[][] {
                si.a((new StringBuilder("ecdsa-sha2-")).append(new String(i)).toString()), abyte0
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
        if (a == 1)
        {
            return false;
        }
        int i1;
        int j1;
        if (a == 2 || abyte0[0] != 48) goto _L2; else goto _L1
_L21:
        int l1;
        int i2;
        l = new byte[l1];
        System.arraycopy(abyte0, i2, l, 0, l1);
        int k1;
        i1 = l1 + i2 + 1;
        j1 = i1 + 1;
        i1 = abyte0[i1] & 0xff;
        k1 = i1;
        l1 = j1;
        if ((i1 & 0x80) == 0) goto _L4; else goto _L3
_L3:
        i2 = i1 & 0x7f;
        i1 = 0;
          goto _L5
_L4:
        abyte1 = new byte[k1];
        System.arraycopy(abyte0, l1, abyte1, 0, k1);
        i1 = 0;
_L19:
        if (i1 >= g.length) goto _L7; else goto _L6
_L6:
        if (!si.a(g[i1], abyte1)) goto _L9; else goto _L8
_L8:
        i = si.a(h[i1]);
          goto _L7
_L16:
        byte abyte2[] = new byte[l1];
        System.arraycopy(abyte0, i2, abyte2, 0, l1);
        abyte0 = d(abyte2);
        j = abyte0[0];
        k = abyte0[1];
        if (l == null)
        {
            break MISSING_BLOCK_LABEL_612;
        }
        if (l.length < 64) goto _L11; else goto _L10
_L10:
        i1 = 521;
_L12:
        try
        {
            m = i1;
            break MISSING_BLOCK_LABEL_612;
        }
        // Misplaced declaration of an exception variable
        catch (byte abyte0[]) { }
          goto _L2
_L11:
        i1 = l.length;
        if (i1 >= 48)
        {
            i1 = 384;
        } else
        {
            i1 = 256;
        }
          goto _L12
_L2:
        return false;
_L1:
        i1 = abyte0[1] & 0xff;
        if ((i1 & 0x80) != 0)
        {
            j1 = i1 & 0x7f;
            byte abyte1[];
            i1 = 2;
            do
            {
                k1 = i1;
                if (j1 <= 0)
                {
                    continue; /* Loop/switch isn't completed */
                }
                i1++;
                j1--;
            } while (true);
        }
        k1 = 2;
        if (abyte0[k1] != 2) goto _L2; else goto _L13
_L13:
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
        if ((j1 & 0x80) == 0)
        {
            continue; /* Loop/switch isn't completed */
        }
        k1 = j1 & 0x7f;
        j1 = 0;
        do
        {
            l1 = j1;
            i2 = i1;
            if (k1 <= 0)
            {
                continue; /* Loop/switch isn't completed */
            }
            j1 = (j1 << 8) + (abyte0[i1] & 0xff);
            i1++;
            k1--;
        } while (true);
        continue; /* Loop/switch isn't completed */
_L5:
        k1 = i1;
        l1 = j1;
        if (i2 <= 0) goto _L4; else goto _L14
_L14:
        i1 = (i1 << 8) + (abyte0[j1] & 0xff);
        j1++;
        i2--;
          goto _L5
          goto _L4
_L7:
        j1 = l1 + k1 + 1;
        i1 = j1 + 1;
        j1 = abyte0[j1] & 0xff;
        l1 = j1;
        i2 = i1;
        if ((j1 & 0x80) == 0) goto _L16; else goto _L15
_L15:
        k1 = j1 & 0x7f;
        j1 = 0;
_L18:
        l1 = j1;
        i2 = i1;
        if (k1 <= 0) goto _L16; else goto _L17
_L17:
        j1 = (j1 << 8) + (abyte0[i1] & 0xff);
        i1++;
        k1--;
          goto _L18
          goto _L16
_L9:
        i1++;
          goto _L19
        return true;
        if (true) goto _L21; else goto _L20
_L20:
    }

    public final byte[] b()
    {
        byte abyte0[] = super.b();
        if (abyte0 != null)
        {
            return abyte0;
        }
        if (j == null)
        {
            return null;
        } else
        {
            byte abyte1[][] = new byte[3][];
            abyte1[0] = si.a((new StringBuilder("ecdsa-sha2-")).append(new String(i)).toString());
            abyte1[1] = i;
            abyte1[2] = new byte[j.length + 1 + k.length];
            abyte1[2][0] = 4;
            System.arraycopy(j, 0, abyte1[2], 1, j.length);
            System.arraycopy(k, 0, abyte1[2], j.length + 1, k.length);
            return qa.a(abyte1).b;
        }
    }

    public final void d()
    {
        super.d();
        si.b(l);
    }

}
