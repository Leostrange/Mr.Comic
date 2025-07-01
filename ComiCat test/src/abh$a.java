// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import java.util.Date;

final class ang.Object
    implements zc
{

    long a;
    long b;
    long c;
    long d;
    int e;
    final abh f;

    public final int a()
    {
        return e;
    }

    public final long b()
    {
        return a;
    }

    public final long c()
    {
        return c;
    }

    public final long d()
    {
        return 0L;
    }

    public final String toString()
    {
        return new String((new StringBuilder("SmbQueryFileBasicInfo[createTime=")).append(new Date(a)).append(",lastAccessTime=").append(new Date(b)).append(",lastWriteTime=").append(new Date(c)).append(",changeTime=").append(new Date(d)).append(",attributes=0x").append(abw.a(e, 4)).append("]").toString());
    }

    (abh abh1)
    {
        f = abh1;
        super();
    }
}
