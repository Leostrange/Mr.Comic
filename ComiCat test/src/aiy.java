// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import java.io.IOException;
import java.io.InputStream;

public final class aiy extends ais
{

    private static final int S[] = ajt.b();
    private static final int T[] = ajt.a();
    protected aim L;
    protected final ajk M;
    protected int N[];
    protected boolean O;
    protected InputStream P;
    protected byte Q[];
    protected boolean R;
    private int U;

    public aiy(ajc ajc1, int i1, InputStream inputstream, aim aim, ajk ajk1, byte abyte0[], int j1, 
            int k1, boolean flag)
    {
        super(ajc1, i1);
        N = new int[16];
        O = false;
        P = inputstream;
        L = aim;
        M = ajk1;
        Q = abyte0;
        e = j1;
        f = k1;
        R = flag;
        if (!aii.a.j.a(i1))
        {
            x();
        }
    }

    private final void A()
    {
        if (e >= f)
        {
            o();
        }
        byte abyte0[] = Q;
        int i1 = e;
        e = i1 + 1;
        i1 = abyte0[i1];
        if ((i1 & 0xc0) != 128)
        {
            b(i1 & 0xff, e);
        }
    }

    private final void B()
    {
        if (e >= f)
        {
            o();
        }
        byte abyte0[] = Q;
        int i1 = e;
        e = i1 + 1;
        i1 = abyte0[i1];
        if ((i1 & 0xc0) != 128)
        {
            b(i1 & 0xff, e);
        }
        if (e >= f)
        {
            o();
        }
        abyte0 = Q;
        i1 = e;
        e = i1 + 1;
        i1 = abyte0[i1];
        if ((i1 & 0xc0) != 128)
        {
            b(i1 & 0xff, e);
        }
    }

    private final void C()
    {
        if (e >= f)
        {
            o();
        }
        byte abyte0[] = Q;
        int i1 = e;
        e = i1 + 1;
        i1 = abyte0[i1];
        if ((i1 & 0xc0) != 128)
        {
            b(i1 & 0xff, e);
        }
        if (e >= f)
        {
            o();
        }
        abyte0 = Q;
        i1 = e;
        e = i1 + 1;
        i1 = abyte0[i1];
        if ((i1 & 0xc0) != 128)
        {
            b(i1 & 0xff, e);
        }
        if (e >= f)
        {
            o();
        }
        abyte0 = Q;
        i1 = e;
        e = i1 + 1;
        i1 = abyte0[i1];
        if ((i1 & 0xc0) != 128)
        {
            b(i1 & 0xff, e);
        }
    }

    private void D()
    {
        if ((e < f || p()) && Q[e] == 10)
        {
            e = e + 1;
        }
        h = h + 1;
        i = e;
    }

    private void E()
    {
        h = h + 1;
        i = e;
    }

    private int F()
    {
        if (e >= f)
        {
            o();
        }
        byte abyte0[] = Q;
        int i1 = e;
        e = i1 + 1;
        return abyte0[i1] & 0xff;
    }

    private ail a(int i1, boolean flag)
    {
        double d1;
        int j1;
        d1 = (-1.0D / 0.0D);
        j1 = i1;
        if (i1 != 73) goto _L2; else goto _L1
_L1:
        if (e >= f && !p())
        {
            w();
        }
        byte abyte0[] = Q;
        i1 = e;
        e = i1 + 1;
        i1 = abyte0[i1];
        if (i1 != 78) goto _L4; else goto _L3
_L3:
        String s1;
        if (flag)
        {
            s1 = "-INF";
        } else
        {
            s1 = "+INF";
        }
        a(s1, 3);
        if (a(aii.a.h))
        {
            if (!flag)
            {
                d1 = (1.0D / 0.0D);
            }
            return a(s1, d1);
        }
        d((new StringBuilder("Non-standard token '")).append(s1).append("': enable JsonParser.Feature.ALLOW_NON_NUMERIC_NUMBERS to allow").toString());
        j1 = i1;
_L2:
        a(j1, "expected digit (0-9) to follow minus sign, for valid numeric value");
        return null;
_L4:
        j1 = i1;
        if (i1 == 110)
        {
            String s2;
            if (flag)
            {
                s2 = "-Infinity";
            } else
            {
                s2 = "+Infinity";
            }
            a(s2, 3);
            if (a(aii.a.h))
            {
                if (!flag)
                {
                    d1 = (1.0D / 0.0D);
                }
                return a(s2, d1);
            }
            d((new StringBuilder("Non-standard token '")).append(s2).append("': enable JsonParser.Feature.ALLOW_NON_NUMERIC_NUMBERS to allow").toString());
            j1 = i1;
        }
        if (true) goto _L2; else goto _L5
_L5:
    }

    private final ail a(char ac[], int i1, int j1, boolean flag, int k1)
    {
        int i2;
        int l2;
        boolean flag1 = false;
        i2 = 0;
        l2 = 0;
        if (j1 != 46)
        {
            break MISSING_BLOCK_LABEL_580;
        }
        int j2 = i1 + 1;
        ac[i1] = (char)j1;
        i2 = j1;
        i1 = j2;
        j1 = ((flag1) ? 1 : 0);
_L12:
        if (e < f || p()) goto _L2; else goto _L1
_L1:
        int l1 = 1;
_L10:
        char ac1[];
        int k2;
        if (j1 == 0)
        {
            a(i2, "Decimal point not followed by a digit");
        }
        k2 = j1;
        j1 = i2;
        ac1 = ac;
_L15:
        if (j1 != 101 && j1 != 69) goto _L4; else goto _L3
_L3:
        int i3;
        int j3;
        i2 = i1;
        ac = ac1;
        if (i1 >= ac1.length)
        {
            ac = o.j();
            i2 = 0;
        }
        i1 = i2 + 1;
        ac[i2] = (char)j1;
        if (e >= f)
        {
            o();
        }
        ac1 = Q;
        j1 = e;
        e = j1 + 1;
        i2 = ac1[j1] & 0xff;
        if (i2 == 45 || i2 == 43)
        {
            if (i1 >= ac.length)
            {
                ac = o.j();
                i1 = 0;
            }
            ac[i1] = (char)i2;
            if (e >= f)
            {
                o();
            }
            ac1 = Q;
            j1 = e;
            e = j1 + 1;
            i2 = ac1[j1] & 0xff;
            i1++;
            j1 = 0;
        } else
        {
            j1 = 0;
        }
        if (i2 > 57 || i2 < 48) goto _L6; else goto _L5
_L5:
        j1++;
        l2 = i1;
        ac1 = ac;
        if (i1 >= ac.length)
        {
            ac1 = o.j();
            l2 = 0;
        }
        i1 = l2 + 1;
        ac1[l2] = (char)i2;
        if (e < f || p()) goto _L8; else goto _L7
_L7:
        l2 = j1;
        j1 = 1;
        l1 = i1;
        i1 = l2;
_L13:
        l2 = i1;
        i3 = j1;
        j3 = l1;
        if (i1 == 0)
        {
            a(i2, "Exponent indicator not followed by a digit");
            j3 = l1;
            i3 = j1;
            l2 = i1;
        }
_L14:
        if (i3 == 0)
        {
            e = e - 1;
        }
        o.i = j3;
        return b(flag, k1, k2, l2);
_L2:
        ac1 = Q;
        l1 = e;
        e = l1 + 1;
        k2 = ac1[l1] & 0xff;
        l1 = l2;
        i2 = k2;
        if (k2 < 48) goto _L10; else goto _L9
_L9:
        l1 = l2;
        i2 = k2;
        if (k2 > 57) goto _L10; else goto _L11
_L11:
        j1++;
        if (i1 >= ac.length)
        {
            ac = o.j();
            i1 = 0;
        }
        l1 = i1 + 1;
        ac[i1] = (char)k2;
        i1 = l1;
        i2 = k2;
          goto _L12
_L8:
        ac = Q;
        i2 = e;
        e = i2 + 1;
        i2 = ac[i2] & 0xff;
        ac = ac1;
        break MISSING_BLOCK_LABEL_251;
_L6:
        l2 = i1;
        i1 = j1;
        j1 = l1;
        l1 = l2;
          goto _L13
_L4:
        l2 = 0;
        i3 = l1;
        j3 = i1;
          goto _L14
        k2 = 0;
        ac1 = ac;
        l1 = i2;
          goto _L15
    }

