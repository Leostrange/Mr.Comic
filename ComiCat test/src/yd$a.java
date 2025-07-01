// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 


public static class > extends yc
{

    public int b;
    public short c;
    public short d;
    public byte e;
    public byte f;
    public byte g[];

    public final void e(xz xz1)
    {
        xz1.d(4);
        xz1.g(b);
        xz1.f(c);
        xz1.f(d);
        xz1.e(e);
        xz1.e(f);
        int i = xz1.c;
        xz1.c(6);
        xz1 = xz1.a(i);
        for (int j = 0; j < 6; j++)
        {
            xz1.e(g[j]);
        }

    }

    public final void f(xz xz1)
    {
        xz1.d(4);
        b = xz1.d();
        c = (short)xz1.c();
        d = (short)xz1.c();
        e = (byte)xz1.b();
        f = (byte)xz1.b();
        int i = xz1.c;
        xz1.c(6);
        if (g == null)
        {
            g = new byte[6];
        }
        xz1 = xz1.a(i);
        for (int j = 0; j < 6; j++)
        {
            g[j] = (byte)xz1.b();
        }

    }

    public >()
    {
    }
}
