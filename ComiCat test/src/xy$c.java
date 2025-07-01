// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 


public static final class > extends yc
{

    public String a;
    public int b;
    public String c;

    public final void e(xz xz1)
    {
        xz1.d(4);
        xz1.a(a);
        xz1.g(b);
        xz1.a(c);
        xz xz2 = xz1;
        if (a != null)
        {
            xz2 = xz1.e;
            xz2.a(a);
        }
        if (c != null)
        {
            xz2.e.a(c);
        }
    }

    public final void f(xz xz1)
    {
        xz1.d(4);
        int i = xz1.d();
        b = xz1.d();
        int j = xz1.d();
        xz xz2 = xz1;
        if (i != 0)
        {
            xz2 = xz1.e;
            a = xz2.e();
        }
        if (j != 0)
        {
            c = xz2.e.e();
        }
    }

    public >()
    {
    }
}
