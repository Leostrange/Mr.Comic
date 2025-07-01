// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import java.io.UnsupportedEncodingException;

final class zf extends aag
{

    zf()
    {
        g = 37;
        S = 0;
        T = new String("\\PIPE\\LANMAN");
        N = 8;
        P = 0;
        R = 0;
        Q = 5000;
    }

    final int a(byte abyte0[], int i)
    {
        return 0;
    }

    final int b(byte abyte0[], int i)
    {
        byte abyte1[];
        int j;
        try
        {
            abyte1 = "WrLeh\000B13BWz\0".getBytes("ASCII");
        }
        // Misplaced declaration of an exception variable
        catch (byte abyte0[])
        {
            return 0;
        }
        a(0L, abyte0, i);
        j = i + 2;
        System.arraycopy(abyte1, 0, abyte0, j, abyte1.length);
        j = abyte1.length + j;
        a(1L, abyte0, j);
        j += 2;
        a(O, abyte0, j);
        return (j + 2) - i;
    }

    final int c(byte abyte0[], int i)
    {
        return 0;
    }

    public final String toString()
    {
        return new String((new StringBuilder("NetShareEnum[")).append(super.toString()).append("]").toString());
    }
}
