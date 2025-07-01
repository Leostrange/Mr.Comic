// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import java.io.IOException;
import java.io.InputStream;
import java.util.HashMap;

public abstract class acc
    implements Runnable
{

    static int B = 0;
    static abx C = abx.a();
    int D;
    String E;
    Thread F;
    acd G;
    protected HashMap H;

    public acc()
    {
        D = 0;
        StringBuilder stringbuilder = new StringBuilder("Transport");
        int i = B;
        B = i + 1;
        E = stringbuilder.append(i).toString();
        H = new HashMap(4);
    }

    public static int a(InputStream inputstream, byte abyte0[], int i, int j)
    {
        int k = 0;
        do
        {
            if (k >= j)
            {
                break;
            }
            int l = inputstream.read(abyte0, i + k, j - k);
            if (l <= 0)
            {
                break;
            }
            k += l;
        } while (true);
        return k;
    }

    public final void a(long l)
    {
        this;
        JVM INSTR monitorenter ;
        D;
        JVM INSTR tableswitch 0 4: default 528
    //                   0 252
    //                   1 40
    //                   2 40
    //                   3 166
    //                   4 233;
           goto _L1 _L2 _L1 _L1 _L3 _L4
_L1:
        acd acd1 = new acd((new StringBuilder("Invalid state: ")).append(D).toString());
        D = 0;
        throw acd1;
        Object obj;
        obj;
        D = 0;
        F = null;
        throw new acd(((Throwable) (obj)));
        obj;
        if (D != 0 && D != 3 && D != 4)
        {
            if (abx.a > 0)
            {
                C.println((new StringBuilder("Invalid state: ")).append(D).toString());
            }
            D = 0;
            F = null;
        }
        throw obj;
        obj;
        this;
        JVM INSTR monitorexit ;
        throw obj;
_L3:
        if (D != 0 && D != 3 && D != 4)
        {
            if (abx.a > 0)
            {
                C.println((new StringBuilder("Invalid state: ")).append(D).toString());
            }
            D = 0;
            F = null;
        }
_L9:
        this;
        JVM INSTR monitorexit ;
        return;
_L4:
        D = 0;
        throw new acd("Connection in error", G);
_L2:
        D = 1;
        G = null;
        F = new Thread(this, E);
        F.setDaemon(true);
        Thread thread = F;
        thread;
        JVM INSTR monitorenter ;
        F.start();
        F.wait(l);
        D;
        JVM INSTR tableswitch 1 2: default 531
    //                   1 405
    //                   2 432;
           goto _L5 _L6 _L7
_L5:
        if (D == 0 || D == 3 || D == 4) goto _L9; else goto _L8
_L8:
        if (abx.a > 0)
        {
            C.println((new StringBuilder("Invalid state: ")).append(D).toString());
        }
        D = 0;
        F = null;
          goto _L9
_L6:
        D = 0;
        F = null;
        throw new acd("Connection timeout");
        Exception exception;
        exception;
        thread;
        JVM INSTR monitorexit ;
        throw exception;
_L7:
        if (G != null)
        {
            D = 4;
            F = null;
            throw G;
        }
        D = 3;
        thread;
        JVM INSTR monitorexit ;
        if (D == 0 || D == 3 || D == 4) goto _L9; else goto _L10
_L10:
        if (abx.a > 0)
        {
            C.println((new StringBuilder("Invalid state: ")).append(D).toString());
        }
        D = 0;
        F = null;
          goto _L9
    }

    public abstract void a(aca aca);

    public final void a(aca aca, acb acb1, long l)
    {
        this;
        JVM INSTR monitorenter ;
        a(aca);
        acb1.b_ = false;
        H.put(aca, acb1);
        b(aca);
        acb1.a_ = System.currentTimeMillis() + l;
_L4:
        if (acb1.b_) goto _L2; else goto _L1
_L1:
        long l1;
        wait(l);
        l1 = acb1.a_ - System.currentTimeMillis();
        l = l1;
        if (l1 > 0L) goto _L4; else goto _L3
_L3:
        throw new acd((new StringBuilder()).append(E).append(" timedout waiting for response to ").append(aca).toString());
        acb1;
        if (abx.a > 2)
        {
            acb1.printStackTrace(C);
        }
        b(true);
_L5:
        throw acb1;
        acb1;
        H.remove(aca);
        throw acb1;
        aca;
        this;
        JVM INSTR monitorexit ;
        throw aca;
_L2:
        H.remove(aca);
        this;
        JVM INSTR monitorexit ;
        return;
        IOException ioexception;
        ioexception;
        ioexception.printStackTrace(C);
          goto _L5
        acb1;
        throw new acd(acb1);
    }

    public abstract void a(acb acb1);

    public abstract void a(boolean flag);

    public abstract void b();

    public abstract void b(aca aca);

    public final void b(boolean flag)
    {
        Object obj1 = null;
        Object obj2 = null;
        this;
        JVM INSTR monitorenter ;
        Object obj = obj1;
        D;
        JVM INSTR tableswitch 0 4: default 153
    //                   0 150
    //                   1 48
    //                   2 103
    //                   3 105
    //                   4 133;
           goto _L1 _L2 _L1 _L3 _L4 _L5
_L1:
        if (abx.a > 0)
        {
            C.println((new StringBuilder("Invalid state: ")).append(D).toString());
        }
        F = null;
        D = 0;
        obj = obj2;
_L9:
        if (obj == null) goto _L2; else goto _L6
_L6:
        throw obj;
        obj;
        this;
        JVM INSTR monitorexit ;
        throw obj;
_L3:
        flag = true;
_L4:
        int i = H.size();
        if (i == 0) goto _L8; else goto _L7
_L7:
        obj = obj2;
        if (!flag) goto _L9; else goto _L8
_L8:
        a(flag);
        obj = obj1;
_L5:
        F = null;
        D = 0;
          goto _L9
        obj;
          goto _L5
_L2:
        this;
        JVM INSTR monitorexit ;
    }

    public abstract aca c();

    public abstract void d();

    public void run()
    {
        Object obj = Thread.currentThread();
        b();
        obj;
        JVM INSTR monitorenter ;
        if (obj == F)
        {
            break MISSING_BLOCK_LABEL_21;
        }
        obj;
        JVM INSTR monitorexit ;
        return;
        D = 2;
        obj.notify();
        obj;
        JVM INSTR monitorexit ;
_L3:
        if (F != Thread.currentThread())
        {
            break MISSING_BLOCK_LABEL_296;
        }
        obj = c();
        if (obj == null)
        {
            try
            {
                throw new IOException("end of stream");
            }
            // Misplaced declaration of an exception variable
            catch (Object obj)
            {
                String s = ((Exception) (obj)).getMessage();
                Object obj1;
                boolean flag;
                boolean flag1;
                if (s != null && s.equals("Read timed out"))
                {
                    flag = true;
                } else
                {
                    flag = false;
                }
                if (!flag)
                {
                    flag1 = true;
                } else
                {
                    flag1 = false;
                }
            }
            if (!flag && abx.a >= 3)
            {
                ((Exception) (obj)).printStackTrace(C);
            }
            try
            {
                b(flag1);
            }
            // Misplaced declaration of an exception variable
            catch (Object obj)
            {
                ((IOException) (obj)).printStackTrace(C);
            }
            continue; /* Loop/switch isn't completed */
        }
        break MISSING_BLOCK_LABEL_221;
        obj1;
        obj;
        JVM INSTR monitorexit ;
        throw obj1;
        obj1;
        obj;
        JVM INSTR monitorenter ;
        if (obj == F)
        {
            break MISSING_BLOCK_LABEL_165;
        }
        if (abx.a >= 2)
        {
            ((Exception) (obj1)).printStackTrace(C);
        }
        obj;
        JVM INSTR monitorexit ;
        return;
        obj1;
        obj;
        JVM INSTR monitorexit ;
        throw obj1;
        G = new acd(((Throwable) (obj1)));
        D = 2;
        obj.notify();
        obj;
        JVM INSTR monitorexit ;
        return;
        obj1;
        obj;
        JVM INSTR monitorenter ;
        if (obj == F)
        {
            break MISSING_BLOCK_LABEL_208;
        }
        obj;
        JVM INSTR monitorexit ;
        return;
        obj1;
        obj;
        JVM INSTR monitorexit ;
        throw obj1;
        D = 2;
        obj.notify();
        obj;
        JVM INSTR monitorexit ;
        throw obj1;
        this;
        JVM INSTR monitorenter ;
        obj = (acb)H.get(obj);
        if (obj != null)
        {
            break MISSING_BLOCK_LABEL_268;
        }
        if (abx.a >= 4)
        {
            C.println("Invalid key, skipping message");
        }
        d();
_L1:
        this;
        JVM INSTR monitorexit ;
        continue; /* Loop/switch isn't completed */
        obj;
        this;
        JVM INSTR monitorexit ;
        throw obj;
        a(((acb) (obj)));
        obj.b_ = true;
        notifyAll();
          goto _L1
        return;
        if (true) goto _L3; else goto _L2
_L2:
    }

    public String toString()
    {
        return E;
    }

}
