// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import java.io.UnsupportedEncodingException;

final class zv extends zm
{

    zv()
    {
        g = 114;
        m = an;
    }

    final int i(byte abyte0[], int i1)
    {
        return 0;
    }

    final int j(byte abyte0[], int i1)
    {
        byte abyte1[];
        try
        {
            abyte1 = "\002NT LM 0.12\0".getBytes("ASCII");
        }
        // Misplaced declaration of an exception variable
        catch (byte abyte0[])
        {
            return 0;
        }
        System.arraycopy(abyte1, 0, abyte0, i1, abyte1.length);
        return abyte1.length;
    }

    final int k(byte abyte0[], int i1)
    {
        return 0;
    }

    final int l(byte abyte0[], int i1)
    {
        return 0;
    }

    public final String toString()
    {
        return new String((new StringBuilder("SmbComNegotiate[")).append(super.toString()).append(",wordCount=").append(r).append(",dialects=NT LM 0.12]").toString());
    }
}
