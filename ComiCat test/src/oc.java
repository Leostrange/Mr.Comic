// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import java.io.FilterOutputStream;
import java.io.OutputStream;
import java.util.logging.Level;
import java.util.logging.Logger;

public final class oc extends FilterOutputStream
{

    final oa a;

    public oc(OutputStream outputstream, Logger logger, Level level, int i)
    {
        super(outputstream);
        a = new oa(logger, level, i);
    }

    public final void close()
    {
        a.close();
        super.close();
    }

    public final void write(int i)
    {
        out.write(i);
        a.write(i);
    }

    public final void write(byte abyte0[], int i, int j)
    {
        out.write(abyte0, i, j);
        a.write(abyte0, i, j);
    }
}
