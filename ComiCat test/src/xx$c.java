// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 


public static final class > extends yc
{

    public int a;
    public yc b;

    public final void e(xz xz1)
    {
        xz1.d(4);
        xz1.g(a);
        xz1.g(a);
        xz1.a(b);
        if (b != null)
        {
            xz1 = xz1.e;
            b.e(xz1);
        }
    }

    public final void f(xz xz1)
    {
        xz1.d(4);
        a = xz1.d();
        xz1.d();
        if (xz1.d() != 0)
        {
            if (b == null)
            {
                b = new <init>();
            }
            xz1 = xz1.e;
            b.f(xz1);
        }
    }

    public >()
    {
    }
}