    private final ajm a(int i1, int j1)
    {
        ajm ajm1 = M.a(i1);
        if (ajm1 != null)
        {
            return ajm1;
        } else
        {
            N[0] = i1;
            return a(N, 1, j1);
        }
    }

    private final ajm a(int i1, int j1, int k1)
    {
        return a(N, 0, i1, j1, k1);
    }

    private final ajm a(int i1, int j1, int k1, int l1)
    {
        N[0] = i1;
        return a(N, 1, j1, k1, l1);
    }

    private final ajm a(int ai[], int i1, int j1)
    {
        char ac[];
        int k1;
        int l1;
        int i2;
        int j2;
        int k2;
        int l2;
        int i3;
        int j3 = ((i1 << 2) - 4) + j1;
        char ac1[];
        if (j1 < 4)
        {
            i3 = ai[i1 - 1];
            ai[i1 - 1] = i3 << (4 - j1 << 3);
        } else
        {
            i3 = 0;
        }
        ac = o.i();
        j2 = 0;
        k1 = 0;
        if (k1 >= j3)
        {
            break; /* Loop/switch isn't completed */
        }
        l1 = ai[k1 >> 2] >> (3 - (k1 & 3) << 3) & 0xff;
        i2 = k1 + 1;
        l2 = l1;
        k2 = i2;
        if (l1 <= 127)
        {
            break MISSING_BLOCK_LABEL_558;
        }
        if ((l1 & 0xe0) == 192)
        {
            k1 = l1 & 0x1f;
            l1 = 1;
        } else
        if ((l1 & 0xf0) == 224)
        {
            k1 = l1 & 0xf;
            l1 = 2;
        } else
        if ((l1 & 0xf8) == 240)
        {
            k1 = l1 & 7;
            l1 = 3;
        } else
        {
            m(l1);
            k1 = 1;
            l1 = 1;
        }
        if (i2 + l1 > j3)
        {
            c(" in field name");
        }
        l2 = ai[i2 >> 2] >> (3 - (i2 & 3) << 3);
        k2 = i2 + 1;
        if ((l2 & 0xc0) != 128)
        {
            n(l2);
        }
        l2 = k1 << 6 | l2 & 0x3f;
        i2 = l2;
        k1 = k2;
        if (l1 > 1)
        {
            k1 = ai[k2 >> 2] >> (3 - (k2 & 3) << 3);
            k2++;
            if ((k1 & 0xc0) != 128)
            {
                n(k1);
            }
            l2 = l2 << 6 | k1 & 0x3f;
            i2 = l2;
            k1 = k2;
            if (l1 > 2)
            {
                i2 = ai[k2 >> 2] >> (3 - (k2 & 3) << 3);
                k1 = k2 + 1;
                if ((i2 & 0xc0) != 128)
                {
                    n(i2 & 0xff);
                }
                i2 = l2 << 6 | i2 & 0x3f;
            }
        }
        l2 = i2;
        k2 = k1;
        if (l1 <= 2)
        {
            break MISSING_BLOCK_LABEL_558;
        }
        l1 = i2 - 0x10000;
        ac1 = ac;
        if (j2 >= ac.length)
        {
            ac1 = o.k();
        }
        ac1[j2] = (char)(55296 + (l1 >> 10));
        i2 = j2 + 1;
        ac = ac1;
        l1 = l1 & 0x3ff | 0xdc00;
_L4:
        ac1 = ac;
        if (i2 >= ac.length)
        {
            ac1 = o.k();
        }
        j2 = i2 + 1;
        ac1[i2] = (char)l1;
        ac = ac1;
        if (true) goto _L2; else goto _L1
_L2:
        break MISSING_BLOCK_LABEL_49;
_L1:
        String s1 = new String(ac, 0, j2);
        if (j1 < 4)
        {
            ai[i1 - 1] = i3;
        }
        return M.a(s1, ai, i1);
        l1 = l2;
        k1 = k2;
        i2 = j2;
        if (true) goto _L4; else goto _L3
_L3:
    }

    private final ajm a(int ai[], int i1, int j1, int k1)
    {
        int ai1[] = ai;
        if (i1 >= ai.length)
        {
            ai1 = a(ai, ai.length);
            N = ai1;
        }
        int l1 = i1 + 1;
        ai1[i1] = j1;
        ajm ajm1 = M.a(ai1, l1);
        ai = ajm1;
        if (ajm1 == null)
        {
            ai = a(ai1, l1, k1);
        }
        return ai;
    }

