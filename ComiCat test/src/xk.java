// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import java.io.IOException;
import java.net.InetAddress;
import java.net.UnknownHostException;
import java.util.StringTokenizer;

public final class xk
{
    static final class a extends Thread
    {

        b a;
        String b;
        String c;
        int d;
        yk e;
        InetAddress f;
        UnknownHostException g;

        public final void run()
        {
            e = yk.a(b, d, c, f);
            synchronized (a)
            {
                b b5 = a;
                b5.a = b5.a - 1;
                a.notify();
            }
            return;
            exception;
            b1;
            JVM INSTR monitorexit ;
            throw exception;
            Object obj;
            obj;
            g = ((UnknownHostException) (obj));
            synchronized (a)
            {
                b b6 = a;
                b6.a = b6.a - 1;
                a.notify();
            }
            return;
            exception1;
            b2;
            JVM INSTR monitorexit ;
            throw exception1;
            b2;
            g = new UnknownHostException(b2.getMessage());
            synchronized (a)
            {
                b b7 = a;
                b7.a = b7.a - 1;
                a.notify();
            }
            return;
            exception2;
            b3;
            JVM INSTR monitorexit ;
            throw exception2;
            Exception exception3;
            exception3;
            synchronized (a)
            {
                b b8 = a;
                b8.a = b8.a - 1;
                a.notify();
            }
            throw exception3;
            exception4;
            b4;
            JVM INSTR monitorexit ;
            throw exception4;
        }

        a(b b1, String s, int i, InetAddress inetaddress)
        {
            super((new StringBuilder("JCIFS-QueryThread: ")).append(s).toString());
            e = null;
            a = b1;
            b = s;
            d = i;
            c = null;
            f = inetaddress;
        }
    }

    static final class b
    {

        int a;

        b()
        {
            a = 2;
        }
    }


    private static int c[];
    private static InetAddress d;
    private static abx e;
    public Object a;
    public String b;

    public xk(Object obj)
    {
        if (obj == null)
        {
            throw new IllegalArgumentException();
        } else
        {
            a = obj;
            return;
        }
    }

    public static xk a(String s)
    {
        return a(s, false)[0];
    }

    private static yk a(String s, InetAddress inetaddress)
    {
        b b1;
        a a1;
        b1 = new b();
        byte byte0;
        if (yk.a(inetaddress))
        {
            byte0 = 27;
        } else
        {
            byte0 = 29;
        }
        a1 = new a(b1, s, byte0, inetaddress);
        inetaddress = new a(b1, s, 32, inetaddress);
        a1.setDaemon(true);
        inetaddress.setDaemon(true);
        b1;
        JVM INSTR monitorenter ;
        a1.start();
        inetaddress.start();
        while (b1.a > 0 && a1.e == null && ((a) (inetaddress)).e == null) 
        {
            b1.wait();
        }
        break MISSING_BLOCK_LABEL_115;
        inetaddress;
        b1;
        JVM INSTR monitorexit ;
        try
        {
            throw inetaddress;
        }
        // Misplaced declaration of an exception variable
        catch (InetAddress inetaddress)
        {
            throw new UnknownHostException(s);
        }
        b1;
        JVM INSTR monitorexit ;
        if (a1.e != null)
        {
            return a1.e;
        }
        if (((a) (inetaddress)).e != null)
        {
            return ((a) (inetaddress)).e;
        } else
        {
            throw a1.g;
        }
    }

    public static xk[] a(String s, boolean flag)
    {
        int i;
        if (s == null || s.length() == 0)
        {
            throw new UnknownHostException();
        }
        if (c(s))
        {
            return (new xk[] {
                new xk(yk.a(s))
            });
        }
        i = 0;
_L10:
        if (i >= c.length)
        {
            break MISSING_BLOCK_LABEL_271;
        }
        c[i];
        JVM INSTR tableswitch 0 3: default 280
    //                   0 126
    //                   1 170
    //                   2 208
    //                   3 101;
           goto _L1 _L2 _L3 _L4 _L5
_L4:
        break MISSING_BLOCK_LABEL_208;
_L1:
        throw new UnknownHostException(s);
_L5:
        yk yk1 = ye.a(s);
        if (yk1 == null)
        {
            break MISSING_BLOCK_LABEL_284;
        }
_L6:
        InetAddress ainetaddress[];
        xk axk[];
        int j;
        try
        {
            return (new xk[] {
                new xk(yk1)
            });
        }
        catch (IOException ioexception) { }
        break MISSING_BLOCK_LABEL_284;
_L2:
        if (s == "\001\002__MSBROWSE__\002")
        {
            break MISSING_BLOCK_LABEL_284;
        }
        if (s.length() > 15)
        {
            break MISSING_BLOCK_LABEL_284;
        }
        if (!flag)
        {
            break MISSING_BLOCK_LABEL_156;
        }
        yk1 = a(s, yk.c());
          goto _L6
        yk1 = yk.a(s, 32, null, yk.c());
          goto _L6
_L3:
        if (s.length() > 15)
        {
            break MISSING_BLOCK_LABEL_284;
        }
        if (!flag)
        {
            break MISSING_BLOCK_LABEL_194;
        }
        yk1 = a(s, d);
          goto _L6
        yk1 = yk.a(s, 32, null, d);
          goto _L6
        if (d(s))
        {
            throw new UnknownHostException(s);
        }
        ainetaddress = InetAddress.getAllByName(s);
        axk = new xk[ainetaddress.length];
        j = 0;
_L8:
        if (j >= ainetaddress.length)
        {
            break; /* Loop/switch isn't completed */
        }
        axk[j] = new xk(ainetaddress[j]);
        j++;
        if (true) goto _L8; else goto _L7
_L7:
        return axk;
        throw new UnknownHostException(s);
        i++;
        if (true) goto _L10; else goto _L9
_L9:
    }

