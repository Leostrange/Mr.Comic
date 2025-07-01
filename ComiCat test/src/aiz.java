// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import java.io.Writer;
import java.math.BigDecimal;
import java.math.BigInteger;

public final class aiz extends air
{

    protected static final char g[] = ajt.g();
    protected static final int h[] = ajt.f();
    protected final ajc i;
    protected final Writer j;
    protected int k[];
    protected int l;
    protected ajb m;
    protected aio n;
    protected char o[];
    protected int p;
    protected int q;
    protected int r;
    protected char s[];

    public aiz(ajc ajc1, int i1, aim aim, Writer writer)
    {
        super(i1, aim);
        k = h;
        p = 0;
        q = 0;
        i = ajc1;
        j = writer;
        o = ajc1.h();
        r = o.length;
        if (a(aif.a.g))
        {
            l = 127;
        }
    }

    private final int a(char ac[], int i1, int j1, char c1, int k1)
    {
        if (k1 >= 0)
        {
            if (i1 > 1 && i1 < j1)
            {
                i1 -= 2;
                ac[i1] = '\\';
                ac[i1 + 1] = (char)k1;
                return i1;
            }
            char ac1[] = s;
            ac = ac1;
            if (ac1 == null)
            {
                ac = l();
            }
            ac[1] = (char)k1;
            j.write(ac, 0, 2);
            return i1;
        }
        if (k1 != -2)
        {
            if (i1 > 5 && i1 < j1)
            {
                i1 -= 6;
                j1 = i1 + 1;
                ac[i1] = '\\';
                i1 = j1 + 1;
                ac[j1] = 'u';
                if (c1 > '\377')
                {
                    j1 = c1 >> 8 & 0xff;
                    k1 = i1 + 1;
                    ac[i1] = g[j1 >> 4];
                    i1 = k1 + 1;
                    ac[k1] = g[j1 & 0xf];
                    c1 &= '\377';
                } else
                {
                    j1 = i1 + 1;
                    ac[i1] = '0';
                    i1 = j1 + 1;
                    ac[j1] = '0';
                }
                j1 = i1 + 1;
                ac[i1] = g[c1 >> 4];
                ac[j1] = g[c1 & 0xf];
                return j1 - 5;
            }
            char ac2[] = s;
            ac = ac2;
            if (ac2 == null)
            {
                ac = l();
            }
            p = q;
            if (c1 > '\377')
            {
                j1 = c1 >> 8 & 0xff;
                c1 &= '\377';
                ac[10] = g[j1 >> 4];
                ac[11] = g[j1 & 0xf];
                ac[12] = g[c1 >> 4];
                ac[13] = g[c1 & 0xf];
                j.write(ac, 8, 6);
                return i1;
            } else
            {
                ac[6] = g[c1 >> 4];
                ac[7] = g[c1 & 0xf];
                j.write(ac, 2, 6);
                return i1;
            }
        }
        String s1;
        if (n == null)
        {
            s1 = m.b().a();
        } else
        {
            s1 = n.a();
            n = null;
        }
        c1 = s1.length();
        if (i1 >= c1 && i1 < j1)
        {
            i1 -= c1;
            s1.getChars(0, c1, ac, i1);
            return i1;
        } else
        {
            j.write(s1);
            return i1;
        }
    }

