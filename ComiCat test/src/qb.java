// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import java.io.InputStream;
import java.io.PipedInputStream;
import java.io.PipedOutputStream;
import java.util.Vector;

public abstract class qb
    implements Runnable
{
    class a extends PipedInputStream
    {

        final qb a;
        private int b;
        private int c;

        final void a(int i1)
        {
            int j1 = 0;
            this;
            JVM INSTR monitorenter ;
            if (out >= in) goto _L2; else goto _L1
_L1:
            j1 = buffer.length - in;
_L5:
            if (j1 >= i1)
            {
                break; /* Loop/switch isn't completed */
            }
            int l1;
            l1 = buffer.length - j1;
            j1 = buffer.length;
              goto _L3
_L2:
            if (in >= out)
            {
                continue; /* Loop/switch isn't completed */
            }
            if (in == -1)
            {
                j1 = buffer.length;
                continue; /* Loop/switch isn't completed */
            }
            j1 = out - in;
            if (true) goto _L5; else goto _L4
_L15:
            int k1 = j1;
            if (j1 > c)
            {
                k1 = c;
            }
            if (k1 - l1 >= i1) goto _L7; else goto _L6
_L6:
            this;
            JVM INSTR monitorexit ;
            return;
_L7:
            Object obj = new byte[k1];
            if (out >= in) goto _L9; else goto _L8
_L8:
            System.arraycopy(buffer, 0, obj, 0, buffer.length);
_L12:
            buffer = ((byte []) (obj));
            continue; /* Loop/switch isn't completed */
            obj;
            throw obj;
_L9:
            if (in >= out) goto _L11; else goto _L10
_L10:
            if (in != -1)
            {
                System.arraycopy(buffer, 0, obj, 0, in);
                System.arraycopy(buffer, out, obj, obj.length - (buffer.length - out), buffer.length - out);
                out = obj.length - (buffer.length - out);
            }
              goto _L12
_L11:
            if (in != out) goto _L12; else goto _L13
_L13:
            System.arraycopy(buffer, 0, obj, 0, buffer.length);
            in = buffer.length;
              goto _L12
_L4:
            if (buffer.length != j1 || j1 <= b)
            {
                continue; /* Loop/switch isn't completed */
            }
            j1 /= 2;
            i1 = j1;
            if (j1 < b)
            {
                i1 = b;
            }
            buffer = new byte[i1];
            if (true) goto _L6; else goto _L3
_L3:
            while (j1 - l1 < i1) 
            {
                j1 *= 2;
            }
            if (true) goto _L15; else goto _L14
_L14:
        }

        private a()
        {
            a = qb.this;
            super();
            b = 1024;
            c = b;
            buffer = new byte[32768];
            b = 32768;
            c = 32768;
        }

        a(int i1)
        {
            this();
            c = i1;
        }

        a(PipedOutputStream pipedoutputstream, int i1)
        {
            a = qb.this;
            super(pipedoutputstream);
            b = 1024;
            c = b;
            buffer = new byte[i1];
            b = i1;
        }
    }

    final class b extends a
    {

        PipedOutputStream b;
        final qb c;

        public final void close()
        {
            if (b != null)
            {
                b.close();
            }
            b = null;
        }

        b(PipedOutputStream pipedoutputstream)
        {
            c = qb.this;
            super(pipedoutputstream, 32768);
            b = pipedoutputstream;
        }
    }

    final class c extends PipedOutputStream
    {

        final qb a;
        private a b;

        public final void write(int i1)
        {
            if (b != null)
            {
                b.a(1);
            }
            super.write(i1);
        }

        public final void write(byte abyte0[], int i1, int j1)
        {
            if (b != null)
            {
                b.a(j1);
            }
            super.write(abyte0, i1, j1);
        }

        c(PipedInputStream pipedinputstream, boolean flag)
        {
            a = qb.this;
            super(pipedinputstream);
            b = null;
            if (flag)
            {
                b = (a)pipedinputstream;
            }
        }
    }


    static int a = 0;
    private static Vector v = new Vector();
    int b;
    volatile int c;
    protected byte d[];
    volatile int e;
    volatile int f;
    volatile int g;
    volatile long h;
    volatile int i;
    qs j;
    Thread k;
    volatile boolean l;
    volatile boolean m;
    volatile boolean n;
    volatile boolean o;
    volatile boolean p;
    volatile int q;
    volatile int r;
    volatile int s;
    ry t;
    int u;

    qb()
    {
        c = -1;
        d = si.a("foo");
        e = 0x100000;
        f = e;
        g = 16384;
        h = 0L;
        i = 0;
        j = null;
        k = null;
        l = false;
        m = false;
        n = false;
        o = false;
        p = false;
        q = -1;
        r = 0;
        s = 0;
        u = 0;
        synchronized (v)
        {
            int i1 = a;
            a = i1 + 1;
            b = i1;
            v.addElement(this);
        }
        return;
        exception;
        vector;
        JVM INSTR monitorexit ;
        throw exception;
    }

    static qb a(int i1, ry ry1)
    {
        Vector vector = v;
        vector;
        JVM INSTR monitorenter ;
        int j1 = 0;
_L2:
        qb qb1;
        if (j1 >= v.size())
        {
            break MISSING_BLOCK_LABEL_55;
        }
        qb1 = (qb)(qb)v.elementAt(j1);
        if (qb1.b != i1 || qb1.t != ry1)
        {
            break MISSING_BLOCK_LABEL_64;
        }
        return qb1;
        vector;
        JVM INSTR monitorexit ;
        return null;
        ry1;
        vector;
        JVM INSTR monitorexit ;
        throw ry1;
        j1++;
        if (true) goto _L2; else goto _L1
_L1:
    }

    static qb a(String s1)
    {
        if (s1.equals("session"))
        {
            return new qg();
        }
        if (s1.equals("shell"))
        {
            return new qi();
        }
        if (s1.equals("exec"))
        {
            return new qe();
        }
        if (s1.equals("x11"))
        {
            return new qk();
        }
        if (s1.equals("auth-agent@openssh.com"))
        {
            return new qc();
        }
        if (s1.equals("direct-tcpip"))
        {
            return new qd();
        }
        if (s1.equals("forwarded-tcpip"))
        {
            return new qf();
        }
        if (s1.equals("sftp"))
        {
            return new qh();
        }
        if (s1.equals("subsystem"))
        {
            return new qj();
        } else
        {
            return null;
        }
    }

    static void a(qb qb1)
    {
        synchronized (v)
        {
            v.removeElement(qb1);
        }
        return;
        qb1;
        vector;
        JVM INSTR monitorexit ;
        throw qb1;
    }

    static void a(ry ry1)
    {
        Vector vector = v;
        vector;
        JVM INSTR monitorenter ;
        qb aqb[] = new qb[v.size()];
        int i1;
        int j1;
        j1 = 0;
        i1 = 0;
_L2:
        int l1 = v.size();
        if (j1 >= l1)
        {
            break; /* Loop/switch isn't completed */
        }
        qb qb1;
        ry ry2;
        qb1 = (qb)(qb)v.elementAt(j1);
        ry2 = qb1.t;
        if (ry2 == ry1)
        {
            aqb[i1] = qb1;
            i1++;
        }
_L3:
        j1++;
        if (true) goto _L2; else goto _L1
_L1:
        vector;
        JVM INSTR monitorexit ;
        for (int k1 = 0; k1 < i1; k1++)
        {
            aqb[k1].f();
        }

        break MISSING_BLOCK_LABEL_117;
        ry1;
        vector;
        JVM INSTR monitorexit ;
        throw ry1;
        return;
        Exception exception;
        exception;
          goto _L3
    }

    void a()
    {
    }

    final void a(int i1)
    {
        this;
        JVM INSTR monitorenter ;
        c = i1;
        if (u > 0)
        {
            notifyAll();
        }
        this;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        throw exception;
    }

    final void a(long l1)
    {
        this;
        JVM INSTR monitorenter ;
        h = l1;
        this;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        throw exception;
    }

    void a(qa qa1)
    {
        a(qa1.b());
        a(qa1.c());
        i = qa1.b();
    }

    void a(byte abyte0[], int i1, int j1)
    {
        try
        {
            j.a(abyte0, i1, j1);
            return;
        }
        // Misplaced declaration of an exception variable
        catch (byte abyte0[])
        {
            return;
        }
    }

    public void b()
    {
    }

    public void b(int i1)
    {
        s = i1;
        try
        {
            l();
            b();
            return;
        }
        catch (Exception exception)
        {
            o = false;
            f();
            if (exception instanceof qy)
            {
                throw (qy)exception;
            } else
            {
                throw new qy(exception.toString(), exception);
            }
        }
    }

    final void b(long l1)
    {
        this;
        JVM INSTR monitorenter ;
        h = h + l1;
        if (u > 0)
        {
            notifyAll();
        }
        this;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        throw exception;
    }

    public final InputStream c()
    {
        a a1;
        qs qs1;
        c c1;
        int i1;
        boolean flag;
        try
        {
            i1 = Integer.parseInt(h().b("max_input_buffer_size"));
        }
        catch (Exception exception)
        {
            i1 = 32768;
        }
        a1 = new a(i1);
        if (32768 < i1)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        qs1 = j;
        c1 = new c(a1, flag);
        qs1.e = false;
        qs1.b = c1;
        return a1;
    }

    void d()
    {
        m = true;
        try
        {
            j.a();
            return;
        }
        catch (NullPointerException nullpointerexception)
        {
            return;
        }
    }

    final void e()
    {
        if (!l) goto _L2; else goto _L1
_L1:
        return;
_L2:
        int i1;
        l = true;
        i1 = c;
        if (i1 == -1) goto _L1; else goto _L3
_L3:
        rl rl1;
        qa qa1 = new qa(100);
        rl1 = new rl(qa1);
        rl1.a();
        qa1.a((byte)96);
        qa1.a(i1);
        this;
        JVM INSTR monitorenter ;
        if (!n)
        {
            h().a(rl1);
        }
        this;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        this;
        JVM INSTR monitorexit ;
        try
        {
            throw exception;
        }
        catch (Exception exception1)
        {
            return;
        }
    }

    public void f()
    {
        this;
        JVM INSTR monitorenter ;
        if (o)
        {
            break MISSING_BLOCK_LABEL_16;
        }
        this;
        JVM INSTR monitorexit ;
        a(this);
        return;
        o = false;
        this;
        JVM INSTR monitorexit ;
        if (n) goto _L2; else goto _L1
_L1:
        int i1;
        n = true;
        m = true;
        l = true;
        i1 = c;
        if (i1 == -1) goto _L2; else goto _L3
_L3:
        rl rl1;
        qa qa1 = new qa(100);
        rl1 = new rl(qa1);
        rl1.a();
        qa1.a((byte)97);
        qa1.a(i1);
        this;
        JVM INSTR monitorenter ;
        h().a(rl1);
        this;
        JVM INSTR monitorexit ;
_L2:
        l = true;
        m = true;
        k = null;
        Object obj;
        try
        {
            if (j != null)
            {
                j.b();
            }
        }
        catch (Exception exception) { }
        a(this);
        return;
        obj;
        this;
        JVM INSTR monitorexit ;
        throw obj;
        obj;
        this;
        JVM INSTR monitorexit ;
        try
        {
            throw obj;
        }
        // Misplaced declaration of an exception variable
        catch (Object obj) { }
        finally
        {
            a(this);
            throw obj;
        }
        if (true) goto _L2; else goto _L4
_L4:
    }

    public final boolean g()
    {
        boolean flag1 = false;
        ry ry1 = t;
        boolean flag = flag1;
        if (ry1 != null)
        {
            flag = flag1;
            if (ry1.b)
            {
                flag = flag1;
                if (o)
                {
                    flag = true;
                }
            }
        }
        return flag;
    }

    public final ry h()
    {
        ry ry1 = t;
        if (ry1 == null)
        {
            throw new qy("session is not available");
        } else
        {
            return ry1;
        }
    }

    protected final void i()
    {
        qa qa1 = new qa(100);
        rl rl1 = new rl(qa1);
        rl1.a();
        qa1.a((byte)91);
        qa1.a(c);
        qa1.a(b);
        qa1.a(f);
        qa1.a(g);
        h().a(rl1);
    }

    protected final void j()
    {
        try
        {
            qa qa1 = new qa(100);
            rl rl1 = new rl(qa1);
            rl1.a();
            qa1.a((byte)92);
            qa1.a(c);
            qa1.a(1);
            qa1.b(si.a("open failed"));
            qa1.b(si.a);
            h().a(rl1);
            return;
        }
        catch (Exception exception)
        {
            return;
        }
    }

    protected rl k()
    {
        qa qa1 = new qa(100);
        rl rl1 = new rl(qa1);
        rl1.a();
        qa1.a((byte)90);
        qa1.b(d);
        qa1.a(b);
        qa1.a(f);
        qa1.a(g);
        return rl1;
    }

    protected final void l()
    {
        Object obj;
        int i1;
        long l2;
        long l3;
        obj = h();
        if (!((ry) (obj)).b)
        {
            throw new qy("session is down");
        }
        ((ry) (obj)).a(k());
        i1 = 2000;
        l3 = System.currentTimeMillis();
        l2 = s;
        if (l2 != 0L)
        {
            i1 = 1;
        }
        this;
        JVM INSTR monitorenter ;
_L2:
        if (c != -1 || !((ry) (obj)).b || i1 <= 0)
        {
            break MISSING_BLOCK_LABEL_158;
        }
        if (l2 <= 0L)
        {
            break MISSING_BLOCK_LABEL_105;
        }
        long l1 = System.currentTimeMillis();
        if (l1 - l3 > l2)
        {
            i1 = 0;
            continue; /* Loop/switch isn't completed */
        }
        InterruptedException interruptedexception;
        if (l2 == 0L)
        {
            l1 = 10L;
        } else
        {
            l1 = l2;
        }
        u = 1;
        wait(l1);
        u = 0;
        break MISSING_BLOCK_LABEL_221;
        interruptedexception;
        u = 0;
        break MISSING_BLOCK_LABEL_221;
        obj;
        this;
        JVM INSTR monitorexit ;
        throw obj;
        obj;
        u = 0;
        throw obj;
        this;
        JVM INSTR monitorexit ;
        if (!((ry) (obj)).b)
        {
            throw new qy("session is down");
        }
        if (c == -1)
        {
            throw new qy("channel is not opened.");
        }
        if (!p)
        {
            throw new qy("channel is not opened.");
        } else
        {
            o = true;
            return;
        }
        i1--;
        if (true) goto _L2; else goto _L1
_L1:
    }

    public void run()
    {
    }

}
