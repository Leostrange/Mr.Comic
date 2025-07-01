// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import java.io.InputStream;
import java.util.Enumeration;
import java.util.Hashtable;

class qg extends qb
{

    private static byte v[] = si.a("session");
    protected String A;
    protected int B;
    protected int C;
    protected int D;
    protected int E;
    protected byte F[];
    protected boolean w;
    protected boolean x;
    protected Hashtable y;
    protected boolean z;

    qg()
    {
        w = false;
        x = false;
        y = null;
        z = false;
        A = "vt100";
        B = 80;
        C = 24;
        D = 640;
        E = 480;
        F = null;
        d = v;
        j = new qs();
    }

    private static byte[] a(Object obj)
    {
        if (obj instanceof String)
        {
            return si.a((String)obj);
        } else
        {
            return (byte[])(byte[])obj;
        }
    }

    protected final void m()
    {
        ry ry1 = h();
        if (w)
        {
            (new rq()).a(ry1, this);
        }
        if (x)
        {
            (new rx()).a(ry1, this);
        }
        if (z)
        {
            rt rt1 = new rt();
            ((rt)rt1).b = A;
            rt rt2 = (rt)rt1;
            int i = B;
            int j = C;
            int k = D;
            int l = E;
            rt2.c = i;
            rt2.d = j;
            rt2.e = k;
            rt2.f = l;
            if (F != null)
            {
                ((rt)rt1).g = F;
            }
            rt1.a(ry1, this);
        }
        if (y != null)
        {
            rr rr1;
            for (Enumeration enumeration = y.keys(); enumeration.hasMoreElements(); rr1.a(ry1, this))
            {
                Object obj1 = enumeration.nextElement();
                Object obj = y.get(obj1);
                rr1 = new rr();
                rr rr2 = (rr)rr1;
                byte abyte1[] = a(obj1);
                byte abyte0[] = a(obj);
                rr2.b = abyte1;
                rr2.c = abyte0;
            }

        }
    }

    public void run()
    {
        Object obj;
        rl rl1;
        obj = new qa(this.i);
        rl1 = new rl(((qa) (obj)));
_L9:
        if (!g() || k == null || j == null || j.a == null) goto _L2; else goto _L1
_L1:
        int i = j.a.read(((qa) (obj)).b, 14, ((qa) (obj)).b.length - 14 - 84);
        if (i == 0)
        {
            continue; /* Loop/switch isn't completed */
        }
        if (i != -1) goto _L4; else goto _L3
_L3:
        try
        {
            e();
        }
        // Misplaced declaration of an exception variable
        catch (Object obj) { }
_L2:
        obj = k;
        if (obj == null) goto _L6; else goto _L5
_L5:
        obj;
        JVM INSTR monitorenter ;
        obj.notifyAll();
        obj;
        JVM INSTR monitorexit ;
_L6:
        k = null;
        return;
_L4:
        if (n) goto _L2; else goto _L7
_L7:
        rl1.a();
        ((qa) (obj)).a((byte)94);
        ((qa) (obj)).a(c);
        ((qa) (obj)).a(i);
        ((qa) (obj)).b(i);
        h().a(rl1, this, i);
        if (true) goto _L9; else goto _L8
_L8:
        Exception exception;
        exception;
        obj;
        JVM INSTR monitorexit ;
        throw exception;
    }

}
