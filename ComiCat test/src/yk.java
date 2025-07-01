// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import java.net.InetAddress;
import java.net.UnknownHostException;
import java.util.HashMap;

public final class yk
{
    static final class a
    {

        yf a;
        yk b;
        long c;

        a(yf yf1, yk yk1, long l1)
        {
            a = yf1;
            b = yk1;
            c = l1;
        }
    }


    static final InetAddress a[];
    static final yf b;
    static final yk c;
    static final byte d[];
    static yk e;
    private static final yi q;
    private static final int r;
    private static int s;
    private static final HashMap t;
    private static final HashMap u;
    public yf f;
    int g;
    int h;
    boolean i;
    boolean j;
    boolean k;
    boolean l;
    boolean m;
    boolean n;
    byte o[];
    public String p;

    yk(yf yf1, int i1, boolean flag, int j1)
    {
        f = yf1;
        g = i1;
        i = flag;
        h = j1;
    }

    yk(yf yf1, int i1, boolean flag, int j1, boolean flag1, boolean flag2, boolean flag3, 
            boolean flag4, byte abyte0[])
    {
        f = yf1;
        g = i1;
        i = flag;
        h = j1;
        j = flag1;
        k = flag2;
        l = flag3;
        m = flag4;
        o = abyte0;
        n = true;
    }

    public static yk a()
    {
        return e;
    }

    public static yk a(String s1)
    {
        return a(s1, 0, null, null);
    }

    public static yk a(String s1, int i1, String s2, InetAddress inetaddress)
    {
        if (s1 == null || s1.length() == 0)
        {
            return e;
        }
        if (!Character.isDigit(s1.charAt(0)))
        {
            return a(new yf(s1, i1, s2), inetaddress);
        }
        char ac[] = s1.toCharArray();
        int j1 = 0;
        int l1 = 0;
        int i2 = 0;
        int j2;
        for (; j1 < ac.length; j1 = j2 + 1)
        {
            char c1 = ac[j1];
            if (c1 < '0' || c1 > '9')
            {
                return a(new yf(s1, i1, s2), inetaddress);
            }
            int k1 = 0;
            int k2;
            do
            {
                k2 = k1;
                j2 = j1;
                if (c1 == '.')
                {
                    break;
                }
                if (c1 < '0' || c1 > '9')
                {
                    return a(new yf(s1, i1, s2), inetaddress);
                }
                k1 = (k1 * 10 + c1) - 48;
                j1++;
                k2 = k1;
                j2 = j1;
                if (j1 >= ac.length)
                {
                    break;
                }
                c1 = ac[j1];
            } while (true);
            if (k2 > 255)
            {
                return a(new yf(s1, i1, s2), inetaddress);
            }
            i2 = (i2 << 8) + k2;
            l1++;
        }

        if (l1 != 4 || s1.endsWith("."))
        {
            return a(new yf(s1, i1, s2), inetaddress);
        } else
        {
            return new yk(b, i2, false, 0);
        }
    }

    private static yk a(yf yf1)
    {
        if (r == 0)
        {
            return null;
        }
        HashMap hashmap = t;
        hashmap;
        JVM INSTR monitorenter ;
        a a1 = (a)t.get(yf1);
        yf1 = a1;
        if (a1 == null)
        {
            break MISSING_BLOCK_LABEL_57;
        }
        yf1 = a1;
        if (a1.c >= System.currentTimeMillis())
        {
            break MISSING_BLOCK_LABEL_57;
        }
        yf1 = a1;
        if (a1.c >= 0L)
        {
            yf1 = null;
        }
        if (yf1 == null)
        {
            break MISSING_BLOCK_LABEL_75;
        }
        yf1 = ((a) (yf1)).b;
_L1:
        hashmap;
        JVM INSTR monitorexit ;
        return yf1;
        yf1;
        hashmap;
        JVM INSTR monitorexit ;
        throw yf1;
        yf1 = null;
          goto _L1
    }

