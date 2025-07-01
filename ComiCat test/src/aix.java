// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import java.io.OutputStream;
import java.math.BigDecimal;
import java.math.BigInteger;

public final class aix extends air
{

    static final byte g[] = ajt.h();
    protected static final int h[] = ajt.f();
    private static final byte u[] = {
        110, 117, 108, 108
    };
    private static final byte v[] = {
        116, 114, 117, 101
    };
    private static final byte w[] = {
        102, 97, 108, 115, 101
    };
    protected final ajc i;
    protected final OutputStream j;
    protected int k[];
    protected int l;
    protected ajb m;
    protected byte n[];
    protected int o;
    protected final int p;
    protected final int q;
    protected char r[];
    protected final int s;
    protected boolean t;

    public aix(ajc ajc1, int i1, aim aim, OutputStream outputstream)
    {
        super(i1, aim);
        k = h;
        o = 0;
        i = ajc1;
        j = outputstream;
        t = true;
        n = ajc1.f();
        p = n.length;
        q = p >> 3;
        r = ajc1.h();
        s = r.length;
        if (a(aif.a.g))
        {
            l = 127;
        }
    }

    private final int a(int i1, int j1)
    {
        byte abyte0[] = n;
        if (i1 >= 55296 && i1 <= 57343)
        {
            int k1 = j1 + 1;
            abyte0[j1] = 92;
            j1 = k1 + 1;
            abyte0[k1] = 117;
            k1 = j1 + 1;
            abyte0[j1] = g[i1 >> 12 & 0xf];
            j1 = k1 + 1;
            abyte0[k1] = g[i1 >> 8 & 0xf];
            k1 = j1 + 1;
            abyte0[j1] = g[i1 >> 4 & 0xf];
            abyte0[k1] = g[i1 & 0xf];
            return k1 + 1;
        } else
        {
            int l1 = j1 + 1;
            abyte0[j1] = (byte)(i1 >> 12 | 0xe0);
            j1 = l1 + 1;
            abyte0[l1] = (byte)(i1 >> 6 & 0x3f | 0x80);
            abyte0[j1] = (byte)(i1 & 0x3f | 0x80);
            return j1 + 1;
        }
    }

    private final int a(int i1, char ac[], int j1, int k1)
    {
        if (i1 >= 55296 && i1 <= 57343)
        {
            if (j1 >= k1)
            {
                e("Split surrogate on writeRaw() input (last character)");
            }
            k1 = ac[j1];
            if (k1 < 56320 || k1 > 57343)
            {
                e((new StringBuilder("Incomplete surrogate pair: first char 0x")).append(Integer.toHexString(i1)).append(", second 0x").append(Integer.toHexString(k1)).toString());
            }
            i1 = (k1 - 56320) + (0x10000 + (i1 - 55296 << 10));
            if (o + 4 > p)
            {
                l();
            }
            ac = n;
            k1 = o;
            o = k1 + 1;
            ac[k1] = (byte)(i1 >> 18 | 0xf0);
            k1 = o;
            o = k1 + 1;
            ac[k1] = (byte)(i1 >> 12 & 0x3f | 0x80);
            k1 = o;
            o = k1 + 1;
            ac[k1] = (byte)(i1 >> 6 & 0x3f | 0x80);
            k1 = o;
            o = k1 + 1;
            ac[k1] = (byte)(i1 & 0x3f | 0x80);
            return j1 + 1;
        } else
        {
            ac = n;
            k1 = o;
            o = k1 + 1;
            ac[k1] = (byte)(i1 >> 12 | 0xe0);
            k1 = o;
            o = k1 + 1;
            ac[k1] = (byte)(i1 >> 6 & 0x3f | 0x80);
            k1 = o;
            o = k1 + 1;
            ac[k1] = (byte)(i1 & 0x3f | 0x80);
            return j1;
        }
    }

    private int a(byte abyte0[], int i1, aio aio1, int j1)
    {
        int k1;
        int l1;
        int i2;
        aio1 = aio1.b();
        k1 = aio1.length;
        if (k1 <= 6)
        {
            break MISSING_BLOCK_LABEL_113;
        }
        l1 = p;
        i2 = aio1.length;
        if (i1 + i2 <= l1) goto _L2; else goto _L1
_L1:
        o = i1;
        l();
        k1 = o;
        if (i2 <= abyte0.length) goto _L4; else goto _L3
_L3:
        j.write(aio1, 0, i2);
_L6:
        return k1;
_L4:
        System.arraycopy(aio1, 0, abyte0, k1, i2);
        i1 = k1 + i2;
_L2:
        k1 = i1;
        if (j1 * 6 + i1 <= l1) goto _L6; else goto _L5
_L5:
        l();
        return o;
        System.arraycopy(aio1, 0, abyte0, i1, k1);
        return k1 + i1;
    }

