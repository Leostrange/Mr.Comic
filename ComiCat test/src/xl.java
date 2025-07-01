// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 


public final class xl extends xr
{

    static final String a[] = {
        "0", "DCERPC_BIND_ERR_ABSTRACT_SYNTAX_NOT_SUPPORTED", "DCERPC_BIND_ERR_PROPOSED_TRANSFER_SYNTAXES_NOT_SUPPORTED", "DCERPC_BIND_ERR_LOCAL_LIMIT_EXCEEDED"
    };
    xm b;
    int c;
    int d;

    public xl()
    {
    }

    xl(xm xm1, xq xq1)
    {
        b = xm1;
        c = xq1.b;
        d = xq1.c;
        f = 11;
        g = 3;
    }

    public final xp a()
    {
        if (k != 0)
        {
            int i = k;
            String s;
            if (i < 4)
            {
                s = a[i];
            } else
            {
                s = (new StringBuilder("0x")).append(abw.a(i, 4)).toString();
            }
            return new xp(s);
        } else
        {
            return null;
        }
    }

    public final void a(xz xz1)
    {
        xz1.f(c);
        xz1.f(d);
        xz1.g(0);
        xz1.e(1);
        xz1.e(0);
        xz1.f(0);
        xz1.f(0);
        xz1.e(1);
        xz1.e(0);
        b.f.e(xz1);
        xz1.f(b.g);
        xz1.f(b.h);
        e.e(xz1);
        xz1.g(2);
    }

    public final int b()
    {
        return 0;
    }

    public final void b(xz xz1)
    {
        xz1.c();
        xz1.c();
        xz1.d();
        xz1.c(xz1.c());
        xz1.d(4);
        xz1.b();
        xz1.d(4);
        k = xz1.c();
        xz1.c();
        xz1.c(20);
    }

}