    private static yk a(yf yf1, InetAddress inetaddress)
    {
        yk yk1;
        InetAddress inetaddress1 = inetaddress;
        if (yf1.d == 29)
        {
            inetaddress1 = inetaddress;
            if (inetaddress == null)
            {
                inetaddress1 = q.b;
            }
        }
        int i1;
        if (inetaddress1 != null)
        {
            i1 = inetaddress1.hashCode();
        } else
        {
            i1 = 0;
        }
        yf1.e = i1;
        yk1 = a(yf1);
        inetaddress = yk1;
        if (yk1 != null)
        {
            break MISSING_BLOCK_LABEL_83;
        }
        yk1 = (yk)b(yf1);
        inetaddress = yk1;
        if (yk1 != null)
        {
            break MISSING_BLOCK_LABEL_83;
        }
        inetaddress = q.a(yf1, inetaddress1);
        a(yf1, ((yk) (inetaddress)));
        c(yf1);
_L1:
        if (inetaddress == c)
        {
            throw new UnknownHostException(yf1.toString());
        } else
        {
            return inetaddress;
        }
        inetaddress;
        inetaddress = c;
        a(yf1, ((yk) (inetaddress)));
        c(yf1);
          goto _L1
        inetaddress;
        a(yf1, yk1);
        c(yf1);
        throw inetaddress;
    }

    private static void a(yf yf1, yk yk1)
    {
        if (r == 0)
        {
            return;
        }
        long l1 = -1L;
        if (r != -1)
        {
            l1 = System.currentTimeMillis() + (long)(r * 1000);
        }
        a(yf1, yk1, l1);
    }

    private static void a(yf yf1, yk yk1, long l1)
    {
        if (r == 0)
        {
            return;
        }
        HashMap hashmap = t;
        hashmap;
        JVM INSTR monitorenter ;
        a a1 = (a)t.get(yf1);
        if (a1 != null)
        {
            break MISSING_BLOCK_LABEL_62;
        }
        yk1 = new a(yf1, yk1, l1);
        t.put(yf1, yk1);
_L1:
        hashmap;
        JVM INSTR monitorexit ;
        return;
        yf1;
        hashmap;
        JVM INSTR monitorexit ;
        throw yf1;
        a1.b = yk1;
        a1.c = l1;
          goto _L1
    }

    public static boolean a(InetAddress inetaddress)
    {
        boolean flag1 = false;
        int i1 = 0;
        do
        {
label0:
            {
                boolean flag = flag1;
                if (inetaddress != null)
                {
                    flag = flag1;
                    if (i1 < a.length)
                    {
                        if (inetaddress.hashCode() != a[i1].hashCode())
                        {
                            break label0;
                        }
                        flag = true;
                    }
                }
                return flag;
            }
            i1++;
        } while (true);
    }

    private static Object b(yf yf1)
    {
        hashmap = u;
        hashmap;
        JVM INSTR monitorenter ;
        if (u.containsKey(yf1))
        {
            break MISSING_BLOCK_LABEL_29;
        }
        u.put(yf1, yf1);
        return null;
_L3:
        boolean flag = u.containsKey(yf1);
        if (!flag) goto _L2; else goto _L1
_L1:
        try
        {
            u.wait();
        }
        catch (InterruptedException interruptedexception) { }
        finally { }
        if (true) goto _L3; else goto _L2
_L2:
        hashmap;
        JVM INSTR monitorexit ;
        yk yk1 = a(yf1);
        if (yk1 == null)
        {
            synchronized (u)
            {
                u.put(yf1, yf1);
            }
            return yk1;
        } else
        {
            return yk1;
        }
        yf1;
        hashmap;
        JVM INSTR monitorexit ;
        throw yf1;
        hashmap;
        JVM INSTR monitorexit ;
        throw yf1;
    }

    public static yf b()
    {
        return e.f;
    }

    public static yk b(String s1)
    {
        return a(s1, 1, null, null);
    }

    public static InetAddress c()
    {
        if (a.length == 0)
        {
            return null;
        } else
        {
            return a[s];
        }
    }

