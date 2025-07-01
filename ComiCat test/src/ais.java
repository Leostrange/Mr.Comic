// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import java.math.BigDecimal;
import java.math.BigInteger;

public abstract class ais extends ait
{

    static final BigDecimal A;
    static final BigInteger t;
    static final BigInteger u;
    static final BigInteger v;
    static final BigInteger w;
    static final BigDecimal x;
    static final BigDecimal y;
    static final BigDecimal z;
    protected int B;
    protected int C;
    protected long D;
    protected double E;
    protected BigInteger F;
    protected BigDecimal G;
    protected boolean H;
    protected int I;
    protected int J;
    protected int K;
    protected final ajc c;
    protected boolean d;
    protected int e;
    protected int f;
    protected long g;
    protected int h;
    protected int i;
    protected long j;
    protected int k;
    protected int l;
    protected aiu m;
    protected ail n;
    protected final ajw o;
    protected char p[];
    protected boolean q;
    protected ajs r;
    protected byte s[];

    protected ais(ajc ajc1, int i1)
    {
        e = 0;
        f = 0;
        g = 0L;
        h = 1;
        i = 0;
        j = 0L;
        k = 1;
        l = 0;
        p = null;
        q = false;
        r = null;
        B = 0;
        a = i1;
        c = ajc1;
        o = ajc1.d();
        m = new aiu(null, 0, 1, 0);
    }

    private void c(int i1)
    {
        Object obj;
        if (b != ail.i)
        {
            break MISSING_BLOCK_LABEL_273;
        }
        char ac[] = o.e();
        int j1 = o.d();
        int l1 = I;
        i1 = j1;
        if (H)
        {
            i1 = j1 + 1;
        }
        if (l1 <= 9)
        {
            int k1 = ajf.a(ac, i1, l1);
            i1 = k1;
            if (H)
            {
                i1 = -k1;
            }
            C = i1;
            B = 1;
            return;
        }
        if (l1 <= 18)
        {
            long l3 = ajf.b(ac, i1, l1);
            long l2 = l3;
            if (H)
            {
                l2 = -l3;
            }
            if (l1 == 10)
            {
                if (H)
                {
                    if (l2 >= 0xffffffff80000000L)
                    {
                        C = (int)l2;
                        B = 1;
                        return;
                    }
                } else
                if (l2 <= 0x7fffffffL)
                {
                    C = (int)l2;
                    B = 1;
                    return;
                }
            }
            D = l2;
            B = 2;
            return;
        }
        obj = o.f();
        try
        {
            if (ajf.a(ac, i1, l1, H))
            {
                D = Long.parseLong(((String) (obj)));
                B = 2;
                return;
            }
        }
        catch (NumberFormatException numberformatexception)
        {
            a((new StringBuilder("Malformed numeric value '")).append(((String) (obj))).append("'").toString(), numberformatexception);
            return;
        }
        F = new BigInteger(((String) (obj)));
        B = 4;
        return;
        if (b != ail.j)
        {
            break MISSING_BLOCK_LABEL_452;
        }
        if (i1 != 16)
        {
            break MISSING_BLOCK_LABEL_431;
        }
        obj = o;
        if (((ajw) (obj)).k == null) goto _L2; else goto _L1
_L1:
        obj = new BigDecimal(((ajw) (obj)).k);
_L3:
        G = ((BigDecimal) (obj));
        B = 16;
        return;
_L2:
label0:
        {
            if (((ajw) (obj)).d < 0)
            {
                break label0;
            }
            obj = new BigDecimal(((ajw) (obj)).c, ((ajw) (obj)).d, ((ajw) (obj)).e);
        }
          goto _L3
label1:
        {
            if (((ajw) (obj)).g != 0)
            {
                break label1;
            }
            obj = new BigDecimal(((ajw) (obj)).h, 0, ((ajw) (obj)).i);
        }
          goto _L3
        try
        {
            obj = new BigDecimal(((ajw) (obj)).g());
        }
        // Misplaced declaration of an exception variable
        catch (Object obj)
        {
            a((new StringBuilder("Malformed numeric value '")).append(o.f()).append("'").toString(), ((Throwable) (obj)));
            return;
        }
          goto _L3
        E = ajf.a(o.f());
        B = 8;
        return;
        d((new StringBuilder("Current token (")).append(b).append(") not numeric, can not use numeric value accessors").toString());
        return;
    }

