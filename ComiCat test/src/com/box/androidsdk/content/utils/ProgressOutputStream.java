// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.box.androidsdk.content.utils;

import com.box.androidsdk.content.listeners.ProgressListener;
import java.io.OutputStream;

public class ProgressOutputStream extends OutputStream
{

    private final ProgressListener listener;
    private int progress;
    private final OutputStream stream;
    private long total;
    private long totalWritten;

    public ProgressOutputStream(OutputStream outputstream, ProgressListener progresslistener, long l)
    {
        stream = outputstream;
        listener = progresslistener;
        total = l;
    }

    public void close()
    {
        stream.close();
        super.close();
    }

    public void flush()
    {
        stream.flush();
        super.flush();
    }

    public long getTotal()
    {
        return total;
    }

    public void setTotal(long l)
    {
        total = l;
    }

    public void write(int i)
    {
        stream.write(i);
        totalWritten = totalWritten + 1L;
        listener.onProgressChanged(totalWritten, total);
    }

    public void write(byte abyte0[])
    {
        stream.write(abyte0);
        totalWritten = totalWritten + (long)abyte0.length;
        listener.onProgressChanged(totalWritten, total);
    }

    public void write(byte abyte0[], int i, int j)
    {
        stream.write(abyte0, i, j);
        if (j < abyte0.length)
        {
            totalWritten = totalWritten + (long)j;
        } else
        {
            totalWritten = totalWritten + (long)abyte0.length;
        }
        listener.onProgressChanged(totalWritten, total);
    }
}
