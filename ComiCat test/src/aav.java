// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import java.io.IOException;
import java.net.InetAddress;
import java.util.Enumeration;
import java.util.Vector;

public final class aav
{

    static yk a[] = null;
    private static final String i = xj.b("jcifs.smb.client.logonShare", null);
    private static final int j = xj.a("jcifs.netbios.lookupRespLimit", 3);
    private static final String k = xj.b("jcifs.smb.client.domain", null);
    private static final String l = xj.b("jcifs.smb.client.username", null);
    private static final int m = xj.a("jcifs.netbios.cachePolicy", 600) * 60;
    int b;
    int c;
    Vector d;
    aax e;
    zl f;
    long g;
    String h;
    private xk n;
    private int o;
    private int p;
    private InetAddress q;

    aav(xk xk, int i1, InetAddress inetaddress, int j1, zl zl1)
    {
        e = null;
        h = null;
        n = xk;
        o = i1;
        q = inetaddress;
        p = j1;
        f = zl1;
        d = new Vector();
        b = 0;
    }

    final aax a()
    {
        this;
        JVM INSTR monitorenter ;
        aax aax1;
        if (e == null)
        {
            e = aax.a(n, o, q, p);
        }
        aax1 = e;
        this;
        JVM INSTR monitorexit ;
        return aax1;
        Exception exception;
        exception;
        throw exception;
    }

    final aay a(String s, String s1)
    {
        this;
        JVM INSTR monitorenter ;
        String s2;
        s2 = s;
        if (s == null)
        {
            s2 = "IPC$";
        }
        Enumeration enumeration = d.elements();
_L4:
        if (!enumeration.hasMoreElements()) goto _L2; else goto _L1
_L1:
        boolean flag;
        s = (aay)enumeration.nextElement();
        flag = s.a(s2, s1);
        if (!flag) goto _L4; else goto _L3
_L3:
        this;
        JVM INSTR monitorexit ;
        return s;
_L2:
        s = new aay(this, s2, s1);
        d.addElement(s);
        if (true) goto _L3; else goto _L5
_L5:
        s;
        throw s;
    }

