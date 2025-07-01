// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.apache.http.impl.io;

import java.io.InputStream;
import java.nio.ByteBuffer;
import java.nio.CharBuffer;
import java.nio.charset.CharsetDecoder;
import java.nio.charset.CoderResult;
import org.apache.http.MessageConstraintException;
import org.apache.http.config.MessageConstraints;
import org.apache.http.io.BufferInfo;
import org.apache.http.io.HttpTransportMetrics;
import org.apache.http.io.SessionInputBuffer;
import org.apache.http.util.Args;
import org.apache.http.util.Asserts;
import org.apache.http.util.ByteArrayBuffer;
import org.apache.http.util.CharArrayBuffer;

// Referenced classes of package org.apache.http.impl.io:
//            HttpTransportMetricsImpl

public class SessionInputBufferImpl
    implements BufferInfo, SessionInputBuffer
{

    private final byte buffer[];
    private int bufferlen;
    private int bufferpos;
    private CharBuffer cbuf;
    private final MessageConstraints constraints;
    private final CharsetDecoder decoder;
    private InputStream instream;
    private final ByteArrayBuffer linebuffer;
    private final HttpTransportMetricsImpl metrics;
    private final int minChunkLimit;

    public SessionInputBufferImpl(HttpTransportMetricsImpl httptransportmetricsimpl, int i)
    {
        this(httptransportmetricsimpl, i, i, null, null);
    }

    public SessionInputBufferImpl(HttpTransportMetricsImpl httptransportmetricsimpl, int i, int j, MessageConstraints messageconstraints, CharsetDecoder charsetdecoder)
    {
        Args.notNull(httptransportmetricsimpl, "HTTP transport metrcis");
        Args.positive(i, "Buffer size");
        metrics = httptransportmetricsimpl;
        buffer = new byte[i];
        bufferpos = 0;
        bufferlen = 0;
        if (j < 0)
        {
            j = 512;
        }
        minChunkLimit = j;
        if (messageconstraints == null)
        {
            messageconstraints = MessageConstraints.DEFAULT;
        }
        constraints = messageconstraints;
        linebuffer = new ByteArrayBuffer(i);
        decoder = charsetdecoder;
    }

    private int appendDecoded(CharArrayBuffer chararraybuffer, ByteBuffer bytebuffer)
    {
        int i = 0;
        if (!bytebuffer.hasRemaining())
        {
            return 0;
        }
        if (cbuf == null)
        {
            cbuf = CharBuffer.allocate(1024);
        }
        decoder.reset();
        while (bytebuffer.hasRemaining()) 
        {
            i += handleDecodingResult(decoder.decode(bytebuffer, cbuf, true), chararraybuffer, bytebuffer);
        }
        int j = handleDecodingResult(decoder.flush(cbuf), chararraybuffer, bytebuffer);
        cbuf.clear();
        return i + j;
    }

    private int handleDecodingResult(CoderResult coderresult, CharArrayBuffer chararraybuffer, ByteBuffer bytebuffer)
    {
        if (coderresult.isError())
        {
            coderresult.throwException();
        }
        cbuf.flip();
        int i = cbuf.remaining();
        for (; cbuf.hasRemaining(); chararraybuffer.append(cbuf.get())) { }
        cbuf.compact();
        return i;
    }

    private int lineFromLineBuffer(CharArrayBuffer chararraybuffer)
    {
        int k = linebuffer.length();
        int i = k;
        if (k > 0)
        {
            int j = k;
            if (linebuffer.byteAt(k - 1) == 10)
            {
                j = k - 1;
            }
            i = j;
            if (j > 0)
            {
                i = j;
                if (linebuffer.byteAt(j - 1) == 13)
                {
                    i = j - 1;
                }
            }
        }
        if (decoder == null)
        {
            chararraybuffer.append(linebuffer, 0, i);
        } else
        {
            i = appendDecoded(chararraybuffer, ByteBuffer.wrap(linebuffer.buffer(), 0, i));
        }
        linebuffer.clear();
        return i;
    }

    private int lineFromReadBuffer(CharArrayBuffer chararraybuffer, int i)
    {
        int k = bufferpos;
        bufferpos = i + 1;
        int j = i;
        if (i > k)
        {
            j = i;
            if (buffer[i - 1] == 13)
            {
                j = i - 1;
            }
        }
        i = j - k;
        if (decoder == null)
        {
            chararraybuffer.append(buffer, k, i);
            return i;
        } else
        {
            return appendDecoded(chararraybuffer, ByteBuffer.wrap(buffer, k, i));
        }
    }

    private int streamRead(byte abyte0[], int i, int j)
    {
        Asserts.notNull(instream, "Input stream");
        return instream.read(abyte0, i, j);
    }

    public int available()
    {
        return capacity() - length();
    }

    public void bind(InputStream inputstream)
    {
        instream = inputstream;
    }

    public int capacity()
    {
        return buffer.length;
    }

    public void clear()
    {
        bufferpos = 0;
        bufferlen = 0;
    }

    public int fillBuffer()
    {
        if (bufferpos > 0)
        {
            int i = bufferlen - bufferpos;
            if (i > 0)
            {
                System.arraycopy(buffer, bufferpos, buffer, 0, i);
            }
            bufferpos = 0;
            bufferlen = i;
        }
        int j = bufferlen;
        int k = buffer.length;
        k = streamRead(buffer, j, k - j);
        if (k == -1)
        {
            return -1;
        } else
        {
            bufferlen = j + k;
            metrics.incrementBytesTransferred(k);
            return k;
        }
    }

    public HttpTransportMetrics getMetrics()
    {
        return metrics;
    }

    public boolean hasBufferedData()
    {
        return bufferpos < bufferlen;
    }

    public boolean isBound()
    {
        return instream != null;
    }

    public boolean isDataAvailable(int i)
    {
        return hasBufferedData();
    }

    public int length()
    {
        return bufferlen - bufferpos;
    }

    public int read()
    {
        while (!hasBufferedData()) 
        {
            if (fillBuffer() == -1)
            {
                return -1;
            }
        }
        byte abyte0[] = buffer;
        int i = bufferpos;
        bufferpos = i + 1;
        return abyte0[i] & 0xff;
    }

    public int read(byte abyte0[])
    {
        if (abyte0 == null)
        {
            return 0;
        } else
        {
            return read(abyte0, 0, abyte0.length);
        }
    }

    public int read(byte abyte0[], int i, int j)
    {
        if (abyte0 == null)
        {
            i = 0;
        } else
        {
            if (hasBufferedData())
            {
                j = Math.min(j, bufferlen - bufferpos);
                System.arraycopy(buffer, bufferpos, abyte0, i, j);
                bufferpos = bufferpos + j;
                return j;
            }
            if (j > minChunkLimit)
            {
                j = streamRead(abyte0, i, j);
                i = j;
                if (j > 0)
                {
                    metrics.incrementBytesTransferred(j);
                    return j;
                }
            } else
            {
                while (!hasBufferedData()) 
                {
                    if (fillBuffer() == -1)
                    {
                        return -1;
                    }
                }
                j = Math.min(j, bufferlen - bufferpos);
                System.arraycopy(buffer, bufferpos, abyte0, i, j);
                bufferpos = bufferpos + j;
                return j;
            }
        }
        return i;
    }

    public int readLine(CharArrayBuffer chararraybuffer)
    {
        int i;
        int k;
        int i1;
        Args.notNull(chararraybuffer, "Char array buffer");
        i1 = constraints.getMaxLineLength();
        i = 1;
        k = 0;
_L5:
        int j;
        if (i == 0)
        {
            break; /* Loop/switch isn't completed */
        }
        j = bufferpos;
_L3:
        if (j >= bufferlen)
        {
            break MISSING_BLOCK_LABEL_259;
        }
        if (buffer[j] != 10) goto _L2; else goto _L1
_L2:
        j++;
          goto _L3
_L1:
        if (i1 > 0)
        {
            int j1 = linebuffer.length();
            int l;
            if (j > 0)
            {
                l = j;
            } else
            {
                l = bufferlen;
            }
            if ((l + j1) - bufferpos >= i1)
            {
                throw new MessageConstraintException("Maximum line length limit exceeded");
            }
        }
        if (j != -1)
        {
            if (linebuffer.isEmpty())
            {
                return lineFromReadBuffer(chararraybuffer, j);
            }
            i = bufferpos;
            linebuffer.append(buffer, bufferpos, (j + 1) - i);
            bufferpos = j + 1;
            i = 0;
        } else
        {
            if (hasBufferedData())
            {
                j = bufferlen;
                k = bufferpos;
                linebuffer.append(buffer, bufferpos, j - k);
                bufferpos = bufferlen;
            }
            k = fillBuffer();
            if (k == -1)
            {
                i = 0;
            }
        }
        if (true) goto _L5; else goto _L4
_L4:
        if (k == -1 && linebuffer.isEmpty())
        {
            return -1;
        } else
        {
            return lineFromLineBuffer(chararraybuffer);
        }
        j = -1;
          goto _L1
    }

    public String readLine()
    {
        CharArrayBuffer chararraybuffer = new CharArrayBuffer(64);
        if (readLine(chararraybuffer) != -1)
        {
            return chararraybuffer.toString();
        } else
        {
            return null;
        }
    }
}
