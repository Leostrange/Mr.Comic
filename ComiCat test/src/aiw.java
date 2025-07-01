// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import java.io.IOException;
import java.io.Reader;

public final class aiw extends ais
{

    protected Reader L;
    protected char M[];
    protected aim N;
    protected final ajl O;
    protected boolean P;

    public aiw(ajc ajc1, int i, Reader reader, aim aim, ajl ajl1)
    {
        super(ajc1, i);
        P = false;
        L = reader;
        M = ajc1.g();
        N = aim;
        O = ajl1;
    }

    private void A()
    {
        h = h + 1;
        i = e;
    }

    private final int B()
    {
        do
        {
            if (e >= f && !p())
            {
                break;
            }
            char ac[] = M;
            int i = e;
            e = i + 1;
            i = ac[i];
            if (i > ' ')
            {
                if (i != '/')
                {
                    return i;
                }
                C();
            } else
            if (i != ' ')
            {
                if (i == '\n')
                {
                    A();
                } else
                if (i == '\r')
                {
                    z();
                } else
                if (i != '\t')
                {
                    a(i);
                }
            }
        } while (true);
        throw a((new StringBuilder("Unexpected end-of-input within/between ")).append(m.d()).append(" entries").toString());
    }

    private final void C()
    {
        if (!a(aii.a.b))
        {
            b(47, "maybe a (non-standard) comment? (not recognized as one since Feature 'ALLOW_COMMENTS' not enabled for parser)");
        }
        if (e >= f && !p())
        {
            c(" in a comment");
        }
        char ac[] = M;
        int i = e;
        e = i + 1;
        i = ac[i];
        if (i == 47)
        {
            do
            {
label0:
                {
                    if (e < f || p())
                    {
                        char ac1[] = M;
                        i = e;
                        e = i + 1;
                        i = ac1[i];
                        if (i >= 32)
                        {
                            continue;
                        }
                        if (i != 10)
                        {
                            break label0;
                        }
                        A();
                    }
                    return;
                }
                if (i == 13)
                {
                    z();
                    return;
                }
                if (i != 9)
                {
                    a(i);
                }
            } while (true);
        } else
        if (i == 42)
        {
            do
            {
                if (e >= f && !p())
                {
                    break;
                }
                char ac2[] = M;
                i = e;
                e = i + 1;
                i = ac2[i];
                if (i > 42)
                {
                    continue;
                }
                if (i == 42)
                {
                    if (e >= f && !p())
                    {
                        break;
                    }
                    if (M[e] == '/')
                    {
                        e = e + 1;
                        return;
                    }
                } else
                if (i < 32)
                {
                    if (i == 10)
                    {
                        A();
                    } else
                    if (i == 13)
                    {
                        z();
                    } else
                    if (i != 9)
                    {
                        a(i);
                    }
                }
            } while (true);
            c(" in a comment");
            return;
        } else
        {
            b(i, "was expecting either '*' or '/' for a comment");
            return;
        }
    }

