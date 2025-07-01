// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 


public final class abu
{

    public static int a(int i, byte abyte0[])
    {
        abyte0[0] = (byte)(i >> 24 & 0xff);
        abyte0[1] = (byte)(i >> 16 & 0xff);
        abyte0[2] = (byte)(i >> 8 & 0xff);
        abyte0[3] = (byte)(i & 0xff);
        return 4;
    }

    public static int a(int i, byte abyte0[], int j)
    {
        int k = j + 1;
        abyte0[j] = (byte)(i & 0xff);
        j = k + 1;
        abyte0[k] = (byte)(i >> 8 & 0xff);
        abyte0[j] = (byte)(i >> 16 & 0xff);
        abyte0[j + 1] = (byte)(i >> 24 & 0xff);
        return 4;
    }

    public static short a(byte abyte0[])
    {
        return (short)((abyte0[2] & 0xff) << 8 | abyte0[3] & 0xff);
    }

    public static short a(byte abyte0[], int i)
    {
        return (short)(abyte0[i] & 0xff | (abyte0[i + 1] & 0xff) << 8);
    }

    public static int b(byte abyte0[], int i)
    {
        return abyte0[i] & 0xff | (abyte0[i + 1] & 0xff) << 8 | (abyte0[i + 2] & 0xff) << 16 | (abyte0[i + 3] & 0xff) << 24;
    }
}