    private final void a(char c1, int i1)
    {
        if (i1 >= 0)
        {
            if (q >= 2)
            {
                c1 = q - 2;
                p = c1;
                o[c1] = '\\';
                o[c1 + 1] = (char)i1;
                return;
            }
            char ac3[] = s;
            char ac[] = ac3;
            if (ac3 == null)
            {
                ac = l();
            }
            p = q;
            ac[1] = (char)i1;
            j.write(ac, 0, 2);
            return;
        }
        if (i1 != -2)
        {
            if (q >= 6)
            {
                char ac1[] = o;
                i1 = q - 6;
                p = i1;
                ac1[i1] = '\\';
                i1++;
                ac1[i1] = 'u';
                if (c1 > '\377')
                {
                    int j1 = c1 >> 8 & 0xff;
                    i1++;
                    ac1[i1] = g[j1 >> 4];
                    i1++;
                    ac1[i1] = g[j1 & 0xf];
                    c1 &= '\377';
                } else
                {
                    i1++;
                    ac1[i1] = '0';
                    i1++;
                    ac1[i1] = '0';
                }
                i1++;
                ac1[i1] = g[c1 >> 4];
                ac1[i1 + 1] = g[c1 & 0xf];
                return;
            }
            char ac4[] = s;
            char ac2[] = ac4;
            if (ac4 == null)
            {
                ac2 = l();
            }
            p = q;
            if (c1 > '\377')
            {
                i1 = c1 >> 8 & 0xff;
                c1 &= '\377';
                ac2[10] = g[i1 >> 4];
                ac2[11] = g[i1 & 0xf];
                ac2[12] = g[c1 >> 4];
                ac2[13] = g[c1 & 0xf];
                j.write(ac2, 8, 6);
                return;
            } else
            {
                ac2[6] = g[c1 >> 4];
                ac2[7] = g[c1 & 0xf];
                j.write(ac2, 2, 6);
                return;
            }
        }
        String s1;
        if (n == null)
        {
            s1 = m.b().a();
        } else
        {
            s1 = n.a();
            n = null;
        }
        c1 = s1.length();
        if (q >= c1)
        {
            i1 = q - c1;
            p = i1;
            s1.getChars(0, c1, o, i1);
            return;
        } else
        {
            p = q;
            j.write(s1);
            return;
        }
    }

    private final void a(Object obj)
    {
        if (q >= r)
        {
            m();
        }
        char ac[] = o;
        int i1 = q;
        q = i1 + 1;
        ac[i1] = '"';
        c(obj.toString());
        if (q >= r)
        {
            m();
        }
        obj = o;
        i1 = q;
        q = i1 + 1;
        obj[i1] = '"';
    }

