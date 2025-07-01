// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import java.io.PrintStream;

final class lang.String extends qq
{

    boolean f;
    byte g[];
    byte h[];
    final rg i;

    final boolean a(String s)
    {
        if (!f)
        {
            return super.a(s);
        }
        rj rj1 = rg.a(i);
        rj1;
        JVM INSTR monitorenter ;
        boolean flag;
        si.a(s);
        s = new byte[rj1.a()];
        flag = si.a(h, s);
        rj1;
        JVM INSTR monitorexit ;
        return flag;
        s;
        rj1;
        JVM INSTR monitorexit ;
        try
        {
            throw s;
        }
        // Misplaced declaration of an exception variable
        catch (String s)
        {
            System.out.println(s);
        }
        return false;
    }

    final void f()
    {
        if (f)
        {
            return;
        }
        obj = rg.a(i);
        if (g == null)
        {
            synchronized (ry.g)
            {
                g = new byte[((rj) (obj)).a()];
            }
        }
        obj;
        JVM INSTR monitorenter ;
        si.a(b);
        h = new byte[((rj) (obj)).a()];
        obj;
        JVM INSTR monitorexit ;
_L2:
        b = (new StringBuilder("|1|")).append(si.a(si.b(g, g.length))).append("|").append(si.a(si.b(h, h.length))).toString();
        f = true;
        return;
        obj;
        ro;
        JVM INSTR monitorexit ;
        throw obj;
        Exception exception1;
        exception1;
        obj;
        JVM INSTR monitorexit ;
        try
        {
            throw exception1;
        }
        catch (Exception exception) { }
        if (true) goto _L2; else goto _L1
_L1:
    }

    private >(rg rg1, String s, String s1, byte abyte0[])
    {
label0:
        {
            i = rg1;
            super(s, s1, abyte0);
            f = false;
            g = null;
            h = null;
            if (b.startsWith("|1|") && b.substring(3).indexOf("|") > 0)
            {
                s = b.substring(3);
                rg1 = s.substring(0, s.indexOf("|"));
                s = s.substring(s.indexOf("|") + 1);
                g = si.a(si.a(rg1), rg1.length());
                h = si.a(si.a(s), s.length());
                if (g.length == 20 && h.length == 20)
                {
                    break label0;
                }
                g = null;
                h = null;
            }
            return;
        }
        f = true;
    }

    >(rg rg1, String s, byte abyte0[])
    {
        this(rg1, s, abyte0, (byte)0);
    }

    private >(rg rg1, String s, byte abyte0[], byte byte0)
    {
        this(rg1, "", s, abyte0);
    }
}
