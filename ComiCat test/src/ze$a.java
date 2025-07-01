// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 


final class lang.Object
    implements za
{

    String a;
    int b;
    int c;
    int d;
    String e;
    final ze f;

    public final String a()
    {
        return a;
    }

    public final int b()
    {
        return (d & 0x80000000) == 0 ? 4 : 2;
    }

    public final int c()
    {
        return 17;
    }

    public final long d()
    {
        return 0L;
    }

    public final long e()
    {
        return 0L;
    }

    public final long f()
    {
        return 0L;
    }

    public final String toString()
    {
        return new String((new StringBuilder("ServerInfo1[name=")).append(a).append(",versionMajor=").append(b).append(",versionMinor=").append(c).append(",type=0x").append(abw.a(d, 8)).append(",commentOrMasterBrowser=").append(e).append("]").toString());
    }

    >(ze ze1)
    {
        f = ze1;
        super();
    }
}