    private void f(String s1)
    {
        int i1 = s1.length();
        if (i1 <= r) goto _L2; else goto _L1
_L1:
        int k1;
        int i5;
        m();
        i5 = s1.length();
        k1 = 0;
_L20:
        char c1;
        ajb ajb2;
        int j1;
        int i2;
        int j2;
        int l4;
        i1 = r;
        i2 = i1;
        if (k1 + i1 > i5)
        {
            i2 = i5 - k1;
        }
        s1.getChars(k1, k1 + i2, o, 0);
        if (m == null)
        {
            break MISSING_BLOCK_LABEL_293;
        }
        int ai[] = k;
        int j3;
        int j4;
        int j5;
        if (l <= 0)
        {
            j2 = 65535;
        } else
        {
            j2 = l;
        }
        j5 = Math.min(ai.length, j2 + 1);
        ajb2 = m;
        j1 = 0;
        j3 = 0;
        i1 = 0;
_L7:
        if (j1 >= i2)
        {
            break MISSING_BLOCK_LABEL_594;
        }
        l4 = i1;
_L10:
        c1 = o[j1];
        if (c1 >= j5) goto _L4; else goto _L3
_L3:
        i1 = ai[c1];
        if (i1 == 0) goto _L6; else goto _L5
_L5:
        j4 = j1 - j3;
        if (j4 > 0)
        {
            j.write(o, j3, j4);
            if (j1 >= i2)
            {
                break MISSING_BLOCK_LABEL_594;
            }
        }
        j1++;
        j3 = a(o, j1, i2, c1, i1);
          goto _L7
_L4:
label0:
        {
            if (c1 <= j2)
            {
                break label0;
            }
            i1 = -1;
        }
          goto _L5
        aio aio2;
        aio2 = ajb2.b();
        n = aio2;
        i1 = l4;
        if (aio2 == null) goto _L6; else goto _L8
_L8:
        i1 = -2;
          goto _L5
_L6:
        int k4;
        k4 = j1 + 1;
        l4 = i1;
        j1 = k4;
        if (k4 < i2) goto _L10; else goto _L9
_L9:
        j1 = k4;
          goto _L5
        int ai1[];
        int k5;
        if (l == 0)
        {
            break MISSING_BLOCK_LABEL_470;
        }
        l4 = l;
        ai1 = k;
        k5 = Math.min(ai1.length, l4 + 1);
        j1 = 0;
        j2 = 0;
        i1 = 0;
_L15:
        if (j1 >= i2)
        {
            break MISSING_BLOCK_LABEL_594;
        }
        k4 = i1;
_L18:
        c1 = o[j1];
        if (c1 >= k5) goto _L12; else goto _L11
_L11:
        i1 = ai1[c1];
        if (i1 == 0) goto _L14; else goto _L13
_L13:
        int k3 = j1 - j2;
        if (k3 > 0)
        {
            j.write(o, j2, k3);
            if (j1 >= i2)
            {
                break MISSING_BLOCK_LABEL_594;
            }
        }
        j1++;
        j2 = a(o, j1, i2, c1, i1);
          goto _L15
_L12:
        i1 = k4;
        if (c1 <= l4) goto _L14; else goto _L16
_L16:
        i1 = -1;
          goto _L13
_L14:
        int l3;
        l3 = j1 + 1;
        k4 = i1;
        j1 = l3;
        if (l3 < i2) goto _L18; else goto _L17
_L17:
        j1 = l3;
          goto _L13
        int ai2[] = k;
        int i4 = ai2.length;
        j1 = 0;
        for (i1 = 0; i1 < i2;)
        {
            char c2;
            int k2;
            do
            {
                c2 = o[i1];
                if (c2 < i4)
                {
                    k2 = i1;
                    if (ai2[c2] != 0)
                    {
                        break;
                    }
                }
                k2 = i1 + 1;
                i1 = k2;
            } while (k2 < i2);
            i1 = k2 - j1;
            if (i1 > 0)
            {
                j.write(o, j1, i1);
                if (k2 >= i2)
                {
                    break;
                }
            }
            i1 = k2 + 1;
            j1 = a(o, i1, i2, c2, ai2[c2]);
        }

        k1 += i2;
        if (k1 < i5) goto _L20; else goto _L19
_L19:
        return;
_L2:
        ajb ajb1;
        if (q + i1 > r)
        {
            m();
        }
        s1.getChars(0, i1, o, q);
        if (m == null)
        {
            break MISSING_BLOCK_LABEL_845;
        }
        k1 = q + i1;
        s1 = k;
        int l2;
        if (l <= 0)
        {
            j1 = 65535;
        } else
        {
            j1 = l;
        }
        i2 = Math.min(s1.length, j1 + 1);
        ajb1 = m;
_L22:
        if (q >= k1) goto _L19; else goto _L21
_L21:
label1:
        {
            char c3 = o[q];
            if (c3 < i2)
            {
                i1 = s1[c3];
                if (i1 == 0)
                {
                    break label1;
                }
            } else
            if (c3 > j1)
            {
                i1 = -1;
            } else
            {
                aio aio1 = ajb1.b();
                n = aio1;
                if (aio1 == null)
                {
                    break label1;
                }
                i1 = -2;
            }
            l2 = q - p;
            if (l2 > 0)
            {
                j.write(o, p, l2);
            }
            q = q + 1;
            a(c3, i1);
        }
          goto _L22
        i1 = q + 1;
        q = i1;
        if (i1 < k1) goto _L21; else goto _L23
_L23:
        return;
        if (l == 0)
        {
            break MISSING_BLOCK_LABEL_1005;
        }
        j1 = l;
        k1 = q + i1;
        s1 = k;
        i2 = Math.min(s1.length, j1 + 1);
_L25:
        if (q >= k1) goto _L19; else goto _L24
_L24:
label2:
        {
            char c4 = o[q];
            int i3;
            if (c4 < i2)
            {
                i1 = s1[c4];
                if (i1 == 0)
                {
                    break label2;
                }
            } else
            {
                if (c4 <= j1)
                {
                    break label2;
                }
                i1 = -1;
            }
            i3 = q - p;
            if (i3 > 0)
            {
                j.write(o, p, i3);
            }
            q = q + 1;
            a(c4, i1);
        }
          goto _L25
        i1 = q + 1;
        q = i1;
        if (i1 < k1) goto _L24; else goto _L26
_L26:
        return;
        i1 += q;
        s1 = k;
        j1 = s1.length;
_L30:
        if (q >= i1) goto _L19; else goto _L27
_L27:
        k1 = o[q];
        if (k1 < j1 && s1[k1] != 0) goto _L29; else goto _L28
_L28:
        k1 = q + 1;
        q = k1;
        if (k1 >= i1) goto _L19; else goto _L27
_L29:
        int l1 = q - p;
        if (l1 > 0)
        {
            j.write(o, p, l1);
        }
        char ac[] = o;
        l1 = q;
        q = l1 + 1;
        char c5 = ac[l1];
        a(c5, s1[c5]);
          goto _L30
    }

