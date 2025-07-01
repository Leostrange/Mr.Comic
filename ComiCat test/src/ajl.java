// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import java.util.Arrays;

public final class ajl
{
    static final class a
    {

        final String a;
        final a b;
        final int c;

        public final String a(char ac[], int i1, int j1)
        {
            String s = a;
            a a1 = b;
            do
            {
                if (s.length() == j1)
                {
                    int k1 = 0;
                    int l1;
                    do
                    {
                        l1 = k1;
                        if (s.charAt(k1) != ac[i1 + k1])
                        {
                            break;
                        }
                        l1 = k1 + 1;
                        k1 = l1;
                    } while (l1 < j1);
                    if (l1 == j1)
                    {
                        return s;
                    }
                }
                if (a1 != null)
                {
                    s = a1.a;
                    a1 = a1.b;
                } else
                {
                    return null;
                }
            } while (true);
        }

        public a(String s, a a1)
        {
            a = s;
            b = a1;
            int i1;
            if (a1 == null)
            {
                i1 = 1;
            } else
            {
                i1 = a1.c + 1;
            }
            c = i1;
        }
    }


    static final ajl a = new ajl();
    protected ajl b;
    protected final boolean c;
    protected final boolean d;
    protected String e[];
    protected a f[];
    protected int g;
    protected int h;
    protected int i;
    protected int j;
    protected boolean k;
    private final int l;

    private ajl()
    {
        d = true;
        c = true;
        k = true;
        l = 0;
        j = 0;
        c();
    }

    private ajl(ajl ajl1, boolean flag, boolean flag1, String as[], a aa[], int i1, int j1, 
            int k1)
    {
        b = ajl1;
        d = flag;
        c = flag1;
        e = as;
        f = aa;
        g = i1;
        l = j1;
        i1 = as.length;
        h = i1 - (i1 >> 2);
        i = i1 - 1;
        j = k1;
        k = false;
    }

    private int a(int i1)
    {
        return (i1 >>> 15) + i1 & i;
    }

    private int a(String s)
    {
        int l1 = s.length();
        int i1 = l;
        for (int j1 = 0; j1 < l1;)
        {
            char c1 = s.charAt(j1);
            j1++;
            i1 = c1 + i1 * 33;
        }

        int k1 = i1;
        if (i1 == 0)
        {
            k1 = 1;
        }
        return k1;
    }

    private int a(char ac[], int i1)
    {
        int j1 = l;
        for (int k1 = 0; k1 < i1;)
        {
            char c1 = ac[k1];
            k1++;
            j1 = c1 + j1 * 33;
        }

        i1 = j1;
        if (j1 == 0)
        {
            i1 = 1;
        }
        return i1;
    }

    public static ajl a()
    {
        long l1 = System.currentTimeMillis();
        int i1 = (int)l1;
        int j1 = (int)l1;
        ajl ajl1 = a;
        return new ajl(null, true, true, ajl1.e, ajl1.f, ajl1.g, (j1 >>> 32) + i1 | 1, ajl1.j);
    }

    private void c()
    {
        e = new String[64];
        f = new a[32];
        i = 63;
        g = 0;
        j = 0;
        h = 48;
    }

    private void d()
    {
        int l2 = e.length;
        int i1 = l2 + l2;
        if (i1 > 0x10000)
        {
            g = 0;
            Arrays.fill(e, null);
            Arrays.fill(f, null);
            k = true;
        } else
        {
            String as[] = e;
            a aa[] = f;
            e = new String[i1];
            f = new a[i1 >> 1];
            i = i1 - 1;
            h = i1 - (i1 >> 2);
            int l1 = 0;
            i1 = 0;
            int k1 = 0;
            while (l1 < l2) 
            {
                Object obj = as[l1];
                int i2 = i1;
                int k2 = k1;
                if (obj != null)
                {
                    k2 = k1 + 1;
                    k1 = a(a(((String) (obj))));
                    if (e[k1] == null)
                    {
                        e[k1] = ((String) (obj));
                        i2 = i1;
                    } else
                    {
                        k1 >>= 1;
                        obj = new a(((String) (obj)), f[k1]);
                        f[k1] = ((a) (obj));
                        i2 = Math.max(i1, ((a) (obj)).c);
                    }
                }
                l1++;
                i1 = i2;
                k1 = k2;
            }
            l1 = 0;
            int j2 = k1;
            k1 = l1;
            l1 = i1;
            while (k1 < l2 >> 1) 
            {
                a a1 = aa[k1];
                int j1 = j2;
                while (a1 != null) 
                {
                    Object obj1 = a1.a;
                    j2 = a(a(((String) (obj1))));
                    if (e[j2] == null)
                    {
                        e[j2] = ((String) (obj1));
                    } else
                    {
                        j2 >>= 1;
                        obj1 = new a(((String) (obj1)), f[j2]);
                        f[j2] = ((a) (obj1));
                        l1 = Math.max(l1, ((a) (obj1)).c);
                    }
                    a1 = a1.b;
                    j1++;
                }
                k1++;
                j2 = j1;
            }
            j = l1;
            if (j2 != g)
            {
                throw new Error((new StringBuilder("Internal error on SymbolTable.rehash(): had ")).append(g).append(" entries; now have ").append(j2).append(".").toString());
            }
        }
    }

