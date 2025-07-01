// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 


public class uk
{

    protected long a;
    protected short b;
    protected byte c;
    protected short d;
    protected short e;
    protected int f;

    public uk()
    {
        b = 0;
        c = 0;
        d = 0;
        e = 0;
        f = 0;
    }

    public uk(uk uk1)
    {
        b = 0;
        c = 0;
        d = 0;
        e = 0;
        f = 0;
        d = uk1.d;
        b = uk1.b;
        c = uw.a(uk1.c).k;
        e = uk1.f();
        a = uk1.a;
    }

    public uk(byte abyte0[])
    {
        b = 0;
        c = 0;
        d = 0;
        e = 0;
        f = 0;
        b = ug.a(abyte0, 0);
        c = (byte)(c | abyte0[2] & 0xff);
        d = ug.a(abyte0, 3);
        e = ug.a(abyte0, 5);
    }

    public final void a(long l)
    {
        a = l;
    }

    public final void a(byte abyte0[])
    {
        f = ug.b(abyte0, 0);
    }

    public final boolean a()
    {
        return (d & 2) != 0;
    }

    public final boolean b()
    {
        return (d & 8) != 0;
    }

    public final boolean c()
    {
        return (d & 0x200) != 0;
    }

    public final boolean d()
    {
        return uw.a(c) != uw.c && (d & 0x8000) != 0;
    }

    public final long e()
    {
        return a;
    }

    public final short f()
    {
        return (short)(e + f);
    }

    public final uw g()
    {
        return uw.a(c);
    }
}
