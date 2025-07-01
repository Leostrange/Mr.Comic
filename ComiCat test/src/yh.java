// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 


final class yh extends yj
{

    yh()
    {
        r = new yf();
    }

    final int a(byte abyte0[])
    {
        return 0;
    }

    final int a(byte abyte0[], int i)
    {
        boolean flag = false;
        if (e != 0 || d != 0)
        {
            return 0;
        }
        if ((abyte0[i] & 0x80) == 128)
        {
            flag = true;
        }
        byte byte0 = abyte0[i];
        i = c(abyte0, i + 2);
        if (i != 0)
        {
            b[a] = new yk(r, i, flag, (byte0 & 0x60) >> 5);
        } else
        {
            b[a] = null;
        }
        return 6;
    }

    final int b(byte abyte0[])
    {
        return d(abyte0, 12);
    }

    public final String toString()
    {
        return new String((new StringBuilder("NameQueryResponse[")).append(super.toString()).append(",addrEntry=").append(b).append("]").toString());
    }
}
