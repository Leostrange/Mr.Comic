// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import java.io.IOException;

public final class abq extends aas
{

    Object b;
    private byte c[];
    private int d;
    private int e;
    private int f;
    private boolean g;

    public abq(aau aau1)
    {
        super(aau1, aau1.s & 0xffff00ff | 0x20);
        c = new byte[4096];
        boolean flag;
        if ((aau1.s & 0x600) != 1536)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        g = flag;
        b = new Object();
    }

    public final int available()
    {
        abx abx1 = aar.c;
        if (abx.a >= 3)
        {
            aar.c.println("Named Pipe available() does not apply to TRANSACT Named Pipes");
        }
        return 0;
    }

    final int b(byte abyte0[], int i, int j)
    {
        if (j > c.length - f)
        {
            int l = c.length * 2;
            int k = l;
            if (j > l - f)
            {
                k = f + j;
            }
            byte abyte1[] = c;
            c = new byte[k];
            k = abyte1.length - d;
            if (f > k)
            {
                System.arraycopy(abyte1, d, c, 0, k);
                System.arraycopy(abyte1, 0, c, k, f - k);
            } else
            {
                System.arraycopy(abyte1, d, c, 0, f);
            }
            d = 0;
            e = f;
        }
        k = c.length - e;
        if (j > k)
        {
            System.arraycopy(abyte0, i, c, e, k);
            System.arraycopy(abyte0, i + k, c, 0, j - k);
        } else
        {
            System.arraycopy(abyte0, i, c, e, j);
        }
        e = (e + j) % c.length;
        f = f + j;
        return j;
    }

    public final int read()
    {
        Object obj = b;
        obj;
        JVM INSTR monitorenter ;
        while (f == 0) 
        {
            b.wait();
        }
        break MISSING_BLOCK_LABEL_42;
        Object obj1;
        obj1;
        throw new IOException(((InterruptedException) (obj1)).getMessage());
        obj1;
        obj;
        JVM INSTR monitorexit ;
        throw obj1;
        byte byte0;
        byte0 = c[d];
        d = (d + 1) % c.length;
        obj;
        JVM INSTR monitorexit ;
        return byte0 & 0xff;
    }

    public final int read(byte abyte0[])
    {
        return read(abyte0, 0, abyte0.length);
    }

    public final int read(byte abyte0[], int i, int j)
    {
        if (j <= 0)
        {
            return 0;
        }
        Object obj = b;
        obj;
        JVM INSTR monitorenter ;
        try
        {
            while (f == 0) 
            {
                b.wait();
            }
            break MISSING_BLOCK_LABEL_51;
        }
        // Misplaced declaration of an exception variable
        catch (byte abyte0[]) { }
        finally { }
        throw new IOException(abyte0.getMessage());
        obj;
        JVM INSTR monitorexit ;
        throw abyte0;
        int k;
        k = c.length - d;
        if (j > f)
        {
            j = f;
        }
        if (f <= k || j <= k)
        {
            break MISSING_BLOCK_LABEL_154;
        }
        System.arraycopy(c, d, abyte0, i, k);
        System.arraycopy(c, 0, abyte0, i + k, j - k);
_L1:
        f = f - j;
        d = (d + j) % c.length;
        obj;
        JVM INSTR monitorexit ;
        return j;
        System.arraycopy(c, d, abyte0, i, j);
          goto _L1
    }
}
