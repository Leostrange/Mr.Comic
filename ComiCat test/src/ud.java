// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 


public final class ud
{

    private static final int a[];

    public static int a(int i, byte abyte0[], int j, int k)
    {
        int l = Math.min(abyte0.length - j, k);
        boolean flag = false;
        k = i;
        for (i = ((flag) ? 1 : 0); i < l; i++)
        {
            k = a[(abyte0[j + i] ^ k) & 0xff] ^ k >>> 8;
        }

        return k;
    }

    public static short a(short word0, byte abyte0[], int i)
    {
        int j = Math.min(abyte0.length, i);
        for (i = 0; i < j; i++)
        {
            short word1 = (short)((short)((short)(abyte0[i] & 0xff) + word0) & -1);
            word0 = (short)((word1 >>> 15 | word1 << 1) & -1);
        }

        return word0;
    }

    static 
    {
        a = new int[256];
        for (int i = 0; i < 256; i++)
        {
            int k = 0;
            int j = i;
            while (k < 8) 
            {
                if ((j & 1) != 0)
                {
                    j = j >>> 1 ^ 0xedb88320;
                } else
                {
                    j >>>= 1;
                }
                k++;
            }
            a[i] = j;
        }

    }
}