    private final void k()
    {
        if (q + 4 >= r)
        {
            m();
        }
        int i1 = q;
        char ac[] = o;
        ac[i1] = 'n';
        i1++;
        ac[i1] = 'u';
        i1++;
        ac[i1] = 'l';
        i1++;
        ac[i1] = 'l';
        q = i1 + 1;
    }

    private char[] l()
    {
        char ac[] = new char[14];
        ac[0] = '\\';
        ac[2] = '\\';
        ac[3] = 'u';
        ac[4] = '0';
        ac[5] = '0';
        ac[8] = '\\';
        ac[9] = 'u';
        s = ac;
        return ac;
    }

    private void m()
    {
        int i1 = q - p;
        if (i1 > 0)
        {
            int j1 = p;
            p = 0;
            q = 0;
            j.write(o, j1, i1);
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
        if (q >= r)
        {
            m();
        }
        char ac[] = o;
        int i1 = q;
        q = i1 + 1;
        ac[i1] = c1;
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
        if (d)
        {
            if (q + 13 >= r)
            {
                m();
            }
            char ac[] = o;
            int j1 = q;
            q = j1 + 1;
            ac[j1] = '"';
            q = ajg.a(i1, o, q);
            ac = o;
            i1 = q;
            q = i1 + 1;
            ac[i1] = '"';
            return;
        }
        if (q + 11 >= r)
        {
            m();
        }
        q = ajg.a(i1, o, q);
    }

    public final void a(long l1)
    {
        d("write number");
        if (d)
        {
            if (q + 23 >= r)
            {
                m();
            }
            char ac[] = o;
            int i1 = q;
            q = i1 + 1;
            ac[i1] = '"';
            q = ajg.a(l1, o, q);
            ac = o;
            i1 = q;
            q = i1 + 1;
            ac[i1] = '"';
            return;
        }
        if (q + 21 >= r)
        {
            m();
        }
        q = ajg.a(l1, o, q);
    }

    public final void a(String s1)
    {
        int i1 = 1;
        int j1 = e.a(s1);
        if (j1 == 4)
        {
            e("Can not write a field name, expecting a value");
        }
        if (j1 != 1)
        {
            i1 = 0;
        }
        if (a != null)
        {
            if (i1 != 0)
            {
                a.c(this);
            } else
            {
                a.h(this);
            }
            if (a(aif.a.c))
            {
                if (q >= r)
                {
                    m();
                }
                char ac[] = o;
                i1 = q;
                q = i1 + 1;
                ac[i1] = '"';
                f(s1);
                if (q >= r)
                {
                    m();
                }
                s1 = o;
                i1 = q;
                q = i1 + 1;
                s1[i1] = '"';
                return;
            } else
            {
                f(s1);
                return;
            }
        }
        if (q + 1 >= r)
        {
            m();
        }
        if (i1 != 0)
        {
            char ac1[] = o;
            i1 = q;
            q = i1 + 1;
            ac1[i1] = ',';
        }
        if (!a(aif.a.c))
        {
            f(s1);
            return;
        }
        char ac2[] = o;
        i1 = q;
        q = i1 + 1;
        ac2[i1] = '"';
        f(s1);
        if (q >= r)
        {
            m();
        }
        s1 = o;
        i1 = q;
        q = i1 + 1;
        s1[i1] = '"';
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
        if (q + 5 >= r)
        {
            m();
        }
        int i1 = q;
        char ac[] = o;
        if (flag)
        {
            ac[i1] = 't';
            i1++;
            ac[i1] = 'r';
            i1++;
            ac[i1] = 'u';
            i1++;
            ac[i1] = 'e';
        } else
        {
            ac[i1] = 'f';
            i1++;
            ac[i1] = 'a';
            i1++;
            ac[i1] = 'l';
            i1++;
            ac[i1] = 's';
            i1++;
            ac[i1] = 'e';
        }
        q = i1 + 1;
    }

    public final void a(char ac[], int i1, int j1)
    {
        if (j1 < 32)
        {
            if (j1 > r - q)
            {
                m();
            }
            System.arraycopy(ac, 0, o, q, j1);
            q = q + j1;
            return;
        } else
        {
            m();
            j.write(ac, 0, j1);
            return;
        }
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
        if (q >= r)
        {
            m();
        }
        char ac[] = o;
        int i1 = q;
        q = i1 + 1;
        ac[i1] = '[';
    }

    public final void b(String s1)
    {
        d("write text value");
        if (s1 == null)
        {
            k();
            return;
        }
        if (q >= r)
        {
            m();
        }
        char ac[] = o;
        int i1 = q;
        q = i1 + 1;
        ac[i1] = '"';
        f(s1);
        if (q >= r)
        {
            m();
        }
        s1 = o;
        i1 = q;
        q = i1 + 1;
        s1[i1] = '"';
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
            if (q >= r)
            {
                m();
            }
            char ac[] = o;
            int i1 = q;
            q = i1 + 1;
            ac[i1] = ']';
        }
        e = e.i();
    }

