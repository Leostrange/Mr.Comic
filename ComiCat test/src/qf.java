// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import java.io.InputStream;
import java.io.PipedOutputStream;
import java.net.Socket;
import java.util.Vector;

public final class qf extends qb
{
    static abstract class a
    {

        ry a;
        int b;
        int c;
        String d;
        String e;

        a()
        {
        }
    }

    static final class b extends a
    {

        b()
        {
        }
    }

    static final class c extends a
    {

        int f;
        se g;

        c()
        {
        }
    }


    private static Vector v = new Vector();
    private Socket w;
    private qo x;
    private a y;

    qf()
    {
        w = null;
        x = null;
        y = null;
        super.e = 0x20000;
        super.f = 0x20000;
        super.g = 16384;
        j = new qs();
        o = true;
    }

    private static a a(ry ry1, String s, int i)
    {
        Vector vector = v;
        vector;
        JVM INSTR monitorenter ;
        int j = 0;
_L2:
        a a1;
        if (j >= v.size())
        {
            break MISSING_BLOCK_LABEL_92;
        }
        a1 = (a)(a)v.elementAt(j);
        if (a1.a != ry1 || a1.b != i && (a1.b != 0 || a1.c != i))
        {
            break MISSING_BLOCK_LABEL_101;
        }
        if (s == null)
        {
            break MISSING_BLOCK_LABEL_87;
        }
        if (!a1.d.equals(s))
        {
            break MISSING_BLOCK_LABEL_101;
        }
        vector;
        JVM INSTR monitorexit ;
        return a1;
        vector;
        JVM INSTR monitorexit ;
        return null;
        ry1;
        vector;
        JVM INSTR monitorexit ;
        throw ry1;
        j++;
        if (true) goto _L2; else goto _L1
_L1:
    }

    static void b(ry ry1)
    {
        Object obj = v;
        obj;
        JVM INSTR monitorenter ;
        int ai[] = new int[v.size()];
        int i;
        int j;
        j = 0;
        i = 0;
_L5:
        if (j >= v.size())
        {
            break MISSING_BLOCK_LABEL_72;
        }
        a a1 = (a)(a)v.elementAt(j);
        if (a1.a != ry1)
        {
            break MISSING_BLOCK_LABEL_246;
        }
        ai[i] = a1.b;
        i++;
        break MISSING_BLOCK_LABEL_246;
        obj;
        JVM INSTR monitorexit ;
        j = 0;
_L2:
        int k;
        if (j >= i)
        {
            break MISSING_BLOCK_LABEL_245;
        }
        k = ai[j];
        Object obj2 = v;
        obj2;
        JVM INSTR monitorenter ;
        Object obj1 = a(ry1, "localhost", k);
        obj = obj1;
        if (obj1 != null)
        {
            break MISSING_BLOCK_LABEL_121;
        }
        obj = a(ry1, null, k);
        if (obj != null)
        {
            break; /* Loop/switch isn't completed */
        }
        obj2;
        JVM INSTR monitorexit ;
_L3:
        j++;
        if (true) goto _L2; else goto _L1
        ry1;
        obj;
        JVM INSTR monitorexit ;
        throw ry1;
_L1:
        v.removeElement(obj);
        obj1 = ((a) (obj)).d;
        obj = obj1;
        if (obj1 == null)
        {
            obj = "0.0.0.0";
        }
        obj2;
        JVM INSTR monitorexit ;
        qa qa1 = new qa(100);
        obj2 = new rl(qa1);
        try
        {
            ((rl) (obj2)).a();
            qa1.a((byte)80);
            qa1.b(si.a("cancel-tcpip-forward"));
            qa1.a((byte)0);
            qa1.b(si.a(((String) (obj))));
            qa1.a(k);
            ry1.a(((rl) (obj2)));
        }
        catch (Exception exception) { }
          goto _L3
        ry1;
        obj2;
        JVM INSTR monitorexit ;
        throw ry1;
        return;
        j++;
        if (true) goto _L5; else goto _L4
_L4:
    }

    final void a(qa qa1)
    {
        a(qa1.b());
        a(qa1.c());
        super.i = qa1.b();
        byte abyte0[] = qa1.g();
        int i = qa1.b();
        qa1.g();
        qa1.b();
        try
        {
            qa1 = h();
        }
        // Misplaced declaration of an exception variable
        catch (qa qa1)
        {
            qa1 = null;
        }
        y = a(((ry) (qa1)), si.a(abyte0), i);
        if (y == null)
        {
            y = a(((ry) (qa1)), null, i);
        }
        if (y == null)
        {
            qw.b();
        }
    }

    public final void run()
    {
        if (!(y instanceof b)) goto _L2; else goto _L1
_L1:
        x = (qo)Class.forName(((b)y).e).newInstance();
        Object obj1 = new PipedOutputStream();
        qs qs1 = j;
        obj1 = new qb.b(this, ((PipedOutputStream) (obj1)));
        qs1.d = false;
        qs1.a = ((InputStream) (obj1));
        c();
        (new Thread(x)).start();
_L7:
        i();
        Object obj;
        rl rl1;
        k = Thread.currentThread();
        obj = new qa(this.i);
        rl1 = new rl(((qa) (obj)));
        ry ry1 = h();
_L9:
        if (k == null || j == null || j.a == null) goto _L4; else goto _L3
_L3:
        int i = j.a.read(((qa) (obj)).b, 14, ((qa) (obj)).b.length - 14 - 84);
        if (i > 0) goto _L6; else goto _L5
_L5:
        Exception exception;
        try
        {
            e();
        }
        catch (Exception exception1) { }
_L4:
        f();
        return;
_L2:
        obj = (c)y;
        if (((c) (obj)).g != null)
        {
            break MISSING_BLOCK_LABEL_278;
        }
        obj = si.a(((c) (obj)).e, ((c) (obj)).f, 10000);
_L8:
        w = ((Socket) (obj));
        w.setTcpNoDelay(true);
        j.a = w.getInputStream();
        j.b = w.getOutputStream();
          goto _L7
        try
        {
            obj = ((c) (obj)).g.a();
        }
        // Misplaced declaration of an exception variable
        catch (Object obj)
        {
            j();
            n = true;
            f();
            return;
        }
          goto _L8
_L6:
        rl1.a();
        ((qa) (obj)).a((byte)94);
        ((qa) (obj)).a(c);
        ((qa) (obj)).a(i);
        ((qa) (obj)).b(i);
        this;
        JVM INSTR monitorenter ;
        if (!n)
        {
            break MISSING_BLOCK_LABEL_344;
        }
        this;
        JVM INSTR monitorexit ;
          goto _L4
        exception;
        this;
        JVM INSTR monitorexit ;
        throw exception;
        ry1.a(rl1, this, i);
        this;
        JVM INSTR monitorexit ;
          goto _L9
    }

}
