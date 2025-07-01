// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 


final class qu
    implements qt
{

    rb a;
    private qw b;
    private String c;

    qu(qw qw, String s, rb rb1)
    {
        b = qw;
        c = s;
        a = rb1;
    }

    public final boolean a(byte abyte0[])
    {
        return a.c(abyte0);
    }

    public final byte[] a()
    {
        return a.b();
    }

    public final String b()
    {
        return c;
    }

    public final byte[] b(byte abyte0[])
    {
        return a.a(abyte0);
    }

    public final boolean c()
    {
        return a.c();
    }

    public final void d()
    {
        a.d();
        a = null;
    }
}
