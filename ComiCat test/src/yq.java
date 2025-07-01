// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 


public abstract class yq
{

    protected static final byte a[] = {
        78, 84, 76, 77, 83, 83, 80, 0
    };
    static final String b;
    public int c;

    public yq()
    {
    }

    static int a(byte abyte0[], int i)
    {
        return abyte0[i] & 0xff | (abyte0[i + 1] & 0xff) << 8 | (abyte0[i + 2] & 0xff) << 16 | (abyte0[i + 3] & 0xff) << 24;
    }

    static void a(byte abyte0[], int i, int j)
    {
        abyte0[i] = (byte)(j & 0xff);
        abyte0[i + 1] = (byte)(j >> 8 & 0xff);
        abyte0[i + 2] = (byte)(j >> 16 & 0xff);
        abyte0[i + 3] = (byte)(j >> 24 & 0xff);
    }

    static void a(byte abyte0[], int i, int j, byte abyte1[])
    {
        int k;
        if (abyte1 != null)
        {
            k = abyte1.length;
        } else
        {
            k = 0;
        }
        if (k == 0)
        {
            return;
        } else
        {
            b(abyte0, i, k);
            b(abyte0, i + 2, k);
            a(abyte0, i + 4, j);
            System.arraycopy(abyte1, 0, abyte0, j, k);
            return;
        }
    }

    static void b(byte abyte0[], int i, int j)
    {
        abyte0[i] = (byte)(j & 0xff);
        abyte0[i + 1] = (byte)(j >> 8 & 0xff);
    }

    static byte[] b(byte abyte0[], int i)
    {
        int j = abyte0[i] & 0xff | (abyte0[i + 1] & 0xff) << 8;
        i = a(abyte0, i + 4);
        byte abyte1[] = new byte[j];
        System.arraycopy(abyte0, i, abyte1, 0, j);
        return abyte1;
    }

    static 
    {
        b = xj.b;
    }
}