    private ajm a(int ai[], int i1, int j1, int k1, int l1)
    {
        int ai4[] = T;
_L2:
        int i2;
        i2 = k1;
        if (ai4[k1] == 0)
        {
            break MISSING_BLOCK_LABEL_483;
        }
        if (k1 == 34)
        {
            break; /* Loop/switch isn't completed */
        }
        byte abyte0[];
        int j2;
        if (k1 != 92)
        {
            c(k1, "name");
        } else
        {
            k1 = u();
        }
        i2 = k1;
        if (k1 <= 127)
        {
            break MISSING_BLOCK_LABEL_483;
        }
        if (l1 >= 4)
        {
            int ai1[] = ai;
            if (i1 >= ai.length)
            {
                ai1 = a(ai, ai.length);
                N = ai1;
            }
            i2 = i1 + 1;
            ai1[i1] = j1;
            l1 = 0;
            j1 = 0;
            ai = ai1;
            i1 = i2;
        }
        if (k1 < 2048)
        {
            i2 = k1 >> 6 | 0xc0 | j1 << 8;
            l1++;
            j1 = i1;
            i1 = i2;
        } else
        {
            i2 = k1 >> 12 | 0xe0 | j1 << 8;
            j1 = l1 + 1;
            int ai3[];
            ajm ajm1;
            if (j1 >= 4)
            {
                int ai2[] = ai;
                if (i1 >= ai.length)
                {
                    ai2 = a(ai, ai.length);
                    N = ai2;
                }
                ai2[i1] = i2;
                i1++;
                ai = ai2;
                j1 = 0;
                l1 = 0;
            } else
            {
                l1 = i2;
            }
            i2 = l1 << 8 | (k1 >> 6 & 0x3f | 0x80);
            l1 = j1 + 1;
            j1 = i1;
            i1 = i2;
        }
        j2 = k1 & 0x3f | 0x80;
        i2 = l1;
        k1 = j1;
        l1 = i1;
        j1 = j2;
        i1 = k1;
        k1 = l1;
_L3:
        if (i2 < 4)
        {
            l1 = i2 + 1;
            j1 |= k1 << 8;
        } else
        {
            ai3 = ai;
            if (i1 >= ai.length)
            {
                ai3 = a(ai, ai.length);
                N = ai3;
            }
            ai3[i1] = k1;
            l1 = 1;
            i1++;
            ai = ai3;
        }
        if (e >= f && !p())
        {
            c(" in field name");
        }
        abyte0 = Q;
        k1 = e;
        e = k1 + 1;
        k1 = abyte0[k1] & 0xff;
        if (true) goto _L2; else goto _L1
_L1:
        ai3 = ai;
        k1 = i1;
        if (l1 > 0)
        {
            ai3 = ai;
            if (i1 >= ai.length)
            {
                ai3 = a(ai, ai.length);
                N = ai3;
            }
            ai3[i1] = j1;
            k1 = i1 + 1;
        }
        ajm1 = M.a(ai3, k1);
        ai = ajm1;
        if (ajm1 == null)
        {
            ai = a(ai3, k1, l1);
        }
        return ai;
        k1 = j1;
        j1 = i2;
        i2 = l1;
          goto _L3
    }

    private void a(String s1, int i1)
    {
        int k1 = s1.length();
        int j1;
        do
        {
            if (e >= f && !p())
            {
                c(" in a value");
            }
            if (Q[e] != s1.charAt(i1))
            {
                a(s1.substring(0, i1), "'null', 'true', 'false' or NaN");
            }
            e = e + 1;
            j1 = i1 + 1;
            i1 = j1;
        } while (j1 < k1);
        if (e < f || p())
        {
            if ((i1 = Q[e] & 0xff) >= 48 && i1 != 93 && i1 != 125 && Character.isJavaIdentifierPart((char)g(i1)))
            {
                e = e + 1;
                a(s1.substring(0, j1), "'null', 'true', 'false' or NaN");
                return;
            }
        }
    }

    private void a(String s1, String s2)
    {
        s1 = new StringBuilder(s1);
        do
        {
            if (e >= f && !p())
            {
                break;
            }
            byte abyte0[] = Q;
            int i1 = e;
            e = i1 + 1;
            char c1 = (char)g(abyte0[i1]);
            if (!Character.isJavaIdentifierPart(c1))
            {
                break;
            }
            s1.append(c1);
        } while (true);
        d((new StringBuilder("Unrecognized token '")).append(s1.toString()).append("': was expecting ").append(s2).toString());
    }

    private static int[] a(int ai[], int i1)
    {
        if (ai == null)
        {
            return new int[i1];
        } else
        {
            int j1 = ai.length;
            int ai1[] = new int[j1 + i1];
            System.arraycopy(ai, 0, ai1, 0, j1);
            return ai1;
        }
    }

    private final ajm b(int i1, int j1, int k1)
    {
        ajm ajm1 = M.a(i1, j1);
        if (ajm1 != null)
        {
            return ajm1;
        } else
        {
            N[0] = i1;
            N[1] = j1;
            return a(N, 2, k1);
        }
    }

    private void b(int i1, int j1)
    {
        e = j1;
        n(i1);
    }

    private ail c(int i1)
    {
        int l1 = 1;
        char ac[] = o.i();
        int j1;
        boolean flag;
        if (i1 == 45)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        byte abyte1[];
        int k1;
        int i2;
        int j2;
        if (flag)
        {
            ac[0] = '-';
            if (e >= f)
            {
                o();
            }
            byte abyte0[] = Q;
            i1 = e;
            e = i1 + 1;
            j1 = abyte0[i1] & 0xff;
            if (j1 < 48 || j1 > 57)
            {
                return a(j1, true);
            }
            k1 = 1;
        } else
        {
            k1 = 0;
            j1 = i1;
        }
        i1 = j1;
        if (j1 != 48) goto _L2; else goto _L1
_L1:
        if (e < f || p()) goto _L4; else goto _L3
_L3:
        i1 = 48;
_L2:
        i2 = k1 + 1;
        ac[k1] = (char)i1;
        j2 = e + ac.length;
        k1 = j2;
        i1 = i2;
        j1 = l1;
        if (j2 > f)
        {
            k1 = f;
            j1 = l1;
            i1 = i2;
        }
_L6:
        if (e >= k1)
        {
            do
            {
                if (e >= f && !p())
                {
                    o.i = i1;
                    return a(flag, j1);
                }
                abyte1 = Q;
                k1 = e;
                e = k1 + 1;
                l1 = abyte1[k1] & 0xff;
                if (l1 > 57 || l1 < 48)
                {
                    if (l1 == 46 || l1 == 101 || l1 == 69)
                    {
                        return a(ac, i1, l1, flag, j1);
                    } else
                    {
                        e = e - 1;
                        o.i = i1;
                        return a(flag, j1);
                    }
                }
                if (i1 >= ac.length)
                {
                    ac = o.j();
                    i1 = 0;
                }
                k1 = i1 + 1;
                ac[i1] = (char)l1;
                j1++;
                i1 = k1;
            } while (true);
        }
        abyte1 = Q;
        l1 = e;
        e = l1 + 1;
        l1 = abyte1[l1] & 0xff;
        if (l1 < 48 || l1 > 57)
        {
            break; /* Loop/switch isn't completed */
        }
        j1++;
        ac[i1] = (char)l1;
        i1++;
        continue; /* Loop/switch isn't completed */
_L4:
        j1 = Q[e] & 0xff;
        if (j1 < 48 || j1 > 57)
        {
            i1 = 48;
            continue; /* Loop/switch isn't completed */
        }
        if (!a(aii.a.g))
        {
            b("Leading zeroes not allowed");
        }
        e = e + 1;
        i1 = j1;
        if (j1 != 48)
        {
            continue; /* Loop/switch isn't completed */
        }
        i1 = j1;
        do
        {
            if (e >= f && !p())
            {
                continue; /* Loop/switch isn't completed */
            }
            j1 = Q[e] & 0xff;
            if (j1 < 48 || j1 > 57)
            {
                i1 = 48;
                continue; /* Loop/switch isn't completed */
            }
            e = e + 1;
            i1 = j1;
        } while (j1 == 48);
        i1 = j1;
        continue; /* Loop/switch isn't completed */
        if (true) goto _L6; else goto _L5
_L5:
        if (l1 == 46 || l1 == 101 || l1 == 69)
        {
            return a(ac, i1, l1, flag, j1);
        }
        e = e - 1;
        o.i = i1;
        return a(flag, j1);
        if (true) goto _L2; else goto _L7
_L7:
    }

