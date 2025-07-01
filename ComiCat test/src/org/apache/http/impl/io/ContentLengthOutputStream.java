// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.apache.http.impl.io;

import java.io.IOException;
import java.io.OutputStream;
import org.apache.http.io.SessionOutputBuffer;
import org.apache.http.util.Args;

public class ContentLengthOutputStream extends OutputStream
{

    private boolean closed;
    private final long contentLength;
    private final SessionOutputBuffer out;
    private long total;

    public ContentLengthOutputStream(SessionOutputBuffer sessionoutputbuffer, long l)
    {
        total = 0L;
        closed = false;
        out = (SessionOutputBuffer)Args.notNull(sessionoutputbuffer, "Session output buffer");
        contentLength = Args.notNegative(l, "Content length");
    }

    public void close()
    {
        if (!closed)
        {
            closed = true;
            out.flush();
        }
    }

    public void flush()
    {
        out.flush();
    }

    public void write(int i)
    {
        if (closed)
        {
            throw new IOException("Attempted write to closed stream.");
        }
        if (total < contentLength)
        {
            out.write(i);
            total = total + 1L;
        }
    }

    public void write(byte abyte0[])
    {
        write(abyte0, 0, abyte0.length);
    }

    public void write(byte abyte0[], int i, int j)
    {
        if (closed)
        {
            throw new IOException("Attempted write to closed stream.");
        }
        if (total < contentLength)
        {
            long l = contentLength - total;
            int k = j;
            if ((long)j > l)
            {
                k = (int)l;
            }
            out.write(abyte0, i, k);
            total = total + (long)k;
        }
    }
}