    private void y()
    {
        d((new StringBuilder("Numeric value (")).append(f()).append(") out of range of int (-2147483648 - 2147483647)").toString());
    }

    private void z()
    {
        d((new StringBuilder("Numeric value (")).append(f()).append(") out of range of long (-9223372036854775808 - 9223372036854775807)").toString());
    }

    protected final ail a(String s1, double d1)
    {
        ajw ajw1 = o;
        ajw1.c = null;
        ajw1.d = -1;
        ajw1.e = 0;
        ajw1.j = s1;
        ajw1.k = null;
        if (ajw1.f)
        {
            ajw1.b();
        }
        ajw1.i = 0;
        E = d1;
        B = 8;
        return ail.j;
    }

    protected final ail a(boolean flag, int i1)
    {
        H = flag;
        I = i1;
        J = 0;
        K = 0;
        B = 0;
        return ail.i;
    }

    protected final ail a(boolean flag, int i1, int j1, int k1)
    {
        if (j1 <= 0 && k1 <= 0)
        {
            return a(flag, i1);
        } else
        {
            return b(flag, i1, j1, k1);
        }
    }

    protected final void a(int i1, char c1)
    {
        String s1 = (new StringBuilder()).append(m.a(c.a())).toString();
        d((new StringBuilder("Unexpected close marker '")).append((char)i1).append("': expected '").append(c1).append("' (for ").append(m.d()).append(" starting at ").append(s1).append(")").toString());
    }

    protected final void a(int i1, String s1)
    {
        String s2 = (new StringBuilder("Unexpected character (")).append(b(i1)).append(") in numeric value").toString();
        d((new StringBuilder()).append(s2).append(": ").append(s1).toString());
    }

    protected final ail b(boolean flag, int i1, int j1, int k1)
    {
        H = flag;
        I = i1;
        J = j1;
        K = k1;
        B = 0;
        return ail.j;
    }

    protected final void b(String s1)
    {
        d((new StringBuilder("Invalid numeric value: ")).append(s1).toString());
    }

    public void close()
    {
        if (d)
        {
            break MISSING_BLOCK_LABEL_20;
        }
        d = true;
        r();
        s();
        return;
        Exception exception;
        exception;
        s();
        throw exception;
    }

    public final String d()
    {
        if (b == ail.b || b == ail.d)
        {
            return m.h().g();
        } else
        {
            return m.g();
        }
    }

    public final aig e()
    {
        int i1 = e;
        int j1 = i;
        return new aig(c.a(), (g + (long)e) - 1L, h, (i1 - j1) + 1);
    }

    public final int i()
    {
        if ((B & 1) == 0)
        {
            if (B == 0)
            {
                c(1);
            }
            if ((B & 1) == 0)
            {
                if ((B & 2) != 0)
                {
                    int i1 = (int)D;
                    if ((long)i1 != D)
                    {
                        d((new StringBuilder("Numeric value (")).append(f()).append(") out of range of int").toString());
                    }
                    C = i1;
                } else
                if ((B & 4) != 0)
                {
                    if (t.compareTo(F) > 0 || u.compareTo(F) < 0)
                    {
                        y();
                    }
                    C = F.intValue();
                } else
                if ((B & 8) != 0)
                {
                    if (E < -2147483648D || E > 2147483647D)
                    {
                        y();
                    }
                    C = (int)E;
                } else
                if ((B & 0x10) != 0)
                {
                    if (z.compareTo(G) > 0 || A.compareTo(G) < 0)
                    {
                        y();
                    }
                    C = G.intValue();
                } else
                {
                    x();
                }
                B = B | 1;
            }
        }
        return C;
    }

