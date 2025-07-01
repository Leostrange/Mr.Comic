// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package net.sf.sevenzipjbinding.impl;

import java.io.IOException;
import java.io.InputStream;
import net.sf.sevenzipjbinding.ISequentialInStream;
import net.sf.sevenzipjbinding.SevenZipException;

public class SequentialInStreamImpl
    implements ISequentialInStream
{

    private InputStream inputStream;

    public SequentialInStreamImpl(InputStream inputstream)
    {
        inputStream = inputstream;
    }

    public InputStream getInputStream()
    {
        return inputStream;
    }

    public int read(byte abyte0[])
    {
        if (abyte0.length != 0)
        {
            int i;
            try
            {
                i = inputStream.read(abyte0);
            }
            // Misplaced declaration of an exception variable
            catch (byte abyte0[])
            {
                throw new SevenZipException("Error reading input stream", abyte0);
            }
            if (i != -1)
            {
                return i;
            }
        }
        return 0;
    }
}
