// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import java.io.InputStream;

public final class qd extends qb
{

    private static final byte z[] = si.a("direct-tcpip");
    String v;
    int w;
    String x;
    int y;

    qd()
    {
        x = "127.0.0.1";
        y = 0;
        d = z;
        super.e = 0x20000;
        super.f = 0x20000;
        super.g = 16384;
    }

    final void a()
    {
        j = new qs();
    }

    public final void b(int i)
    {
        Object obj;
        s = i;
        try
        {
            obj = h();
            if (!((ry) (obj)).b)
            {
                throw new qy("session is down");
            }
        }
        // Misplaced declaration of an exception variable
        catch (Object obj)
        {
            j.b();
            j = null;
            qb.a(this);
            if (obj instanceof qy)
            {
                throw (qy)obj;
            }
            break MISSING_BLOCK_LABEL_134;
        }
        if (j.a != null)
        {
            k = new Thread(this);
            k.setName((new StringBuilder("DirectTCPIP thread ")).append(((ry) (obj)).p).toString());
            if (((ry) (obj)).m)
            {
                k.setDaemon(((ry) (obj)).m);
            }
            k.start();
            return;
        }
        l();
    }

    protected final rl k()
    {
        qa qa1 = new qa(v.length() + 50 + x.length() + 84);
        rl rl1 = new rl(qa1);
        rl1.a();
        qa1.a((byte)90);
        qa1.b(d);
        qa1.a(b);
        qa1.a(f);
        qa1.a(g);
        qa1.b(si.a(v));
        qa1.a(w);
        qa1.b(si.a(x));
        qa1.a(y);
        return rl1;
    }

    public final void run()
    {
        qa qa1;
        rl rl1;
        ry ry1;
        l();
        qa1 = new qa(this.i);
        rl1 = new rl(qa1);
        ry1 = h();
_L5:
        if (!g() || k == null || j == null || j.a == null) goto _L2; else goto _L1
_L1:
        int i = j.a.read(qa1.b, 14, qa1.b.length - 14 - 84);
        if (i > 0) goto _L4; else goto _L3
_L3:
        e();
_L2:
        e();
        f();
        return;
_L4:
        rl1.a();
        qa1.a((byte)94);
        qa1.a(c);
        qa1.a(i);
        qa1.b(i);
        this;
        JVM INSTR monitorenter ;
        if (!n)
        {
            break MISSING_BLOCK_LABEL_175;
        }
        this;
        JVM INSTR monitorexit ;
          goto _L2
        Exception exception;
        exception;
        this;
        JVM INSTR monitorexit ;
        try
        {
            throw exception;
        }
        catch (Exception exception1) { }
        if (!o)
        {
            o = true;
        }
        f();
        return;
        ry1.a(rl1, this, i);
        this;
        JVM INSTR monitorexit ;
          goto _L5
    }

}