    final void a(zm zm1, zm zm2)
    {
        Object obj3 = null;
        aax aax1 = a();
        aax1;
        JVM INSTR monitorenter ;
        if (zm2 == null)
        {
            break MISSING_BLOCK_LABEL_21;
        }
        zm2.u = false;
        g = System.currentTimeMillis() + (long)aax.av;
        aax aax2 = a();
        aax2;
        JVM INSTR monitorenter ;
_L8:
        if (b == 0) goto _L2; else goto _L1
_L1:
        if (b != 2 && b != 3) goto _L4; else goto _L3
_L3:
        if (zm2 == null) goto _L6; else goto _L5
_L5:
        if (!zm2.u) goto _L6; else goto _L7
_L7:
        aax1;
        JVM INSTR monitorexit ;
        return;
_L4:
        e.wait();
          goto _L8
        zm1;
        throw new aaq(zm1.getMessage(), zm1);
        zm1;
        aax2;
        JVM INSTR monitorexit ;
        throw zm1;
        zm1;
        aax1;
        JVM INSTR monitorexit ;
        throw zm1;
_L2:
        b = 1;
        e.a();
        abx abx1 = aax.c;
        if (abx.a >= 4)
        {
            aax.c.println((new StringBuilder("sessionSetup: accountName=")).append(f.i).append(",primaryDomain=").append(f.h).toString());
        }
        c = 0;
        byte byte0 = 10;
        Object obj = new byte[0];
        Object obj2 = null;
          goto _L9
_L25:
        try
        {
            throw new aaq((new StringBuilder("Unexpected session setup state: ")).append(byte0).toString());
        }
        // Misplaced declaration of an exception variable
        catch (zm zm1) { }
        finally { }
        a(true);
        b = 0;
        throw zm1;
        e.notifyAll();
        throw zm1;
_L26:
        if (f == zl.d) goto _L11; else goto _L10
_L10:
        boolean flag = e.a(0x80000000);
        if (!flag) goto _L11; else goto _L12
_L12:
        Object obj1;
        byte0 = 20;
        obj1 = obj2;
_L20:
        if (byte0 != 0) goto _L14; else goto _L13
_L13:
        e.notifyAll();
        aax2;
        JVM INSTR monitorexit ;
          goto _L3
_L11:
        Object obj4;
        aaf aaf1;
        obj4 = new aae(this, zm1, f);
        aaf1 = new aaf(zm2);
        if (!e.b(f)) goto _L16; else goto _L15
_L15:
        if (!f.m || zl.c == "") goto _L18; else goto _L17
_L17:
        e.a(zl.g).a(i, ((String) (null))).b(null, null);
_L16:
        obj4.z = f;
        e.a(((zm) (obj4)), aaf1);
        obj1 = obj3;
_L24:
        if (aaf1.b && !"GUEST".equalsIgnoreCase(f.i) && e.s.g != 0 && f != zl.d)
        {
            throw new zo(0xc000006d);
        }
          goto _L19
_L18:
        obj4.B = new zn(f.c(e.s.p), false);
          goto _L16
        zm1;
        throw zm1;
_L19:
        if (obj1 == null)
        {
            break MISSING_BLOCK_LABEL_508;
        }
        throw obj1;
        c = aaf1.p;
        if (((aae) (obj4)).B != null)
        {
            e.q = ((aae) (obj4)).B;
        }
        b = 2;
        byte0 = 0;
        obj3 = obj1;
        obj1 = obj2;
          goto _L20
_L27:
        obj1 = obj2;
        if (obj2 != null)
        {
            break MISSING_BLOCK_LABEL_595;
        }
        if ((e.t & 4) != 0)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        obj1 = new zk(f, flag);
        obj2 = aax.c;
        if (abx.a >= 4)
        {
            aax.c.println(obj1);
        }
        if (!((zk) (obj1)).d)
        {
            break MISSING_BLOCK_LABEL_649;
        }
        h = ((zk) (obj1)).g;
        b = 2;
        byte0 = 0;
          goto _L20
        obj = ((zk) (obj1)).a(((byte []) (obj)));
        if (obj == null) goto _L20; else goto _L21
_L21:
        obj2 = new aae(this, null, obj);
        obj4 = new aaf(null);
        if (!e.b(f))
        {
            break MISSING_BLOCK_LABEL_720;
        }
        obj = ((zk) (obj1)).f;
        if (obj == null)
        {
            break MISSING_BLOCK_LABEL_720;
        }
        obj2.B = new zn(((byte []) (obj)), true);
        obj2.p = c;
        c = 0;
        e.a(((zm) (obj2)), ((zm) (obj4)));
_L23:
        if (((aaf) (obj4)).b && !"GUEST".equalsIgnoreCase(f.i))
        {
            throw new zo(0xc000006d);
        }
        break; /* Loop/switch isn't completed */
        zm1;
        try
        {
            e.b(true);
        }
        // Misplaced declaration of an exception variable
        catch (zm zm2) { }
        c = 0;
        throw zm1;
        zm1;
        throw zm1;
        obj;
        e.b(true);
        obj3 = obj;
        continue; /* Loop/switch isn't completed */
        obj3;
        obj3 = obj;
        if (true) goto _L23; else goto _L22
_L22:
        if (obj3 == null)
        {
            break MISSING_BLOCK_LABEL_829;
        }
        throw obj3;
        c = ((aaf) (obj4)).p;
        if (((aae) (obj2)).B != null)
        {
            e.q = ((aae) (obj2)).B;
        }
        obj = ((aaf) (obj4)).c;
          goto _L20
_L6:
        if (zm1 instanceof aai)
        {
            aai aai1 = (aai)zm1;
            if (h != null && aai1.b.endsWith("\\IPC$"))
            {
                aai1.b = (new StringBuilder("\\\\")).append(h).append("\\IPC$").toString();
            }
        }
        zm1.p = c;
        zm1.z = f;
        e.a(zm1, zm2);
        aax1;
        JVM INSTR monitorexit ;
        return;
        zm2;
        if (zm1 instanceof aai)
        {
            a(true);
        }
        zm1.B = null;
        throw zm2;
        obj1;
          goto _L24
_L14:
        obj2 = obj1;
_L9:
        byte0;
        JVM INSTR lookupswitch 2: default 1024
    //                   10: 252
    //                   20: 556;
           goto _L25 _L26 _L27
    }

    final void a(boolean flag)
    {
label0:
        {
            synchronized (a())
            {
                if (b == 2)
                {
                    break label0;
                }
            }
            return;
        }
        b = 3;
        h = null;
        for (Enumeration enumeration = d.elements(); enumeration.hasMoreElements(); ((aay)enumeration.nextElement()).a(flag)) { }
        break MISSING_BLOCK_LABEL_66;
        exception;
        aax1;
        JVM INSTR monitorexit ;
        throw exception;
        if (flag)
        {
            break MISSING_BLOCK_LABEL_113;
        }
        zs zs1;
        if (e.s.g == 0)
        {
            break MISSING_BLOCK_LABEL_113;
        }
        zs1 = new zs();
        zs1.p = c;
        try
        {
            e.a(zs1, null);
        }
        catch (aaq aaq1) { }
        c = 0;
        b = 0;
        e.notifyAll();
        aax1;
        JVM INSTR monitorexit ;
    }

    public final String toString()
    {
        return (new StringBuilder("SmbSession[accountName=")).append(f.i).append(",primaryDomain=").append(f.h).append(",uid=").append(c).append(",connectionState=").append(b).append("]").toString();
    }

}
