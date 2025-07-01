// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import java.security.MessageDigest;

public final class abv extends MessageDigest
    implements Cloneable
{

    private MessageDigest a;
    private byte b[];
    private byte c[];

    private abv(abv abv1)
    {
        super("HMACT64");
        b = new byte[64];
        c = new byte[64];
        b = abv1.b;
        c = abv1.c;
        a = (MessageDigest)abv1.a.clone();
    }

    public abv(byte abyte0[])
    {
        super("HMACT64");
        b = new byte[64];
        c = new byte[64];
        int k = Math.min(abyte0.length, 64);
        int i = 0;
        int j;
        do
        {
            j = k;
            if (i >= k)
            {
                break;
            }
            b[i] = (byte)(abyte0[i] ^ 0x36);
            c[i] = (byte)(abyte0[i] ^ 0x5c);
            i++;
        } while (true);
        for (; j < 64; j++)
        {
            b[j] = 54;
            c[j] = 92;
        }

        try
        {
            a = MessageDigest.getInstance("MD5");
        }
        // Misplaced declaration of an exception variable
        catch (byte abyte0[])
        {
            throw new IllegalStateException(abyte0.getMessage());
        }
        engineReset();
    }

    public final Object clone()
    {
        abv abv1;
        try
        {
            abv1 = new abv(this);
        }
        catch (CloneNotSupportedException clonenotsupportedexception)
        {
            throw new IllegalStateException(clonenotsupportedexception.getMessage());
        }
        return abv1;
    }

    protected final int engineDigest(byte abyte0[], int i, int j)
    {
        byte abyte1[] = a.digest();
        a.update(c);
        a.update(abyte1);
        try
        {
            i = a.digest(abyte0, i, j);
        }
        // Misplaced declaration of an exception variable
        catch (byte abyte0[])
        {
            throw new IllegalStateException();
        }
        return i;
    }

    protected final byte[] engineDigest()
    {
        byte abyte0[] = a.digest();
        a.update(c);
        return a.digest(abyte0);
    }

    protected final int engineGetDigestLength()
    {
        return a.getDigestLength();
    }

    protected final void engineReset()
    {
        a.reset();
        a.update(b);
    }

    protected final void engineUpdate(byte byte0)
    {
        a.update(byte0);
    }

    protected final void engineUpdate(byte abyte0[], int i, int j)
    {
        a.update(abyte0, i, j);
    }
}