    private ajm d(int i1)
    {
        int ai[] = T;
        byte byte0 = 2;
        int j1 = i1;
        i1 = byte0;
        do
        {
            if (f - e < 4)
            {
                return a(N, i1, 0, j1, 0);
            }
            byte abyte0[] = Q;
            int k1 = e;
            e = k1 + 1;
            k1 = abyte0[k1] & 0xff;
            if (ai[k1] != 0)
            {
                if (k1 == 34)
                {
                    return a(N, i1, j1, 1);
                } else
                {
                    return a(N, i1, j1, k1, 1);
                }
            }
            j1 = j1 << 8 | k1;
            abyte0 = Q;
            k1 = e;
            e = k1 + 1;
            k1 = abyte0[k1] & 0xff;
            if (ai[k1] != 0)
            {
                if (k1 == 34)
                {
                    return a(N, i1, j1, 2);
                } else
                {
                    return a(N, i1, j1, k1, 2);
                }
            }
            j1 = j1 << 8 | k1;
            abyte0 = Q;
            k1 = e;
            e = k1 + 1;
            k1 = abyte0[k1] & 0xff;
            if (ai[k1] != 0)
            {
                if (k1 == 34)
                {
                    return a(N, i1, j1, 3);
                } else
                {
                    return a(N, i1, j1, k1, 3);
                }
            }
            k1 = j1 << 8 | k1;
            abyte0 = Q;
            j1 = e;
            e = j1 + 1;
            j1 = abyte0[j1] & 0xff;
            if (ai[j1] != 0)
            {
                if (j1 == 34)
                {
                    return a(N, i1, k1, 4);
                } else
                {
                    return a(N, i1, k1, j1, 4);
                }
            }
            if (i1 >= N.length)
            {
                N = a(N, i1);
            }
            N[i1] = k1;
            i1++;
        } while (true);
    }

    private ajm e(int i1)
    {
        int l1 = 0;
        if (i1 != 39 || !a(aii.a.d)) goto _L2; else goto _L1
_L1:
        int ai[];
        int ai5[];
        int j1;
        int k1;
        if (e >= f && !p())
        {
            c(": was expecting closing ''' for name");
        }
        ai = Q;
        i1 = e;
        e = i1 + 1;
        l1 = ai[i1] & 0xff;
        if (l1 == 39)
        {
            return ajn.b();
        }
        ai = N;
        ai5 = T;
        j1 = 0;
        k1 = 0;
        i1 = 0;
_L4:
        int i2;
        if (l1 == 39)
        {
            break; /* Loop/switch isn't completed */
        }
        i2 = l1;
        if (l1 == 34)
        {
            break MISSING_BLOCK_LABEL_834;
        }
        i2 = l1;
        if (ai5[l1] == 0)
        {
            break MISSING_BLOCK_LABEL_834;
        }
        byte abyte0[];
        if (l1 != 92)
        {
            c(l1, "name");
        } else
        {
            l1 = u();
        }
        i2 = l1;
        if (l1 <= 127)
        {
            break MISSING_BLOCK_LABEL_834;
        }
        if (j1 >= 4)
        {
            int ai1[] = ai;
            if (i1 >= ai.length)
            {
                ai1 = a(ai, ai.length);
                N = ai1;
            }
            ai1[i1] = k1;
            j1 = 0;
            i1++;
            k1 = 0;
            ai = ai1;
        }
        if (l1 < 2048)
        {
            k1 = k1 << 8 | (l1 >> 6 | 0xc0);
            j1++;
        } else
        {
            k1 = k1 << 8 | (l1 >> 12 | 0xe0);
            j1++;
            if (j1 >= 4)
            {
                int ai2[] = ai;
                if (i1 >= ai.length)
                {
                    ai2 = a(ai, ai.length);
                    N = ai2;
                }
                ai2[i1] = k1;
                i1++;
                ai = ai2;
                j1 = 0;
                k1 = 0;
            }
            k1 = k1 << 8 | (l1 >> 6 & 0x3f | 0x80);
            j1++;
        }
        i2 = l1 & 0x3f | 0x80;
        l1 = k1;
        k1 = j1;
        j1 = i2;
_L5:
        if (k1 < 4)
        {
            l1 = j1 | l1 << 8;
            i2 = k1 + 1;
            j1 = i1;
            k1 = l1;
            i1 = i2;
        } else
        {
            int ai3[] = ai;
            if (i1 >= ai.length)
            {
                ai3 = a(ai, ai.length);
                N = ai3;
            }
            ai3[i1] = l1;
            ai = ai3;
            k1 = 1;
            l1 = i1 + 1;
            i1 = k1;
            k1 = j1;
            j1 = l1;
        }
        if (e >= f && !p())
        {
            c(" in field name");
        }
        abyte0 = Q;
        l1 = e;
        e = l1 + 1;
        i2 = abyte0[l1] & 0xff;
        l1 = i1;
        i1 = j1;
        j1 = l1;
        l1 = i2;
        if (true) goto _L4; else goto _L3
_L3:
        if (j1 > 0)
        {
            int ai4[] = ai;
            if (i1 >= ai.length)
            {
                ai4 = a(ai, ai.length);
                N = ai4;
            }
            ai4[i1] = k1;
            ai = ai4;
            i1++;
        }
        ajm ajm2 = M.a(ai, i1);
        ajm ajm1;
        int ai6[];
        if (ajm2 == null)
        {
            return a(ai, i1, j1);
        } else
        {
            return ajm2;
        }
_L2:
        if (!a(aii.a.c))
        {
            b(i1, "was expecting double-quote to start field name");
        }
        ai6 = ajt.d();
        if (ai6[i1] != 0)
        {
            b(i1, "was expecting either valid name character (for unquoted name) or double-quote (for quoted) to start field name");
        }
        ai = N;
        k1 = 0;
        i2 = 0;
        j1 = i1;
        i1 = i2;
        do
        {
            if (l1 < 4)
            {
                k1 = j1 | k1 << 8;
                j1 = l1 + 1;
            } else
            {
                ajm2 = ai;
                if (i1 >= ai.length)
                {
                    ajm2 = a(ai, ai.length);
                    N = ajm2;
                }
                ajm2[i1] = k1;
                ai = ajm2;
                l1 = 1;
                k1 = j1;
                i1++;
                j1 = l1;
            }
            if (e >= f && !p())
            {
                c(" in field name");
            }
            i2 = Q[e] & 0xff;
            if (ai6[i2] == 0)
            {
                e = e + 1;
                l1 = j1;
                j1 = i2;
            } else
            {
                l1 = i1;
                ajm2 = ai;
                if (j1 > 0)
                {
                    ajm2 = ai;
                    if (i1 >= ai.length)
                    {
                        ajm2 = a(ai, ai.length);
                        N = ajm2;
                    }
                    ajm2[i1] = k1;
                    l1 = i1 + 1;
                }
                ajm1 = M.a(ajm2, l1);
                if (ajm1 == null)
                {
                    return a(ajm2, l1, j1);
                } else
                {
                    return ajm1;
                }
            }
        } while (true);
        l1 = k1;
        k1 = j1;
        j1 = i2;
          goto _L5
    }

