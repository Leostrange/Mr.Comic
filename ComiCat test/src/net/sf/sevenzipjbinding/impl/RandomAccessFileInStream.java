// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package net.sf.sevenzipjbinding.impl;

import java.io.IOException;
import java.io.RandomAccessFile;
import net.sf.sevenzipjbinding.IInStream;
import net.sf.sevenzipjbinding.SevenZipException;

public class RandomAccessFileInStream
    implements IInStream
{

    private final RandomAccessFile randomAccessFile;

    public RandomAccessFileInStream(RandomAccessFile randomaccessfile)
    {
        randomAccessFile = randomaccessfile;
    }

    public void close()
    {
        randomAccessFile.close();
    }

    public int read(byte abyte0[])
    {
        int i;
        int j;
        try
        {
            i = randomAccessFile.read(abyte0);
        }
        // Misplaced declaration of an exception variable
        catch (byte abyte0[])
        {
            throw new SevenZipException("Error reading random access file", abyte0);
        }
        j = i;
        if (i == -1)
        {
            j = 0;
        }
        return j;
    }

    public long seek(long l, int i)
    {
        i;
        JVM INSTR tableswitch 0 2: default 28
    //                   0 66
    //                   1 82
    //                   2 101;
           goto _L1 _L2 _L3 _L4
_L4:
        break MISSING_BLOCK_LABEL_101;
_L1:
        try
        {
            throw new RuntimeException((new StringBuilder("Seek: unknown origin: ")).append(i).toString());
        }
        catch (IOException ioexception)
        {
            throw new SevenZipException("Error while seek operation", ioexception);
        }
_L2:
        randomAccessFile.seek(l);
_L5:
        return randomAccessFile.getFilePointer();
_L3:
        randomAccessFile.seek(randomAccessFile.getFilePointer() + l);
          goto _L5
        randomAccessFile.seek(randomAccessFile.length() + l);
          goto _L5
    }
}