    private final void a(Object obj)
    {
        if (o >= p)
        {
            l();
        }
        byte abyte0[] = n;
        int i1 = o;
        o = i1 + 1;
        abyte0[i1] = 34;
        c(obj.toString());
        if (o >= p)
        {
            l();
        }
        obj = n;
        i1 = o;
        o = i1 + 1;
        obj[i1] = 34;
    }

    private int b(int i1, int j1)
    {
        byte abyte0[] = n;
        int k1 = j1 + 1;
        abyte0[j1] = 92;
        j1 = k1 + 1;
        abyte0[k1] = 117;
        if (i1 > 255)
        {
            k1 = i1 >> 8 & 0xff;
            int i2 = j1 + 1;
            abyte0[j1] = g[k1 >> 4];
            j1 = i2 + 1;
            abyte0[i2] = g[k1 & 0xf];
            i1 &= 0xff;
        } else
        {
            int l1 = j1 + 1;
            abyte0[j1] = 48;
            j1 = l1 + 1;
            abyte0[l1] = 48;
        }
        k1 = j1 + 1;
        abyte0[j1] = g[i1 >> 4];
        abyte0[k1] = g[i1 & 0xf];
        return k1 + 1;
    }

    private final void b(char ac[], int i1, int j1)
    {
        int k1;
        do
        {
            k1 = Math.min(q, j1);
            if (o + k1 > p)
            {
                l();
            }
            c(ac, i1, k1);
            i1 += k1;
            k1 = j1 - k1;
            j1 = k1;
        } while (k1 > 0);
    }

    private final void c(char ac[], int i1, int j1)
    {
        int j2;
label0:
        {
            j2 = j1 + i1;
            int k1 = o;
            byte abyte0[] = n;
            int ai[] = k;
            j1 = i1;
            i1 = k1;
            do
            {
                if (j1 >= j2)
                {
                    break;
                }
                char c1 = ac[j1];
                if (c1 > '\177' || ai[c1] != 0)
                {
                    break;
                }
                abyte0[i1] = (byte)c1;
                j1++;
                i1++;
            } while (true);
            o = i1;
            if (j1 < j2)
            {
                if (m == null)
                {
                    break label0;
                }
                if (o + (j2 - j1) * 6 > p)
                {
                    l();
                }
                i1 = o;
                byte abyte1[] = n;
                int ai1[] = k;
                ajb ajb1;
                int i2;
                if (l <= 0)
                {
                    i2 = 65535;
                } else
                {
                    i2 = l;
                }
                ajb1 = m;
                while (j1 < j2) 
                {
                    int l1 = j1 + 1;
                    j1 = ac[j1];
                    if (j1 <= 127)
                    {
                        if (ai1[j1] == 0)
                        {
                            abyte1[i1] = (byte)j1;
                            i1++;
                            j1 = l1;
                        } else
                        {
                            int k2 = ai1[j1];
                            if (k2 > 0)
                            {
                                j1 = i1 + 1;
                                abyte1[i1] = 92;
                                i1 = j1 + 1;
                                abyte1[j1] = (byte)k2;
                                j1 = l1;
                            } else
                            if (k2 == -2)
                            {
                                aio aio1 = ajb1.b();
                                if (aio1 == null)
                                {
                                    throw new aie((new StringBuilder("Invalid custom escape definitions; custom escape not found for character code 0x")).append(Integer.toHexString(j1)).append(", although was supposed to have one").toString());
                                }
                                i1 = a(abyte1, i1, aio1, j2 - l1);
                                j1 = l1;
                            } else
                            {
                                i1 = b(j1, i1);
                                j1 = l1;
                            }
                        }
                    } else
                    if (j1 > i2)
                    {
                        i1 = b(j1, i1);
                        j1 = l1;
                    } else
                    {
                        aio aio2 = ajb1.b();
                        if (aio2 != null)
                        {
                            i1 = a(abyte1, i1, aio2, j2 - l1);
                            j1 = l1;
                        } else
                        if (j1 <= 2047)
                        {
                            int l2 = i1 + 1;
                            abyte1[i1] = (byte)(j1 >> 6 | 0xc0);
                            i1 = l2 + 1;
                            abyte1[l2] = (byte)(j1 & 0x3f | 0x80);
                            j1 = l1;
                        } else
                        {
                            i1 = a(j1, i1);
                            j1 = l1;
                        }
                    }
                }
                o = i1;
            }
            return;
        }
        if (l == 0)
        {
            d(ac, j1, j2);
            return;
        } else
        {
            e(ac, j1, j2);
            return;
        }
    }