    private ail f(int i1)
    {
        i1;
        JVM INSTR lookupswitch 3: default 36
    //                   39: 46
    //                   43: 462
    //                   78: 423;
           goto _L1 _L2 _L3 _L4
_L1:
        b(i1, "expected a valid value (number, String, array, object, 'true', 'false' or 'null')");
        return null;
_L2:
        if (!a(aii.a.d)) goto _L1; else goto _L5
_L5:
        char ac1[];
        int ai[];
        byte abyte0[];
        ac1 = o.i();
        ai = S;
        abyte0 = Q;
        i1 = 0;
_L7:
        char ac[];
        int j1;
        int k1;
        if (e >= f)
        {
            o();
        }
        ac = ac1;
        j1 = i1;
        if (i1 >= ac1.length)
        {
            ac = o.j();
            j1 = 0;
        }
        k1 = f;
        i1 = e + (ac.length - j1);
        if (i1 < k1)
        {
            k1 = i1;
        }
_L10:
        ac1 = ac;
        i1 = j1;
        if (e >= k1) goto _L7; else goto _L6
_L6:
        i1 = e;
        e = i1 + 1;
        i1 = abyte0[i1] & 0xff;
        if (i1 == 39 || ai[i1] != 0) goto _L9; else goto _L8
_L8:
        ac[j1] = (char)i1;
        j1++;
          goto _L10
_L9:
        if (i1 == 39) goto _L12; else goto _L11
_L11:
        ai[i1];
        JVM INSTR tableswitch 1 4: default 244
    //                   1 301
    //                   2 315
    //                   3 324
    //                   4 355;
           goto _L13 _L14 _L15 _L16 _L17
_L13:
        if (i1 < 32)
        {
            c(i1, "string value");
        }
        l(i1);
_L18:
        if (j1 >= ac.length)
        {
            ac = o.j();
            j1 = 0;
        }
        int l1 = j1 + 1;
        ac[j1] = (char)i1;
        ac1 = ac;
        i1 = l1;
          goto _L7
_L14:
        if (i1 != 34)
        {
            i1 = u();
        }
          goto _L18
_L15:
        i1 = h(i1);
          goto _L18
_L16:
        if (f - e >= 2)
        {
            i1 = j(i1);
        } else
        {
            i1 = i(i1);
        }
          goto _L18
_L17:
        int i2 = k(i1);
        i1 = j1 + 1;
        ac[j1] = (char)(0xd800 | i2 >> 10);
        if (i1 >= ac.length)
        {
            ac = o.j();
            j1 = 0;
        } else
        {
            j1 = i1;
        }
        i1 = 0xdc00 | i2 & 0x3ff;
          goto _L18
_L12:
        o.i = j1;
        return ail.h;
_L4:
        a("NaN", 1);
        if (a(aii.a.h))
        {
            return a("NaN", (0.0D / 0.0D));
        }
        d("Non-standard token 'NaN': enable JsonParser.Feature.ALLOW_NON_NUMERIC_NUMBERS to allow");
          goto _L1
_L3:
        if (e >= f && !p())
        {
            w();
        }
        ac = Q;
        i1 = e;
        e = i1 + 1;
        return a(ac[i1] & 0xff, false);
    }

    private int g(int i1)
    {
        int k1 = i1;
        if (i1 < 0)
        {
            int j1;
            if ((i1 & 0xe0) == 192)
            {
                i1 &= 0x1f;
                j1 = 1;
            } else
            if ((i1 & 0xf0) == 224)
            {
                i1 &= 0xf;
                j1 = 2;
            } else
            if ((i1 & 0xf8) == 240)
            {
                i1 &= 7;
                j1 = 3;
            } else
            {
                m(i1 & 0xff);
                j1 = 1;
            }
            k1 = F();
            if ((k1 & 0xc0) != 128)
            {
                n(k1 & 0xff);
            }
            i1 = i1 << 6 | k1 & 0x3f;
            k1 = i1;
            if (j1 > 1)
            {
                k1 = F();
                if ((k1 & 0xc0) != 128)
                {
                    n(k1 & 0xff);
                }
                i1 = i1 << 6 | k1 & 0x3f;
                k1 = i1;
                if (j1 > 2)
                {
                    j1 = F();
                    if ((j1 & 0xc0) != 128)
                    {
                        n(j1 & 0xff);
                    }
                    k1 = i1 << 6 | j1 & 0x3f;
                }
            }
        }
        return k1;
    }

    private final int h(int i1)
    {
        if (e >= f)
        {
            o();
        }
        byte abyte0[] = Q;
        int j1 = e;
        e = j1 + 1;
        j1 = abyte0[j1];
        if ((j1 & 0xc0) != 128)
        {
            b(j1 & 0xff, e);
        }
        return j1 & 0x3f | (i1 & 0x1f) << 6;
    }

    private final int i(int i1)
    {
        if (e >= f)
        {
            o();
        }
        byte abyte0[] = Q;
        int j1 = e;
        e = j1 + 1;
        j1 = abyte0[j1];
        if ((j1 & 0xc0) != 128)
        {
            b(j1 & 0xff, e);
        }
        if (e >= f)
        {
            o();
        }
        abyte0 = Q;
        int k1 = e;
        e = k1 + 1;
        k1 = abyte0[k1];
        if ((k1 & 0xc0) != 128)
        {
            b(k1 & 0xff, e);
        }
        return ((i1 & 0xf) << 6 | j1 & 0x3f) << 6 | k1 & 0x3f;
    }

    private final int j(int i1)
    {
        byte abyte0[] = Q;
        int j1 = e;
        e = j1 + 1;
        j1 = abyte0[j1];
        if ((j1 & 0xc0) != 128)
        {
            b(j1 & 0xff, e);
        }
        abyte0 = Q;
        int k1 = e;
        e = k1 + 1;
        k1 = abyte0[k1];
        if ((k1 & 0xc0) != 128)
        {
            b(k1 & 0xff, e);
        }
        return ((i1 & 0xf) << 6 | j1 & 0x3f) << 6 | k1 & 0x3f;
    }

    private final int k(int i1)
    {
        if (e >= f)
        {
            o();
        }
        byte abyte0[] = Q;
        int j1 = e;
        e = j1 + 1;
        j1 = abyte0[j1];
        if ((j1 & 0xc0) != 128)
        {
            b(j1 & 0xff, e);
        }
        if (e >= f)
        {
            o();
        }
        abyte0 = Q;
        int k1 = e;
        e = k1 + 1;
        k1 = abyte0[k1];
        if ((k1 & 0xc0) != 128)
        {
            b(k1 & 0xff, e);
        }
        if (e >= f)
        {
            o();
        }
        abyte0 = Q;
        int l1 = e;
        e = l1 + 1;
        l1 = abyte0[l1];
        if ((l1 & 0xc0) != 128)
        {
            b(l1 & 0xff, e);
        }
        return (((j1 & 0x3f | (i1 & 7) << 6) << 6 | k1 & 0x3f) << 6 | l1 & 0x3f) - 0x10000;
    }

    private void l(int i1)
    {
        if (i1 < 32)
        {
            a(i1);
        }
        m(i1);
    }

