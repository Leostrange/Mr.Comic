// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import java.io.OutputStream;
import java.util.LinkedList;

public final class ajs extends OutputStream
{

    private static final byte a[] = new byte[0];
    private final LinkedList b;
    private int c;
    private byte d[];
    private int e;

    private void a()
    {
        int i = 0x40000;
        c = c + d.length;
        int j = Math.max(c >> 1, 1000);
        if (j <= 0x40000)
        {
            i = j;
        }
        b.add(d);
        d = new byte[i];
        e = 0;
    }

    public final void close()
    {
    }

    public final void flush()
    {
    }

    public final void write(int i)
    {
        if (e >= d.length)
        {
            a();
        }
        byte abyte0[] = d;
        int j = e;
        e = j + 1;
        abyte0[j] = (byte)i;
    }

    public final void write(byte abyte0[])
    {
        write(abyte0, 0, abyte0.length);
    }

    public final void write(byte abyte0[], int i, int j)
    {
        int k = i;
        do
        {
            int i1 = Math.min(d.length - e, j);
            int l = k;
            i = j;
            if (i1 > 0)
            {
                System.arraycopy(abyte0, k, d, e, i1);
                l = k + i1;
                e = e + i1;
                i = j - i1;
            }
            if (i > 0)
            {
                a();
                k = l;
                j = i;
            } else
            {
                return;
            }
        } while (true);
    }

}
