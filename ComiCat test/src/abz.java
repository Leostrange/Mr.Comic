// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 


public final class abz
{

    byte a[];
    int b;
    int c;

    public abz()
    {
    }

    public abz(byte abyte0[])
    {
        a(abyte0, abyte0.length);
    }

    private void a(byte abyte0[], int i)
    {
        a = new byte[256];
        for (b = 0; b < 256; b = b + 1)
        {
            a[b] = (byte)b;
        }

        c = 0;
        for (b = 0; b < 256; b = b + 1)
        {
            c = c + abyte0[b % i + 0] + a[b] & 0xff;
            byte byte0 = a[b];
            a[b] = a[c];
            a[c] = byte0;
        }

        c = 0;
        b = 0;
    }

    public final void a(byte abyte0[], int i, byte abyte1[], int j)
    {
        for (; i < 16; i++)
        {
            b = b + 1 & 0xff;
            c = c + a[b] & 0xff;
            byte byte0 = a[b];
            a[b] = a[c];
            a[c] = byte0;
            abyte1[j] = (byte)(abyte0[i] ^ a[a[b] + a[c] & 0xff]);
            j++;
        }

    }
}