    public static xk b(String s)
    {
        return a(s, true)[0];
    }

    private static boolean c(String s)
    {
        boolean flag;
        boolean flag1;
        flag1 = false;
        flag = flag1;
        if (!Character.isDigit(s.charAt(0))) goto _L2; else goto _L1
_L1:
        int i;
        int j;
        int l;
        l = s.length();
        s = s.toCharArray();
        j = 0;
        i = 0;
_L8:
        flag = flag1;
        if (i >= l) goto _L2; else goto _L3
_L3:
        int k;
        k = i + 1;
        flag = flag1;
        if (!Character.isDigit(s[i])) goto _L2; else goto _L4
_L4:
        if (k != l || j != 3) goto _L6; else goto _L5
_L5:
        flag = true;
_L2:
        return flag;
_L6:
        if (k < l && s[k] == '.')
        {
            j++;
            i = k + 1;
        } else
        {
            i = k;
        }
        if (true) goto _L8; else goto _L7
_L7:
    }

    private static boolean d(String s)
    {
        for (int i = 0; i < s.length(); i++)
        {
            if (!Character.isDigit(s.charAt(i)))
            {
                return false;
            }
        }

        return true;
    }

    public final String a()
    {
        int j = 0;
        if (!(a instanceof yk)) goto _L2; else goto _L1
_L1:
        yk yk1;
        yk1 = (yk)a;
        yk1.p = yk1.f.b;
        if (!Character.isDigit(yk1.p.charAt(0))) goto _L4; else goto _L3
_L3:
        char ac[];
        int i;
        int l;
        l = yk1.p.length();
        ac = yk1.p.toCharArray();
        i = 0;
_L10:
        if (i >= l) goto _L6; else goto _L5
_L5:
        int k = i + 1;
        if (!Character.isDigit(ac[i])) goto _L6; else goto _L7
_L7:
        if (k == l && j == 3) goto _L9; else goto _L8
_L8:
        if (k < l && ac[k] == '.')
        {
            j++;
            i = k + 1;
        } else
        {
            i = k;
        }
          goto _L10
_L4:
        yk1.f.d;
        JVM INSTR tableswitch 27 29: default 160
    //                   27 165
    //                   28 165
    //                   29 165;
           goto _L6 _L9 _L9 _L9
_L6:
        return yk1.p;
_L9:
        yk1.p = "*SMBSERVER     ";
        if (true) goto _L6; else goto _L2
_L2:
        b = ((InetAddress)a).getHostName();
        if (c(b))
        {
            b = "*SMBSERVER     ";
        } else
        {
            i = b.indexOf('.');
            if (i > 1 && i < 15)
            {
                b = b.substring(0, i).toUpperCase();
            } else
            if (b.length() > 15)
            {
                b = "*SMBSERVER     ";
            } else
            {
                b = b.toUpperCase();
            }
        }
        return b;
    }

    public final String b()
    {
        if (a instanceof yk)
        {
            return ((yk)a).f();
        } else
        {
            return ((InetAddress)a).getHostName();
        }
    }

    public final String c()
    {
        if (a instanceof yk)
        {
            return ((yk)a).g();
        } else
        {
            return ((InetAddress)a).getHostAddress();
        }
    }

    public final boolean equals(Object obj)
    {
        return (obj instanceof xk) && a.equals(((xk)obj).a);
    }

    public final int hashCode()
    {
        return a.hashCode();
    }

    public final String toString()
    {
        return a.toString();
    }

    static 
    {
        e = abx.a();
        Object obj = xj.a("jcifs.resolveOrder");
        int ai[] = yk.c();
        int ai1[];
        int i;
        try
        {
            d = xj.a("jcifs.netbios.baddr", InetAddress.getByName("255.255.255.255"));
        }
        catch (UnknownHostException unknownhostexception) { }
        if (obj == null || ((String) (obj)).length() == 0)
        {
            if (ai == null)
            {
                ai = new int[3];
                c = ai;
                ai[0] = 3;
                c[1] = 2;
                c[2] = 1;
                return;
            } else
            {
                ai = new int[4];
                c = ai;
                ai[0] = 3;
                c[1] = 0;
                c[2] = 2;
                c[3] = 1;
                return;
            }
        }
        ai1 = new int[4];
        obj = new StringTokenizer(((String) (obj)), ",");
        i = 0;
        do
        {
            if (!((StringTokenizer) (obj)).hasMoreTokens())
            {
                break;
            }
            String s = ((StringTokenizer) (obj)).nextToken().trim();
            if (s.equalsIgnoreCase("LMHOSTS"))
            {
                ai1[i] = 3;
                i++;
            } else
            if (s.equalsIgnoreCase("WINS"))
            {
                if (ai == null)
                {
                    if (abx.a > 1)
                    {
                        e.println("UniAddress resolveOrder specifies WINS however the jcifs.netbios.wins property has not been set");
                    }
                } else
                {
                    ai1[i] = 0;
                    i++;
                }
            } else
            if (s.equalsIgnoreCase("BCAST"))
            {
                ai1[i] = 1;
                i++;
            } else
            if (s.equalsIgnoreCase("DNS"))
            {
                ai1[i] = 2;
                i++;
            } else
            if (abx.a > 1)
            {
                e.println((new StringBuilder("unknown resolver method: ")).append(s).toString());
            }
        } while (true);
        c = new int[i];
        System.arraycopy(ai1, 0, c, 0, i);
    }
}