    private void m(int i1)
    {
        d((new StringBuilder("Invalid UTF-8 start byte 0x")).append(Integer.toHexString(i1)).toString());
    }

    private void n(int i1)
    {
        d((new StringBuilder("Invalid UTF-8 middle byte 0x")).append(Integer.toHexString(i1)).toString());
    }

    private final int y()
    {
        do
        {
            if (e >= f && !p())
            {
                break;
            }
            byte abyte0[] = Q;
            int i1 = e;
            e = i1 + 1;
            i1 = abyte0[i1] & 0xff;
            if (i1 > 32)
            {
                if (i1 != 47)
                {
                    return i1;
                }
                z();
            } else
            if (i1 != 32)
            {
                if (i1 == 10)
                {
                    E();
                } else
                if (i1 == 13)
                {
                    D();
                } else
                if (i1 != 9)
                {
                    a(i1);
                }
            }
        } while (true);
        throw a((new StringBuilder("Unexpected end-of-input within/between ")).append(m.d()).append(" entries").toString());
    }

    private final void z()
    {
        if (!a(aii.a.b))
        {
            b(47, "maybe a (non-standard) comment? (not recognized as one since Feature 'ALLOW_COMMENTS' not enabled for parser)");
        }
        if (e >= f && !p())
        {
            c(" in a comment");
        }
        byte abyte0[] = Q;
        int i1 = e;
        e = i1 + 1;
        i1 = abyte0[i1] & 0xff;
        if (i1 == 47)
        {
            int ai[] = ajt.e();
            do
            {
label0:
                {
label1:
                    {
label2:
                        {
label3:
                            {
                                if (e < f || p())
                                {
                                    byte abyte1[] = Q;
                                    i1 = e;
                                    e = i1 + 1;
                                    i1 = abyte1[i1] & 0xff;
                                    int j1 = ai[i1];
                                    if (j1 == 0)
                                    {
                                        continue;
                                    }
                                    switch (j1)
                                    {
                                    default:
                                        l(i1);
                                        continue;

                                    case 2: // '\002'
                                        break label2;

                                    case 3: // '\003'
                                        break label1;

                                    case 4: // '\004'
                                        break label0;

                                    case 13: // '\r'
                                        break label3;

                                    case 42: // '*'
                                        continue;

                                    case 10: // '\n'
                                        E();
                                        break;
                                    }
                                }
                                return;
                            }
                            D();
                            return;
                        }
                        A();
                        continue;
                    }
                    B();
                    continue;
                }
                C();
            } while (true);
        } else
        if (i1 == 42)
        {
            int ai1[] = ajt.e();
label4:
            do
            {
                if (e >= f && !p())
                {
                    break;
                }
                byte abyte2[] = Q;
                i1 = e;
                e = i1 + 1;
                i1 = abyte2[i1] & 0xff;
                int k1 = ai1[i1];
                if (k1 == 0)
                {
                    continue;
                }
                switch (k1)
                {
                default:
                    l(i1);
                    break;

                case 42: // '*'
                    if (e < f || p())
                    {
                        if (Q[e] == 47)
                        {
                            e = e + 1;
                            return;
                        }
                        break;
                    }
                    break label4;

                case 10: // '\n'
                    E();
                    break;

                case 13: // '\r'
                    D();
                    break;

                case 2: // '\002'
                    A();
                    break;

                case 3: // '\003'
                    B();
                    break;

                case 4: // '\004'
                    C();
                    break;
                }
            } while (true);
            c(" in a comment");
            return;
        } else
        {
            b(i1, "was expecting either '*' or '/' for a comment");
            return;
        }
    }

