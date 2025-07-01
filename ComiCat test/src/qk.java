// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import java.io.IOException;
import java.io.InputStream;
import java.net.Socket;
import java.util.Hashtable;

final class qk extends qb
{

    private static Hashtable A = new Hashtable();
    private static Hashtable B = new Hashtable();
    private static byte C[] = {
        48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 
        97, 98, 99, 100, 101, 102
    };
    static byte v[] = null;
    private static String w = "127.0.0.1";
    private static int x = 6000;
    private static byte z[] = null;
    private Socket D;
    private byte E[];
    private boolean y;

    qk()
    {
        y = true;
        D = null;
        E = new byte[0];
        super.e = 0x20000;
        super.f = 0x20000;
        super.g = 16384;
        d = si.a("x11");
        o = true;
    }

    private static boolean a(byte abyte0[], byte abyte1[])
    {
        if (abyte0.length == abyte1.length) goto _L2; else goto _L1
_L1:
        return false;
_L2:
        int i = 0;
label0:
        do
        {
label1:
            {
                if (i >= abyte0.length)
                {
                    break label1;
                }
                if (abyte0[i] != abyte1[i])
                {
                    break label0;
                }
                i++;
            }
        } while (true);
        if (true) goto _L1; else goto _L3
_L3:
        return true;
    }

    static byte[] b(ry ry1)
    {
        Hashtable hashtable = B;
        hashtable;
        JVM INSTR monitorenter ;
        byte abyte1[] = (byte[])(byte[])B.get(ry1);
        byte abyte0[];
        abyte0 = abyte1;
        if (abyte1 != null)
        {
            break MISSING_BLOCK_LABEL_129;
        }
        abyte0 = ry.g;
        abyte1 = new byte[16];
        abyte0;
        JVM INSTR monitorenter ;
        abyte0;
        JVM INSTR monitorexit ;
        A.put(ry1, abyte1);
        abyte0 = new byte[32];
        int i = 0;
_L2:
        if (i >= 16)
        {
            break; /* Loop/switch isn't completed */
        }
        abyte0[i * 2] = C[abyte1[i] >>> 4 & 0xf];
        abyte0[i * 2 + 1] = C[abyte1[i] & 0xf];
        i++;
        if (true) goto _L2; else goto _L1
        ry1;
        abyte0;
        JVM INSTR monitorexit ;
        throw ry1;
        ry1;
        hashtable;
        JVM INSTR monitorexit ;
        throw ry1;
_L1:
        B.put(ry1, abyte0);
        hashtable;
        JVM INSTR monitorexit ;
        return abyte0;
    }

    static void c(ry ry1)
    {
        synchronized (B)
        {
            B.remove(ry1);
            A.remove(ry1);
        }
        return;
        ry1;
        hashtable;
        JVM INSTR monitorexit ;
        throw ry1;
    }

    final void a(byte abyte0[], int i, int j)
    {
        ry ry1;
        byte abyte2[];
        int k;
        if (!y)
        {
            break MISSING_BLOCK_LABEL_360;
        }
        try
        {
            ry1 = h();
        }
        // Misplaced declaration of an exception variable
        catch (byte abyte0[])
        {
            throw new IOException(abyte0.toString());
        }
        abyte2 = new byte[E.length + j];
        System.arraycopy(abyte0, i, abyte2, E.length, j);
        if (E.length > 0)
        {
            System.arraycopy(E, 0, abyte2, 0, E.length);
        }
        E = abyte2;
        abyte2 = E;
        k = abyte2.length;
        if (k >= 9) goto _L2; else goto _L1
_L1:
        return;
_L2:
        i = abyte2[6];
        i = (abyte2[7] & 0xff) + (i & 0xff) * 256;
        j = (abyte2[8] & 0xff) * 256 + (abyte2[9] & 0xff);
        if ((abyte2[0] & 0xff) != 66 && (abyte2[0] & 0xff) == 108)
        {
            i = i << 8 & 0xff00 | i >>> 8 & 0xff;
            j = j << 8 & 0xff00 | j >>> 8 & 0xff;
        }
        if (k < i + 12 + (-i & 3) + j) goto _L1; else goto _L3
_L3:
        byte abyte3[] = new byte[j];
        System.arraycopy(abyte2, i + 12 + (-i & 3), abyte3, 0, j);
        byte abyte1[];
        synchronized (A)
        {
            abyte1 = (byte[])(byte[])A.get(ry1);
        }
        if (a(abyte3, abyte1))
        {
            if (v != null)
            {
                System.arraycopy(v, 0, abyte2, (-i & 3) + (i + 12), j);
            }
        } else
        {
            this.k = null;
            e();
            this.j.b();
            f();
        }
        y = false;
        this.j.a(abyte2, 0, k);
        E = null;
        return;
        exception;
        abyte0;
        JVM INSTR monitorexit ;
        throw exception;
        this.j.a(abyte0, i, j);
        return;
    }

    public final void run()
    {
        Object obj;
        rl rl1;
        int i;
        try
        {
            D = si.a(w, x, 10000);
            D.setTcpNoDelay(true);
            j = new qs();
            j.a = D.getInputStream();
            j.b = D.getOutputStream();
            i();
        }
        // Misplaced declaration of an exception variable
        catch (Object obj)
        {
            j();
            n = true;
            f();
            return;
        }
        k = Thread.currentThread();
        obj = new qa(this.i);
        rl1 = new rl(((qa) (obj)));
_L6:
        if (k == null || j == null || j.a == null) goto _L2; else goto _L1
_L1:
        i = j.a.read(((qa) (obj)).b, 14, ((qa) (obj)).b.length - 14 - 84);
        if (i > 0) goto _L4; else goto _L3
_L3:
        try
        {
            e();
        }
        catch (Exception exception) { }
_L2:
        f();
        return;
_L4:
        if (n) goto _L2; else goto _L5
_L5:
        rl1.a();
        ((qa) (obj)).a((byte)94);
        ((qa) (obj)).a(c);
        ((qa) (obj)).a(i);
        ((qa) (obj)).b(i);
        h().a(rl1, this, i);
          goto _L6
    }

}
