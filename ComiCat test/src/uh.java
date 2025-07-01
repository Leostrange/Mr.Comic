// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import java.io.File;
import java.io.IOException;
import java.io.RandomAccessFile;

public class uh extends RandomAccessFile
    implements uf
{

    static final boolean a;

    public uh(File file)
    {
        super(file, "r");
    }

    public final int a(byte abyte0[], int i)
    {
        if (!a && i <= 0)
        {
            throw new AssertionError(i);
        } else
        {
            readFully(abyte0, 0, i);
            return i;
        }
    }

    public final long a()
    {
        return getFilePointer();
    }

    public final void a(long l)
    {
        seek(l);
    }

    public long length()
    {
        long l;
        try
        {
            l = super.length();
        }
        catch (IOException ioexception)
        {
            ioexception.printStackTrace();
            return 0L;
        }
        return l;
    }

    static 
    {
        boolean flag;
        if (!uh.desiredAssertionStatus())
        {
            flag = true;
        } else
        {
            flag = false;
        }
        a = flag;
    }
}