    public final void c(String s1)
    {
        int k1 = s1.length();
        int j1 = r - q;
        int i1 = j1;
        if (j1 == 0)
        {
            m();
            i1 = r - q;
        }
        if (i1 >= k1)
        {
            s1.getChars(0, k1, o, q);
            q = q + k1;
            return;
        }
        j1 = r - q;
        s1.getChars(0, j1, o, q);
        q = q + j1;
        m();
        int l1;
        for (i1 = s1.length() - j1; i1 > r; i1 -= l1)
        {
            l1 = r;
            s1.getChars(j1, j1 + l1, o, 0);
            p = 0;
            q = l1;
            m();
            j1 += l1;
        }

        s1.getChars(j1, j1 + i1, o, 0);
        p = 0;
        q = i1;
    }

    public final void close()
    {
        super.close();
        if (o != null && a(aif.a.b))
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
        m();
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
        if (q >= r)
        {
            m();
        }
        char ac[] = o;
        int i1 = q;
        q = i1 + 1;
        ac[i1] = '{';
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
        char c1 = ',';
_L7:
        if (q >= r)
        {
            m();
        }
        o[q] = c1;
        q = q + 1;
        return;
_L5:
        c1 = ':';
        continue; /* Loop/switch isn't completed */
_L6:
        c1 = ' ';
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
            if (q >= r)
            {
                m();
            }
            char ac[] = o;
            int i1 = q;
            q = i1 + 1;
            ac[i1] = '}';
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
        m();
        if (j != null && a(aif.a.f))
        {
            j.flush();
        }
    }

    protected final void i()
    {
        char ac[] = o;
        if (ac != null)
        {
            o = null;
            i.b(ac);
        }
    }

}
