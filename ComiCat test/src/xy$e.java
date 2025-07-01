// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 


public static final class > extends yc
{

    public int a;
    public f b[];

    public final void e(xz xz1)
    {
        xz1.d(4);
        xz1.g(a);
        xz1.a(b);
        if (b != null)
        {
            xz1 = xz1.e;
            int k = a;
            xz1.g(k);
            int i = xz1.c;
            xz1.c(k * 12);
            xz1 = xz1.a(i);
            for (int j = 0; j < k; j++)
            {
                b[j].e(xz1);
            }

        }
    }

    public final void f(xz xz1)
    {
        xz1.d(4);
        a = xz1.d();
        if (xz1.d() != 0)
        {
            xz1 = xz1.e;
            int k = xz1.d();
            int i = xz1.c;
            xz1.c(k * 12);
            if (b == null)
            {
                if (k < 0 || k > 65535)
                {
                    throw new ya("invalid array conformance");
                }
                b = new b[k];
            }
            xz1 = xz1.a(i);
            for (int j = 0; j < k; j++)
            {
                if (b[j] == null)
                {
                    b[j] = new <init>();
                }
                b[j].f(xz1);
            }

        }
    }

    public >()
    {
    }
}
