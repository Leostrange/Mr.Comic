// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import java.net.Proxy;

public static final class net.Proxy
{
    public static final class a
    {

        Proxy a;
        long b;
        long c;

        private a()
        {
            this(Proxy.NO_PROXY, hy.a, hy.b);
        }

        a(byte byte0)
        {
            this();
        }

        private a(Proxy proxy, long l, long l1)
        {
            a = proxy;
            b = l;
            c = l1;
        }
    }


    public static final net.Proxy a;
    final Proxy b;
    final long c;
    final long d;

    static 
    {
        a a1 = new a((byte)0);
        a = new <init>(a1.a, a1.b, a1.c, (byte)0);
    }

    private >(Proxy proxy, long l, long l1)
    {
        b = proxy;
        c = l;
        d = l1;
    }

    private >(Proxy proxy, long l, long l1, byte byte0)
    {
        this(proxy, l, l1);
    }
}
