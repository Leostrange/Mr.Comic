// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 


public abstract class air extends aif
{

    protected aim b;
    protected int c;
    protected boolean d;
    protected aiv e;
    protected boolean f;

    protected air(int k, aim aim)
    {
        c = k;
        e = new aiv(0, null);
        b = aim;
        d = a(aif.a.e);
    }

    protected static void e(String s)
    {
        throw new aie(s);
    }

    protected static void j()
    {
        throw new RuntimeException("Internal error: should never end up through this code path");
    }

    public final aif a()
    {
        return a(((ain) (new aju())));
    }

    public final boolean a(aif.a a1)
    {
        return (c & a1.i) != 0;
    }

    public void b()
    {
        d("start an array");
        e = e.g();
        if (a != null)
        {
            a.e(this);
        }
    }

    public void c()
    {
        if (!e.a())
        {
            e((new StringBuilder("Current context not an ARRAY but ")).append(e.d()).toString());
        }
        if (a != null)
        {
            a.b(this, e.e());
        }
        e = e.i();
    }

    public void close()
    {
        f = true;
    }

    public void d()
    {
        d("start an object");
        e = e.h();
        if (a != null)
        {
            a.b(this);
        }
    }

    protected abstract void d(String s);

    public void e()
    {
        if (!e.c())
        {
            e((new StringBuilder("Current context not an object but ")).append(e.d()).toString());
        }
        e = e.i();
        if (a != null)
        {
            a.a(this, e.e());
        }
    }

    public final aiv h()
    {
        return e;
    }

    protected abstract void i();
}
