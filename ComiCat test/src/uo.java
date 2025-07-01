// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import java.util.Arrays;
import java.util.Calendar;
import java.util.Date;

public final class uo extends ul
{

    private int A;
    public final int i;
    public byte j;
    public byte k;
    public String l;
    public long m;
    public long n;
    private long o;
    private final uq p;
    private final int q;
    private short r;
    private int s;
    private int t;
    private final byte u[];
    private String v;
    private byte w[];
    private final byte x[] = new byte[8];
    private Date y;
    private int z;

    public uo(ul ul1, byte abyte0[])
    {
        boolean flag = false;
        super(ul1);
        A = -1;
        o = ((long)abyte0[3] & 255L) << 24 | ((long)abyte0[2] & 255L) << 16 | ((long)abyte0[1] & 255L) << 8 | (long)abyte0[0] & 255L;
        p = uq.a(abyte0[4]);
        i = ug.b(abyte0, 5);
        q = ug.b(abyte0, 9);
        j = (byte)(j | abyte0[13] & 0xff);
        k = (byte)(k | abyte0[14] & 0xff);
        r = ug.a(abyte0, 15);
        z = ug.b(abyte0, 17);
        int j1 = 21;
        short word0;
        int i1;
        if ((d & 0x100) != 0)
        {
            i1 = 1;
        } else
        {
            i1 = 0;
        }
        if (i1 != 0)
        {
            s = ug.b(abyte0, 21);
            t = ug.b(abyte0, 25);
            i1 = 29;
        } else
        {
            s = 0;
            t = 0;
            i1 = j1;
            if (o == -1L)
            {
                o = -1L;
                t = 0x7fffffff;
                i1 = j1;
            }
        }
        m = m | (long)s;
        m = m << 32;
        m = m | (long)super.h;
        n = n | (long)t;
        n = n << 32;
        n = n + o;
        if (r > 4096)
        {
            word0 = 4096;
        } else
        {
            word0 = r;
        }
        r = word0;
        u = new byte[r];
        for (j1 = 0; j1 < r; j1++)
        {
            u[j1] = abyte0[i1];
            i1++;
        }

        int i2;
        if (j())
        {
            int k1;
            if ((d & 0x200) != 0)
            {
                k1 = 1;
            } else
            {
                k1 = 0;
            }
            int j2;
            if (k1 != 0)
            {
                l = "";
                v = "";
                for (k1 = 0; k1 < u.length && u[k1] != 0; k1++) { }
                ul1 = new byte[k1];
                System.arraycopy(u, 0, ul1, 0, ul1.length);
                l = new String(ul1);
                if (k1 != r)
                {
                    v = up.a(u, k1 + 1);
                }
            } else
            {
                l = new String(u);
                v = "";
            }
        }
        i2 = i1;
        if (uw.i.b(c))
        {
            i2 = e - 32 - r;
            if (l())
            {
                i2 -= 8;
            }
            int l1 = i1;
            if (i2 > 0)
            {
                w = new byte[i2];
                j2 = 0;
                do
                {
                    l1 = i1;
                    if (j2 >= i2)
                    {
                        break;
                    }
                    w[j2] = abyte0[i1];
                    i1++;
                    j2++;
                } while (true);
            }
            ul1 = ut.f;
            byte abyte1[] = u;
            i2 = l1;
            if (Arrays.equals(((ut) (ul1)).i, abyte1))
            {
                A = w[8] + (w[9] << 8) + (w[10] << 16) + (w[11] << 24);
                i2 = l1;
            }
        }
        if (l())
        {
            for (i1 = ((flag) ? 1 : 0); i1 < 8; i1++)
            {
                x[i1] = abyte0[i2];
                i2++;
            }

        }
        i1 = q;
        ul1 = Calendar.getInstance();
        ul1.set(1, (i1 >>> 25) + 1980);
        ul1.set(2, (i1 >>> 21 & 0xf) - 1);
        ul1.set(5, i1 >>> 16 & 0x1f);
        ul1.set(11, i1 >>> 11 & 0x1f);
        ul1.set(12, i1 >>> 5 & 0x3f);
        ul1.set(13, (i1 & 0x1f) * 2);
        y = ul1.getTime();
    }

    private boolean l()
    {
        return (d & 0x400) != 0;
    }

    public final boolean h()
    {
        return (d & 2) != 0;
    }

    public final boolean i()
    {
        return (d & 0x10) != 0;
    }

    public final boolean j()
    {
        return uw.c.b(c);
    }

    public final boolean k()
    {
        return (d & 0xe0) == 224;
    }

    public final String toString()
    {
        return super.toString();
    }
}