    private final void d(char ac[], int i1, int j1)
    {
        if (o + (j1 - i1) * 6 > p)
        {
            l();
        }
        int l1 = o;
        byte abyte0[] = n;
        int ai[] = k;
        int k1 = i1;
        i1 = l1;
        while (k1 < j1) 
        {
            int i2 = k1 + 1;
            k1 = ac[k1];
            if (k1 <= '\177')
            {
                if (ai[k1] == 0)
                {
                    abyte0[i1] = (byte)k1;
                    i1++;
                    k1 = i2;
                } else
                {
                    int j2 = ai[k1];
                    if (j2 > 0)
                    {
                        k1 = i1 + 1;
                        abyte0[i1] = 92;
                        i1 = k1 + 1;
                        abyte0[k1] = (byte)j2;
                        k1 = i2;
                    } else
                    {
                        i1 = b(k1, i1);
                        k1 = i2;
                    }
                }
            } else
            if (k1 <= 2047)
            {
                int k2 = i1 + 1;
                abyte0[i1] = (byte)(k1 >> 6 | 0xc0);
                i1 = k2 + 1;
                abyte0[k2] = (byte)(k1 & 0x3f | 0x80);
                k1 = i2;
            } else
            {
                i1 = a(k1, i1);
                k1 = i2;
            }
        }
        o = i1;
    }

    private final void e(char ac[], int i1, int j1)
    {
        if (o + (j1 - i1) * 6 > p)
        {
            l();
        }
        int l1 = o;
        byte abyte0[] = n;
        int ai[] = k;
        int j2 = l;
        int k1 = i1;
        i1 = l1;
        while (k1 < j1) 
        {
            int i2 = k1 + 1;
            k1 = ac[k1];
            if (k1 <= '\177')
            {
                if (ai[k1] == 0)
                {
                    abyte0[i1] = (byte)k1;
                    i1++;
                    k1 = i2;
                } else
                {
                    int k2 = ai[k1];
                    if (k2 > 0)
                    {
                        k1 = i1 + 1;
                        abyte0[i1] = 92;
                        i1 = k1 + 1;
                        abyte0[k1] = (byte)k2;
                        k1 = i2;
                    } else
                    {
                        i1 = b(k1, i1);
                        k1 = i2;
                    }
                }
            } else
            if (k1 > j2)
            {
                i1 = b(k1, i1);
                k1 = i2;
            } else
            if (k1 <= 2047)
            {
                int l2 = i1 + 1;
                abyte0[i1] = (byte)(k1 >> 6 | 0xc0);
                i1 = l2 + 1;
                abyte0[l2] = (byte)(k1 & 0x3f | 0x80);
                k1 = i2;
            } else
            {
                i1 = a(k1, i1);
                k1 = i2;
            }
        }
        o = i1;
    }

    private final void f(String s1)
    {
        int i1 = s1.length();
        char ac[] = r;
        int j1 = 0;
        int k1;
        for (; i1 > 0; i1 -= k1)
        {
            k1 = Math.min(q, i1);
            s1.getChars(j1, j1 + k1, ac, 0);
            if (o + k1 > p)
            {
                l();
            }
            c(ac, 0, k1);
            j1 += k1;
        }

    }

    private final void k()
    {
        if (o + 4 >= p)
        {
            l();
        }
        System.arraycopy(u, 0, n, o, 4);
        o = o + 4;
    }

    private void l()
    {
        int i1 = o;
        if (i1 > 0)
        {
            o = 0;
            j.write(n, 0, i1);
        }
    }

    public final aif a(ajb ajb1)
    {
        m = ajb1;
        if (ajb1 == null)
        {
            k = h;
            return this;
        } else
        {
            k = ajb1.a();
            return this;
        }
    }

