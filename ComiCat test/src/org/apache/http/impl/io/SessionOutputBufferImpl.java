// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.apache.http.impl.io;

import java.io.OutputStream;
import java.nio.ByteBuffer;
import java.nio.CharBuffer;
import java.nio.charset.CharsetEncoder;
import java.nio.charset.CoderResult;
import org.apache.http.io.BufferInfo;
import org.apache.http.io.HttpTransportMetrics;
import org.apache.http.io.SessionOutputBuffer;
import org.apache.http.util.Args;
import org.apache.http.util.Asserts;
import org.apache.http.util.ByteArrayBuffer;
import org.apache.http.util.CharArrayBuffer;

// Referenced classes of package org.apache.http.impl.io:
//            HttpTransportMetricsImpl

public class SessionOutputBufferImpl
    implements BufferInfo, SessionOutputBuffer
{

    private static final byte CRLF[] = {
        13, 10
    };
    private ByteBuffer bbuf;
    private final ByteArrayBuffer buffer;
    private final CharsetEncoder encoder;
    private final int fragementSizeHint;
    private final HttpTransportMetricsImpl metrics;
    private OutputStream outstream;

    public SessionOutputBufferImpl(HttpTransportMetricsImpl httptransportmetricsimpl, int i)
    {
        this(httptransportmetricsimpl, i, i, null);
    }

    public SessionOutputBufferImpl(HttpTransportMetricsImpl httptransportmetricsimpl, int i, int j, CharsetEncoder charsetencoder)
    {
        Args.positive(i, "Buffer size");
        Args.notNull(httptransportmetricsimpl, "HTTP transport metrcis");
        metrics = httptransportmetricsimpl;
        buffer = new ByteArrayBuffer(i);
        if (j < 0)
        {
            j = 0;
        }
        fragementSizeHint = j;
        encoder = charsetencoder;
    }

    private void flushBuffer()
    {
        int i = buffer.length();
        if (i > 0)
        {
            streamWrite(buffer.buffer(), 0, i);
            buffer.clear();
            metrics.incrementBytesTransferred(i);
        }
    }

    private void flushStream()
    {
        if (outstream != null)
        {
            outstream.flush();
        }
    }

    private void handleEncodingResult(CoderResult coderresult)
    {
        if (coderresult.isError())
        {
            coderresult.throwException();
        }
        bbuf.flip();
        for (; bbuf.hasRemaining(); write(bbuf.get())) { }
        bbuf.compact();
    }

    private void streamWrite(byte abyte0[], int i, int j)
    {
        Asserts.notNull(outstream, "Output stream");
        outstream.write(abyte0, i, j);
    }

    private void writeEncoded(CharBuffer charbuffer)
    {
        if (!charbuffer.hasRemaining())
        {
            return;
        }
        if (bbuf == null)
        {
            bbuf = ByteBuffer.allocate(1024);
        }
        encoder.reset();
        for (; charbuffer.hasRemaining(); handleEncodingResult(encoder.encode(charbuffer, bbuf, true))) { }
        handleEncodingResult(encoder.flush(bbuf));
        bbuf.clear();
    }

    public int available()
    {
        return capacity() - length();
    }

    public void bind(OutputStream outputstream)
    {
        outstream = outputstream;
    }

    public int capacity()
    {
        return buffer.capacity();
    }

    public void flush()
    {
        flushBuffer();
        flushStream();
    }

    public HttpTransportMetrics getMetrics()
    {
        return metrics;
    }

    public boolean isBound()
    {
        return outstream != null;
    }

    public int length()
    {
        return buffer.length();
    }

    public void write(int i)
    {
        if (fragementSizeHint > 0)
        {
            if (buffer.isFull())
            {
                flushBuffer();
            }
            buffer.append(i);
            return;
        } else
        {
            flushBuffer();
            outstream.write(i);
            return;
        }
    }

    public void write(byte abyte0[])
    {
        if (abyte0 == null)
        {
            return;
        } else
        {
            write(abyte0, 0, abyte0.length);
            return;
        }
    }

    public void write(byte abyte0[], int i, int j)
    {
        if (abyte0 == null)
        {
            return;
        }
        if (j > fragementSizeHint || j > buffer.capacity())
        {
            flushBuffer();
            streamWrite(abyte0, i, j);
            metrics.incrementBytesTransferred(j);
            return;
        }
        if (j > buffer.capacity() - buffer.length())
        {
            flushBuffer();
        }
        buffer.append(abyte0, i, j);
    }

    public void writeLine(String s)
    {
        if (s == null)
        {
            return;
        }
        if (s.length() > 0)
        {
            if (encoder == null)
            {
                for (int i = 0; i < s.length(); i++)
                {
                    write(s.charAt(i));
                }

            } else
            {
                writeEncoded(CharBuffer.wrap(s));
            }
        }
        write(CRLF);
    }

    public void writeLine(CharArrayBuffer chararraybuffer)
    {
        int j = 0;
        if (chararraybuffer == null)
        {
            return;
        }
        if (encoder == null)
        {
            int k;
            for (int i = chararraybuffer.length(); i > 0; i -= k)
            {
                k = Math.min(buffer.capacity() - buffer.length(), i);
                if (k > 0)
                {
                    buffer.append(chararraybuffer, j, k);
                }
                if (buffer.isFull())
                {
                    flushBuffer();
                }
                j += k;
            }

        } else
        {
            writeEncoded(CharBuffer.wrap(chararraybuffer.buffer(), 0, chararraybuffer.length()));
        }
        write(CRLF);
    }

}
