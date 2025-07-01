// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import java.util.ArrayList;

public final class ajw
{

    static final char a[] = new char[0];
    public final ajr b;
    public char c[];
    public int d;
    public int e;
    public boolean f;
    public int g;
    public char h[];
    public int i;
    public String j;
    public char k[];
    private ArrayList l;

    public ajw(ajr ajr1)
    {
        f = false;
        b = ajr1;
    }

    public final void a()
    {
        d = -1;
        i = 0;
        e = 0;
        c = null;
        j = null;
        k = null;
        if (f)
        {
            b();
        }
    }

    public final void a(char ac[], int i1, int j1)
    {
        j = null;
        k = null;
        c = ac;
        d = i1;
        e = j1;
        if (f)
        {
            b();
        }
    }

    public final char[] a(int i1)
    {
        if (b != null)
        {
            return b.a(ajr.b.c, i1);
        } else
        {
            return new char[Math.max(i1, 1000)];
        }
    }

    public final void b()
    {
        f = false;
        l.clear();
        g = 0;
        i = 0;
    }

    public final void b(int i1)
    {
        int j1 = e;
        e = 0;
        char ac[] = c;
        c = null;
        int k1 = d;
        d = -1;
        i1 = j1 + i1;
        if (h == null || i1 > h.length)
        {
            h = a(i1);
        }
        if (j1 > 0)
        {
            System.arraycopy(ac, k1, h, 0, j1);
        }
        g = 0;
        i = j1;
    }

    public final int c()
    {
        if (d >= 0)
        {
            return e;
        }
        if (k != null)
        {
            return k.length;
        }
        if (j != null)
        {
            return j.length();
        } else
        {
            return g + i;
        }
    }

    public final void c(int i1)
    {
        if (l == null)
        {
            l = new ArrayList();
        }
        char ac[] = h;
        f = true;
        l.add(ac);
        g = g + ac.length;
        int k1 = ac.length;
        int j1 = k1 >> 1;
        if (j1 >= i1)
        {
            i1 = j1;
        }
        ac = new char[Math.min(0x40000, k1 + i1)];
        i = 0;
        h = ac;
    }

    public final int d()
    {
        if (d >= 0)
        {
            return d;
        } else
        {
            return 0;
        }
    }

    public final char[] e()
    {
        if (d >= 0)
        {
            return c;
        }
        if (k != null)
        {
            return k;
        }
        if (j != null)
        {
            char ac[] = j.toCharArray();
            k = ac;
            return ac;
        }
        if (!f)
        {
            return h;
        } else
        {
            return g();
        }
    }

    public final String f()
    {
        if (j == null)
        {
            if (k != null)
            {
                j = new String(k);
            } else
            if (d >= 0)
            {
                if (e <= 0)
                {
                    j = "";
                    return "";
                }
                j = new String(c, d, e);
            } else
            {
                int i1 = g;
                int k1 = i;
                if (i1 == 0)
                {
                    String s;
                    if (k1 == 0)
                    {
                        s = "";
                    } else
                    {
                        s = new String(h, 0, k1);
                    }
                    j = s;
                } else
                {
                    StringBuilder stringbuilder = new StringBuilder(i1 + k1);
                    if (l != null)
                    {
                        int l1 = l.size();
                        for (int j1 = 0; j1 < l1; j1++)
                        {
                            char ac[] = (char[])l.get(j1);
                            stringbuilder.append(ac, 0, ac.length);
                        }

                    }
                    stringbuilder.append(h, 0, i);
                    j = stringbuilder.toString();
                }
            }
        }
        return j;
    }

    public final char[] g()
    {
        char ac1[] = k;
        char ac[] = ac1;
        if (ac1 == null)
        {
            if (j != null)
            {
                ac = j.toCharArray();
            } else
            if (d >= 0)
            {
                if (e <= 0)
                {
                    ac = a;
                } else
                {
                    ac = new char[e];
                    System.arraycopy(c, d, ac, 0, e);
                }
            } else
            {
                int i1 = c();
                if (i1 <= 0)
                {
                    ac = a;
                } else
                {
                    ac = new char[i1];
                    if (l != null)
                    {
                        int k1 = l.size();
                        int j1 = 0;
                        i1 = 0;
                        for (; j1 < k1; j1++)
                        {
                            char ac2[] = (char[])(char[])l.get(j1);
                            int l1 = ac2.length;
                            System.arraycopy(ac2, 0, ac, i1, l1);
                            i1 += l1;
                        }

                    } else
                    {
                        i1 = 0;
                    }
                    System.arraycopy(h, 0, ac, i1, i);
                }
            }
            k = ac;
        }
        return ac;
    }

    public final char[] h()
    {
        if (d < 0) goto _L2; else goto _L1
_L1:
        b(1);
_L4:
        return h;
_L2:
        char ac[] = h;
        if (ac == null)
        {
            h = a(0);
        } else
        if (i >= ac.length)
        {
            c(1);
        }
        if (true) goto _L4; else goto _L3
_L3:
    }

    public final char[] i()
    {
        d = -1;
        i = 0;
        e = 0;
        c = null;
        j = null;
        k = null;
        if (f)
        {
            b();
        }
        char ac1[] = h;
        char ac[] = ac1;
        if (ac1 == null)
        {
            ac = a(0);
            h = ac;
        }
        return ac;
    }

    public final char[] j()
    {
        if (l == null)
        {
            l = new ArrayList();
        }
        f = true;
        l.add(h);
        int i1 = h.length;
        g = g + i1;
        char ac[] = new char[Math.min(i1 + (i1 >> 1), 0x40000)];
        i = 0;
        h = ac;
        return ac;
    }

    public final char[] k()
    {
        char ac[] = h;
        int j1 = ac.length;
        int i1;
        if (j1 == 0x40000)
        {
            i1 = 0x40001;
        } else
        {
            i1 = Math.min(0x40000, (j1 >> 1) + j1);
        }
        h = new char[i1];
        System.arraycopy(ac, 0, h, 0, j1);
        return h;
    }

    public final String toString()
    {
        return f();
    }

}