    public final void a(char c1)
    {
        if (o + 3 >= p)
        {
            l();
        }
        byte abyte0[] = n;
        if (c1 <= '\177')
        {
            int i1 = o;
            o = i1 + 1;
            abyte0[i1] = (byte)c1;
            return;
        }
        if (c1 < '\u0800')
        {
            int j1 = o;
            o = j1 + 1;
            abyte0[j1] = (byte)(c1 >> 6 | 0xc0);
            j1 = o;
            o = j1 + 1;
            abyte0[j1] = (byte)(c1 & 0x3f | 0x80);
            return;
        } else
        {
            a(c1, ((char []) (null)), 0, 0);
            return;
        }
    }

    public final void a(double d1)
    {
        if (d || (Double.isNaN(d1) || Double.isInfinite(d1)) && a(aif.a.d))
        {
            b(String.valueOf(d1));
            return;
        } else
        {
            d("write number");
            c(String.valueOf(d1));
            return;
        }
    }

    public final void a(float f1)
    {
        if (d || (Float.isNaN(f1) || Float.isInfinite(f1)) && a(aif.a.d))
        {
            b(String.valueOf(f1));
            return;
        } else
        {
            d("write number");
            c(String.valueOf(f1));
            return;
        }
    }

    public final void a(int i1)
    {
        d("write number");
        if (o + 11 >= p)
        {
            l();
        }
        if (d)
        {
            if (o + 13 >= p)
            {
                l();
            }
            byte abyte0[] = n;
            int j1 = o;
            o = j1 + 1;
            abyte0[j1] = 34;
            o = ajg.a(i1, n, o);
            abyte0 = n;
            i1 = o;
            o = i1 + 1;
            abyte0[i1] = 34;
            return;
        } else
        {
            o = ajg.a(i1, n, o);
            return;
        }
    }

    public final void a(long l1)
    {
        d("write number");
        if (d)
        {
            if (o + 23 >= p)
            {
                l();
            }
            byte abyte0[] = n;
            int i1 = o;
            o = i1 + 1;
            abyte0[i1] = 34;
            o = ajg.a(l1, n, o);
            abyte0 = n;
            i1 = o;
            o = i1 + 1;
            abyte0[i1] = 34;
            return;
        }
        if (o + 21 >= p)
        {
            l();
        }
        o = ajg.a(l1, n, o);
    }

    public final void a(String s1)
    {
        int i1 = 1;
        int j1 = e.a(s1);
        if (j1 == 4)
        {
            e("Can not write a field name, expecting a value");
        }
        if (a != null)
        {
            if (j1 != 1)
            {
                i1 = 0;
            }
            if (i1 != 0)
            {
                a.c(this);
            } else
            {
                a.h(this);
            }
            if (a(aif.a.c))
            {
                if (o >= p)
                {
                    l();
                }
                byte abyte0[] = n;
                i1 = o;
                o = i1 + 1;
                abyte0[i1] = 34;
                i1 = s1.length();
                if (i1 <= s)
                {
                    s1.getChars(0, i1, r, 0);
                    if (i1 <= q)
                    {
                        if (o + i1 > p)
                        {
                            l();
                        }
                        c(r, 0, i1);
                    } else
                    {
                        b(r, 0, i1);
                    }
                } else
                {
                    f(s1);
                }
                if (o >= p)
                {
                    l();
                }
                s1 = n;
                i1 = o;
                o = i1 + 1;
                s1[i1] = 34;
                return;
            } else
            {
                f(s1);
                return;
            }
        }
        if (j1 == 1)
        {
            if (o >= p)
            {
                l();
            }
            byte abyte1[] = n;
            i1 = o;
            o = i1 + 1;
            abyte1[i1] = 44;
        }
        if (!a(aif.a.c))
        {
            f(s1);
            return;
        }
        if (o >= p)
        {
            l();
        }
        byte abyte2[] = n;
        i1 = o;
        o = i1 + 1;
        abyte2[i1] = 34;
        i1 = s1.length();
        if (i1 <= s)
        {
            s1.getChars(0, i1, r, 0);
            if (i1 <= q)
            {
                if (o + i1 > p)
                {
                    l();
                }
                c(r, 0, i1);
            } else
            {
                b(r, 0, i1);
            }
        } else
        {
            f(s1);
        }
        if (o >= p)
        {
            l();
        }
        s1 = n;
        i1 = o;
        o = i1 + 1;
        s1[i1] = 34;
    }

