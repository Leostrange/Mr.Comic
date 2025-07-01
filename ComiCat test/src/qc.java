// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import java.io.IOException;
import java.util.Vector;

final class qc extends qb
{

    private final byte A = 5;
    private final byte B = 6;
    private final byte C = 7;
    private final byte D = 8;
    private final byte E = 9;
    private final byte F = 11;
    private final byte G = 12;
    private final byte H = 13;
    private final byte I = 14;
    private final byte J = 17;
    private final byte K = 18;
    private final byte L = 19;
    private final byte M = 30;
    private qa N;
    private qa O;
    private rl P;
    private qa Q;
    boolean v;
    private final byte w = 1;
    private final byte x = 2;
    private final byte y = 3;
    private final byte z = 4;

    qc()
    {
        v = true;
        N = null;
        O = null;
        P = null;
        Q = null;
        super.e = 0x20000;
        super.f = 0x20000;
        super.g = 16384;
        d = si.a("auth-agent@openssh.com");
        N = new qa();
        N.h();
        Q = new qa();
        o = true;
    }

    final void a(byte abyte0[], int i, int j)
    {
        sh sh1;
        boolean flag;
        flag = false;
        if (P == null)
        {
            O = new qa(this.i);
            P = new rl(O);
        }
        Object obj = N;
        if (((qa) (obj)).d != 0)
        {
            System.arraycopy(((qa) (obj)).b, ((qa) (obj)).d, ((qa) (obj)).b, 0, ((qa) (obj)).c - ((qa) (obj)).d);
            obj.c = ((qa) (obj)).c - ((qa) (obj)).d;
            obj.d = 0;
        }
        if (N.b.length < N.c + j)
        {
            byte abyte1[] = new byte[N.d + j];
            System.arraycopy(N.b, 0, abyte1, 0, N.b.length);
            N.b = abyte1;
        }
        N.a(abyte0, i, j);
        if (N.b() > N.a())
        {
            abyte0 = N;
            abyte0.d = ((qa) (abyte0)).d - 4;
            return;
        }
        i = N.e();
        try
        {
            abyte1 = h();
        }
        // Misplaced declaration of an exception variable
        catch (byte abyte0[])
        {
            throw new IOException(abyte0.toString());
        }
        if (((ry) (abyte1)).l == null)
        {
            abyte0 = ((ry) (abyte1)).u.a();
        } else
        {
            abyte0 = ((ry) (abyte1)).l;
        }
        sh1 = ((ry) (abyte1)).k;
        Q.h();
        if (i != 11) goto _L2; else goto _L1
_L1:
        Q.a((byte)12);
        abyte0 = abyte0.a();
        abyte0;
        JVM INSTR monitorenter ;
        j = 0;
        i = 0;
_L4:
        if (j >= abyte0.size())
        {
            break; /* Loop/switch isn't completed */
        }
        abyte1 = ((qt)(qt)abyte0.elementAt(j)).a();
        if (abyte1 != null)
        {
            i++;
        }
        j++;
        if (true) goto _L4; else goto _L3
_L3:
        Q.a(i);
        i = ((flag) ? 1 : 0);
_L21:
        if (i >= abyte0.size()) goto _L6; else goto _L5
_L5:
        byte abyte2[] = ((qt)(qt)abyte0.elementAt(i)).a();
        if (abyte2 == null) goto _L8; else goto _L7
_L7:
        Q.b(abyte2);
        Q.b(si.a);
          goto _L8
_L6:
        abyte0;
        JVM INSTR monitorexit ;
_L10:
        abyte0 = new byte[Q.a()];
        Q.a(abyte0, abyte0.length);
        P.a();
        O.a((byte)94);
        O.a(c);
        O.a(abyte0.length + 4);
        O.b(abyte0);
        try
        {
            h().a(P, this, abyte0.length + 4);
            return;
        }
        // Misplaced declaration of an exception variable
        catch (byte abyte0[])
        {
            return;
        }
        Exception exception;
        exception;
        abyte0;
        JVM INSTR monitorexit ;
        throw exception;
_L2:
label0:
        {
            if (i != 1)
            {
                break label0;
            }
            Q.a((byte)2);
            Q.a(0);
        }
        if (true) goto _L10; else goto _L9
_L9:
        if (i != 13) goto _L12; else goto _L11
_L11:
        byte abyte3[];
        abyte3 = N.g();
        exception = N.g();
        N.b();
        Vector vector = abyte0.a();
        vector;
        JVM INSTR monitorenter ;
        i = 0;
_L19:
        if (i >= vector.size())
        {
            break MISSING_BLOCK_LABEL_963;
        }
        abyte0 = (qt)(qt)vector.elementAt(i);
        if (abyte0.a() == null || !si.a(abyte3, abyte0.a())) goto _L14; else goto _L13
_L13:
        if (!abyte0.c()) goto _L16; else goto _L15
_L15:
        if (sh1 == null) goto _L14; else goto _L17
_L17:
        String s;
        if (!abyte0.c())
        {
            break; /* Loop/switch isn't completed */
        }
        (new StringBuilder("Passphrase for ")).append(abyte0.b());
        if (!sh1.b())
        {
            break; /* Loop/switch isn't completed */
        }
        s = sh1.a();
        if (s == null)
        {
            break; /* Loop/switch isn't completed */
        }
        byte abyte4[] = si.a(s);
        boolean flag1 = abyte0.a(abyte4);
        if (!flag1) goto _L17; else goto _L16
_L16:
        if (abyte0.c()) goto _L14; else goto _L18
_L18:
        vector;
        JVM INSTR monitorexit ;
        byte byte0;
        qy qy1;
        boolean flag2;
        if (abyte0 != null)
        {
            abyte0 = abyte0.b(exception);
        } else
        {
            abyte0 = null;
        }
        if (abyte0 == null)
        {
            Q.a((byte)30);
        } else
        {
            Q.a((byte)14);
            Q.b(abyte0);
        }
          goto _L10
_L14:
        i++;
          goto _L19
        abyte0;
        vector;
        JVM INSTR monitorexit ;
        throw abyte0;
_L12:
        if (i == 18)
        {
            abyte0.b(N.g());
            Q.a((byte)6);
        } else
        if (i == 9)
        {
            Q.a((byte)6);
        } else
        if (i == 19)
        {
            abyte0.b();
            Q.a((byte)6);
        } else
        if (i == 17)
        {
            exception = new byte[N.a()];
            N.a(exception, exception.length);
            flag2 = abyte0.a(exception);
            abyte0 = Q;
            if (flag2)
            {
                byte0 = 6;
            } else
            {
                byte0 = 5;
            }
            abyte0.a(byte0);
        } else
        {
            N.b(N.a() - 1);
            Q.a((byte)5);
        }
          goto _L10
        qy1;
          goto _L16
        abyte0 = null;
          goto _L18
_L8:
        i++;
        if (true) goto _L21; else goto _L20
_L20:
    }

    final void d()
    {
        super.d();
        e();
    }

    public final void run()
    {
        try
        {
            i();
            return;
        }
        catch (Exception exception)
        {
            n = true;
        }
        f();
    }
}
