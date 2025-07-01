// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 


final class ym extends yj
{

    ym(yf yf1)
    {
        q = yf1;
        s = 33;
        n = false;
        p = false;
    }

    final int a(byte abyte0[])
    {
        int i = q.d;
        q.d = 0;
        int j = c(abyte0);
        q.d = i;
        return j;
    }

    final int a(byte abyte0[], int i)
    {
        return 0;
    }

    final int b(byte abyte0[])
    {
        return 0;
    }

    public final String toString()
    {
        return new String((new StringBuilder("NodeStatusRequest[")).append(super.toString()).append("]").toString());
    }
}
