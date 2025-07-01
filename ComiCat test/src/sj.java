// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import net.sf.sevenzipjbinding.ISequentialOutStream;

public final class sj
    implements ISequentialOutStream
{

    FileOutputStream a;

    public sj(File file)
    {
        a = new FileOutputStream(file);
    }

    public final int write(byte abyte0[])
    {
        int i = abyte0.length;
        try
        {
            a.write(abyte0);
        }
        // Misplaced declaration of an exception variable
        catch (byte abyte0[])
        {
            abyte0.printStackTrace();
            return 0;
        }
        return i;
    }
}
