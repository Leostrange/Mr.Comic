// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 


abstract class yv extends zm
{

    zm a;
    private byte b;
    private int c;

    yv()
    {
        b = -1;
        c = 0;
        a = null;
    }

    yv(zm zm1)
    {
        b = -1;
        c = 0;
        a = null;
        if (zm1 != null)
        {
            a = zm1;
            b = zm1.g;
        }
    }

    private int a(byte abyte0[], int i)
    {
        r = i(abyte0, i + 3 + 2);
        r = r + 4;
        int j = r + 1 + i;
        r = r / 2;
        abyte0[i] = (byte)(r & 0xff);
        s = j(abyte0, j + 2);
        int k = j + 1;
        abyte0[j] = (byte)(s & 0xff);
        abyte0[k] = (byte)(s >> 8 & 0xff);
        k = s + (k + 1);
        if (a == null || !al || this.k >= a(a.g))
        {
            b = -1;
            a = null;
            abyte0[i + 1] = -1;
            abyte0[i + 2] = 0;
            abyte0[i + 3] = -34;
            abyte0[i + 3 + 1] = -34;
            return k - i;
        }
        a.k = this.k + 1;
        abyte0[i + 1] = b;
        abyte0[i + 2] = 0;
        c = k - this.i;
        a(c, abyte0, i + 3);
        a.t = t;
        if (a instanceof yv)
        {
            a.p = p;
            j = ((yv)a).a(abyte0, k) + k;
        } else
        {
            a.r = a.i(abyte0, k);
            j = a.r + 1 + k;
            zm zm1 = a;
            zm1.r = zm1.r / 2;
            abyte0[k] = (byte)(a.r & 0xff);
            a.s = a.j(abyte0, j + 2);
            k = j + 1;
            abyte0[j] = (byte)(a.s & 0xff);
            abyte0[k] = (byte)(a.s >> 8 & 0xff);
            j = k + 1 + a.s;
        }
        return j - i;
    }

    private int b(byte abyte0[], int i)
    {
        int j;
        int k = i + 1;
        r = abyte0[i];
        j = k;
        if (r != 0)
        {
            b = abyte0[k];
            c = d(abyte0, k + 2);
            if (c == 0)
            {
                b = -1;
            }
            if (r > 2)
            {
                k(abyte0, k + 4);
                if (g == -94 && ((zu)this).N)
                {
                    r = r + 8;
                }
            }
            j = i + 1 + r * 2;
        }
        s = d(abyte0, j);
        k = j + 2;
        j = k;
        if (s != 0)
        {
            l(abyte0, k);
            j = k + s;
        }
        if (this.l == 0 && b != -1) goto _L2; else goto _L1
_L1:
        b = -1;
        a = null;
_L4:
        return j - i;
_L2:
        if (a == null)
        {
            b = -1;
            throw new RuntimeException("no andx command supplied with response");
        }
        j = this.i;
        j = c + j;
        a.i = this.i;
        a.g = b;
        a.l = this.l;
        a.h = h;
        a.m = m;
        a.n = n;
        a.o = o;
        a.p = p;
        a.q = q;
        a.t = t;
        if (!(a instanceof yv))
        {
            break; /* Loop/switch isn't completed */
        }
        j = ((yv)a).b(abyte0, j) + j;
_L5:
        a.u = true;
        if (true) goto _L4; else goto _L3
_L3:
        int l = j + 1;
        abyte0[j] = (byte)(a.r & 0xff);
        j = l;
        if (a.r != 0)
        {
            j = l;
            if (a.r > 2)
            {
                j = l + a.k(abyte0, l);
            }
        }
        a.s = d(abyte0, j);
        l = j + 2;
        j = l;
        if (a.s != 0)
        {
            a.l(abyte0, l);
            j = l + a.s;
        }
          goto _L5
        if (true) goto _L4; else goto _L6
_L6:
    }

    int a(byte byte0)
    {
        return 0;
    }

    final int a(byte abyte0[])
    {
        i = 4;
        c(abyte0);
        j = (a(abyte0, 36) + 36) - 4;
        if (B != null)
        {
            B.a(abyte0, i, j, this, C);
        }
        return j;
    }

    final int b(byte abyte0[])
    {
        i = 4;
        d(abyte0);
        j = (b(abyte0, 36) + 36) - 4;
        return j;
    }

    public String toString()
    {
        return new String((new StringBuilder()).append(super.toString()).append(",andxCommand=0x").append(abw.a(b, 2)).append(",andxOffset=").append(c).toString());
    }
}