    public final ail a()
    {
        B = 0;
        if (b != ail.f) goto _L2; else goto _L1
_L1:
        Object obj;
        q = false;
        obj = n;
        n = null;
        if (obj != ail.d) goto _L4; else goto _L3
_L3:
        m = m.a(k, l);
_L5:
        b = ((ail) (obj));
        return ((ail) (obj));
_L4:
        if (obj == ail.b)
        {
            m = m.b(k, l);
        }
        if (true) goto _L5; else goto _L2
_L2:
        if (!O) goto _L7; else goto _L6
_L6:
        int ai[];
        byte abyte1[];
        O = false;
        ai = S;
        abyte1 = Q;
_L29:
        int i1;
        int j1;
        int i2 = e;
        int k2 = f;
        j1 = k2;
        i1 = i2;
        if (i2 >= k2)
        {
            o();
            i1 = e;
            j1 = f;
        }
_L27:
        if (i1 >= j1) goto _L9; else goto _L8
_L8:
        int j2;
        j2 = i1 + 1;
        i1 = abyte1[i1] & 0xff;
        if (ai[i1] == 0) goto _L11; else goto _L10
_L10:
        e = j2;
        if (i1 == 34) goto _L7; else goto _L12
_L12:
        switch (ai[i1])
        {
        default:
            if (i1 < 32)
            {
                c(i1, "string value");
            } else
            {
                l(i1);
            }
            break;

        case 1: // '\001'
            u();
            break;

        case 2: // '\002'
            A();
            break;

        case 3: // '\003'
            B();
            break;

        case 4: // '\004'
            C();
            break;
        }
          goto _L13
_L9:
        e = i1;
          goto _L13
_L17:
        z();
_L7:
        if (e >= f && !p())
        {
            break MISSING_BLOCK_LABEL_406;
        }
        byte abyte0[] = Q;
        i1 = e;
        e = i1 + 1;
        i1 = abyte0[i1] & 0xff;
        if (i1 <= 32) goto _L15; else goto _L14
_L14:
        if (i1 == 47) goto _L17; else goto _L16
_L16:
        if (i1 < 0)
        {
            close();
            b = null;
            return null;
        }
        break MISSING_BLOCK_LABEL_415;
_L15:
        if (i1 != 32)
        {
            if (i1 == 10)
            {
                E();
            } else
            if (i1 == 13)
            {
                D();
            } else
            if (i1 != 9)
            {
                a(i1);
            }
        }
          goto _L7
        t();
        i1 = -1;
          goto _L16
        j = (g + (long)e) - 1L;
        k = h;
        l = e - i - 1;
        s = null;
        if (i1 == 93)
        {
            if (!m.a())
            {
                a(i1, '}');
            }
            m = m.h();
            abyte0 = ail.e;
            b = abyte0;
            return abyte0;
        }
        if (i1 == 125)
        {
            if (!m.c())
            {
                a(i1, ']');
            }
            m = m.h();
            abyte0 = ail.c;
            b = abyte0;
            return abyte0;
        }
        int k1 = i1;
        if (m.i())
        {
            if (i1 != 44)
            {
                b(i1, (new StringBuilder("was expecting comma to separate ")).append(m.d()).append(" entries").toString());
            }
            k1 = y();
        }
        if (!m.c())
        {
            if (k1 == 34)
            {
                O = true;
                abyte0 = ail.h;
                b = abyte0;
                return abyte0;
            }
            switch (k1)
            {
            default:
                abyte0 = f(k1);
                b = abyte0;
                return abyte0;

            case 91: // '['
                m = m.a(k, l);
                abyte0 = ail.d;
                b = abyte0;
                return abyte0;

            case 123: // '{'
                m = m.b(k, l);
                abyte0 = ail.b;
                b = abyte0;
                return abyte0;

            case 93: // ']'
            case 125: // '}'
                b(k1, "expected a value");
                // fall through

            case 116: // 't'
                a("true", 1);
                abyte0 = ail.k;
                b = abyte0;
                return abyte0;

            case 102: // 'f'
                a("false", 1);
                abyte0 = ail.l;
                b = abyte0;
                return abyte0;

            case 110: // 'n'
                a("null", 1);
                abyte0 = ail.m;
                b = abyte0;
                return abyte0;

            case 45: // '-'
            case 48: // '0'
            case 49: // '1'
            case 50: // '2'
            case 51: // '3'
            case 52: // '4'
            case 53: // '5'
            case 54: // '6'
            case 55: // '7'
            case 56: // '8'
            case 57: // '9'
                abyte0 = c(k1);
                b = abyte0;
                return abyte0;
            }
        }
        if (k1 != 34)
        {
            abyte0 = e(k1);
        } else
        if (e + 9 > f)
        {
            if (e >= f && !p())
            {
                c(": was expecting closing '\"' for name");
            }
            abyte0 = Q;
            i1 = e;
            e = i1 + 1;
            i1 = abyte0[i1] & 0xff;
            if (i1 == 34)
            {
                abyte0 = ajn.b();
            } else
            {
                abyte0 = a(N, 0, 0, i1, 0);
            }
        } else
        {
            byte abyte2[] = Q;
            abyte0 = T;
            i1 = e;
            e = i1 + 1;
            i1 = abyte2[i1] & 0xff;
            if (abyte0[i1] == 0)
            {
                int l1 = e;
                e = l1 + 1;
                l1 = abyte2[l1] & 0xff;
                if (abyte0[l1] == 0)
                {
                    i1 = i1 << 8 | l1;
                    l1 = e;
                    e = l1 + 1;
                    l1 = abyte2[l1] & 0xff;
                    if (abyte0[l1] == 0)
                    {
                        i1 = i1 << 8 | l1;
                        l1 = e;
                        e = l1 + 1;
                        l1 = abyte2[l1] & 0xff;
                        if (abyte0[l1] == 0)
                        {
                            l1 = i1 << 8 | l1;
                            i1 = e;
                            e = i1 + 1;
                            i1 = abyte2[i1] & 0xff;
                            if (abyte0[i1] == 0)
                            {
                                U = l1;
                                byte abyte3[] = Q;
                                l1 = e;
                                e = l1 + 1;
                                l1 = abyte3[l1] & 0xff;
                                if (abyte0[l1] != 0)
                                {
                                    if (l1 == 34)
                                    {
                                        abyte0 = b(U, i1, 1);
                                    } else
                                    {
                                        abyte0 = a(U, i1, l1, 1);
                                    }
                                } else
                                {
                                    i1 = i1 << 8 | l1;
                                    byte abyte4[] = Q;
                                    l1 = e;
                                    e = l1 + 1;
                                    l1 = abyte4[l1] & 0xff;
                                    if (abyte0[l1] != 0)
                                    {
                                        if (l1 == 34)
                                        {
                                            abyte0 = b(U, i1, 2);
                                        } else
                                        {
                                            abyte0 = a(U, i1, l1, 2);
                                        }
                                    } else
                                    {
                                        i1 = i1 << 8 | l1;
                                        byte abyte5[] = Q;
                                        l1 = e;
                                        e = l1 + 1;
                                        l1 = abyte5[l1] & 0xff;
                                        if (abyte0[l1] != 0)
                                        {
                                            if (l1 == 34)
                                            {
                                                abyte0 = b(U, i1, 3);
                                            } else
                                            {
                                                abyte0 = a(U, i1, l1, 3);
                                            }
                                        } else
                                        {
                                            i1 = i1 << 8 | l1;
                                            byte abyte6[] = Q;
                                            l1 = e;
                                            e = l1 + 1;
                                            l1 = abyte6[l1] & 0xff;
                                            if (abyte0[l1] != 0)
                                            {
                                                if (l1 == 34)
                                                {
                                                    abyte0 = b(U, i1, 4);
                                                } else
                                                {
                                                    abyte0 = a(U, i1, l1, 4);
                                                }
                                            } else
                                            {
                                                N[0] = U;
                                                N[1] = i1;
                                                abyte0 = d(l1);
                                            }
                                        }
                                    }
                                }
                            } else
                            if (i1 == 34)
                            {
                                abyte0 = a(l1, 4);
                            } else
                            {
                                abyte0 = a(l1, i1, 4);
                            }
                        } else
                        if (l1 == 34)
                        {
                            abyte0 = a(i1, 3);
                        } else
                        {
                            abyte0 = a(i1, l1, 3);
                        }
                    } else
                    if (l1 == 34)
                    {
                        abyte0 = a(i1, 2);
                    } else
                    {
                        abyte0 = a(i1, l1, 2);
                    }
                } else
                if (l1 == 34)
                {
                    abyte0 = a(i1, 1);
                } else
                {
                    abyte0 = a(i1, l1, 1);
                }
            } else
            if (i1 == 34)
            {
                abyte0 = ajn.b();
            } else
            {
                abyte0 = a(0, i1, 0);
            }
        }
        m.a(abyte0.a());
        b = ail.f;
        i1 = y();
        if (i1 != 58)
        {
            b(i1, "was expecting a colon to separate field name and value");
        }
        i1 = y();
        if (i1 == 34)
        {
            O = true;
            n = ail.h;
            return b;
        }
        i1;
        JVM INSTR lookupswitch 18: default 1944
    //                   45: 2027
    //                   48: 2027
    //                   49: 2027
    //                   50: 2027
    //                   51: 2027
    //                   52: 2027
    //                   53: 2027
    //                   54: 2027
    //                   55: 2027
    //                   56: 2027
    //                   57: 2027
    //                   91: 1960
    //                   93: 1974
    //                   102: 1997
    //                   110: 2012
    //                   116: 1982
    //                   123: 1967
    //                   125: 1974;
           goto _L18 _L19 _L19 _L19 _L19 _L19 _L19 _L19 _L19 _L19 _L19 _L19 _L20 _L21 _L22 _L23 _L24 _L25 _L21
_L18:
        abyte0 = f(i1);
_L26:
        n = abyte0;
        return b;
_L20:
        abyte0 = ail.d;
        continue; /* Loop/switch isn't completed */
_L25:
        abyte0 = ail.b;
        continue; /* Loop/switch isn't completed */
_L21:
        b(i1, "expected a value");
_L24:
        a("true", 1);
        abyte0 = ail.k;
        continue; /* Loop/switch isn't completed */
_L22:
        a("false", 1);
        abyte0 = ail.l;
        continue; /* Loop/switch isn't completed */
_L23:
        a("null", 1);
        abyte0 = ail.m;
        continue; /* Loop/switch isn't completed */
_L19:
        abyte0 = c(i1);
        if (true) goto _L26; else goto _L11
_L11:
        i1 = j2;
        if (true) goto _L27; else goto _L13
_L13:
        if (true) goto _L29; else goto _L28
_L28:
    }

