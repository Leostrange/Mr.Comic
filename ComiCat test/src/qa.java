// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 


public final class qa
{

    final byte a[];
    byte b[];
    int c;
    int d;

    public qa()
    {
        this(20480);
    }

    public qa(int i)
    {
        a = new byte[4];
        b = new byte[i];
        c = 0;
        d = 0;
    }

    public qa(byte abyte0[])
    {
        a = new byte[4];
        b = abyte0;
        c = 0;
        d = 0;
    }

    static qa a(byte abyte0[][])
    {
        boolean flag = false;
        int k = abyte0.length * 4;
        for (int i = 0; i < abyte0.length; i++)
        {
            k += abyte0[i].length;
        }

        qa qa1 = new qa(k);
        for (int j = ((flag) ? 1 : 0); j < abyte0.length; j++)
        {
            qa1.b(abyte0[j]);
        }

        return qa1;
    }

    public final int a()
    {
        return c - d;
    }

    public final void a(byte byte0)
    {
        byte abyte0[] = b;
        int i = c;
        c = i + 1;
        abyte0[i] = byte0;
    }

    public final void a(int i)
    {
        a[0] = (byte)(i >>> 24);
        a[1] = (byte)(i >>> 16);
        a[2] = (byte)(i >>> 8);
        a[3] = (byte)i;
        System.arraycopy(a, 0, b, c, 4);
        c = c + 4;
    }

    public final void a(byte abyte0[])
    {
        a(abyte0, 0, abyte0.length);
    }

    final void a(byte abyte0[], int i)
    {
        System.arraycopy(b, d, abyte0, 0, i);
        d = d + i;
    }

    public final void a(byte abyte0[], int i, int j)
    {
        System.arraycopy(abyte0, i, b, c, j);
        c = c + j;
    }

    final byte[] a(int ai[], int ai1[])
    {
        int i = b();
        int j = d;
        d = d + i;
        ai[0] = j;
        ai1[0] = i;
        return b;
    }

    final byte[][] a(int i, String s)
    {
        byte abyte0[][] = new byte[i][];
        for (int j = 0; j < i; j++)
        {
            int k = b();
            if (a() < k)
            {
                throw new qy(s);
            }
            abyte0[j] = new byte[k];
            byte abyte1[] = abyte0[j];
            a(abyte1, abyte1.length);
        }

        return abyte0;
    }

    public final int b()
    {
        return d() << 16 & 0xffff0000 | d() & 0xffff;
    }

    final void b(int i)
    {
        c = c + i;
    }

    public final void b(byte abyte0[])
    {
        int i = abyte0.length;
        a(i);
        a(abyte0, 0, i);
    }

    public final long c()
    {
        return ((long)e() << 8 & 65280L | (long)(e() & 0xff)) << 16 & 0xffffffffffff0000L | ((long)e() << 8 & 65280L | (long)(e() & 0xff)) & 65535L;
    }

    final void c(int i)
    {
        i = c + i + 84;
        if (b.length < i)
        {
            int j = b.length * 2;
            byte abyte0[];
            if (j >= i)
            {
                i = j;
            }
            abyte0 = new byte[i];
            System.arraycopy(b, 0, abyte0, 0, c);
            b = abyte0;
        }
    }

    public final void c(byte abyte0[])
    {
        int i = abyte0.length;
        if ((abyte0[0] & 0x80) != 0)
        {
            a(i + 1);
            a((byte)0);
        } else
        {
            a(i);
        }
        a(abyte0);
    }

    final int d()
    {
        return e() << 8 & 0xff00 | e() & 0xff;
    }

    public final int e()
    {
        byte abyte0[] = b;
        int i = d;
        d = i + 1;
        return abyte0[i] & 0xff;
    }

    public final byte[] f()
    {
        int i = (b() + 7) / 8;
        byte abyte0[] = new byte[i];
        a(abyte0, i);
        if ((abyte0[0] & 0x80) != 0)
        {
            byte abyte1[] = new byte[abyte0.length + 1];
            abyte1[0] = 0;
            System.arraycopy(abyte0, 0, abyte1, 1, abyte0.length);
            return abyte1;
        } else
        {
            return abyte0;
        }
    }

    public final byte[] g()
    {
        int i;
label0:
        {
            int j = b();
            if (j >= 0)
            {
                i = j;
                if (j <= 0x40000)
                {
                    break label0;
                }
            }
            i = 0x40000;
        }
        byte abyte0[] = new byte[i];
        a(abyte0, i);
        return abyte0;
    }

    public final void h()
    {
        c = 0;
        d = 0;
    }
}
