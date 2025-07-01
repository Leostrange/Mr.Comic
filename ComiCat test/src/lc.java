// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import java.io.BufferedInputStream;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Iterator;

public final class lc
{
    public static final class a extends Enum
    {

        public static final int a;
        public static final int b;
        public static final int c;
        public static final int d;
        public static final int e;
        private static final int f[];

        static 
        {
            a = 1;
            b = 2;
            c = 3;
            d = 4;
            e = 5;
            f = (new int[] {
                a, b, c, d, e
            });
        }
    }


    public int a;
    public lw b;
    public boolean c;
    String d;
    public boolean e;
    private final lm f;
    private final ma g;
    private ls h;
    private long i;
    private boolean j;
    private String k;
    private lz l;
    private InputStream m;
    private long n;
    private int o;
    private Byte p;
    private long q;
    private int r;
    private byte s[];

    private static mc a(lz lz1)
    {
        (new kt()).b(lz1);
        lz1.o = false;
        return lz1.a();
    }

    private mc b(lz lz1)
    {
        if (!e && !(lz1.f instanceof lp))
        {
            lz1.n = new lq();
        }
        return a(lz1);
    }

    private boolean b()
    {
        return c() >= 0L;
    }

    private long c()
    {
        if (!j)
        {
            i = f.a();
            j = true;
        }
        return i;
    }

    private mc c(lr lr1)
    {
        a = a.b;
        lr1.e("uploadType", "resumable");
        Object obj;
        if (h == null)
        {
            obj = new lp();
        } else
        {
            obj = h;
        }
        lr1 = g.a(k, lr1, ((ls) (obj)));
        b.a("X-Upload-Content-Type", f.a);
        if (b())
        {
            b.a("X-Upload-Content-Length", Long.valueOf(c()));
        }
        ((lz) (lr1)).b.putAll(b);
        lr1 = b(lr1);
        a = a.c;
        return lr1;
        Exception exception;
        exception;
        lr1.d();
        throw exception;
    }

    public final mc a(lr lr1)
    {
        a = a.d;
        Object obj = f;
        if (h != null)
        {
            obj = new mk();
            Object obj1 = Arrays.asList(new ls[] {
                h, f
            });
            obj.b = new ArrayList(((Collection) (obj1)).size());
            mk.a a1;
            for (obj1 = ((Collection) (obj1)).iterator(); ((Iterator) (obj1)).hasNext(); ((mk) (obj)).b.add(ni.a(a1)))
            {
                a1 = new mk.a((ls)((Iterator) (obj1)).next());
            }

            lr1.e("uploadType", "multipart");
        } else
        {
            lr1.e("uploadType", "media");
        }
        lr1 = g.a(k, lr1, ((ls) (obj)));
        ((lz) (lr1)).b.putAll(b);
        lr1 = b(lr1);
        if (b())
        {
            n = c();
        }
        a = a.e;
        return lr1;
        Exception exception;
        exception;
        lr1.d();
        throw exception;
    }

    final void a()
    {
        oh.a(l, "The current request should not be null");
        l.f = new lp();
        l.b.c((new StringBuilder("bytes */")).append(d).toString());
    }

