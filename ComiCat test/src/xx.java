// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 


public final class xx
{
    public static final class a extends yc
    {

        public int a;
        public d b[];

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
                    b = new d[k];
                }
                xz1 = xz1.a(i);
                for (int j = 0; j < k; j++)
                {
                    if (b[j] == null)
                    {
                        b[j] = new d();
                    }
                    b[j].f(xz1);
                }

            }
        }

        public a()
        {
        }
    }

    public static final class b extends yc
    {

        public int a;
        public e b[];

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
                    b = new e[k];
                }
                xz1 = xz1.a(i);
                for (int j = 0; j < k; j++)
                {
                    if (b[j] == null)
                    {
                        b[j] = new e();
                    }
                    b[j].f(xz1);
                }

            }
        }

        public b()
        {
        }
    }

    public static final class c extends yc
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
                    b = new a();
                }
                xz1 = xz1.e;
                b.f(xz1);
            }
        }

        public c()
        {
        }
    }

    public static final class d extends yc
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

        public d()
        {
        }
    }

    public static final class e extends yc
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

        public e()
        {
        }
    }

    public static class f extends xr
    {

        public int a;
        public String b;
        public int c;
        public int d;
        public c l;
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
                    l = new c();
                }
                l.f(xz1);
            }
            if (xz1.d() != 0)
            {
                m.f(xz1);
            }
            a = xz1.d();
        }

        public f(String s, c c1, yb yb1)
        {
            b = s;
            c = 200;
            d = 65535;
            l = c1;
            m = yb1;
        }
    }

}
