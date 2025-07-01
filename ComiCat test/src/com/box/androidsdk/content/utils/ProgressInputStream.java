// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.box.androidsdk.content.utils;

import com.box.androidsdk.content.listeners.ProgressListener;
import java.io.InputStream;

public class ProgressInputStream extends InputStream
{

    private final ProgressListener listener;
    private int progress;
    private final InputStream stream;
    private long total;
    private long totalRead;

    public ProgressInputStream(InputStream inputstream, ProgressListener progresslistener, long l)
    {
        stream = inputstream;
        listener = progresslistener;
        total = l;
    }

    public void close()
    {
        stream.close();
    }

    public long getTotal()
    {
        return total;
    }

    public int read()
    {
        int i = stream.read();
        totalRead = totalRead + 1L;
        listener.onProgressChanged(totalRead, total);
        return i;
    }

    public int read(byte abyte0[], int i, int j)
    {
        i = stream.read(abyte0, i, j);
        totalRead = totalRead + (long)i;
        listener.onProgressChanged(totalRead, total);
        return i;
    }

    public void setTotal(long l)
    {
        total = l;
    }
}
