// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 


final class yg extends yj
{

    yg(yf yf1)
    {
        q = yf1;
        s = 32;
    }

    final int a(byte abyte0[])
    {
        return c(abyte0);
    }

    final int a(byte abyte0[], int i)
    {
        return 0;
    }

    final int b(byte abyte0[])
    {
        int i = super.q.a(abyte0) + 12;
        super.s = yj.b(abyte0, i);
        i += 2;
        super.t = yj.b(abyte0, i);
        return (i + 2) - 12;
    }

    public final String toString()
    {
        return new String((new StringBuilder("NameQueryRequest[")).append(super.toString()).append("]").toString());
    }
}
