// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.io.InputStream;
import net.sf.sevenzipjbinding.ISequentialOutStream;
import net.sf.sevenzipjbinding.SevenZipException;

public final class ags extends ByteArrayInputStream
    implements ISequentialOutStream
{

    public ags(int i)
    {
        super(new byte[i]);
        count = 0;
    }

    public ags(InputStream inputstream, int i)
    {
        int j;
        super(new byte[i]);
        j = 0;
_L2:
        if (j >= i)
        {
            break; /* Loop/switch isn't completed */
        }
        int k = inputstream.read(buf, j, i - j);
        j = k + j;
        continue; /* Loop/switch isn't completed */
        IOException ioexception;
        ioexception;
        ioexception.printStackTrace();
        if (true) goto _L2; else goto _L1
_L1:
    }

    public ags(byte abyte0[])
    {
        super(abyte0);
    }

    public final void a(byte abyte0[], int i, int j)
    {
        if (count + j > buf.length)
        {
            throw new IOException("Writing more bytes than the buffer");
        } else
        {
            System.arraycopy(abyte0, i, buf, count, j);
            count = count + j;
            return;
        }
    }

    public final byte[] a()
    {
        return buf;
    }

    public final int write(byte abyte0[])
    {
        try
        {
            a(abyte0, 0, abyte0.length);
        }
        // Misplaced declaration of an exception variable
        catch (byte abyte0[])
        {
            abyte0.printStackTrace();
            throw new SevenZipException("Writng to stream failed", abyte0);
        }
        return abyte0.length;
    }
}