    public final long j()
    {
        if ((B & 2) == 0)
        {
            if (B == 0)
            {
                c(2);
            }
            if ((B & 2) == 0)
            {
                if ((B & 1) != 0)
                {
                    D = C;
                } else
                if ((B & 4) != 0)
                {
                    if (v.compareTo(F) > 0 || w.compareTo(F) < 0)
                    {
                        z();
                    }
                    D = F.longValue();
                } else
                if ((B & 8) != 0)
                {
                    if (E < -9.2233720368547758E+18D || E > 9.2233720368547758E+18D)
                    {
                        z();
                    }
                    D = (long)E;
                } else
                if ((B & 0x10) != 0)
                {
                    if (x.compareTo(G) > 0 || y.compareTo(G) < 0)
                    {
                        z();
                    }
                    D = G.longValue();
                } else
                {
                    x();
                }
                B = B | 2;
            }
        }
        return D;
    }

    public final BigInteger k()
    {
        if ((B & 4) == 0)
        {
            if (B == 0)
            {
                c(4);
            }
            if ((B & 4) == 0)
            {
                if ((B & 0x10) != 0)
                {
                    F = G.toBigInteger();
                } else
                if ((B & 2) != 0)
                {
                    F = BigInteger.valueOf(D);
                } else
                if ((B & 1) != 0)
                {
                    F = BigInteger.valueOf(C);
                } else
                if ((B & 8) != 0)
                {
                    F = BigDecimal.valueOf(E).toBigInteger();
                } else
                {
                    x();
                }
                B = B | 4;
            }
        }
        return F;
    }

    public final float l()
    {
        return (float)m();
    }

    public final double m()
    {
        if ((B & 8) == 0)
        {
            if (B == 0)
            {
                c(8);
            }
            if ((B & 8) == 0)
            {
                if ((B & 0x10) != 0)
                {
                    E = G.doubleValue();
                } else
                if ((B & 4) != 0)
                {
                    E = F.doubleValue();
                } else
                if ((B & 2) != 0)
                {
                    E = D;
                } else
                if ((B & 1) != 0)
                {
                    E = C;
                } else
                {
                    x();
                }
                B = B | 8;
            }
        }
        return E;
    }

    public final BigDecimal n()
    {
        if ((B & 0x10) == 0)
        {
            if (B == 0)
            {
                c(16);
            }
            if ((B & 0x10) == 0)
            {
                if ((B & 8) != 0)
                {
                    G = new BigDecimal(f());
                } else
                if ((B & 4) != 0)
                {
                    G = new BigDecimal(F);
                } else
                if ((B & 2) != 0)
                {
                    G = BigDecimal.valueOf(D);
                } else
                if ((B & 1) != 0)
                {
                    G = BigDecimal.valueOf(C);
                } else
                {
                    x();
                }
                B = B | 0x10;
            }
        }
        return G;
    }

    protected final void o()
    {
        if (!p())
        {
            v();
        }
    }

    protected abstract boolean p();

    protected abstract void q();

    protected abstract void r();

    protected void s()
    {
        char ac[] = o;
        if (((ajw) (ac)).b != null) goto _L2; else goto _L1
_L1:
        ac.a();
_L4:
        ac = p;
        if (ac != null)
        {
            p = null;
            c.c(ac);
        }
        return;
_L2:
        if (((ajw) (ac)).h != null)
        {
            ac.a();
            char ac1[] = ((ajw) (ac)).h;
            ac.h = null;
            ((ajw) (ac)).b.a(ajr.b.c, ac1);
        }
        if (true) goto _L4; else goto _L3
_L3:
    }

    protected final void t()
    {
        if (!m.b())
        {
            c((new StringBuilder(": expected close marker for ")).append(m.d()).append(" (from ").append(m.a(c.a())).append(")").toString());
        }
    }

    protected char u()
    {
        throw new UnsupportedOperationException();
    }

    static 
    {
        t = BigInteger.valueOf(0xffffffff80000000L);
        u = BigInteger.valueOf(0x7fffffffL);
        v = BigInteger.valueOf(0x8000000000000000L);
        w = BigInteger.valueOf(0x7fffffffffffffffL);
        x = new BigDecimal(v);
        y = new BigDecimal(w);
        z = new BigDecimal(t);
        A = new BigDecimal(u);
    }
}