    public final void close()
    {
        super.close();
        M.a();
    }

    public final String f()
    {
        ail ail1 = b;
        if (ail1 == ail.h)
        {
            if (O)
            {
                O = false;
                q();
            }
            return o.f();
        }
        if (ail1 == null)
        {
            return null;
        }
        static final class _cls1
        {

            static final int a[];

            static 
            {
                a = new int[ail.values().length];
                try
                {
                    a[ail.f.ordinal()] = 1;
                }
                catch (NoSuchFieldError nosuchfielderror5) { }
                try
                {
                    a[ail.h.ordinal()] = 2;
                }
                catch (NoSuchFieldError nosuchfielderror4) { }
                try
                {
                    a[ail.i.ordinal()] = 3;
                }
                catch (NoSuchFieldError nosuchfielderror3) { }
                try
                {
                    a[ail.j.ordinal()] = 4;
                }
                catch (NoSuchFieldError nosuchfielderror2) { }
                try
                {
                    a[ail.k.ordinal()] = 5;
                }
                catch (NoSuchFieldError nosuchfielderror1) { }
                try
                {
                    a[ail.l.ordinal()] = 6;
                }
                catch (NoSuchFieldError nosuchfielderror)
                {
                    return;
                }
            }
        }

        switch (_cls1.a[ail1.ordinal()])
        {
        default:
            return ail1.n;

        case 1: // '\001'
            return m.g();

        case 2: // '\002'
        case 3: // '\003'
        case 4: // '\004'
            return o.f();
        }
    }

    protected final boolean p()
    {
        boolean flag1 = false;
        g = g + (long)f;
        i = i - f;
        boolean flag = flag1;
        if (P != null)
        {
            int i1 = P.read(Q, 0, Q.length);
            if (i1 > 0)
            {
                e = 0;
                f = i1;
                flag = true;
            } else
            {
                r();
                flag = flag1;
                if (i1 == 0)
                {
                    throw new IOException((new StringBuilder("InputStream.read() returned 0 characters when trying to read ")).append(Q.length).append(" bytes").toString());
                }
            }
        }
        return flag;
    }

    protected final void q()
    {
        char ac1[];
        int ai1[];
        byte abyte0[];
        int k1;
        k1 = e;
        int i1 = k1;
        if (k1 >= f)
        {
            o();
            i1 = e;
        }
        ac1 = o.i();
        int ai[] = S;
        int l1 = Math.min(f, ac1.length + i1);
        ai1 = Q;
        k1 = 0;
        do
        {
            if (i1 >= l1)
            {
                break;
            }
            int k2 = ai1[i1] & 0xff;
            if (ai[k2] != 0)
            {
                if (k2 == 34)
                {
                    e = i1 + 1;
                    o.i = k1;
                    return;
                }
                break;
            }
            ac1[k1] = (char)k2;
            k1++;
            i1++;
        } while (true);
        e = i1;
        ai1 = S;
        abyte0 = Q;
_L2:
        int j1;
label0:
        {
label1:
            {
label2:
                {
label3:
                    {
                        int i2 = e;
                        j1 = i2;
                        if (i2 >= f)
                        {
                            o();
                            j1 = e;
                        }
                        i2 = k1;
                        char ac[] = ac1;
                        if (k1 >= ac1.length)
                        {
                            ac = o.j();
                            i2 = 0;
                        }
                        int l2 = Math.min(f, (ac.length - i2) + j1);
                        k1 = i2;
                        do
                        {
                            if (j1 >= l2)
                            {
                                break;
                            }
                            int j2 = j1 + 1;
                            j1 = abyte0[j1] & 0xff;
                            if (ai1[j1] != 0)
                            {
                                {
                                    e = j2;
                                    if (j1 == 34)
                                    {
                                        break MISSING_BLOCK_LABEL_514;
                                    }
                                    switch (ai1[j1])
                                    {
                                    default:
                                        if (j1 < 32)
                                        {
                                            c(j1, "string value");
                                        } else
                                        {
                                            l(j1);
                                        }
                                        break;

                                    case 1: // '\001'
                                        break label3;

                                    case 2: // '\002'
                                        break label2;

                                    case 3: // '\003'
                                        break label1;

                                    case 4: // '\004'
                                        break label0;
                                    }
                                }
                                if (k1 >= ac.length)
                                {
                                    ac = o.j();
                                    k1 = 0;
                                }
                                j2 = k1 + 1;
                                ac[k1] = (char)j1;
                                k1 = j2;
                                ac1 = ac;
                                continue; /* Loop/switch isn't completed */
                            }
                            ac[k1] = (char)j1;
                            j1 = j2;
                            k1++;
                        } while (true);
                        e = j1;
                        ac1 = ac;
                        continue; /* Loop/switch isn't completed */
                    }
                    j1 = u();
                    break MISSING_BLOCK_LABEL_320;
                }
                j1 = h(j1);
                break MISSING_BLOCK_LABEL_320;
            }
            if (f - e >= 2)
            {
                j1 = j(j1);
            } else
            {
                j1 = i(j1);
            }
            break MISSING_BLOCK_LABEL_320;
        }
        j2 = k(j1);
        j1 = k1 + 1;
        ac[k1] = (char)(0xd800 | j2 >> 10);
        if (j1 >= ac.length)
        {
            ac = o.j();
            k1 = 0;
        } else
        {
            k1 = j1;
        }
        j1 = 0xdc00 | j2 & 0x3ff;
        break MISSING_BLOCK_LABEL_320;
        o.i = k1;
        return;
        if (true) goto _L2; else goto _L1
_L1:
    }

    protected final void r()
    {
        if (P != null)
        {
            if (c.c() || a(aii.a.a))
            {
                P.close();
            }
            P = null;
        }
    }

    protected final void s()
    {
        super.s();
        if (R)
        {
            byte abyte0[] = Q;
            if (abyte0 != null)
            {
                Q = null;
                c.a(abyte0);
            }
        }
    }

    protected final char u()
    {
        int i1 = 0;
        if (e >= f && !p())
        {
            c(" in character escape sequence");
        }
        byte abyte0[] = Q;
        int j1 = e;
        e = j1 + 1;
        j1 = abyte0[j1];
        switch (j1)
        {
        default:
            return a((char)g(j1));

        case 98: // 'b'
            return '\b';

        case 116: // 't'
            return '\t';

        case 110: // 'n'
            return '\n';

        case 102: // 'f'
            return '\f';

        case 114: // 'r'
            return '\r';

        case 34: // '"'
        case 47: // '/'
        case 92: // '\\'
            return (char)j1;

        case 117: // 'u'
            j1 = 0;
            break;
        }
        for (; i1 < 4; i1++)
        {
            if (e >= f && !p())
            {
                c(" in character escape sequence");
            }
            byte abyte1[] = Q;
            int k1 = e;
            e = k1 + 1;
            k1 = abyte1[k1];
            int l1 = ajt.a(k1);
            if (l1 < 0)
            {
                b(k1, "expected a hex-digit for character escape sequence");
            }
            j1 = j1 << 4 | l1;
        }

        return (char)j1;
    }

}