    public final ajl a(boolean flag, boolean flag1)
    {
        this;
        JVM INSTR monitorenter ;
        this;
        JVM INSTR monitorenter ;
        String as[];
        a aa[];
        int i1;
        int j1;
        int k1;
        as = e;
        aa = f;
        i1 = g;
        j1 = l;
        k1 = j;
        this;
        JVM INSTR monitorexit ;
        ajl ajl1 = new ajl(this, flag, flag1, as, aa, i1, j1, k1);
        this;
        JVM INSTR monitorexit ;
        return ajl1;
        Exception exception;
        exception;
        this;
        JVM INSTR monitorexit ;
        throw exception;
        exception;
        this;
        JVM INSTR monitorexit ;
        throw exception;
    }

    public final String a(char ac[], int i1, int j1, int k1)
    {
        if (j1 <= 0)
        {
            ac = "";
        } else
        {
            if (!d)
            {
                return new String(ac, i1, j1);
            }
            int l1 = a(k1);
            Object obj = e[l1];
            if (obj != null)
            {
                if (((String) (obj)).length() == j1)
                {
                    k1 = 0;
                    int i2;
                    do
                    {
                        i2 = k1;
                        if (((String) (obj)).charAt(k1) != ac[i1 + k1])
                        {
                            break;
                        }
                        i2 = k1 + 1;
                        k1 = i2;
                    } while (i2 < j1);
                    if (i2 == j1)
                    {
                        return ((String) (obj));
                    }
                }
                obj = f[l1 >> 1];
                if (obj != null)
                {
                    obj = ((a) (obj)).a(ac, i1, j1);
                    if (obj != null)
                    {
                        return ((String) (obj));
                    }
                }
            }
            if (!k)
            {
                Object aobj[] = e;
                k1 = aobj.length;
                e = new String[k1];
                System.arraycopy(((Object) (aobj)), 0, e, 0, k1);
                aobj = f;
                k1 = aobj.length;
                f = new a[k1];
                System.arraycopy(((Object) (aobj)), 0, f, 0, k1);
                k = true;
                k1 = l1;
            } else
            if (g >= h)
            {
                d();
                k1 = a(a(ac, j1));
            } else
            {
                k1 = l1;
            }
            aobj = new String(ac, i1, j1);
            ac = ((char []) (aobj));
            if (c)
            {
                ac = ajv.a.a(((String) (aobj)));
            }
            g = g + 1;
            if (e[k1] == null)
            {
                e[k1] = ac;
                return ac;
            }
            i1 = k1 >> 1;
            aobj = new a(ac, f[i1]);
            f[i1] = ((a) (aobj));
            j = Math.max(((a) (aobj)).c, j);
            if (j > 255)
            {
                throw new IllegalStateException((new StringBuilder("Longest collision chain in symbol table (of size ")).append(g).append(") now exceeds maximum, 255 -- suspect a DoS attack based on hash collisions").toString());
            }
        }
        return ac;
    }

    public final void b()
    {
        ajl ajl1;
        while (!k || b == null) 
        {
            return;
        }
        ajl1 = b;
        if (g <= 12000 && j <= 63) goto _L2; else goto _L1
_L1:
        ajl1;
        JVM INSTR monitorenter ;
        ajl1.c();
        ajl1.k = false;
        ajl1;
        JVM INSTR monitorexit ;
_L4:
        k = false;
        return;
        Exception exception;
        exception;
        ajl1;
        JVM INSTR monitorexit ;
        throw exception;
_L2:
        if (g <= ajl1.g)
        {
            continue; /* Loop/switch isn't completed */
        }
        ajl1;
        JVM INSTR monitorenter ;
        ajl1.e = e;
        ajl1.f = f;
        ajl1.g = g;
        ajl1.h = h;
        ajl1.i = i;
        ajl1.j = j;
        ajl1.k = false;
        ajl1;
        JVM INSTR monitorexit ;
        if (true) goto _L4; else goto _L3
_L3:
        exception;
        ajl1;
        JVM INSTR monitorexit ;
        throw exception;
    }

}
