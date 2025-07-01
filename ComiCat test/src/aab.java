// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import java.util.Date;

final class aab extends zm
    implements zc
{

    private int a;
    private long b;
    private long c;
    private int d;

    aab(long l1)
    {
        a = 0;
        b = 0L;
        d = 0;
        c = l1;
        g = 8;
    }

    public final int a()
    {
        return a;
    }

    public final long b()
    {
        return b + c;
    }

    public final long c()
    {
        return b + c;
    }

    public final long d()
    {
        return (long)d;
    }

    final int i(byte abyte0[], int i1)
    {
        return 0;
    }

    final int j(byte abyte0[], int i1)
    {
        return 0;
    }

    final int k(byte abyte0[], int i1)
    {
        if (r == 0)
        {
            return 0;
        } else
        {
            a = d(abyte0, i1);
            i1 += 2;
            b = h(abyte0, i1);
            d = e(abyte0, i1 + 4);
            return 20;
        }
    }

    final int l(byte abyte0[], int i1)
    {
        return 0;
    }

    public final String toString()
    {
        return new String((new StringBuilder("SmbComQueryInformationResponse[")).append(super.toString()).append(",fileAttributes=0x").append(abw.a(a, 4)).append(",lastWriteTime=").append(new Date(b)).append(",fileSize=").append(d).append("]").toString());
    }
}
