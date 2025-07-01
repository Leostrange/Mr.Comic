// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 


public final class ug
{

    public static final short a(byte abyte0[], int i)
    {
        return (short)((short)((short)((abyte0[i + 1] & 0xff) + 0) << 8) + (abyte0[i] & 0xff));
    }

    public static final void a(byte abyte0[], int i, int j)
    {
        abyte0[i + 3] = (byte)(j >>> 24);
        abyte0[i + 2] = (byte)(j >>> 16);
        abyte0[i + 1] = (byte)(j >>> 8);
        abyte0[i] = (byte)(j & 0xff);
    }

    public static final void a(byte abyte0[], int i, short word0)
    {
        abyte0[i + 1] = (byte)(word0 >>> 8);
        abyte0[i] = (byte)(word0 & 0xff);
    }

    public static final int b(byte abyte0[], int i)
    {
        return (abyte0[i + 3] & 0xff) << 24 | (abyte0[i + 2] & 0xff) << 16 | (abyte0[i + 1] & 0xff) << 8 | abyte0[i] & 0xff;
    }
}
