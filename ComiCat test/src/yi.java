// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import java.io.IOException;
import java.net.DatagramPacket;
import java.net.DatagramSocket;
import java.net.InetAddress;
import java.net.SocketTimeoutException;
import java.net.UnknownHostException;
import java.util.HashMap;
import java.util.StringTokenizer;

final class yi
    implements Runnable
{

    private static final int c = xj.a("jcifs.netbios.snd_buf_size", 576);
    private static final int d = xj.a("jcifs.netbios.rcv_buf_size", 576);
    private static final int e = xj.a("jcifs.netbios.soTimeout", 5000);
    private static final int f = xj.a("jcifs.netbios.retryCount", 2);
    private static final int g = xj.a("jcifs.netbios.retryTimeout", 3000);
    private static final int h = xj.a("jcifs.netbios.lport", 0);
    private static final InetAddress i = xj.a("jcifs.netbios.laddr", null);
    private static final String j = xj.a("jcifs.resolveOrder");
    private static abx k = abx.a();
    InetAddress a;
    InetAddress b;
    private final Object l;
    private int m;
    private int n;
    private byte o[];
    private byte p[];
    private DatagramSocket q;
    private DatagramPacket r;
    private DatagramPacket s;
    private HashMap t;
    private Thread u;
    private int v;
    private int w[];

    yi()
    {
        this(h, i);
    }

    private yi(int i1, InetAddress inetaddress)
    {
        l = new Object();
        t = new HashMap();
        v = 0;
        m = i1;
        a = inetaddress;
        StringTokenizer stringtokenizer;
        try
        {
            b = xj.a("jcifs.netbios.baddr", InetAddress.getByName("255.255.255.255"));
        }
        // Misplaced declaration of an exception variable
        catch (InetAddress inetaddress) { }
        o = new byte[c];
        p = new byte[d];
        s = new DatagramPacket(o, c, b, 137);
        r = new DatagramPacket(p, d);
        if (j == null || j.length() == 0)
        {
            if (yk.c() == null)
            {
                w = new int[2];
                w[0] = 1;
                w[1] = 2;
                return;
            } else
            {
                w = new int[3];
                w[0] = 1;
                w[1] = 3;
                w[2] = 2;
                return;
            }
        }
        inetaddress = new int[3];
        stringtokenizer = new StringTokenizer(j, ",");
        i1 = 0;
        do
        {
            if (!stringtokenizer.hasMoreTokens())
            {
                break;
            }
            String s1 = stringtokenizer.nextToken().trim();
            if (s1.equalsIgnoreCase("LMHOSTS"))
            {
                inetaddress[i1] = 1;
                i1++;
            } else
            if (s1.equalsIgnoreCase("WINS"))
            {
                if (yk.c() == null)
                {
                    if (abx.a > 1)
                    {
                        k.println("NetBIOS resolveOrder specifies WINS however the jcifs.netbios.wins property has not been set");
                    }
                } else
                {
                    inetaddress[i1] = 3;
                    i1++;
                }
            } else
            if (s1.equalsIgnoreCase("BCAST"))
            {
                inetaddress[i1] = 2;
                i1++;
            } else
            if (!s1.equalsIgnoreCase("DNS") && abx.a > 1)
            {
                k.println((new StringBuilder("unknown resolver method: ")).append(s1).toString());
            }
        } while (true);
        w = new int[i1];
        System.arraycopy(inetaddress, 0, w, 0, i1);
    }

    private void a()
    {
        synchronized (l)
        {
            if (q != null)
            {
                q.close();
                q = null;
            }
            u = null;
            t.clear();
        }
        return;
        exception;
        obj;
        JVM INSTR monitorexit ;
        throw exception;
    }

    private void a(yj yj1, yj yj2, int i1)
    {
        Object obj;
        int j1;
        obj = null;
        int k1 = yk.a.length;
        j1 = k1;
        if (k1 == 0)
        {
            j1 = 1;
        }
        yj2;
        JVM INSTR monitorenter ;
_L10:
        if (j1 <= 0) goto _L2; else goto _L1
_L1:
        Object obj1;
        Object obj2;
        obj1 = obj;
        obj2 = obj;
        Object obj3 = l;
        obj1 = obj;
        obj2 = obj;
        obj3;
        JVM INSTR monitorenter ;
        obj1 = obj;
        int l1 = v + 1;
        obj1 = obj;
        v = l1;
        if ((l1 & 0xffff) != 0)
        {
            break MISSING_BLOCK_LABEL_92;
        }
        obj1 = obj;
        v = 1;
        obj1 = obj;
        yj1.c = v;
        obj1 = obj;
        obj = new Integer(yj1.c);
        s.setAddress(yj1.y);
        obj1 = s;
        obj2 = o;
        yj.a(yj1.c, ((byte []) (obj2)), 0);
        int i2;
        byte byte0;
        int j2;
        int k2;
        long l2;
        if (yj1.k)
        {
            l1 = 128;
        } else
        {
            l1 = 0;
        }
        k2 = yj1.d;
        if (yj1.l)
        {
            i2 = 4;
        } else
        {
            i2 = 0;
        }
        if (yj1.m)
        {
            byte0 = 2;
        } else
        {
            byte0 = 0;
        }
        if (yj1.n)
        {
            j2 = 1;
        } else
        {
            j2 = 0;
        }
        obj2[2] = (byte)(j2 + ((k2 << 3 & 0x78) + l1 + i2 + byte0));
        if (yj1.o)
        {
            l1 = 128;
        } else
        {
            l1 = 0;
        }
        if (yj1.p)
        {
            i2 = 16;
        } else
        {
            i2 = 0;
        }
        obj2[3] = (byte)(i2 + l1 + (yj1.e & 0xf));
        yj.a(yj1.f, ((byte []) (obj2)), 4);
        yj.a(yj1.g, ((byte []) (obj2)), 6);
        yj.a(yj1.h, ((byte []) (obj2)), 8);
        yj.a(yj1.i, ((byte []) (obj2)), 10);
        ((DatagramPacket) (obj1)).setLength(yj1.a(((byte []) (obj2))) + 12 + 0);
        yj2.j = false;
        t.put(obj, yj2);
        n = 0;
        if (e != 0)
        {
            n = Math.max(e, i1 + 1000);
        }
        if (q == null)
        {
            q = new DatagramSocket(m, a);
            u = new Thread(this, "JCIFS-NameServiceClient");
            u.setDaemon(true);
            u.start();
        }
        q.send(s);
        if (abx.a > 3)
        {
            k.println(yj1);
            abw.a(k, o, 0, s.getLength());
        }
        obj3;
        JVM INSTR monitorexit ;
        obj1 = obj;
        l2 = System.currentTimeMillis();
_L8:
        if (i1 <= 0) goto _L4; else goto _L3
_L3:
        obj1 = obj;
        yj2.wait(i1);
        obj1 = obj;
        if (!yj2.j) goto _L6; else goto _L5
_L5:
        obj1 = obj;
        l1 = yj1.s;
        obj1 = obj;
        i2 = yj2.u;
        if (l1 != i2) goto _L6; else goto _L7
_L7:
        t.remove(obj);
        yj2;
        JVM INSTR monitorexit ;
        return;
        obj1;
        yj1 = ((yj) (obj));
        obj = obj1;
_L12:
        obj1 = yj1;
        obj3;
        JVM INSTR monitorexit ;
        obj1 = yj1;
        obj2 = yj1;
        long l3;
        long l4;
        try
        {
            throw obj;
        }
        // Misplaced declaration of an exception variable
        catch (yj yj1)
        {
            obj = obj1;
        }
        finally
        {
            obj1 = obj2;
        }
_L11:
        obj1 = obj;
        throw new IOException(yj1.getMessage());
        yj1;
        t.remove(obj1);
        throw yj1;
        yj1;
        yj2;
        JVM INSTR monitorexit ;
        throw yj1;
_L6:
        obj1 = obj;
        yj2.j = false;
        l3 = i1;
        obj1 = obj;
        l4 = System.currentTimeMillis();
        i1 = (int)(l3 - (l4 - l2));
          goto _L8
_L4:
        t.remove(obj);
        obj1 = l;
        obj1;
        JVM INSTR monitorenter ;
        if (yk.a(yj1.y)) goto _L9; else goto _L2
_L2:
        yj2;
        JVM INSTR monitorexit ;
        return;
_L9:
        if (yj1.y == yk.c())
        {
            yk.d();
        }
        yj1.y = yk.c();
        obj1;
        JVM INSTR monitorexit ;
        j1--;
          goto _L10
        yj1;
        obj1;
        JVM INSTR monitorexit ;
        throw yj1;
        yj1;
          goto _L11
        obj;
        yj1 = ((yj) (obj1));
          goto _L12
    }

    final yk a(yf yf1, InetAddress inetaddress)
    {
        yg yg1;
        yh yh1;
        int i1;
        i1 = 0;
        boolean flag = false;
        yg1 = new yg(yf1);
        yh1 = new yh();
        if (inetaddress != null)
        {
            yg1.y = inetaddress;
            if (inetaddress.getAddress()[3] == -1)
            {
                flag = true;
            }
            yg1.p = flag;
            i1 = f;
            do
            {
                try
                {
                    a(((yj) (yg1)), ((yj) (yh1)), g);
                }
                // Misplaced declaration of an exception variable
                catch (InetAddress inetaddress)
                {
                    if (abx.a > 1)
                    {
                        inetaddress.printStackTrace(k);
                    }
                    throw new UnknownHostException(yf1.b);
                }
                if (yh1.j && yh1.e == 0)
                {
                    i1 = yh1.b.length - 1;
                    yh1.b[i1].f.e = inetaddress.hashCode();
                    return yh1.b[i1];
                }
                i1--;
            } while (i1 > 0 && yg1.p);
            throw new UnknownHostException(yf1.b);
        }
_L12:
        if (i1 >= w.length) goto _L2; else goto _L1
_L1:
        w[i1];
        JVM INSTR tableswitch 1 3: default 424
    //                   1 220
    //                   2 239
    //                   3 239;
           goto _L3 _L4 _L5 _L5
_L3:
        break MISSING_BLOCK_LABEL_424;
_L4:
        inetaddress = ye.a(yf1);
        if (inetaddress == null)
        {
            break MISSING_BLOCK_LABEL_424;
        }
        ((yk) (inetaddress)).f.e = 0;
        return inetaddress;
_L5:
        if (w[i1] != 3 || yf1.b == "\001\002__MSBROWSE__\002" || yf1.d == 29) goto _L7; else goto _L6
_L6:
        yg1.y = yk.c();
        yg1.p = false;
_L9:
        int j1 = f;
_L10:
        if (j1 <= 0)
        {
            break MISSING_BLOCK_LABEL_424;
        }
        a(((yj) (yg1)), ((yj) (yh1)), g);
        if (yh1.j && yh1.e == 0)
        {
            yh1.b[0].f.e = yg1.y.hashCode();
            return yh1.b[0];
        }
          goto _L8
_L7:
        yg1.y = b;
        yg1.p = true;
          goto _L9
        inetaddress;
        if (abx.a > 1)
        {
            inetaddress.printStackTrace(k);
        }
        throw new UnknownHostException(yf1.b);
_L8:
        int k1 = w[i1];
        if (k1 == 3)
        {
            break MISSING_BLOCK_LABEL_424;
        }
        j1--;
          goto _L10
_L2:
        throw new UnknownHostException(yf1.b);
_L13:
        i1++;
        if (true) goto _L12; else goto _L11
_L11:
        inetaddress;
          goto _L13
    }

    final yk[] a(yk yk1)
    {
        boolean flag = false;
        Object obj = new yn(yk1);
        ym ym1 = new ym(new yf("*\000\000\000\000\000\000\000\000\000\000\000\000\000\000\0", 0, null));
        ym1.y = InetAddress.getByName(yk1.g());
        int i1 = f;
        do
        {
            if (i1 > 0)
            {
                try
                {
                    a(((yj) (ym1)), ((yj) (obj)), g);
                }
                // Misplaced declaration of an exception variable
                catch (Object obj)
                {
                    if (abx.a > 1)
                    {
                        ((IOException) (obj)).printStackTrace(k);
                    }
                    throw new UnknownHostException(yk1.toString());
                }
                if (((yn) (obj)).j && ((yn) (obj)).e == 0)
                {
                    int j1 = ym1.y.hashCode();
                    for (i1 = ((flag) ? 1 : 0); i1 < ((yn) (obj)).z.length; i1++)
                    {
                        ((yn) (obj)).z[i1].f.e = j1;
                    }

                    return ((yn) (obj)).z;
                }
            } else
            {
                throw new UnknownHostException(yk1.f.b);
            }
            i1--;
        } while (true);
    }

    public final void run()
    {
_L2:
        yj yj1;
        do
        {
            if (u != Thread.currentThread())
            {
                break MISSING_BLOCK_LABEL_380;
            }
            r.setLength(d);
            q.setSoTimeout(n);
            q.receive(r);
            if (abx.a > 3)
            {
                k.println("NetBIOS: new data read from socket");
            }
            int i1 = yj.b(p, 0);
            yj1 = (yj)t.get(new Integer(i1));
        } while (yj1 == null);
        if (yj1.j) goto _L2; else goto _L1
_L1:
        yj1;
        JVM INSTR monitorenter ;
        byte abyte0[];
        abyte0 = p;
        yj1.c = yj.b(abyte0, 0);
        Object obj;
        Exception exception;
        boolean flag;
        if ((abyte0[2] & 0x80) == 0)
        {
            flag = false;
        } else
        {
            flag = true;
        }
        yj1.k = flag;
        yj1.d = (abyte0[2] & 0x78) >> 3;
        if ((abyte0[2] & 4) == 0)
        {
            flag = false;
        } else
        {
            flag = true;
        }
        yj1.l = flag;
        if ((abyte0[2] & 2) == 0)
        {
            flag = false;
        } else
        {
            flag = true;
        }
        yj1.m = flag;
        if ((abyte0[2] & 1) == 0)
        {
            flag = false;
        } else
        {
            flag = true;
        }
        yj1.n = flag;
        if ((abyte0[3] & 0x80) == 0)
        {
            flag = false;
        } else
        {
            flag = true;
        }
        yj1.o = flag;
        if ((abyte0[3] & 0x10) == 0)
        {
            flag = false;
        } else
        {
            flag = true;
        }
        yj1.p = flag;
        yj1.e = abyte0[3] & 0xf;
        yj1.f = yj.b(abyte0, 4);
        yj1.g = yj.b(abyte0, 6);
        yj1.h = yj.b(abyte0, 8);
        yj1.i = yj.b(abyte0, 10);
        yj1.b(abyte0);
        yj1.j = true;
        if (abx.a > 3)
        {
            k.println(yj1);
            abw.a(k, p, 0, r.getLength());
        }
        yj1.notify();
        yj1;
        JVM INSTR monitorexit ;
          goto _L2
        exception;
        yj1;
        JVM INSTR monitorexit ;
        throw exception;
        obj;
        a();
        return;
        a();
        return;
        obj;
        if (abx.a > 2)
        {
            ((Exception) (obj)).printStackTrace(k);
        }
        a();
        return;
        obj;
        a();
        throw obj;
    }

}
