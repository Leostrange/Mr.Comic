// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 


public abstract class xr extends yc
    implements xn
{

    protected int f;
    protected int g;
    protected int h;
    protected int i;
    protected int j;
    protected int k;

    public xr()
    {
        f = -1;
        g = 0;
        h = 0;
        i = 0;
        j = 0;
        k = 0;
    }

    public xp a()
    {
        if (k != 0)
        {
            return new xp(k);
        } else
        {
            return null;
        }
    }

    public abstract void a(xz xz1);

    public abstract int b();

    public abstract void b(xz xz1);

    final void c(xz xz1)
    {
        xz1.e(5);
        xz1.e(0);
        xz1.e(f);
        xz1.e(g);
        xz1.g(16);
        xz1.f(h);
        xz1.f(0);
        xz1.g(i);
    }

    public final boolean c()
    {
        return (g & 2) == 2;
    }

    final void d(xz xz1)
    {
        if (xz1.b() != 5 || xz1.b() != 0)
        {
            throw new ya("DCERPC version not supported");
        }
        f = xz1.b();
        g = xz1.b();
        if (xz1.d() != 16)
        {
            throw new ya("Data representation not supported");
        }
        h = xz1.c();
        if (xz1.c() != 0)
        {
            throw new ya("DCERPC authentication not supported");
        } else
        {
            i = xz1.d();
            return;
        }
    }

    public final void e(xz xz1)
    {
        int i1 = xz1.c;
        xz1.c(16);
        int l;
        if (f == 0)
        {
            l = xz1.c;
            xz1.g(0);
            xz1.f(0);
            xz1.f(b());
        } else
        {
            l = 0;
        }
        a(xz1);
        h = xz1.c - i1;
        if (f == 0)
        {
            xz1.c = l;
            j = h - l;
            xz1.g(j);
        }
        xz1.c = i1;
        c(xz1);
        xz1.c = h + i1;
    }

    public final void f(xz xz1)
    {
        d(xz1);
        if (f != 12 && f != 2 && f != 3 && f != 13)
        {
            throw new ya((new StringBuilder("Unexpected ptype: ")).append(f).toString());
        }
        if (f == 2 || f == 3)
        {
            j = xz1.d();
            xz1.c();
            xz1.c();
        }
        if (f == 3 || f == 13)
        {
            k = xz1.d();
            return;
        } else
        {
            b(xz1);
            return;
        }
    }
}
