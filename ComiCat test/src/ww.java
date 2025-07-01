// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 


public final class ww
    implements CharSequence, Comparable, wt, xi
{

    public static final ww a = d("");
    private static final xd b;
    private static final ww g = d("true");
    private static final ww h = d("false");
    private static final wq i;
    private static final wp j = new wp() {

        public final Object a()
        {
            return new ww(true, (byte)0);
        }

    };
    private static final wp k = new wp() {

        public final Object a()
        {
            return new ww(false, (byte)0);
        }

    };
    private final char c[];
    private int d;
    private ww e;
    private ww f;

    public ww(String s)
    {
        boolean flag;
        if (s.length() <= 32)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        this(flag);
        d = s.length();
        if (c != null)
        {
            s.getChars(0, d, c, 0);
            return;
        } else
        {
            int l = d + 32 >> 1 & 0xffffffe0;
            e = new ww(s.substring(0, l));
            f = new ww(s.substring(l, d));
            return;
        }
    }

    private ww(boolean flag)
    {
        char ac[];
        if (flag)
        {
            ac = new char[32];
        } else
        {
            ac = null;
        }
        c = ac;
    }

    ww(boolean flag, byte byte0)
    {
        this(flag);
    }

    private static ww a(double d1)
    {
        wx wx1 = wx.c();
        ww ww1 = wx1.a(d1).b();
        wx.a(wx1);
        return ww1;
        Exception exception;
        exception;
        wx.a(wx1);
        throw exception;
    }

    private static ww a(float f1)
    {
        wx wx1 = wx.c();
        ww ww1 = wx1.a(f1).b();
        wx.a(wx1);
        return ww1;
        Exception exception;
        exception;
        wx.a(wx1);
        throw exception;
    }

    private static ww a(int l)
    {
        wx wx1 = wx.c();
        ww ww1 = wx1.a(l).b();
        wx.a(wx1);
        return ww1;
        Exception exception;
        exception;
        wx.a(wx1);
        throw exception;
    }

    private ww a(int l, int i1)
    {
        ww ww1 = this;
_L7:
        if (ww1.c == null) goto _L2; else goto _L1
_L1:
        if (l < 0 || l > i1 || i1 > ww1.d)
        {
            throw new IndexOutOfBoundsException();
        }
        if (l != 0 || i1 != ww1.d) goto _L4; else goto _L3
_L3:
        return ww1;
_L4:
        if (l == i1)
        {
            return a;
        } else
        {
            i1 -= l;
            ww ww2 = b(i1);
            System.arraycopy(ww1.c, l, ww2.c, 0, i1);
            return ww2;
        }
_L2:
        int j1;
        j1 = ww1.e.d;
        if (i1 <= j1)
        {
            ww1 = ww1.e;
        } else
        {
            if (l < j1)
            {
                continue; /* Loop/switch isn't completed */
            }
            ww1 = ww1.f;
            l -= j1;
            i1 -= j1;
        }
        continue; /* Loop/switch isn't completed */
        if (l == 0 && i1 == ww1.d) goto _L3; else goto _L5
_L5:
        return ww1.e.a(l, j1).a(ww1.f.a(0, i1 - j1));
        if (true) goto _L7; else goto _L6
_L6:
    }

    private static ww a(long l)
    {
        wx wx1 = wx.c();
        ww ww1 = wx1.a(l).b();
        wx.a(wx1);
        return ww1;
        Exception exception;
        exception;
        wx.a(wx1);
        throw exception;
    }

    public static ww a(Object obj)
    {
        if (obj instanceof wt)
        {
            return ((wt)obj).b();
        }
        if (obj instanceof Number)
        {
            if (obj instanceof Integer)
            {
                return a(((Integer)obj).intValue());
            }
            if (obj instanceof Long)
            {
                return a(((Long)obj).longValue());
            }
            if (obj instanceof Float)
            {
                return a(((Float)obj).floatValue());
            }
            if (obj instanceof Double)
            {
                return a(((Double)obj).doubleValue());
            } else
            {
                return b(String.valueOf(obj));
            }
        } else
        {
            return b(String.valueOf(obj));
        }
    }

    private static ww a(String s, int l, int i1)
    {
        int j1 = i1 - l;
        if (j1 <= 32)
        {
            ww ww1 = b(j1);
            s.getChars(l, i1, ww1.c, 0);
            return ww1;
        } else
        {
            j1 = j1 + 32 >> 1 & 0xffffffe0;
            return a(a(s, l, l + j1), a(s, j1 + l, i1));
        }
    }

    private ww a(ww ww1)
    {
        int l = d + ww1.d;
        if (l <= 32)
        {
            ww ww2 = b(l);
            a(0, d, ww2.c, 0);
            ww1.a(0, ww1.d, ww2.c, d);
            return ww2;
        }
        if (d << 1 >= ww1.d || ww1.c != null) goto _L2; else goto _L1
_L1:
        ww ww3;
        ww ww4;
        ww3 = ww1;
        if (ww1.e.d > ww1.f.d)
        {
            ww3 = ww1.e;
            if (ww3.c != null)
            {
                ww3 = ww1;
            } else
            {
                ww3 = a(ww3.e, a(ww3.f, ww1.f));
            }
        }
        ww1 = a(ww3.e);
        ww4 = ww3.f;
        ww3 = ww1;
_L4:
        return a(ww3, ww4);
_L2:
        ww3 = this;
        ww4 = ww1;
        if (ww1.d << 1 < d)
        {
            ww3 = this;
            ww4 = ww1;
            if (c == null)
            {
                ww3 = this;
                if (f.d > e.d)
                {
                    ww4 = f;
                    if (ww4.c != null)
                    {
                        ww3 = this;
                    } else
                    {
                        ww3 = ww4.e;
                        ww4 = ww4.f;
                        ww3 = a(a(e, ww3), ww4);
                    }
                }
                ww4 = ww3.f.a(ww1);
                ww3 = ww3.e;
            }
        }
        if (true) goto _L4; else goto _L3
_L3:
    }

    private static ww a(ww ww1, ww ww2)
    {
        ww ww3 = (ww)k.b();
        ww3.d = ww1.d + ww2.d;
        ww3.e = ww1;
        ww3.f = ww2;
        return ww3;
    }

    static ww a(wx wx1, int l, int i1)
    {
        int j1 = i1 - l;
        if (j1 <= 32)
        {
            ww ww1 = b(j1);
            wx1.a(l, i1, ww1.c);
            return ww1;
        } else
        {
            j1 = j1 + 32 >> 1 & 0xffffffe0;
            return a(a(wx1, l, l + j1), a(wx1, j1 + l, i1));
        }
    }

    static xd a()
    {
        return b;
    }

    private static ww b(int l)
    {
        ww ww1 = (ww)j.b();
        ww1.d = l;
        return ww1;
    }

    private static ww b(String s)
    {
        return a(s, 0, s.length());
    }

    private ww c(String s)
    {
        ww ww1 = null;
        int l = s.length();
        if (c == null)
        {
            s = f.c(s);
            if (s != null)
            {
                ww1 = a(e, s);
            }
        } else
        if (d + l <= 32)
        {
            ww ww2 = b(d + l);
            System.arraycopy(c, 0, ww2.c, 0, d);
            s.getChars(0, l, ww2.c, d);
            return ww2;
        }
        return ww1;
    }

    private static ww d(String s)
    {
        ww ww1 = (ww)b.get(s);
        if (ww1 != null)
        {
            return ww1;
        } else
        {
            return e(s);
        }
    }

    private static ww e(String s)
    {
        ww;
        JVM INSTR monitorenter ;
        if (!b.containsKey(s))
        {
            wh.a();
            wh.a(new Runnable(s) {

                final String a;

                public final void run()
                {
                    ww ww1 = new ww(a);
                    ww.a().put(ww1, ww1);
                }

            
            {
                a = s;
                super();
            }
            });
        }
        s = (ww)b.get(s);
        ww;
        JVM INSTR monitorexit ;
        return s;
        s;
        throw s;
    }

    public final ww a(String s)
    {
        ww ww1 = c(s);
        if (ww1 != null)
        {
            return ww1;
        } else
        {
            return a(b(s));
        }
    }

    public final void a(int l, int i1, char ac[], int j1)
    {
        ww ww1 = this;
        do
        {
            if (ww1.c != null)
            {
                if (l < 0 || i1 > ww1.d || l > i1)
                {
                    throw new IndexOutOfBoundsException();
                } else
                {
                    System.arraycopy(ww1.c, l, ac, j1, i1 - l);
                    return;
                }
            }
            int k1 = ww1.e.d;
            if (i1 <= k1)
            {
                ww1 = ww1.e;
            } else
            if (l >= k1)
            {
                ww1 = ww1.f;
                l -= k1;
                i1 -= k1;
            } else
            {
                ww1.e.a(l, k1, ac, j1);
                ww1 = ww1.f;
                i1 -= k1;
                j1 = (k1 + j1) - l;
                l = 0;
            }
        } while (true);
    }

    public final ww b()
    {
        return this;
    }

    public final ww b(Object obj)
    {
        return a(a(obj));
    }

    public final char charAt(int l)
    {
        ww ww1 = this;
        do
        {
            if (l >= ww1.d)
            {
                throw new IndexOutOfBoundsException();
            }
            if (ww1.c != null)
            {
                return ww1.c[l];
            }
            if (l < ww1.e.d)
            {
                ww1 = ww1.e;
            } else
            {
                ww ww2 = ww1.f;
                l -= ww1.e.d;
                ww1 = ww2;
            }
        } while (true);
    }

    public final int compareTo(Object obj)
    {
        return xb.h.compare(this, obj);
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
        if (obj instanceof ww)
        {
            obj = (ww)obj;
            flag = flag1;
            if (d == ((ww) (obj)).d)
            {
                int l = 0;
label0:
                do
                {
label1:
                    {
                        if (l >= d)
                        {
                            break label1;
                        }
                        flag = flag1;
                        if (charAt(l) != ((ww) (obj)).charAt(l))
                        {
                            break label0;
                        }
                        l++;
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
        int l = 0;
        int j1 = length();
        int i1 = 0;
        for (; l < j1; l++)
        {
            i1 = charAt(l) + i1 * 31;
        }

        return i1;
    }

    public final int length()
    {
        return d;
    }

    public final CharSequence subSequence(int l, int i1)
    {
        return a(l, i1);
    }

    public final String toString()
    {
        if (c != null)
        {
            return new String(c, 0, d);
        } else
        {
            char ac[] = new char[d];
            a(0, d, ac, 0);
            return new String(ac, 0, d);
        }
    }

    static 
    {
        b = (new xd()).a(xb.h);
        i = (new wq()).a(System.out);
    }
}
