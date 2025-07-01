// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 


public final class vq extends vo
{

    private int a;
    private int b;
    private int c;
    private int d;

    public vq(byte abyte0[])
    {
        super(abyte0);
    }

    private void b(int i)
    {
        c = i;
        if (k != null)
        {
            ug.a(k, l + 4, i);
        }
    }

    private void d(int i)
    {
        d = i;
        if (k != null)
        {
            ug.a(k, l + 8, i);
        }
    }

    private int g()
    {
        if (k != null)
        {
            d = ug.b(k, l + 8);
        }
        return d;
    }

    public final void a()
    {
        vq vq1 = new vq(k);
        vq1.c(g());
        vq1.b(b());
        vq1.c(b());
        vq1.d(g());
    }

    public final void a(int i)
    {
        b = 0xffff & i;
        if (k != null)
        {
            ug.a(k, l + 2, (short)i);
        }
    }

    public final void a(vq vq1)
    {
        vq vq2 = new vq(k);
        d(vq1.c());
        vq2.c(g());
        b(vq2.b());
        vq2.b(this);
        vq2.c(b());
        vq2.c(this);
    }

    public final int b()
    {
        if (k != null)
        {
            c = ug.b(k, l + 4);
        }
        return c;
    }

    public final void b(vq vq1)
    {
        b(vq1.c());
    }

    public final void c(vq vq1)
    {
        d(vq1.c());
    }

    public final int d()
    {
        if (k != null)
        {
            b = ug.a(k, l + 2) & 0xffff;
        }
        return b;
    }

    public final int e()
    {
        if (k != null)
        {
            a = ug.a(k, l) & 0xffff;
        }
        return a;
    }

    public final void f()
    {
        a = 65535;
        if (k != null)
        {
            ug.a(k, l, (short)-1);
        }
    }
}
