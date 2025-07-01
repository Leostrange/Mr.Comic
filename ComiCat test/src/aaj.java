// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import java.io.UnsupportedEncodingException;

final class aaj extends yv
{

    String D;
    boolean b;
    boolean c;
    String d;

    aaj(zm zm)
    {
        super(zm);
        D = "";
    }

    final int i(byte abyte0[], int i1)
    {
        return 0;
    }

    final int j(byte abyte0[], int i1)
    {
        return 0;
    }

    final int k(byte abyte0[], int i1)
    {
        boolean flag1 = true;
        boolean flag;
        if ((abyte0[i1] & 1) == 1)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        b = flag;
        if ((abyte0[i1] & 2) == 2)
        {
            flag = flag1;
        } else
        {
            flag = false;
        }
        c = flag;
        return 2;
    }

    final int l(byte abyte0[], int i1)
    {
        int j1 = 0;
        do
        {
            if (abyte0[i1 + j1] != 0)
            {
                if (j1 > 32)
                {
                    throw new RuntimeException((new StringBuilder("zero termination not found: ")).append(this).toString());
                }
            } else
            {
                try
                {
                    d = new String(abyte0, i1, j1, "ASCII");
                }
                // Misplaced declaration of an exception variable
                catch (byte abyte0[])
                {
                    return 0;
                }
                return (j1 + 1 + i1) - i1;
            }
            j1++;
        } while (true);
    }

    public final String toString()
    {
        return new String((new StringBuilder("SmbComTreeConnectAndXResponse[")).append(super.toString()).append(",supportSearchBits=").append(b).append(",shareIsInDfs=").append(c).append(",service=").append(d).append(",nativeFileSystem=").append(D).append("]").toString());
    }
}