    public final mc b(lr lr1)
    {
        Object obj1 = c(lr1);
        if (((mc) (obj1)).a()) goto _L2; else goto _L1
_L1:
        return ((mc) (obj1));
_L2:
        lr1 = new lr(((mc) (obj1)).e.c.a());
        ((mc) (obj1)).d();
        m = f.b();
        if (!m.markSupported() && b())
        {
            m = new BufferedInputStream(m);
        }
_L8:
        boolean flag1;
        l = g.a("PUT", lr1, null);
        Object obj;
        int i1;
        if (b())
        {
            i1 = (int)Math.min(o, c() - n);
        } else
        {
            i1 = o;
        }
        if (b())
        {
            m.mark(i1);
            obj = new no.a(m, i1);
            obj = new mh(f.c(), ((InputStream) (obj)));
            obj.d = true;
            obj.c = i1;
            obj = ((mh) (obj)).b(false);
            d = String.valueOf(c());
        } else
        {
            if (s == null)
            {
                int j1;
                int k1;
                int l1;
                if (p == null)
                {
                    j1 = i1 + 1;
                } else
                {
                    j1 = i1;
                }
                s = new byte[i1 + 1];
                long l2;
                long l3;
                long l4;
                if (p != null)
                {
                    s[0] = p.byteValue();
                    boolean flag = false;
                    k1 = j1;
                    j1 = ((flag) ? 1 : 0);
                } else
                {
                    k1 = j1;
                    j1 = 0;
                }
            } else
            {
                j1 = (int)(q - n);
                System.arraycopy(s, r - j1, s, 0, j1);
                if (p != null)
                {
                    s[j1] = p.byteValue();
                }
                k1 = i1 - j1;
            }
            l1 = no.a(m, s, (i1 + 1) - k1, k1);
            if (l1 < k1)
            {
                j1 = Math.max(0, l1) + j1;
                i1 = j1;
                if (p != null)
                {
                    i1 = j1 + 1;
                    p = null;
                }
                j1 = i1;
                if (d.equals("*"))
                {
                    d = String.valueOf(n + (long)i1);
                    j1 = i1;
                }
            } else
            {
                p = Byte.valueOf(s[i1]);
                j1 = i1;
            }
            obj = new lo(f.c(), s, j1);
            q = n + (long)j1;
            i1 = j1;
        }
        r = i1;
        l.f = ((ls) (obj));
        if (i1 == 0)
        {
            l.b.c((new StringBuilder("bytes */")).append(d).toString());
        } else
        {
            l.b.c((new StringBuilder("bytes ")).append(n).append("-").append((n + (long)i1) - 1L).append("/").append(d).toString());
        }
        new ld(this, l);
        if (b())
        {
            obj = a(l);
        } else
        {
            obj = b(l);
        }
        if (!((mc) (obj)).a())
        {
            break MISSING_BLOCK_LABEL_709;
        }
        n = c();
        if (f.b)
        {
            m.close();
        }
        a = a.e;
        return ((mc) (obj));
        lr1;
        ((mc) (obj)).d();
        throw lr1;
        lr1;
        ((mc) (obj1)).d();
        throw lr1;
        obj1 = obj;
        if (((mc) (obj)).c != 308) goto _L1; else goto _L3
_L3:
        obj1 = ((mc) (obj)).e.c.a();
        if (obj1 == null)
        {
            break MISSING_BLOCK_LABEL_745;
        }
        lr1 = new lr(((String) (obj1)));
        obj1 = (String)lw.a(((mc) (obj)).e.c.range);
        if (obj1 != null) goto _L5; else goto _L4
_L4:
        l2 = 0L;
_L9:
        l3 = l2 - n;
        if (l3 < 0L)
        {
            break MISSING_BLOCK_LABEL_928;
        }
        if (l3 > (long)r)
        {
            break MISSING_BLOCK_LABEL_928;
        }
        flag1 = true;
_L12:
        ni.b(flag1);
        l4 = (long)r - l3;
        if (!b()) goto _L7; else goto _L6
_L6:
        if (l4 <= 0L)
        {
            break MISSING_BLOCK_LABEL_858;
        }
        m.reset();
        if (l3 == m.skip(l3))
        {
            flag1 = true;
        } else
        {
            flag1 = false;
        }
        ni.b(flag1);
_L11:
        n = l2;
        a = a.d;
        ((mc) (obj)).d();
          goto _L8
_L5:
        l2 = Long.parseLong(((String) (obj1)).substring(((String) (obj1)).indexOf('-') + 1)) + 1L;
          goto _L9
_L7:
        if (l4 != 0L) goto _L11; else goto _L10
_L10:
        s = null;
          goto _L11
        flag1 = false;
          goto _L12
    }
}
