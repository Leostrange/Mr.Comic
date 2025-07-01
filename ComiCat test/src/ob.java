// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import java.io.FilterInputStream;
import java.io.InputStream;
import java.util.logging.Level;
import java.util.logging.Logger;

public final class ob extends FilterInputStream
{

    private final oa a;

    public ob(InputStream inputstream, Logger logger, Level level, int i)
    {
        super(inputstream);
        a = new oa(logger, level, i);
    }

    public final void close()
    {
        a.close();
        super.close();
    }

    public final int read()
    {
        int i = super.read();
        a.write(i);
        return i;
    }

    public final int read(byte abyte0[], int i, int j)
    {
        j = super.read(abyte0, i, j);
        if (j > 0)
        {
            a.write(abyte0, i, j);
        }
        return j;
    }
}
