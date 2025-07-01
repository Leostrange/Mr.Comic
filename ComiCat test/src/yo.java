// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 


public final class yo extends yp
{

    private yf c;
    private yf d;

    yo()
    {
        c = new yf();
        d = new yf();
    }

    public yo(yf yf1, yf yf2)
    {
        a = 129;
        c = yf1;
        d = yf2;
    }

    final int a(byte abyte0[])
    {
        int i = c.a(abyte0, 4) + 4;
        return (i + d.a(abyte0, i)) - 4;
    }
}