    private ail a(int i, boolean flag)
    {
        double d1;
        int j;
        d1 = (-1.0D / 0.0D);
        j = i;
        if (i != 73) goto _L2; else goto _L1
_L1:
        if (e >= f && !p())
        {
            w();
        }
        char ac[] = M;
        i = e;
        e = i + 1;
        i = ac[i];
        if (i != 78) goto _L4; else goto _L3
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
        j = i;
_L2:
        a(j, "expected digit (0-9) to follow minus sign, for valid numeric value");
        return null;
_L4:
        j = i;
        if (i == 110)
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
            j = i;
        }
        if (true) goto _L2; else goto _L5
_L5:
    }

    private String a(int i, int j, int k)
    {
        char ac[];
        o.a(M, i, e - i);
        ac = o.h();
        i = o.i;
_L3:
        char c2;
        if (e >= f && !p())
        {
            c((new StringBuilder(": was expecting closing '")).append((char)k).append("' for name").toString());
        }
        char ac1[] = M;
        int l = e;
        e = l + 1;
        c2 = ac1[l];
        if (c2 > '\\')
        {
            break MISSING_BLOCK_LABEL_194;
        }
        if (c2 != '\\') goto _L2; else goto _L1
_L1:
        char c1 = u();
_L4:
        j = j * 31 + c2;
        int i1 = i + 1;
        ac[i] = c1;
        ajw ajw1;
        char ac2[];
        if (i1 >= ac.length)
        {
            ac = o.j();
            i = 0;
        } else
        {
            i = i1;
        }
        if (true) goto _L3; else goto _L2
_L2:
        if (c2 <= k)
        {
            if (c2 == k)
            {
                break MISSING_BLOCK_LABEL_201;
            }
            if (c2 < ' ')
            {
                c(c2, "name");
            }
        }
        c1 = c2;
          goto _L4
        o.i = i;
        ajw1 = o;
        ac2 = ajw1.e();
        i = ajw1.d();
        k = ajw1.c();
        return O.a(ac2, i, k, j);
    }

    private void a(String s1, int i)
    {
        int k = s1.length();
        int j;
        do
        {
            if (e >= f && !p())
            {
                w();
            }
            if (M[e] != s1.charAt(i))
            {
                f(s1.substring(0, i));
            }
            e = e + 1;
            j = i + 1;
            i = j;
        } while (j < k);
        char c1;
        if (e < f || p())
        {
            if ((c1 = M[e]) >= '0' && c1 != ']' && c1 != '}' && Character.isJavaIdentifierPart(c1))
            {
                f(s1.substring(0, j));
                return;
            }
        }
    }

    private ail c(int i)
    {
        int j;
        int k2;
        int l2;
        boolean flag;
        char ac[];
        int k;
        char c4;
        if (i == 45)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        j = e;
        k2 = j - 1;
        l2 = f;
        if (!flag) goto _L2; else goto _L1
_L1:
        if (j >= f) goto _L4; else goto _L3
_L3:
        ac = M;
        k = j + 1;
        c4 = ac[j];
        if (c4 > '9') goto _L6; else goto _L5
_L5:
        i = k;
        j = c4;
        if (c4 >= '0') goto _L7; else goto _L6
_L6:
        e = k;
        return a(c4, true);
_L2:
        int l = j;
        j = i;
        i = l;
_L7:
        int j1;
        int j2;
        if (j != 48)
        {
            j1 = 1;
            for (; i < f; i = j)
            {
                char ac1[] = M;
                j = i + 1;
                j2 = ac1[i];
                if (j2 < '0' || j2 > '9')
                {
                    break MISSING_BLOCK_LABEL_172;
                }
                j1++;
            }

        }
          goto _L4
        int i1;
        int l1;
        int i2;
        l1 = 0;
        i2 = 0;
        i = j;
        i1 = j2;
        if (j2 != '.') goto _L9; else goto _L8
_L8:
        i = j;
        j = i2;
        for (; i < l2; i = i2)
        {
            char ac2[] = M;
            i2 = i + 1;
            j2 = ac2[i];
            if (j2 < '0' || j2 > '9')
            {
                break MISSING_BLOCK_LABEL_248;
            }
            j++;
        }

          goto _L4
        l1 = j;
        i = i2;
        i1 = j2;
        if (j == 0)
        {
            a(j2, "Decimal point not followed by a digit");
            i1 = j2;
            i = i2;
            l1 = j;
        }
_L9:
        i2 = 0;
        j = 0;
        if (i1 == 'e') goto _L11; else goto _L10
_L10:
        j2 = i;
        if (i1 != 'E') goto _L12; else goto _L11
_L11:
        if (i >= l2) goto _L4; else goto _L13
_L13:
        char ac3[] = M;
        i2 = i + 1;
        i1 = ac3[i];
        if (i1 != '-' && i1 != '+') goto _L15; else goto _L14
_L14:
        if (i2 >= l2) goto _L4; else goto _L16
_L16:
        char ac4[] = M;
        i = i2 + 1;
        i1 = ac4[i2];
_L48:
        if (i1 > '9' || i1 < '0') goto _L18; else goto _L17
_L17:
        j++;
        if (i < l2)
        {
            i1 = M[i];
            i++;
            continue; /* Loop/switch isn't completed */
        }
          goto _L4
_L18:
        i2 = j;
        j2 = i;
        if (j == 0)
        {
            a(i1, "Exponent indicator not followed by a digit");
            j2 = i;
            i2 = j;
        }
_L12:
        i = j2 - 1;
        e = i;
        o.a(M, k2, i - k2);
        return a(flag, j1, l1, i2);
_L4:
        char c1;
        char ac6[];
        char ac7[];
        int i3;
        boolean flag1;
        char c2;
        if (flag)
        {
            i = k2 + 1;
        } else
        {
            i = k2;
        }
        e = i;
        ac7 = o.i();
        i = 0;
        if (flag)
        {
            i = 1;
            ac7[0] = '-';
        }
        j = 0;
        if (e < f)
        {
            char ac5[] = M;
            i1 = e;
            e = i1 + 1;
            c2 = ac5[i1];
        } else
        {
            c2 = e("No digit following minus sign");
        }
        c1 = c2;
        if (c2 == '0')
        {
            if (e >= f && !p())
            {
                c1 = '0';
            } else
            {
label0:
                {
                    c3 = M[e];
                    if (c3 >= '0' && c3 <= '9')
                    {
                        break label0;
                    }
                    c1 = '0';
                }
            }
        }
_L34:
        l1 = 0;
_L37:
        if (c1 < '0' || c1 > '9')
        {
            break MISSING_BLOCK_LABEL_1544;
        }
        j++;
        j1 = i;
        ac6 = ac7;
        if (i >= ac7.length)
        {
            ac6 = o.j();
            j1 = 0;
        }
        i1 = j1 + 1;
        ac6[j1] = c1;
        if (e < f || p()) goto _L20; else goto _L19
_L19:
        j1 = 1;
        i = j;
        c1 = '\0';
        j = j1;
_L46:
        if (i == 0)
        {
            b((new StringBuilder("Missing integer part (next char ")).append(b(c1)).append(")").toString());
        }
        j1 = 0;
        if (c1 != '.') goto _L22; else goto _L21
_L21:
        l1 = i1 + 1;
        ac6[i1] = c1;
        i1 = l1;
_L40:
        if (e < f || p()) goto _L24; else goto _L23
_L23:
        l1 = 1;
_L44:
        if (j1 == 0)
        {
            a(c1, "Decimal point not followed by a digit");
        }
        j = j1;
        j1 = i1;
        i1 = l1;
        ac7 = ac6;
_L45:
        k2 = 0;
        if (c1 != 'e' && c1 != 'E') goto _L26; else goto _L25
_L25:
        l1 = j1;
        ac6 = ac7;
        if (j1 >= ac7.length)
        {
            ac6 = o.j();
            l1 = 0;
        }
        j1 = l1 + 1;
        ac6[l1] = c1;
        char c3;
        if (e < f)
        {
            ac7 = M;
            l1 = e;
            e = l1 + 1;
            c1 = ac7[l1];
        } else
        {
            c1 = e("expected a digit for number exponent");
        }
        if (c1 != '-' && c1 != '+') goto _L28; else goto _L27
_L27:
        if (j1 >= ac6.length)
        {
            ac6 = o.j();
            j1 = 0;
        }
        l1 = j1 + 1;
        ac6[j1] = c1;
        if (e < f)
        {
            ac7 = M;
            j1 = e;
            e = j1 + 1;
            c1 = ac7[j1];
            j1 = 0;
        } else
        {
            c1 = e("expected a digit for number exponent");
            j1 = 0;
        }
_L41:
        i2 = l1;
        ac7 = ac6;
        l1 = j1;
        j1 = i2;
_L42:
        if (c1 > '9' || c1 < '0') goto _L30; else goto _L29
_L29:
        i2 = l1 + 1;
        j2 = j1;
        ac6 = ac7;
        if (j1 >= ac7.length)
        {
            ac6 = o.j();
            j2 = 0;
        }
        l1 = j2 + 1;
        ac6[j2] = c1;
        if (e < f || p()) goto _L32; else goto _L31
_L31:
        i1 = 1;
        j1 = l1;
        l1 = i2;
_L30:
        flag1 = flag;
        i2 = i1;
        j2 = j1;
        k2 = l1;
        l2 = j;
        i3 = i;
        if (l1 == 0)
        {
            a(c1, "Exponent indicator not followed by a digit");
            i3 = i;
            l2 = j;
            k2 = l1;
            j2 = j1;
            i2 = i1;
            flag1 = flag;
        }
_L43:
        if (i2 == 0)
        {
            e = e - 1;
        }
        o.i = j2;
        return a(flag1, i3, l2, k2);
        if (!a(aii.a.g))
        {
            b("Leading zeroes not allowed");
        }
        e = e + 1;
        c1 = c3;
        if (c3 != '0') goto _L34; else goto _L33
_L33:
        c1 = c3;
_L36:
        if (e < f || p())
        {
label1:
            {
                c3 = M[e];
                if (c3 >= '0' && c3 <= '9')
                {
                    break label1;
                }
                c1 = '0';
            }
        }
          goto _L34
        e = e + 1;
        c1 = c3;
        if (c3 == '0') goto _L36; else goto _L35
_L35:
        c1 = c3;
          goto _L34
_L20:
        ac7 = M;
        i = e;
        e = i + 1;
        c1 = ac7[i];
        i = i1;
        ac7 = ac6;
          goto _L37
_L24:
        ac7 = M;
        l1 = e;
        e = l1 + 1;
        c1 = ac7[l1];
        if (c1 < '0' || c1 > '9') goto _L39; else goto _L38
_L38:
        j1++;
        if (i1 >= ac6.length)
        {
            ac6 = o.j();
            i1 = 0;
        }
        l1 = i1 + 1;
        ac6[i1] = c1;
        i1 = l1;
          goto _L40
_L32:
        ac7 = M;
        j1 = e;
        e = j1 + 1;
        c1 = ac7[j1];
        j1 = i2;
          goto _L41
_L28:
        l1 = 0;
        ac7 = ac6;
          goto _L42
_L26:
        flag1 = flag;
        i2 = i1;
        j2 = j1;
        l2 = j;
        i3 = i;
          goto _L43
_L39:
        l1 = j;
          goto _L44
_L22:
        l1 = 0;
        j1 = i1;
        ac7 = ac6;
        i1 = j;
        j = l1;
          goto _L45
        int k1 = j;
        ac6 = ac7;
        i1 = i;
        j = l1;
        i = k1;
          goto _L46
_L15:
        i = i2;
        if (true) goto _L48; else goto _L47
_L47:
    }

    private String d(int i)
    {
        int j1 = 0;
        int j = 0;
        int k1 = 0;
        int k = 0;
        if (i != 34)
        {
            if (i == 39 && a(aii.a.d))
            {
                i = e;
                k1 = f;
                j = i;
                if (i < k1)
                {
                    int ai[] = ajt.a();
                    int l1 = ai.length;
                    do
                    {
                        char c2 = M[i];
                        if (c2 == '\'')
                        {
                            j = e;
                            e = i + 1;
                            return O.a(M, j, i - j, k);
                        }
                        if (c2 < l1)
                        {
                            j1 = k;
                            j = i;
                            if (ai[c2] != 0)
                            {
                                break;
                            }
                        }
                        j1 = k * 31 + c2;
                        j = i + 1;
                        k = j1;
                        i = j;
                    } while (j < k1);
                }
                i = e;
                e = j;
                return a(i, j1, 39);
            }
            if (!a(aii.a.c))
            {
                b(i, "was expecting double-quote to start field name");
            }
            int ai2[] = ajt.c();
            k1 = ai2.length;
            int i2;
            boolean flag;
            if (i < k1)
            {
                if (ai2[i] == 0 && (i < 48 || i > 57))
                {
                    flag = true;
                } else
                {
                    flag = false;
                }
            } else
            {
                flag = Character.isJavaIdentifierPart((char)i);
            }
            if (!flag)
            {
                b(i, "was expecting either valid name character (for unquoted name) or double-quote (for quoted) to start field name");
            }
            i = e;
            i2 = f;
            Object obj;
            if (i < i2)
            {
                j = 0;
                do
                {
                    k = M[i];
                    if (k < k1)
                    {
                        if (ai2[k] != 0)
                        {
                            k = e - 1;
                            e = i;
                            return O.a(M, k, i - k, j);
                        }
                    } else
                    if (!Character.isJavaIdentifierPart((char)k))
                    {
                        k = e - 1;
                        e = i;
                        return O.a(M, k, i - k, j);
                    }
                    k = j * 31 + k;
                    j1 = i + 1;
                    j = k;
                    i = j1;
                } while (j1 < i2);
                i = k;
            } else
            {
                j1 = i;
                i = 0;
            }
            j = e - 1;
            e = j1;
            o.a(M, j, e - j);
            obj = o.h();
            k = o.i;
            j1 = ai2.length;
            j = i;
            i = k;
            do
            {
                char c1;
label0:
                {
                    if (e < f || p())
                    {
                        c1 = M[e];
                        int l;
                        if (c1 > j1 ? Character.isJavaIdentifierPart(c1) : ai2[c1] == 0)
                        {
                            break label0;
                        }
                    }
                    o.i = i;
                    obj = o;
                    ai2 = ((ajw) (obj)).e();
                    i = ((ajw) (obj)).d();
                    l = ((ajw) (obj)).c();
                    return O.a(ai2, i, l, j);
                }
                e = e + 1;
                j = j * 31 + c1;
                int i1 = i + 1;
                obj[i] = c1;
                int ai1[];
                int j2;
                char c3;
                if (i1 >= obj.length)
                {
                    obj = o.j();
                    i = 0;
                } else
                {
                    i = i1;
                }
            } while (true);
        } else
        {
            i = e;
            j2 = f;
            j1 = k1;
            i1 = i;
            if (i < j2)
            {
                ai1 = ajt.a();
                k1 = ai1.length;
                do
                {
                    c3 = M[i];
                    if (c3 < k1 && ai1[c3] != 0)
                    {
                        j1 = j;
                        i1 = i;
                        if (c3 == '"')
                        {
                            i1 = e;
                            e = i + 1;
                            return O.a(M, i1, i - i1, j);
                        }
                        break;
                    }
                    j1 = j * 31 + c3;
                    i1 = i + 1;
                    j = j1;
                    i = i1;
                } while (i1 < j2);
            }
            i = e;
            e = i1;
            return a(i, j1, 34);
        }
    }

    private char e(String s1)
    {
        if (e >= f && !p())
        {
            c(s1);
        }
        s1 = M;
        int i = e;
        e = i + 1;
        return s1[i];
    }

    private void f(String s1)
    {
        s1 = new StringBuilder(s1);
        do
        {
            if (e >= f && !p())
            {
                break;
            }
            char c1 = M[e];
            if (!Character.isJavaIdentifierPart(c1))
            {
                break;
            }
            e = e + 1;
            s1.append(c1);
        } while (true);
        d((new StringBuilder("Unrecognized token '")).append(s1.toString()).append("': was expecting ").toString());
    }

    private ail y()
    {
        char ac[];
        int i;
        ac = o.i();
        i = o.i;
_L2:
        char c1;
        char c2;
        if (e >= f && !p())
        {
            c(": was expecting closing quote for a string value");
        }
        char ac1[] = M;
        int j = e;
        e = j + 1;
        c2 = ac1[j];
        c1 = c2;
        if (c2 <= '\\')
        {
            if (c2 != '\\')
            {
                break; /* Loop/switch isn't completed */
            }
            c1 = u();
        }
_L3:
        if (i >= ac.length)
        {
            ac = o.j();
            i = 0;
        }
        int k = i + 1;
        ac[i] = c1;
        i = k;
        if (true) goto _L2; else goto _L1
_L1:
        c1 = c2;
        if (c2 <= '\'')
        {
            if (c2 != '\'')
            {
                c1 = c2;
                if (c2 < ' ')
                {
                    c(c2, "string value");
                    c1 = c2;
                }
            } else
            {
                o.i = i;
                return ail.h;
            }
        }
          goto _L3
        if (true) goto _L2; else goto _L4
_L4:
    }

    private void z()
    {
        if ((e < f || p()) && M[e] == '\n')
        {
            e = e + 1;
        }
        h = h + 1;
        i = e;
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
        m = m.a(this.k, this.l);
_L5:
        b = ((ail) (obj));
        return ((ail) (obj));
_L4:
        if (obj == ail.b)
        {
            m = m.b(this.k, this.l);
        }
        if (true) goto _L5; else goto _L2
_L2:
        if (!P) goto _L7; else goto _L6
_L6:
        char ac[];
        int i;
        int k;
        P = false;
        i = e;
        k = f;
        ac = M;
_L37:
        int i1;
        int j1 = i;
        i1 = k;
        if (i >= k)
        {
            e = i;
            if (!p())
            {
                c(": was expecting closing quote for a string value");
            }
            j1 = e;
            i1 = f;
        }
        i = j1 + 1;
        k = ac[j1];
        if (k > '\\') goto _L9; else goto _L8
_L8:
        if (k == '\\')
        {
            e = i;
            u();
            i = e;
            k = f;
            continue; /* Loop/switch isn't completed */
        }
        if (k > 34) goto _L9; else goto _L10
_L10:
        if (k != 34) goto _L12; else goto _L11
_L11:
        e = i;
_L7:
        if (e >= f && !p()) goto _L14; else goto _L13
_L13:
        char ac1[] = M;
        i = e;
        e = i + 1;
        k = ac1[i];
        if (k <= 32) goto _L16; else goto _L15
_L15:
        i = k;
        if (k != 47) goto _L18; else goto _L17
_L17:
        C();
          goto _L7
_L12:
        if (k < 32)
        {
            e = i;
            c(k, "string value");
        }
_L9:
        k = i1;
        continue; /* Loop/switch isn't completed */
_L16:
        if (k != 32)
        {
            if (k == 10)
            {
                A();
            } else
            if (k == 13)
            {
                z();
            } else
            if (k != 9)
            {
                a(k);
            }
        }
          goto _L7
_L14:
        t();
        i = -1;
_L18:
        boolean flag;
        if (i < 0)
        {
            close();
            b = null;
            return null;
        }
        this.j = (g + (long)e) - 1L;
        this.k = h;
        this.l = e - this.i - 1;
        s = null;
        if (i == 93)
        {
            if (!m.a())
            {
                a(i, '}');
            }
            m = m.h();
            ac1 = ail.e;
            b = ac1;
            return ac1;
        }
        if (i == 125)
        {
            if (!m.c())
            {
                a(i, ']');
            }
            m = m.h();
            ac1 = ail.c;
            b = ac1;
            return ac1;
        }
        int l = i;
        if (m.i())
        {
            if (i != 44)
            {
                b(i, (new StringBuilder("was expecting comma to separate ")).append(m.d()).append(" entries").toString());
            }
            l = B();
        }
        flag = m.c();
        i = l;
        if (flag)
        {
            ac1 = d(l);
            m.a(ac1);
            b = ail.f;
            i = B();
            if (i != 58)
            {
                b(i, "was expecting a colon to separate field name and value");
            }
            i = B();
        }
        i;
        JVM INSTR lookupswitch 19: default 788
    //                   34: 849
    //                   45: 976
    //                   48: 976
    //                   49: 976
    //                   50: 976
    //                   51: 976
    //                   52: 976
    //                   53: 976
    //                   54: 976
    //                   55: 976
    //                   56: 976
    //                   57: 976
    //                   91: 861
    //                   93: 923
    //                   102: 946
    //                   110: 961
    //                   116: 931
    //                   123: 892
    //                   125: 923;
           goto _L19 _L20 _L21 _L21 _L21 _L21 _L21 _L21 _L21 _L21 _L21 _L21 _L21 _L22 _L23 _L24 _L25 _L26 _L27 _L23
_L19:
        i;
        JVM INSTR lookupswitch 3: default 824
    //                   39: 985
    //                   43: 1045
    //                   78: 1003;
           goto _L28 _L29 _L30 _L31
_L28:
        b(i, "expected a valid value (number, String, array, object, 'true', 'false' or 'null')");
        ac1 = null;
        break; /* Loop/switch isn't completed */
_L20:
        P = true;
        ac1 = ail.h;
          goto _L32
_L22:
        if (!flag)
        {
            m = m.a(this.k, this.l);
        }
        ac1 = ail.d;
          goto _L32
_L27:
        if (!flag)
        {
            m = m.b(this.k, this.l);
        }
        ac1 = ail.b;
          goto _L32
_L23:
        b(i, "expected a value");
_L26:
        a("true", 1);
        ac1 = ail.k;
          goto _L32
_L24:
        a("false", 1);
        ac1 = ail.l;
          goto _L32
_L25:
        a("null", 1);
        ac1 = ail.m;
          goto _L32
_L21:
        ac1 = c(i);
          goto _L32
_L29:
        if (!a(aii.a.d)) goto _L28; else goto _L33
_L33:
        ac1 = y();
          goto _L32
_L31:
        a("NaN", 1);
        if (!a(aii.a.h)) goto _L35; else goto _L34
_L34:
        ac1 = a("NaN", (0.0D / 0.0D));
          goto _L32
_L35:
        d("Non-standard token 'NaN': enable JsonParser.Feature.ALLOW_NON_NUMERIC_NUMBERS to allow");
          goto _L28
_L30:
        if (e >= f && !p())
        {
            w();
        }
        ac1 = M;
        int j = e;
        e = j + 1;
        ac1 = a(ac1[j], false);
_L32:
        if (flag)
        {
            n = ac1;
            return b;
        }
        b = ac1;
        return ac1;
        if (true) goto _L37; else goto _L36
_L36:
    }

    public final void close()
    {
        super.close();
        O.b();
    }

    public final String f()
    {
        ail ail1 = b;
        if (ail1 == ail.h)
        {
            if (P)
            {
                P = false;
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
        this.i = this.i - f;
        boolean flag = flag1;
        if (L != null)
        {
            int i = L.read(M, 0, M.length);
            if (i > 0)
            {
                e = 0;
                f = i;
                flag = true;
            } else
            {
                r();
                flag = flag1;
                if (i == 0)
                {
                    throw new IOException((new StringBuilder("Reader returned 0 characters when trying to read ")).append(f).toString());
                }
            }
        }
        return flag;
    }

    protected final void q()
    {
        Object obj;
        char ac[];
        int i;
        int l1;
        int i2;
        int j = e;
        int i1 = f;
        i = j;
        if (j < i1)
        {
            int ai[] = ajt.a();
            int k1 = ai.length;
            do
            {
                char c3 = M[j];
                if (c3 < k1 && ai[c3] != 0)
                {
                    i = j;
                    if (c3 == '"')
                    {
                        o.a(M, e, j - e);
                        e = j + 1;
                        return;
                    }
                    break;
                }
                i = j + 1;
                j = i;
            } while (i < i1);
        }
        obj = o;
        ac = M;
        i2 = e;
        l1 = i - e;
        obj.c = null;
        obj.d = -1;
        obj.e = 0;
        obj.j = null;
        obj.k = null;
        if (!((ajw) (obj)).f) goto _L2; else goto _L1
_L1:
        ((ajw) (obj)).b();
_L7:
        char c1;
        char c2;
        obj.g = 0;
        obj.i = 0;
        if (((ajw) (obj)).d >= 0)
        {
            ((ajw) (obj)).b(l1);
        }
        obj.j = null;
        obj.k = null;
        char ac1[] = ((ajw) (obj)).h;
        int j2 = ac1.length - ((ajw) (obj)).i;
        int k;
        if (j2 >= l1)
        {
            System.arraycopy(ac, i2, ac1, ((ajw) (obj)).i, l1);
            obj.i = l1 + ((ajw) (obj)).i;
        } else
        {
            int l = l1;
            int j1 = i2;
            if (j2 > 0)
            {
                System.arraycopy(ac, i2, ac1, ((ajw) (obj)).i, j2);
                j1 = i2 + j2;
                l = l1 - j2;
            }
            do
            {
                ((ajw) (obj)).c(l);
                l1 = Math.min(((ajw) (obj)).h.length, l);
                System.arraycopy(ac, j1, ((ajw) (obj)).h, 0, l1);
                obj.i = ((ajw) (obj)).i + l1;
                j1 += l1;
                l1 = l - l1;
                l = l1;
            } while (l1 > 0);
        }
        e = i;
        obj = o.h();
        i = o.i;
_L4:
        if (e >= f && !p())
        {
            c(": was expecting closing quote for a string value");
        }
        ac = M;
        k = e;
        e = k + 1;
        c2 = ac[k];
        c1 = c2;
        if (c2 <= '\\')
        {
            if (c2 != '\\')
            {
                break; /* Loop/switch isn't completed */
            }
            c1 = u();
        }
_L5:
        k = i;
        ac = ((char []) (obj));
        if (i >= obj.length)
        {
            ac = o.j();
            k = 0;
        }
        ac[k] = c1;
        i = k + 1;
        obj = ac;
        if (true) goto _L4; else goto _L3
_L2:
        if (((ajw) (obj)).h == null)
        {
            obj.h = ((ajw) (obj)).a(l1);
        }
        continue; /* Loop/switch isn't completed */
_L3:
        c1 = c2;
        if (c2 <= '"')
        {
label0:
            {
                if (c2 == '"')
                {
                    break label0;
                }
                c1 = c2;
                if (c2 < ' ')
                {
                    c(c2, "string value");
                    c1 = c2;
                }
            }
        }
          goto _L5
        o.i = i;
        return;
        if (true) goto _L7; else goto _L6
_L6:
    }

    protected final void r()
    {
        if (L != null)
        {
            if (c.c() || a(aii.a.a))
            {
                L.close();
            }
            L = null;
        }
    }

    protected final void s()
    {
        super.s();
        char ac[] = M;
        if (ac != null)
        {
            M = null;
            c.a(ac);
        }
    }

    protected final char u()
    {
        int j = 0;
        if (e >= f && !p())
        {
            c(" in character escape sequence");
        }
        char ac[] = M;
        int i = e;
        e = i + 1;
        char c2 = ac[i];
        char c1 = c2;
        switch (c2)
        {
        default:
            c1 = a(c2);
            // fall through

        case 34: // '"'
        case 47: // '/'
        case 92: // '\\'
            return c1;

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

        case 117: // 'u'
            i = 0;
            break;
        }
        for (; i < 4; i++)
        {
            if (e >= f && !p())
            {
                c(" in character escape sequence");
            }
            char ac1[] = M;
            int k = e;
            e = k + 1;
            k = ac1[k];
            int l = ajt.a(k);
            if (l < 0)
            {
                b(k, "expected a hex-digit for character escape sequence");
            }
            j = j << 4 | l;
        }

        return (char)j;
    }
}