    public final void a(BigDecimal bigdecimal)
    {
        d("write number");
        if (bigdecimal == null)
        {
            k();
            return;
        }
        if (d)
        {
            a(bigdecimal);
            return;
        } else
        {
            c(bigdecimal.toString());
            return;
        }
    }

    public final void a(BigInteger biginteger)
    {
        d("write number");
        if (biginteger == null)
        {
            k();
            return;
        }
        if (d)
        {
            a(biginteger);
            return;
        } else
        {
            c(biginteger.toString());
            return;
        }
    }

    public final void a(boolean flag)
    {
        d("write boolean value");
        if (o + 5 >= p)
        {
            l();
        }
        byte abyte0[];
        int i1;
        if (flag)
        {
            abyte0 = v;
        } else
        {
            abyte0 = w;
        }
        i1 = abyte0.length;
        System.arraycopy(abyte0, 0, n, o, i1);
        o = o + i1;
    }

    public final void a(char ac[], int i1, int j1)
    {
        int k1 = j1 + j1 + j1;
        if (o + k1 <= p) goto _L2; else goto _L1
_L1:
        if (p >= k1) goto _L4; else goto _L3
_L3:
        byte abyte0[];
        int l1;
        i1 = 0;
        l1 = p;
        abyte0 = n;
_L9:
        if (i1 >= j1) goto _L6; else goto _L5
_L5:
        k1 = ac[i1];
        if (k1 >= '\200') goto _L8; else goto _L7
_L7:
        if (o >= l1)
        {
            l();
        }
        int k2 = o;
        o = k2 + 1;
        abyte0[k2] = (byte)k1;
        k1 = i1 + 1;
        i1 = k1;
        if (k1 < j1) goto _L5; else goto _L6
_L6:
        return;
_L8:
        if (o + 3 >= p)
        {
            l();
        }
        k1 = i1 + 1;
        i1 = ac[i1];
        if (i1 < 2048)
        {
            int l2 = o;
            o = l2 + 1;
            abyte0[l2] = (byte)(i1 >> 6 | 0xc0);
            l2 = o;
            o = l2 + 1;
            abyte0[l2] = (byte)(i1 & 0x3f | 0x80);
            i1 = k1;
        } else
        {
            a(i1, ac, k1, j1);
            i1 = k1;
        }
          goto _L9
_L4:
        l();
_L2:
        k1 = j1 + 0;
_L14:
        if (i1 >= k1) goto _L6; else goto _L10
_L10:
        j1 = i1;
_L13:
        i1 = ac[j1];
        if (i1 > 127) goto _L12; else goto _L11
_L11:
        byte abyte1[] = n;
        int i2 = o;
        o = i2 + 1;
        abyte1[i2] = (byte)i1;
        j1++;
        if (j1 >= k1) goto _L6; else goto _L13
_L12:
        i1 = j1 + 1;
        j1 = ac[j1];
        if (j1 < 2048)
        {
            byte abyte2[] = n;
            int j2 = o;
            o = j2 + 1;
            abyte2[j2] = (byte)(j1 >> 6 | 0xc0);
            abyte2 = n;
            j2 = o;
            o = j2 + 1;
            abyte2[j2] = (byte)(j1 & 0x3f | 0x80);
        } else
        {
            a(j1, ac, i1, k1);
        }
          goto _L14
    }

    public final void b()
    {
        d("start an array");
        e = e.g();
        if (a != null)
        {
            a.e(this);
            return;
        }
        if (o >= p)
        {
            l();
        }
        byte abyte0[] = n;
        int i1 = o;
        o = i1 + 1;
        abyte0[i1] = 91;
    }

    public final void b(String s1)
    {
        d("write text value");
        if (s1 == null)
        {
            k();
            return;
        }
        int i1 = s1.length();
        if (i1 > s)
        {
            if (o >= p)
            {
                l();
            }
            byte abyte0[] = n;
            i1 = o;
            o = i1 + 1;
            abyte0[i1] = 34;
            f(s1);
            if (o >= p)
            {
                l();
            }
            s1 = n;
            i1 = o;
            o = i1 + 1;
            s1[i1] = 34;
            return;
        }
        s1.getChars(0, i1, r, 0);
        if (i1 > q)
        {
            if (o >= p)
            {
                l();
            }
            s1 = n;
            int j1 = o;
            o = j1 + 1;
            s1[j1] = 34;
            b(r, 0, i1);
            if (o >= p)
            {
                l();
            }
            s1 = n;
            i1 = o;
            o = i1 + 1;
            s1[i1] = 34;
            return;
        }
        if (o + i1 >= p)
        {
            l();
        }
        s1 = n;
        int k1 = o;
        o = k1 + 1;
        s1[k1] = 34;
        c(r, 0, i1);
        if (o >= p)
        {
            l();
        }
        s1 = n;
        i1 = o;
        o = i1 + 1;
        s1[i1] = 34;
    }

