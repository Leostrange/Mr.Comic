// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import java.io.InputStream;

public final class aje extends InputStream
{

    protected final ajc a;
    final InputStream b;
    byte c[];
    int d;
    final int e;

    public aje(ajc ajc1, InputStream inputstream, byte abyte0[], int i, int j)
    {
        a = ajc1;
        b = inputstream;
        c = abyte0;
        d = i;
        e = j;
    }

    private void a()
    {
        byte abyte0[] = c;
        if (abyte0 != null)
        {
            c = null;
            if (a != null)
            {
                a.a(abyte0);
            }
        }
    }

    public final int available()
    {
        if (c != null)
        {
            return e - d;
        } else
        {
            return b.available();
        }
    }

    public final void close()
    {
        a();
        b.close();
    }

    public final void mark(int i)
    {
        if (c == null)
        {
            b.mark(i);
        }
    }

    public final boolean markSupported()
    {
        return c == null && b.markSupported();
    }

    public final int read()
    {
        if (c != null)
        {
            byte abyte0[] = c;
            int i = d;
            d = i + 1;
            i = abyte0[i];
            if (d >= e)
            {
                a();
            }
            return i & 0xff;
        } else
        {
            return b.read();
        }
    }

    public final int read(byte abyte0[])
    {
        return read(abyte0, 0, abyte0.length);
    }

    public final int read(byte abyte0[], int i, int j)
    {
        if (c != null)
        {
            int l = e - d;
            int k = j;
            if (j > l)
            {
                k = l;
            }
            System.arraycopy(c, d, abyte0, i, k);
            d = d + k;
            if (d >= e)
            {
                a();
            }
            return k;
        } else
        {
            return b.read(abyte0, i, j);
        }
    }

    public final void reset()
    {
        if (c == null)
        {
            b.reset();
        }
    }

    public final long skip(long l)
    {
        long l1;
        long l2;
        if (c != null)
        {
            int i = e - d;
            if ((long)i > l)
            {
                d = d + (int)l;
                return l;
            }
            a();
            l1 = (long)i + 0L;
            l -= i;
        } else
        {
            l1 = 0L;
        }
        l2 = l1;
        if (l > 0L)
        {
            l2 = l1 + b.skip(l);
        }
        return l2;
    }
}
