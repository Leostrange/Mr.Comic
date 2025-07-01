// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 


public class vw
{

    protected int al;
    protected int am;
    protected byte an[];

    public vw()
    {
        an = new byte[32768];
    }

    public final void a(int j)
    {
        j = am + j;
        al = al + (j >> 3);
        am = j & 7;
    }

    public final void b(int j)
    {
        a(j);
    }

    public final void e()
    {
        al = 0;
        am = 0;
    }

    public final int f()
    {
        return ((an[al] & 0xff) << 16) + ((an[al + 1] & 0xff) << 8) + (an[al + 2] & 0xff) >>> 8 - am & 0xffff;
    }

    public final int g()
    {
        return f();
    }

    public final boolean h()
    {
        return al + 3 >= 32768;
    }

    public final byte[] i()
    {
        return an;
    }
}