    public final void c()
    {
        if (!e.a())
        {
            e((new StringBuilder("Current context not an ARRAY but ")).append(e.d()).toString());
        }
        if (a != null)
        {
            a.b(this, e.e());
        } else
        {
            if (o >= p)
            {
                l();
            }
            byte abyte0[] = n;
            int i1 = o;
            o = i1 + 1;
            abyte0[i1] = 93;
        }
        e = e.i();
    }

    public final void c(String s1)
    {
        int i1 = s1.length();
        int j1 = 0;
        int k1;
        for (; i1 > 0; i1 -= k1)
        {
            char ac[] = r;
            int l1 = ac.length;
            k1 = l1;
            if (i1 < l1)
            {
                k1 = i1;
            }
            s1.getChars(j1, j1 + k1, ac, 0);
            a(ac, 0, k1);
            j1 += k1;
        }

    }

    public final void close()
    {
        super.close();
        if (n != null && a(aif.a.b))
        {
            do
            {
                aiv aiv1 = h();
                if (aiv1.a())
                {
                    c();
                    continue;
                }
                if (!aiv1.c())
                {
                    break;
                }
                e();
            } while (true);
        }
        l();
        if (j == null) goto _L2; else goto _L1
_L1:
        if (!i.c() && !a(aif.a.a)) goto _L4; else goto _L3
_L3:
        j.close();
_L2:
        i();
        return;
_L4:
        if (a(aif.a.f))
        {
            j.flush();
        }
        if (true) goto _L2; else goto _L5
_L5:
    }

    public final void d()
    {
        d("start an object");
        e = e.h();
        if (a != null)
        {
            a.b(this);
            return;
        }
        if (o >= p)
        {
            l();
        }
        byte abyte0[] = n;
        int i1 = o;
        o = i1 + 1;
        abyte0[i1] = 123;
    }

    protected final void d(String s1)
    {
        int i1;
        i1 = e.j();
        if (i1 == 5)
        {
            e((new StringBuilder("Can not ")).append(s1).append(", expecting field name").toString());
        }
        if (a != null) goto _L2; else goto _L1
_L1:
        i1;
        JVM INSTR tableswitch 1 3: default 72
    //                   1 73
    //                   2 112
    //                   3 118;
           goto _L3 _L4 _L5 _L6
_L3:
        return;
_L4:
        byte byte0 = 44;
_L7:
        if (o >= p)
        {
            l();
        }
        n[o] = byte0;
        o = o + 1;
        return;
_L5:
        byte0 = 58;
        continue; /* Loop/switch isn't completed */
_L6:
        byte0 = 32;
        if (true) goto _L7; else goto _L2
_L2:
        switch (i1)
        {
        default:
            j();
            return;

        case 1: // '\001'
            a.f(this);
            return;

        case 2: // '\002'
            a.d(this);
            return;

        case 3: // '\003'
            a.a(this);
            return;

        case 0: // '\0'
            break;
        }
        if (e.a())
        {
            a.g(this);
            return;
        }
        if (e.c())
        {
            a.h(this);
            return;
        }
        if (true) goto _L3; else goto _L8
_L8:
    }

    public final void e()
    {
        if (!e.c())
        {
            e((new StringBuilder("Current context not an object but ")).append(e.d()).toString());
        }
        if (a != null)
        {
            a.a(this, e.e());
        } else
        {
            if (o >= p)
            {
                l();
            }
            byte abyte0[] = n;
            int i1 = o;
            o = i1 + 1;
            abyte0[i1] = 125;
        }
        e = e.i();
    }

    public final void f()
    {
        d("write null value");
        k();
    }

    public final void g()
    {
        l();
        if (j != null && a(aif.a.f))
        {
            j.flush();
        }
    }

    protected final void i()
    {
        char ac[] = n;
        if (ac != null && t)
        {
            n = null;
            i.b(ac);
        }
        ac = r;
        if (ac != null)
        {
            r = null;
            i.b(ac);
        }
    }

}
