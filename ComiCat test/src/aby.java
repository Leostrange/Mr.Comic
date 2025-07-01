// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import java.security.MessageDigest;

public final class aby extends MessageDigest
    implements Cloneable
{

    private int a[];
    private long b;
    private byte c[];
    private int d[];

    public aby()
    {
        super("MD4");
        a = new int[4];
        c = new byte[64];
        d = new int[16];
        engineReset();
    }

    private aby(aby aby1)
    {
        this();
        a = (int[])(int[])aby1.a.clone();
        c = (byte[])(byte[])aby1.c.clone();
        b = aby1.b;
    }

    private static int a(int i, int j, int k, int l, int i1, int j1)
    {
        i = (j & k | ~j & l) + i + i1;
        return i >>> 32 - j1 | i << j1;
    }

    private void a(byte abyte0[], int i)
    {
        int k = 0;
        int j = i;
        for (i = k; i < 16; i++)
        {
            int ai[] = d;
            int l = j + 1;
            k = abyte0[j];
            j = l + 1;
            l = abyte0[l];
            int j1 = j + 1;
            byte byte0 = abyte0[j];
            j = j1 + 1;
            ai[i] = (l & 0xff) << 8 | k & 0xff | (byte0 & 0xff) << 16 | (abyte0[j1] & 0xff) << 24;
        }

        j = a[0];
        i = a[1];
        int i1 = a[2];
        k = a[3];
        j = a(j, i, i1, k, d[0], 3);
        k = a(k, j, i, i1, d[1], 7);
        i1 = a(i1, k, j, i, d[2], 11);
        i = a(i, i1, k, j, d[3], 19);
        j = a(j, i, i1, k, d[4], 3);
        k = a(k, j, i, i1, d[5], 7);
        i1 = a(i1, k, j, i, d[6], 11);
        i = a(i, i1, k, j, d[7], 19);
        j = a(j, i, i1, k, d[8], 3);
        k = a(k, j, i, i1, d[9], 7);
        i1 = a(i1, k, j, i, d[10], 11);
        i = a(i, i1, k, j, d[11], 19);
        j = a(j, i, i1, k, d[12], 3);
        k = a(k, j, i, i1, d[13], 7);
        i1 = a(i1, k, j, i, d[14], 11);
        i = a(i, i1, k, j, d[15], 19);
        j = b(j, i, i1, k, d[0], 3);
        k = b(k, j, i, i1, d[4], 5);
        i1 = b(i1, k, j, i, d[8], 9);
        i = b(i, i1, k, j, d[12], 13);
        j = b(j, i, i1, k, d[1], 3);
        k = b(k, j, i, i1, d[5], 5);
        i1 = b(i1, k, j, i, d[9], 9);
        i = b(i, i1, k, j, d[13], 13);
        j = b(j, i, i1, k, d[2], 3);
        k = b(k, j, i, i1, d[6], 5);
        i1 = b(i1, k, j, i, d[10], 9);
        i = b(i, i1, k, j, d[14], 13);
        j = b(j, i, i1, k, d[3], 3);
        k = b(k, j, i, i1, d[7], 5);
        i1 = b(i1, k, j, i, d[11], 9);
        i = b(i, i1, k, j, d[15], 13);
        j = c(j, i, i1, k, d[0], 3);
        k = c(k, j, i, i1, d[8], 9);
        i1 = c(i1, k, j, i, d[4], 11);
        i = c(i, i1, k, j, d[12], 15);
        j = c(j, i, i1, k, d[2], 3);
        k = c(k, j, i, i1, d[10], 9);
        i1 = c(i1, k, j, i, d[6], 11);
        i = c(i, i1, k, j, d[14], 15);
        j = c(j, i, i1, k, d[1], 3);
        k = c(k, j, i, i1, d[9], 9);
        i1 = c(i1, k, j, i, d[5], 11);
        i = c(i, i1, k, j, d[13], 15);
        j = c(j, i, i1, k, d[3], 3);
        k = c(k, j, i, i1, d[11], 9);
        i1 = c(i1, k, j, i, d[7], 11);
        i = c(i, i1, k, j, d[15], 15);
        abyte0 = a;
        abyte0[0] = abyte0[0] + j;
        abyte0 = a;
        abyte0[1] = i + abyte0[1];
        abyte0 = a;
        abyte0[2] = abyte0[2] + i1;
        abyte0 = a;
        abyte0[3] = abyte0[3] + k;
    }

    private static int b(int i, int j, int k, int l, int i1, int j1)
    {
        i = ((k | l) & j | k & l) + i + i1 + 0x5a827999;
        return i >>> 32 - j1 | i << j1;
    }

    private static int c(int i, int j, int k, int l, int i1, int j1)
    {
        i = (j ^ k ^ l) + i + i1 + 0x6ed9eba1;
        return i >>> 32 - j1 | i << j1;
    }

    public final Object clone()
    {
        return new aby(this);
    }

    public final byte[] engineDigest()
    {
        int i = (int)(b % 64L);
        byte abyte0[];
        if (i < 56)
        {
            i = 56 - i;
        } else
        {
            i = 120 - i;
        }
        abyte0 = new byte[i + 8];
        abyte0[0] = -128;
        for (int k = 0; k < 8; k++)
        {
            abyte0[i + k] = (byte)(int)(b * 8L >>> k * 8);
        }

        engineUpdate(abyte0, 0, abyte0.length);
        abyte0 = new byte[16];
        for (int j = 0; j < 4; j++)
        {
            for (int l = 0; l < 4; l++)
            {
                abyte0[j * 4 + l] = (byte)(a[j] >>> l * 8);
            }

        }

        engineReset();
        return abyte0;
    }

    public final void engineReset()
    {
        a[0] = 0x67452301;
        a[1] = 0xefcdab89;
        a[2] = 0x98badcfe;
        a[3] = 0x10325476;
        b = 0L;
        for (int i = 0; i < 64; i++)
        {
            c[i] = 0;
        }

    }

    public final void engineUpdate(byte byte0)
    {
        int i = (int)(b % 64L);
        b = b + 1L;
        c[i] = byte0;
        if (i == 63)
        {
            a(c, 0);
        }
    }

    public final void engineUpdate(byte abyte0[], int i, int j)
    {
        boolean flag = false;
        if (i < 0 || j < 0 || (long)i + (long)j > (long)abyte0.length)
        {
            throw new ArrayIndexOutOfBoundsException();
        }
        int l = (int)(b % 64L);
        b = b + (long)j;
        int k = 64 - l;
        int i1;
        if (j >= k)
        {
            System.arraycopy(abyte0, i, c, l, k);
            a(c, 0);
            do
            {
                i1 = k;
                l = ((flag) ? 1 : 0);
                if ((k + 64) - 1 >= j)
                {
                    break;
                }
                a(abyte0, i + k);
                k += 64;
            } while (true);
        } else
        {
            i1 = 0;
        }
        if (i1 < j)
        {
            System.arraycopy(abyte0, i + i1, c, l, j - i1);
        }
    }
}
