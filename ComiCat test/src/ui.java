// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import java.io.InputStream;

public final class ui extends InputStream
{

    private uf a;
    private long b;
    private final long c;
    private final long d;

    public ui(uf uf1, long l, long l1)
    {
        a = uf1;
        c = l;
        b = l;
        d = l1;
        uf1.a(b);
    }

    public final int read()
    {
        if (b == d)
        {
            return -1;
        } else
        {
            int i = a.read();
            b = b + 1L;
            return i;
        }
    }

    public final int read(byte abyte0[])
    {
        return read(abyte0, 0, abyte0.length);
    }

    public final int read(byte abyte0[], int i, int j)
    {
        if (j == 0)
        {
            return 0;
        }
        if (b == d)
        {
            return -1;
        } else
        {
            i = a.read(abyte0, i, (int)Math.min(j, d - b));
            b = b + (long)i;
            return i;
        }
    }
}
