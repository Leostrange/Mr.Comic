// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.ConnectException;
import java.net.InetAddress;
import java.net.InetSocketAddress;
import java.net.NoRouteToHostException;
import java.net.Socket;
import java.util.HashMap;
import java.util.LinkedList;
import java.util.ListIterator;

public final class aax extends acc
    implements aap
{
    final class a
    {

        int a;
        int b;
        int c;
        int d;
        String e;
        int f;
        int g;
        boolean h;
        boolean i;
        boolean j;
        int k;
        int l;
        long m;
        int n;
        int o;
        byte p[];
        byte q[];
        final aax r;

        a()
        {
            r = aax.this;
            super();
        }
    }


    static final byte a[] = new byte[65535];
    static final zv b = new zv();
    static abx c = abx.a();
    static HashMap d = null;
    String A;
    InetAddress e;
    int f;
    xk g;
    Socket h;
    int i;
    int j;
    OutputStream k;
    InputStream l;
    byte m[];
    zp n;
    long o;
    LinkedList p;
    zn q;
    LinkedList r;
    a s;
    int t;
    int u;
    int v;
    int w;
    int x;
    int y;
    boolean z;

    aax(xk xk1, int i1, InetAddress inetaddress, int j1)
    {
        m = new byte[512];
        n = new zp();
        o = System.currentTimeMillis() + (long)av;
        p = new LinkedList();
        q = null;
        r = new LinkedList();
        s = new a();
        t = ap;
        u = Y;
        v = Z;
        w = aa;
        x = aq;
        y = 0;
        z = ab;
        A = null;
        g = xk1;
        i = i1;
        e = inetaddress;
        f = j1;
    }

    static aax a(xk xk1, int i1)
    {
        aax;
        JVM INSTR monitorenter ;
        xk1 = a(xk1, i1, W, X);
        aax;
        JVM INSTR monitorexit ;
        return xk1;
        xk1;
        throw xk1;
    }

    static aax a(xk xk1, int i1, InetAddress inetaddress, int j1)
    {
        aax;
        JVM INSTR monitorenter ;
        LinkedList linkedlist = at;
        linkedlist;
        JVM INSTR monitorenter ;
        if (au == 1) goto _L2; else goto _L1
_L1:
        ListIterator listiterator = at.listIterator();
_L15:
        if (!listiterator.hasNext()) goto _L2; else goto _L3
_L3:
        aax aax1;
        String s1;
        aax1 = (aax)listiterator.next();
        s1 = xk1.b();
        if (aax1.A != null && !s1.equalsIgnoreCase(aax1.A) || !xk1.equals(aax1.g)) goto _L5; else goto _L4
_L4:
        if (i1 == 0) goto _L7; else goto _L6
_L6:
        if (i1 == aax1.i) goto _L7; else goto _L8
_L8:
        if (i1 != 445) goto _L5; else goto _L9
_L9:
        if (aax1.i != 139) goto _L5; else goto _L7
_L7:
        if (inetaddress == aax1.e) goto _L11; else goto _L10
_L10:
        if (inetaddress == null) goto _L5; else goto _L12
_L12:
        if (!inetaddress.equals(aax1.e)) goto _L5; else goto _L11
_L11:
        if (j1 != aax1.f) goto _L5; else goto _L13
_L13:
        boolean flag = true;
_L17:
        if (!flag) goto _L15; else goto _L14
_L14:
        if (au != 0 && aax1.r.size() >= au) goto _L15; else goto _L16
_L16:
        linkedlist;
        JVM INSTR monitorexit ;
        xk1 = aax1;
_L18:
        aax;
        JVM INSTR monitorexit ;
        return xk1;
_L5:
        flag = false;
          goto _L17
_L2:
        xk1 = new aax(xk1, i1, inetaddress, j1);
        at.add(0, xk1);
        linkedlist;
        JVM INSTR monitorexit ;
          goto _L18
        xk1;
        linkedlist;
        JVM INSTR monitorexit ;
        throw xk1;
        xk1;
        aax;
        JVM INSTR monitorexit ;
        throw xk1;
          goto _L17
    }

    private void a(int i1, zm zm1)
    {
        byte abyte0[] = m;
        abyte0;
        JVM INSTR monitorenter ;
        if (i1 != 139) goto _L2; else goto _L1
_L1:
        yf yf1 = new yf(g.a(), 32, null);
_L15:
        Object obj;
        OutputStream outputstream;
        byte abyte1[];
        byte abyte2[];
        h = new Socket();
        if (e != null)
        {
            h.bind(new InetSocketAddress(e, f));
        }
        h.connect(new InetSocketAddress(g.c(), 139), aw);
        h.setSoTimeout(av);
        k = h.getOutputStream();
        l = h.getInputStream();
        obj = new yo(yf1, yk.b());
        outputstream = k;
        abyte1 = m;
        abyte2 = m;
        obj.b = ((yp) (obj)).a(abyte2);
        abyte2[0] = (byte)((yp) (obj)).a;
        if (((yp) (obj)).b > 65535)
        {
            abyte2[1] = 1;
        }
        i1 = ((yp) (obj)).b;
        abyte2[2] = (byte)(i1 >> 8 & 0xff);
        abyte2[3] = (byte)(i1 & 0xff);
        outputstream.write(abyte1, 0, ((yp) (obj)).b + 4);
        i1 = a(l, m, 0, 4);
        if (i1 >= 4)
        {
            break MISSING_BLOCK_LABEL_283;
        }
        int j1;
        try
        {
            h.close();
        }
        // Misplaced declaration of an exception variable
        catch (zm zm1) { }
        throw new aaq("EOF during NetBIOS session request");
        zm1;
        abyte0;
        JVM INSTR monitorexit ;
        throw zm1;
        m[0] & 0xff;
        JVM INSTR lookupswitch 3: default 900
    //                   -1: 633
    //                   130: 342
    //                   131: 508;
           goto _L3 _L4 _L5 _L6
_L3:
        b(true);
        throw new yl(0);
_L5:
        if (abx.a >= 4)
        {
            c.println((new StringBuilder("session established ok with ")).append(g).toString());
        }
_L19:
        i1 = j + 1;
        j = i1;
        if (i1 != 32000) goto _L8; else goto _L7
_L7:
        j = 1;
_L8:
        b.q = j;
        i1 = b.a(m);
        abu.a(i1 & 0xffff, m);
        if (abx.a >= 4)
        {
            c.println(b);
            if (abx.a >= 6)
            {
                abw.a(c, m, 4, i1);
            }
        }
        k.write(m, 0, i1 + 4);
        k.flush();
        if (c() == null)
        {
            throw new IOException("transport closed in negotiate");
        }
          goto _L9
_L6:
        i1 = l.read() & 0xff;
        i1;
        JVM INSTR tableswitch 128 130: default 903
    //                   128 562
    //                   129 548
    //                   130 562;
           goto _L10 _L11 _L10 _L11
_L10:
        b(true);
        throw new yl(i1);
_L11:
        h.close();
        obj = g;
        if (!(((xk) (obj)).a instanceof yk)) goto _L13; else goto _L12
_L12:
        obj = ((yk)((xk) (obj)).a).e();
_L18:
        yf1.b = ((String) (obj));
        if (obj != null) goto _L15; else goto _L14
_L14:
        throw new IOException((new StringBuilder("Failed to establish session with ")).append(g).toString());
_L4:
        b(true);
        throw new yl(-1);
_L13:
        if (((xk) (obj)).b == "*SMBSERVER     ") goto _L17; else goto _L16
_L16:
        obj.b = "*SMBSERVER     ";
        obj = ((xk) (obj)).b;
          goto _L18
_L23:
        h = new Socket();
        if (e != null)
        {
            h.bind(new InetSocketAddress(e, f));
        }
        h.connect(new InetSocketAddress(g.c(), j1), aw);
        h.setSoTimeout(av);
        k = h.getOutputStream();
        l = h.getInputStream();
          goto _L19
_L9:
        j1 = abu.a(m) & 0xffff;
        if (j1 < 33) goto _L21; else goto _L20
_L20:
        if (j1 + 4 <= m.length) goto _L22; else goto _L21
_L21:
        throw new IOException((new StringBuilder("Invalid payload size: ")).append(j1).toString());
_L22:
        a(l, m, 36, j1 - 32);
        zm1.b(m);
        if (abx.a >= 4)
        {
            c.println(zm1);
            if (abx.a >= 6)
            {
                abw.a(c, m, 4, i1);
            }
        }
        abyte0;
        JVM INSTR monitorexit ;
        return;
_L17:
        obj = null;
          goto _L18
_L2:
        j1 = i1;
        if (i1 == 0)
        {
            j1 = 445;
        }
          goto _L23
    }

    private void b(zm zm1, zm zm2)
    {
        zm2.l = aaq.b(zm2.l);
        switch (zm2.l)
        {
        default:
            throw new aaq(zm2.l);

        case -1073741790: 
        case -1073741718: 
        case -1073741715: 
        case -1073741714: 
        case -1073741713: 
        case -1073741712: 
        case -1073741711: 
        case -1073741710: 
        case -1073741428: 
        case -1073741260: 
            throw new zo(zm2.l);

        case -1073741225: 
            if (zm1.z == null)
            {
                throw new aaq(zm2.l);
            }
            yy yy1 = a(zm1.z, zm1.A, 1);
            if (yy1 == null)
            {
                throw new aaq(zm2.l);
            } else
            {
                aar.g.a(zm1.A, yy1);
                throw yy1;
            }

        case -2147483643: 
        case -1073741802: 
        case 0: // '\0'
            break;
        }
        if (zm2.y)
        {
            throw new aaq("Signature verification failed.");
        } else
        {
            return;
        }
    }

    private void c(aca aca)
    {
        try
        {
            b(aca);
            return;
        }
        // Misplaced declaration of an exception variable
        catch (aca aca) { }
        if (abx.a > 2)
        {
            aca.printStackTrace(c);
        }
        try
        {
            b(true);
        }
        catch (IOException ioexception)
        {
            ioexception.printStackTrace(c);
        }
        throw aca;
    }

    final aav a(zl zl1)
    {
        this;
        JVM INSTR monitorenter ;
        ListIterator listiterator1 = r.listIterator();
_L4:
        if (!listiterator1.hasNext()) goto _L2; else goto _L1
_L1:
        aav aav1 = (aav)listiterator1.next();
        boolean flag;
        long l1;
        long l2;
        if (aav1.f != zl1 && !aav1.f.equals(zl1))
        {
            flag = false;
        } else
        {
            flag = true;
        }
        if (!flag) goto _L4; else goto _L3
_L3:
        aav1.f = zl1;
        zl1 = aav1;
_L5:
        this;
        JVM INSTR monitorexit ;
        return zl1;
_L2:
        if (av <= 0)
        {
            break MISSING_BLOCK_LABEL_159;
        }
        l1 = o;
        l2 = System.currentTimeMillis();
        if (l1 >= l2)
        {
            break MISSING_BLOCK_LABEL_159;
        }
        o = (long)av + l2;
        ListIterator listiterator = r.listIterator();
        do
        {
            if (!listiterator.hasNext())
            {
                break;
            }
            aav aav2 = (aav)listiterator.next();
            if (aav2.g < l2)
            {
                aav2.a(false);
            }
        } while (true);
        break MISSING_BLOCK_LABEL_159;
        zl1;
        throw zl1;
        zl1 = new aav(g, i, e, f, zl1);
        zl1.e = this;
        r.add(zl1);
          goto _L5
    }

    final yy a(zl zl1, String s1, int i1)
    {
        yy yy1;
        abd abd1;
        String as[];
        int k1;
        int l1;
        long l3;
        long l4;
label0:
        {
            aay aay1 = a(zl1).a("IPC$", null);
            abd1 = new abd();
            aay1.a(new abc(s1), abd1);
            if (abd1.S == 0)
            {
                return null;
            }
            if (i1 != 0)
            {
                k1 = i1;
                if (abd1.S >= i1)
                {
                    break label0;
                }
            }
            k1 = abd1.S;
        }
        yy1 = new yy();
        as = new String[4];
        l3 = System.currentTimeMillis();
        l4 = yx.c;
        l1 = 0;
_L3:
        yy1.g = zl1.m;
        yy1.b = abd1.U[l1].i;
        yy1.h = l3 + l4 * 1000L;
        if (!s1.equals("")) goto _L2; else goto _L1
_L1:
        yy1.c = abd1.U[l1].j.substring(1).toLowerCase();
_L4:
        int j1;
        int i2;
        yy1.a = abd1.a;
        l1++;
        String s2;
        int j2;
        int i3;
        if (l1 != k1)
        {
            yy yy2 = new yy();
            yy2.i = yy1.i;
            yy1.i = yy2;
            yy1 = yy1.i;
        } else
        {
            return yy1.i;
        }
        if (true) goto _L3; else goto _L2
_L2:
        s2 = abd1.U[l1].k;
        i1 = 0;
        i3 = s2.length();
        i2 = 0;
        j1 = 0;
_L5:
        if (j1 == 3)
        {
            as[3] = s2.substring(i1);
        } else
        {
            int k2;
            if (i2 == i3 || s2.charAt(i2) == '\\')
            {
                as[j1] = s2.substring(i1, i2);
                i1 = i2 + 1;
                j2 = j1 + 1;
                j1 = i1;
                i1 = j2;
            } else
            {
                int l2 = i1;
                i1 = j1;
                j1 = l2;
            }
            if (i2 < i3)
            {
                break MISSING_BLOCK_LABEL_386;
            }
            while (i1 < 4) 
            {
                as[i1] = "";
                i1++;
            }
        }
        yy1.c = as[1];
        yy1.d = as[2];
        yy1.f = as[3];
          goto _L4
        k2 = i2 + 1;
        i2 = i1;
        i1 = j1;
        j1 = i2;
        i2 = k2;
          goto _L5
    }

    public final void a()
    {
        try
        {
            super.a(as);
            return;
        }
        catch (acd acd1)
        {
            throw new aaq((new StringBuilder("Failed to connect: ")).append(g).toString(), acd1);
        }
    }

    protected final void a(aca aca)
    {
        int i1 = j + 1;
        j = i1;
        if (i1 == 32000)
        {
            j = 1;
        }
        ((zm)aca).q = j;
    }

    protected final void a(acb acb)
    {
        zm zm1;
        boolean flag = false;
        zm1 = (zm)acb;
        zm1.t = z;
        if ((x & 0x80000000) == 0x80000000)
        {
            flag = true;
        }
        zm1.v = flag;
        byte abyte0[] = a;
        abyte0;
        JVM INSTR monitorenter ;
        int i1;
        System.arraycopy(m, 0, a, 0, 36);
        i1 = 0xffff & abu.a(a);
        if (i1 < 33)
        {
            break MISSING_BLOCK_LABEL_88;
        }
        if (i1 + 4 <= w)
        {
            break MISSING_BLOCK_LABEL_119;
        }
        throw new IOException((new StringBuilder("Invalid payload size: ")).append(i1).toString());
        acb;
        abyte0;
        JVM INSTR monitorexit ;
        throw acb;
        int j1 = abu.b(a, 9) & -1;
        if (zm1.g != 46 || j1 != 0 && j1 != 0x80000005)
        {
            break MISSING_BLOCK_LABEL_320;
        }
        aad aad1;
        aad1 = (aad)zm1;
        a(l, a, 36, 27);
        zm1.b(a);
        j1 = aad1.E - 59;
        if (aad1.s <= 0 || j1 <= 0 || j1 >= 4)
        {
            break MISSING_BLOCK_LABEL_226;
        }
        a(l, a, 63, j1);
        if (aad1.D > 0)
        {
            a(l, aad1.b, aad1.c, aad1.D);
        }
_L2:
        if (q != null && zm1.l == 0)
        {
            q.a(a, zm1);
        }
        if (abx.a >= 4)
        {
            c.println(acb);
            if (abx.a >= 6)
            {
                abw.a(c, a, 4, i1);
            }
        }
        abyte0;
        JVM INSTR monitorexit ;
        return;
        a(l, a, 36, i1 - 32);
        zm1.b(a);
        if (zm1 instanceof aah)
        {
            ((aah)zm1).nextElement();
        }
        if (true) goto _L2; else goto _L1
_L1:
    }

    final void a(zm zm1, zm zm2)
    {
        a();
        zm1.m = zm1.m | t;
        zm1.t = z;
        zm1.C = zm2;
        if (zm1.B == null)
        {
            zm1.B = q;
        }
        aag aag1;
        aah aah1;
        zp zp1;
        long l1;
        long l2;
        if (zm2 == null)
        {
            try
            {
                c(zm1);
                return;
            }
            // Misplaced declaration of an exception variable
            catch (zm zm1)
            {
                throw zm1;
            }
            // Misplaced declaration of an exception variable
            catch (zm zm1)
            {
                throw new aaq(zm1.getMessage(), zm1);
            }
        }
        if (!(zm1 instanceof aag))
        {
            break MISSING_BLOCK_LABEL_383;
        }
        zm2.g = zm1.g;
        aag1 = (aag)zm1;
        aah1 = (aah)zm2;
        aag1.U = v;
        aah1.e();
        yw.a(aag1, aah1);
        aag1.nextElement();
        if (!aag1.hasMoreElements())
        {
            break MISSING_BLOCK_LABEL_328;
        }
        zp1 = new zp();
        super.a(aag1, zp1, as);
        if (zp1.l != 0)
        {
            b(aag1, zp1);
        }
        aag1.nextElement();
_L3:
        this;
        JVM INSTR monitorenter ;
        zm2.u = false;
        aah1.b_ = false;
        H.put(aag1, aah1);
        do
        {
            c(aag1);
        } while (aag1.hasMoreElements() && aag1.nextElement() != null);
        l1 = as;
        aah1.a_ = System.currentTimeMillis() + l1;
_L2:
        if (!aah1.hasMoreElements())
        {
            break MISSING_BLOCK_LABEL_336;
        }
        wait(l1);
        l2 = aah1.a_ - System.currentTimeMillis();
        l1 = l2;
        if (l2 > 0L) goto _L2; else goto _L1
_L1:
        try
        {
            throw new acd((new StringBuilder()).append(this).append(" timedout waiting for response to ").append(aag1).toString());
        }
        // Misplaced declaration of an exception variable
        catch (zm zm1) { }
        finally { }
        throw new acd(zm1);
        H.remove(aag1);
        throw zm1;
        zm1;
        this;
        JVM INSTR monitorexit ;
        throw zm1;
        zm1;
        yw.a(aag1.V);
        yw.a(aah1.O);
        throw zm1;
        a(((aca) (aag1)));
          goto _L3
        if (zm2.l != 0)
        {
            b(aag1, aah1);
        }
        H.remove(aag1);
        this;
        JVM INSTR monitorexit ;
        yw.a(aag1.V);
        yw.a(aah1.O);
_L4:
        b(zm1, zm2);
        return;
        zm2.g = zm1.g;
        super.a(zm1, zm2, as);
          goto _L4
    }

    protected final void a(boolean flag)
    {
        ListIterator listiterator = r.listIterator();
        while (listiterator.hasNext()) 
        {
            ((aav)listiterator.next()).a(flag);
        }
        break MISSING_BLOCK_LABEL_51;
        Exception exception;
        exception;
        q = null;
        h = null;
        A = null;
        throw exception;
        h.shutdownOutput();
        k.close();
        l.close();
        h.close();
        q = null;
        h = null;
        A = null;
        return;
    }

    final boolean a(int i1)
    {
        try
        {
            a(as);
        }
        catch (IOException ioexception)
        {
            throw new aaq(ioexception.getMessage(), ioexception);
        }
        return (x & i1) == i1;
    }

    protected final void b()
    {
label0:
        {
            int i1 = 445;
            zw zw1 = new zw(s);
            try
            {
                a(i, zw1);
            }
            catch (ConnectException connectexception)
            {
                if (i == 0 || i == 445)
                {
                    i1 = 139;
                }
                i = i1;
                a(i, zw1);
            }
            catch (NoRouteToHostException noroutetohostexception)
            {
                if (i == 0 || i == 445)
                {
                    i1 = 139;
                }
                i = i1;
                a(i, zw1);
            }
            if (zw1.a > 10)
            {
                throw new aaq("This client does not support the negotiated dialect.");
            }
            if ((s.d & 0x80000000) != 0x80000000 && s.o != 8 && ai == 0)
            {
                throw new aaq((new StringBuilder("Unexpected encryption key length: ")).append(s.o).toString());
            }
            A = g.b();
            if (s.j || s.i && ae)
            {
                t = t | 4;
            } else
            {
                t = t & 0xfffb;
            }
            u = Math.min(u, s.a);
            if (u <= 0)
            {
                u = 1;
            }
            v = Math.min(v, s.b);
            x = x & s.d;
            if ((s.d & 0x80000000) == 0x80000000)
            {
                x = x | 0x80000000;
            }
            if ((x & 4) == 0)
            {
                if (!ac)
                {
                    break label0;
                }
                x = x | 4;
            }
            return;
        }
        z = false;
        t = t & 0x7fff;
    }

    protected final void b(aca aca)
    {
        byte abyte0[] = a;
        abyte0;
        JVM INSTR monitorenter ;
        int i1;
        aca = (zm)aca;
        i1 = aca.a(a);
        abu.a(0xffff & i1, a);
        if (abx.a < 4)
        {
            break MISSING_BLOCK_LABEL_87;
        }
_L2:
        zm zm1;
        c.println(aca);
        if (!(aca instanceof yv))
        {
            break; /* Loop/switch isn't completed */
        }
        zm1 = ((yv)aca).a;
        aca = zm1;
        if (zm1 != null) goto _L2; else goto _L1
_L1:
        if (abx.a >= 6)
        {
            abw.a(c, a, 4, i1);
        }
        k.write(a, 0, i1 + 4);
        abyte0;
        JVM INSTR monitorexit ;
        return;
        aca;
        abyte0;
        JVM INSTR monitorexit ;
        throw aca;
    }

    final boolean b(zl zl1)
    {
        return (t & 4) != 0 && q == null && zl1 != zl.e && !zl.e.equals(zl1);
    }

    protected final aca c()
    {
_L2:
        if (a(l, m, 0, 4) >= 4)
        {
            continue; /* Loop/switch isn't completed */
        }
_L4:
        return null;
        if (m[0] == -123) goto _L2; else goto _L1
_L1:
        if (a(l, m, 4, 32) < 32) goto _L4; else goto _L3
_L3:
        if (abx.a >= 4)
        {
            c.println((new StringBuilder("New data read: ")).append(this).toString());
            abw.a(c, m, 4, 32);
        }
_L6:
        int j1;
        if (m[0] == 0 && m[1] == 0 && m[4] == -1 && m[5] == 83 && m[6] == 77 && m[7] == 66)
        {
            break MISSING_BLOCK_LABEL_209;
        }
        for (int i1 = 0; i1 < 35; i1++)
        {
            m[i1] = m[i1 + 1];
        }

        j1 = l.read();
        if (j1 == -1) goto _L4; else goto _L5
_L5:
        m[35] = (byte)j1;
          goto _L6
          goto _L4
        n.q = abu.a(m, 34) & 0xffff;
        return n;
    }

    protected final void d()
    {
        int i1 = abu.a(m) & 0xffff;
        if (i1 < 33 || i1 + 4 > w)
        {
            l.skip(l.available());
            return;
        } else
        {
            l.skip(i1 - 32);
            return;
        }
    }

    public final String toString()
    {
        return (new StringBuilder()).append(super.toString()).append("[").append(g).append(":").append(i).append("]").toString();
    }

}