    private static void c(yf yf1)
    {
        synchronized (u)
        {
            u.remove(yf1);
            u.notifyAll();
        }
        return;
        yf1;
        hashmap;
        JVM INSTR monitorexit ;
        throw yf1;
    }

    static InetAddress d()
    {
        int i1;
        if (s + 1 < a.length)
        {
            i1 = s + 1;
        } else
        {
            i1 = 0;
        }
        s = i1;
        if (a.length == 0)
        {
            return null;
        } else
        {
            return a[s];
        }
    }

    public final String e()
    {
        Object obj = null;
        if (p != f.b) goto _L2; else goto _L1
_L1:
        p = "*SMBSERVER     ";
_L10:
        String s1 = p;
_L8:
        return s1;
_L2:
        if (p != "*SMBSERVER     ") goto _L4; else goto _L3
_L3:
        yk ayk[] = q.a(this);
        if (f.d != 29) goto _L6; else goto _L5
_L5:
        int i1 = 0;
_L11:
        s1 = obj;
        if (i1 >= ayk.length) goto _L8; else goto _L7
_L7:
        if (ayk[i1].f.d == 32)
        {
            return ayk[i1].f.b;
        }
        break MISSING_BLOCK_LABEL_129;
_L6:
        if (!n) goto _L10; else goto _L9
_L9:
        p = null;
        s1 = f.b;
        return s1;
        UnknownHostException unknownhostexception;
        unknownhostexception;
_L4:
        p = null;
          goto _L10
        i1++;
          goto _L11
    }

    public final boolean equals(Object obj)
    {
        return obj != null && (obj instanceof yk) && ((yk)obj).g == g;
    }

    public final String f()
    {
        if (f == b)
        {
            return g();
        } else
        {
            return f.b;
        }
    }

    public final String g()
    {
        return (new StringBuilder()).append(g >>> 24 & 0xff).append(".").append(g >>> 16 & 0xff).append(".").append(g >>> 8 & 0xff).append(".").append(g >>> 0 & 0xff).toString();
    }

    public final int hashCode()
    {
        return g;
    }

    public final String toString()
    {
        return (new StringBuilder()).append(f.toString()).append("/").append(g()).toString();
    }

    static 
    {
        InetAddress inetaddress;
        a = xj.a("jcifs.netbios.wins", ",", new InetAddress[0]);
        q = new yi();
        r = xj.a("jcifs.netbios.cachePolicy", 30);
        s = 0;
        t = new HashMap();
        u = new HashMap();
        b = new yf("0.0.0.0", 0, null);
        c = new yk(b, 0, false, 0);
        d = (new byte[] {
            0, 0, 0, 0, 0, 0
        });
        t.put(b, new a(b, c, -1L));
        inetaddress = q.a;
        if (inetaddress != null)
        {
            break MISSING_BLOCK_LABEL_168;
        }
        Object obj = InetAddress.getLocalHost();
        inetaddress = ((InetAddress) (obj));
_L2:
label0:
        {
            String s1 = xj.b("jcifs.netbios.hostname", null);
            if (s1 != null)
            {
                obj = s1;
                if (s1.length() != 0)
                {
                    break label0;
                }
            }
            obj = inetaddress.getAddress();
            obj = (new StringBuilder("JCIFS")).append(obj[2] & 0xff).append("_").append(obj[3] & 0xff).append("_").append(abw.a((int)(Math.random() * 255D), 2)).toString();
        }
        obj = new yf(((String) (obj)), 0, xj.b("jcifs.netbios.scope", null));
        e = new yk(((yf) (obj)), inetaddress.hashCode(), false, 0, false, false, true, false, d);
        a(((yf) (obj)), e, -1L);
        return;
        UnknownHostException unknownhostexception;
        unknownhostexception;
        unknownhostexception = InetAddress.getByName("127.0.0.1");
        inetaddress = unknownhostexception;
        continue; /* Loop/switch isn't completed */
        unknownhostexception;
        if (true) goto _L2; else goto _L1
_L1:
    }
}
