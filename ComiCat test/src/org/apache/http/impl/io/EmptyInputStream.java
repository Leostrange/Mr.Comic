// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.apache.http.impl.io;

import java.io.InputStream;

public final class EmptyInputStream extends InputStream
{

    public static final EmptyInputStream INSTANCE = new EmptyInputStream();

    private EmptyInputStream()
    {
    }

    public final int available()
    {
        return 0;
    }

    public final void close()
    {
    }

    public final void mark(int i)
    {
    }

    public final boolean markSupported()
    {
        return true;
    }

    public final int read()
    {
        return -1;
    }

    public final int read(byte abyte0[])
    {
        return -1;
    }

    public final int read(byte abyte0[], int i, int j)
    {
        return -1;
    }

    public final void reset()
    {
    }

    public final long skip(long l)
    {
        return 0L;
    }

}
