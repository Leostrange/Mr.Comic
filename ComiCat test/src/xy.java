// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 


public final class xy
{
    public static class a extends xr
    {

        public int a;
        public String b;
        public int c;
        public yc d;
        public int l;
        public int m;
        public int n;

        public final void a(xz xz1)
        {
            xz1.a(b);
            if (b != null)
            {
                xz1.a(b);
            }
            xz1.g(c);
            xz1.g(c);
            xz1.a(d);
            xz xz2 = xz1;
            if (d != null)
            {
                xz2 = xz1.e;
                d.e(xz2);
            }
            xz2.g(l);
            xz2.g(n);
        }

        public final int b()
        {
            return 15;
        }

        public final void b(xz xz1)
        {
            c = xz1.d();
            xz1.d();
            xz xz2 = xz1;
            if (xz1.d() != 0)
            {
                if (d == null)
                {
                    d = new d();
                }
                xz2 = xz1.e;
                d.f(xz2);
            }
            m = xz2.d();
            n = xz2.d();
            a = xz2.d();
        }

        public a(String s, yc yc1)
        {
            b = s;
            c = 1;
            d = yc1;
            l = -1;
            m = 0;
            n = 0;
        }
    }

    public static final class b extends yc
    {

        public String a;

        public final void e(xz xz1)
        {
            xz1.d(4);
            xz1.a(a);
            if (a != null)
            {
                xz1.e.a(a);
            }
        }

        public final void f(xz xz1)
        {
            xz1.d(4);
            if (xz1.d() != 0)
            {
                a = xz1.e.e();
            }
        }

        public b()
        {
        }
    }

    public static final class c extends yc
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

        public c()
        {
        }
    }

    public static final class d extends yc
    {

        public int a;
        public b b[];

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
                xz1.c(k * 4);
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
                xz1.c(k * 4);
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
                        b[j] = new b();
                    }
                    b[j].f(xz1);
                }

            }
        }

        public d()
        {
        }
    }

    public static final class e extends yc
    {

        public int a;
        public c b[];

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
                    b = new c[k];
                }
                xz1 = xz1.a(i);
                for (int j = 0; j < k; j++)
                {
                    if (b[j] == null)
                    {
                        b[j] = new c();
                    }
                    b[j].f(xz1);
                }

            }
        }

        public e()
        {
        }
    }

}
