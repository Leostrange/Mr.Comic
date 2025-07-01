// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 


public static class m extends xr
{

    public int a;
    public String b;
    public int c;
    public int d;
    public lang.String l;
    public yb m;

    public final void a(xz xz1)
    {
        xz1.a(b);
        xz1.g(c);
        xz1.g(d);
        xz1.a(l);
        if (l != null)
        {
            l.e(xz1);
        }
        xz1.a(m);
        if (m != null)
        {
            m.e(xz1);
        }
    }

    public final int b()
    {
        return 21;
    }

    public final void b(xz xz1)
    {
        if (xz1.d() != 0)
        {
            if (l == null)
            {
                l = new <init>();
            }
            l.f(xz1);
        }
        if (xz1.d() != 0)
        {
            m.f(xz1);
        }
        a = xz1.d();
    }

    public >(String s, String s1, yb yb1)
    {
        b = s;
        c = 200;
        d = 65535;
        l = s1;
        m = yb1;
    }
}
