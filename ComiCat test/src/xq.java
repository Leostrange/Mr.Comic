// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import java.io.IOException;

public abstract class xq
    implements xn
{

    private static int g = 1;
    protected xm a;
    protected int b;
    protected int c;
    protected int d;
    protected xt f;

    public xq()
    {
        b = 4280;
        c = b;
        d = 0;
        f = null;
    }

    public static xq a(String s, zl zl)
    {
        if (s.startsWith("ncacn_np:"))
        {
            return new xs(s, zl);
        } else
        {
            throw new xp((new StringBuilder("DCERPC transport not supported: ")).append(s).toString());
        }
    }

    public abstract void a();

    public final void a(xr xr1)
    {
        byte byte0;
        boolean flag;
        byte0 = 24;
        flag = true;
        if (d != 0) goto _L2; else goto _L1
_L1:
        this;
        JVM INSTR monitorenter ;
        d = 1;
        a(((xr) (new xl(a, this))));
        this;
        JVM INSTR monitorexit ;
_L2:
        byte abyte0[];
        byte abyte1[];
        abyte1 = yw.a();
        abyte0 = abyte1;
        xz xz1 = new xz(abyte1, 0);
        abyte0 = abyte1;
        xr1.g = 3;
        abyte0 = abyte1;
        int i = g;
        abyte0 = abyte1;
        g = i + 1;
        abyte0 = abyte1;
        xr1.i = i;
        abyte0 = abyte1;
        xr1.e(xz1);
        abyte0 = abyte1;
        if (f == null)
        {
            break MISSING_BLOCK_LABEL_112;
        }
        abyte0 = abyte1;
        xz1.c = 0;
        abyte0 = abyte1;
        int k = xz1.e.d - 24;
        i = 0;
_L14:
        if (i >= k) goto _L4; else goto _L3
_L3:
        int j;
        j = k - i;
        abyte0 = abyte1;
        if (j + 24 <= b) goto _L6; else goto _L5
_L5:
        abyte0 = abyte1;
        xr1.g = xr1.g & -3;
        abyte0 = abyte1;
        j = b - 24;
_L7:
        abyte0 = abyte1;
        xr1.h = j + 24;
        if (i <= 0)
        {
            break MISSING_BLOCK_LABEL_211;
        }
        abyte0 = abyte1;
        xr1.g = xr1.g & -2;
        abyte0 = abyte1;
        if ((xr1.g & 3) == 3)
        {
            break MISSING_BLOCK_LABEL_277;
        }
        abyte0 = abyte1;
        xz1.b = i;
        abyte0 = abyte1;
        xz1.a();
        abyte0 = abyte1;
        xr1.c(xz1);
        abyte0 = abyte1;
        xz1.g(xr1.j);
        abyte0 = abyte1;
        xz1.f(0);
        abyte0 = abyte1;
        xz1.f(xr1.b());
        abyte0 = abyte1;
        a(abyte1, i, xr1.h, flag);
        i = j + i;
        continue; /* Loop/switch isn't completed */
        xr1;
        d = 0;
        throw xr1;
        xr1;
        this;
        JVM INSTR monitorexit ;
        throw xr1;
_L6:
        abyte0 = abyte1;
        xr1.g = xr1.g | 2;
        abyte0 = abyte1;
        xr1.j = j;
        flag = false;
        if (true) goto _L7; else goto _L4
_L4:
        abyte0 = abyte1;
        a(abyte1, flag);
        abyte0 = abyte1;
        xz1.a();
        abyte0 = abyte1;
        xz1.c = 8;
        abyte0 = abyte1;
        xz1.b(xz1.c());
        abyte0 = abyte1;
        xz1.c = 0;
        abyte0 = abyte1;
        xr1.d(xz1);
        abyte0 = abyte1;
        i = byte0;
        if (xr1.f != 2) goto _L9; else goto _L8
_L8:
        abyte0 = abyte1;
        i = byte0;
        if (xr1.c()) goto _L9; else goto _L10
_L10:
        abyte0 = abyte1;
        i = xr1.h;
          goto _L9
_L12:
        abyte0 = abyte1;
        if (xr1.c())
        {
            break MISSING_BLOCK_LABEL_609;
        }
        byte abyte2[];
        byte abyte3[];
        abyte3 = abyte2;
        if (abyte2 != null)
        {
            break MISSING_BLOCK_LABEL_474;
        }
        abyte0 = abyte1;
        abyte3 = new byte[c];
        abyte0 = abyte1;
        xz xz2 = new xz(abyte3, 0);
        abyte0 = abyte1;
        a(abyte3, flag);
        abyte0 = abyte1;
        xz2.a();
        abyte0 = abyte1;
        xz2.c = 8;
        abyte0 = abyte1;
        xz2.b(xz2.c());
        abyte0 = abyte1;
        xz2.a();
        abyte0 = abyte1;
        xr1.d(xz2);
        abyte0 = abyte1;
        j = xr1.h - 24;
        abyte2 = abyte1;
        abyte0 = abyte1;
        if (i + j <= abyte1.length)
        {
            break MISSING_BLOCK_LABEL_576;
        }
        abyte0 = abyte1;
        abyte2 = new byte[i + j];
        abyte0 = abyte1;
        System.arraycopy(abyte1, 0, abyte2, 0, i);
        abyte0 = abyte2;
        System.arraycopy(abyte3, 24, abyte2, i, j);
        i += j;
        abyte1 = abyte2;
        abyte2 = abyte3;
        continue; /* Loop/switch isn't completed */
        abyte0 = abyte1;
        xr1.f(new xz(abyte1, 0));
        yw.a(abyte1);
        xr1 = xr1.a();
        if (xr1 != null)
        {
            throw xr1;
        } else
        {
            return;
        }
        xr1;
        yw.a(abyte0);
        throw xr1;
_L9:
        abyte2 = null;
        xz2 = null;
        if (true) goto _L12; else goto _L11
_L11:
        if (true) goto _L14; else goto _L13
_L13:
    }

    protected abstract void a(byte abyte0[], int i, int j, boolean flag);

    protected abstract void a(byte abyte0[], boolean flag);

    public String toString()
    {
        return a.toString();
    }

}
