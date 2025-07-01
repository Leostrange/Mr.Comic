// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import java.io.Serializable;

public final class wx
    implements Serializable, Appendable, CharSequence, wt, wv
{

    private static final wp d = new wp() {

        public final Object a()
        {
            return new wx();
        }

    };
    private static final char f[] = {
        '0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 
        'a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i', 'j', 
        'k', 'l', 'm', 'n', 'o', 'p', 'q', 'r', 's', 't', 
        'u', 'v', 'w', 'x', 'y', 'z'
    };
    private static final long g[] = {
        1L, 10L, 100L, 1000L, 10000L, 0x186a0L, 0xf4240L, 0x989680L, 0x5f5e100L, 0x3b9aca00L, 
        0x2540be400L, 0x174876e800L, 0xe8d4a51000L, 0x9184e72a000L, 0x5af3107a4000L, 0x38d7ea4c68000L, 0x2386f26fc10000L, 0x16345785d8a0000L, 0xde0b6b3a7640000L
    };
    private static final wq h;
    public char a[][];
    public int b;
    public int c;
    private char e[];

    public wx()
    {
        c = 32;
        e = new char[32];
        a = new char[1][];
        a[0] = e;
    }

    static int a(wx wx1, int i)
    {
        wx1.c = i;
        return i;
    }

    private wx a(char c1)
    {
        if (b >= c)
        {
            d();
        }
        a[b >> 10][b & 0x3ff] = c1;
        b = b + 1;
        return this;
    }

    private wx a(CharSequence charsequence, int i, int j)
    {
        if (charsequence != null) goto _L2; else goto _L1
_L1:
        wx wx1 = a("null");
_L4:
        return wx1;
_L2:
        if (i < 0 || j < 0 || i > j || j > charsequence.length())
        {
            throw new IndexOutOfBoundsException();
        }
        do
        {
            wx1 = this;
            if (i >= j)
            {
                continue;
            }
            a(charsequence.charAt(i));
            i++;
        } while (true);
        if (true) goto _L4; else goto _L3
_L3:
    }

    private wx a(String s, int i)
    {
        if (s == null)
        {
            return a("null");
        }
        if (i < 0 || i < 0 || i > s.length())
        {
            throw new IndexOutOfBoundsException((new StringBuilder("start: 0, end: ")).append(i).append(", str.length(): ").append(s.length()).toString());
        }
        int i1;
        for (i1 = b + i + 0; c < i1;)
        {
            d();
        }

        int k = 0;
        int j = b;
        int l;
        for (; k < i; k = l)
        {
            char ac[] = a[j >> 10];
            int j1 = j & 0x3ff;
            int k1 = ws.a(1024 - j1, i - k);
            l = k + k1;
            s.getChars(k, l, ac, j1);
            j += k1;
        }

        b = i1;
        return this;
    }

    private final void a(long l, int i)
    {
        a('.');
        if (l == 0L)
        {
            a('0');
            return;
        }
        int j = ws.a(l);
        long l1;
        do
        {
            l1 = l;
            if (j >= i)
            {
                break;
            }
            a('0');
            j++;
        } while (true);
        for (; l1 % 10L == 0L; l1 /= 10L) { }
        a(l1);
    }

    public static void a(wx wx1)
    {
        d.a(wx1);
    }

    static char[] a(wx wx1, char ac[])
    {
        wx1.e = ac;
        return ac;
    }

    static char[][] a(wx wx1, char ac[][])
    {
        wx1.a = ac;
        return ac;
    }

    static int b(wx wx1)
    {
        return wx1.c;
    }

    public static wx c()
    {
        wx wx1 = (wx)d.b();
        wx1.b = 0;
        return wx1;
    }

    static char[] c(wx wx1)
    {
        return wx1.e;
    }

    static int d(wx wx1)
    {
        return wx1.b;
    }

    static char[][] e(wx wx1)
    {
        return wx1.a;
    }

    public final wx a(double d1)
    {
        boolean flag;
        if (ws.b(d1) >= 10000000D || ws.b(d1) < 0.001D)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        return a(d1, -1, flag);
    }

    public final wx a(double d1, int i, boolean flag)
    {
        if (i > 19)
        {
            throw new IllegalArgumentException((new StringBuilder("digits: ")).append(i).toString());
        }
        if (d1 != d1)
        {
            return a("NaN");
        }
        if (d1 == (1.0D / 0.0D))
        {
            return a("Infinity");
        }
        if (d1 == (-1.0D / 0.0D))
        {
            return a("-Infinity");
        }
        if (d1 == 0.0D)
        {
            if (i < 0)
            {
                return a("0.0");
            } else
            {
                a('0');
                return this;
            }
        }
        double d2 = d1;
        if (d1 < 0.0D)
        {
            d2 = -d1;
            a('-');
        }
        int j = ws.a(d2);
        long l;
        if (i < 0)
        {
            l = ws.a(d2, 16 - j);
            long l1 = l / 10L;
            int k;
            if (ws.a(l1, (j - 16) + 1) == d2)
            {
                i = 16;
                l = l1;
            } else
            {
                i = 17;
            }
        } else
        {
            l = ws.a(d2, i - 1 - j);
        }
        if (flag || j >= i)
        {
            l1 = g[i - 1];
            k = (int)(l / l1);
            a((char)(k + 48));
            a(l - l1 * (long)k, i - 1);
            a('E');
            a(j);
            return this;
        }
        i = i - j - 1;
        if (i < g.length)
        {
            long l2 = g[i];
            long l3 = l / l2;
            a(l3);
            l -= l2 * l3;
        } else
        {
            a('0');
        }
        a(l, i);
        return this;
    }

    public final wx a(float f1)
    {
        double d1 = f1;
        boolean flag;
        if ((double)ws.a(f1) >= 10000000D || (double)ws.a(f1) < 0.001D)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        return a(d1, 10, flag);
    }

    public final wx a(int i)
    {
        int j = i;
        if (i > 0) goto _L2; else goto _L1
_L1:
        if (i != 0) goto _L4; else goto _L3
_L3:
        wx wx1 = a("0");
_L6:
        return wx1;
_L4:
        if (i == 0x80000000)
        {
            return a("-2147483648");
        }
        a('-');
        j = -i;
_L2:
        i = ws.a(j);
        if (c < b + i)
        {
            d();
        }
        b = i + b;
        i = b - 1;
        do
        {
            int k = j / 10;
            a[i >> 10][i & 0x3ff] = (char)((j + 48) - k * 10);
            wx1 = this;
            if (k == 0)
            {
                continue;
            }
            i--;
            j = k;
        } while (true);
        if (true) goto _L6; else goto _L5
_L5:
    }

    public final wx a(long l)
    {
        long l1 = l;
        if (l <= 0L)
        {
            if (l == 0L)
            {
                return a("0");
            }
            if (l == 0x8000000000000000L)
            {
                return a("-9223372036854775808");
            }
            a('-');
            l1 = -l;
        }
        if (l1 <= 0x7fffffffL)
        {
            return a((int)l1);
        } else
        {
            a(l1 / 0x3b9aca00L);
            int i = (int)(l1 % 0x3b9aca00L);
            a("000000000", 9 - ws.a(i));
            return a(i);
        }
    }

    public final wx a(String s)
    {
        for (; s == null; s = "null") { }
        return a(s, s.length());
    }

    public final void a()
    {
        b = 0;
    }

    public final void a(int i, int j, char ac[])
    {
        if (i < 0 || i > j || j > b)
        {
            throw new IndexOutOfBoundsException();
        }
        int l = 0;
        int k = i;
        for (i = l; k < j; i += l)
        {
            char ac1[] = a[k >> 10];
            int i1 = k & 0x3ff;
            l = ws.a(1024 - i1, j - k);
            System.arraycopy(ac1, i1, ac, i, l);
            k += l;
        }

    }

    public final Appendable append(char c1)
    {
        return a(c1);
    }

    public final Appendable append(CharSequence charsequence)
    {
        if (charsequence == null)
        {
            return a("null");
        } else
        {
            return a(charsequence, 0, charsequence.length());
        }
    }

    public final Appendable append(CharSequence charsequence, int i, int j)
    {
        return a(charsequence, i, j);
    }

    public final ww b()
    {
        return ww.a(this, 0, b);
    }

    public final char charAt(int i)
    {
        if (i >= b)
        {
            throw new IndexOutOfBoundsException();
        }
        if (i < 1024)
        {
            return e[i];
        } else
        {
            return a[i >> 10][i & 0x3ff];
        }
    }

    public final void d()
    {
        wh.a();
        wh.a(new Runnable() {

            final wx a;

            public final void run()
            {
                if (wx.b(a) < 1024)
                {
                    wx.a(a, wx.b(a) << 1);
                    char ac[] = new char[wx.b(a)];
                    System.arraycopy(wx.c(a), 0, ac, 0, wx.d(a));
                    wx.a(a, ac);
                    wx.e(a)[0] = ac;
                    return;
                }
                int i = wx.b(a) >> 10;
                if (i >= wx.e(a).length)
                {
                    char ac1[][] = new char[wx.e(a).length * 2][];
                    System.arraycopy(wx.e(a), 0, ac1, 0, wx.e(a).length);
                    wx.a(a, ac1);
                }
                wx.e(a)[i] = new char[1024];
                wx.a(a, wx.b(a) + 1024);
            }

            
            {
                a = wx.this;
                super();
            }
        });
    }

    public final boolean equals(Object obj)
    {
        boolean flag1 = false;
        if (this != obj) goto _L2; else goto _L1
_L1:
        boolean flag = true;
_L4:
        return flag;
_L2:
        flag = flag1;
        if (obj instanceof wx)
        {
            obj = (wx)obj;
            flag = flag1;
            if (b == ((wx) (obj)).b)
            {
                int i = 0;
label0:
                do
                {
label1:
                    {
                        if (i >= b)
                        {
                            break label1;
                        }
                        flag = flag1;
                        if (charAt(i) != ((wx) (obj)).charAt(i))
                        {
                            break label0;
                        }
                        i++;
                    }
                } while (true);
            }
        }
        if (true) goto _L4; else goto _L3
_L3:
        return true;
    }

    public final int hashCode()
    {
        int i = 0;
        int j = 0;
        for (; i < b; i++)
        {
            j = charAt(i) + j * 31;
        }

        return j;
    }

    public final int length()
    {
        return b;
    }

    public final CharSequence subSequence(int i, int j)
    {
        if (i < 0 || j < 0 || i > j || j > b)
        {
            throw new IndexOutOfBoundsException();
        } else
        {
            return ww.a(this, i, j);
        }
    }

    public final String toString()
    {
        char ac[] = new char[b];
        a(0, b, ac);
        return new String(ac, 0, b);
    }

    static 
    {
        h = (new wq()).a(System.out);
    }
}
