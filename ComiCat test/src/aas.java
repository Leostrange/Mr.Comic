// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import java.io.IOException;
import java.io.InputStream;
import java.io.InterruptedIOException;

public class aas extends InputStream
{

    aar a;
    private long b;
    private int c;
    private int d;
    private int e;
    private byte f[];

    public aas(aar aar1)
    {
        this(aar1, 1);
    }

    public aas(aar aar1, int i)
    {
        f = new byte[1];
        a = aar1;
        d = i & 0xffff;
        e = i >>> 16 & 0xffff;
        if (aar1.l != 16)
        {
            aar1.a(i, e);
            d = d & 0xffffffaf;
        } else
        {
            aar1.a();
        }
        c = Math.min(aar1.i.f.e.w - 70, aar1.i.f.e.s.b - 70);
    }

    public aas(String s)
    {
        this(new aar(s));
    }

    private static IOException a(aaq aaq1)
    {
        Throwable throwable = aaq1.o;
        if (throwable instanceof acd)
        {
            aaq1 = (acd)throwable;
            throwable = ((acd)aaq1).a;
        }
        if (throwable instanceof InterruptedException)
        {
            aaq1 = new InterruptedIOException(throwable.getMessage());
            aaq1.initCause(throwable);
        }
        return aaq1;
    }

    public final int a(byte abyte0[], int i, int j)
    {
        if (j <= 0)
        {
            return 0;
        }
        long l = b;
        if (f == null)
        {
            throw new IOException("Bad file descriptor");
        }
        a.a(d, e);
        abx abx1 = aar.c;
        if (abx.a >= 4)
        {
            aar.c.println((new StringBuilder("read: fid=")).append(a.k).append(",off=").append(i).append(",len=").append(j).toString());
        }
        abyte0 = new aad(abyte0, i);
        i = j;
        if (a.l == 16)
        {
            abyte0.w = 0L;
            i = j;
        }
        int k;
        do
        {
            abx abx2;
            if (i > c)
            {
                j = c;
            } else
            {
                j = i;
            }
            abx2 = aar.c;
            if (abx.a >= 4)
            {
                aar.c.println((new StringBuilder("read: len=")).append(i).append(",r=").append(j).append(",fp=").append(b).toString());
            }
            try
            {
                aac aac1 = new aac(a.k, b, j);
                if (a.l == 16)
                {
                    aac1.d = 1024;
                    aac1.b = 1024;
                    aac1.c = 1024;
                }
                a.a(aac1, abyte0);
            }
            // Misplaced declaration of an exception variable
            catch (byte abyte0[])
            {
                if (a.l == 16 && ((aaq) (abyte0)).n == 0xc000014b)
                {
                    return -1;
                } else
                {
                    throw a(((aaq) (abyte0)));
                }
            }
            k = ((aad) (abyte0)).D;
            if (k <= 0)
            {
                if (b - l > 0L)
                {
                    l = b - l;
                } else
                {
                    l = -1L;
                }
                return (int)l;
            }
            b = b + (long)k;
            i -= k;
            abyte0.c = ((aad) (abyte0)).c + k;
        } while (i > 0 && k == j);
        return (int)(b - l);
    }

    public int available()
    {
        if (a.l != 16)
        {
            return 0;
        }
        abl abl1;
        aau aau1 = (aau)a;
        a.a(32, aau1.s & 0xff0000);
        abk abk1 = new abk(a.j, a.k);
        abl1 = new abl(aau1);
        aau1.a(abk1, abl1);
        if (abl1.a != 1 && abl1.a != 4)
        {
            break MISSING_BLOCK_LABEL_101;
        }
        a.m = false;
        return 0;
        int i;
        try
        {
            i = abl1.S;
        }
        catch (aaq aaq1)
        {
            throw a(aaq1);
        }
        return i;
    }

    public void close()
    {
        try
        {
            a.c();
            f = null;
            return;
        }
        catch (aaq aaq1)
        {
            throw a(aaq1);
        }
    }

    public int read()
    {
        if (read(f, 0, 1) == -1)
        {
            return -1;
        } else
        {
            return f[0] & 0xff;
        }
    }

    public int read(byte abyte0[])
    {
        return read(abyte0, 0, abyte0.length);
    }

    public int read(byte abyte0[], int i, int j)
    {
        return a(abyte0, i, j);
    }

    public long skip(long l)
    {
        if (l > 0L)
        {
            b = b + l;
            return l;
        } else
        {
            return 0L;
        }
    }
}
