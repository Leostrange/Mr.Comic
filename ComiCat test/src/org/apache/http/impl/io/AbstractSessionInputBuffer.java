// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.apache.http.impl.io;

import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.nio.CharBuffer;
import java.nio.charset.Charset;
import java.nio.charset.CharsetDecoder;
import java.nio.charset.CoderResult;
import java.nio.charset.CodingErrorAction;
import org.apache.http.Consts;
import org.apache.http.io.BufferInfo;
import org.apache.http.io.HttpTransportMetrics;
import org.apache.http.io.SessionInputBuffer;
import org.apache.http.params.HttpParams;
import org.apache.http.util.Args;
import org.apache.http.util.ByteArrayBuffer;
import org.apache.http.util.CharArrayBuffer;

// Referenced classes of package org.apache.http.impl.io:
//            HttpTransportMetricsImpl

public abstract class AbstractSessionInputBuffer
    implements BufferInfo, SessionInputBuffer
{

    private boolean ascii;
    private byte buffer[];
    private int bufferlen;
    private int bufferpos;
    private CharBuffer cbuf;
    private Charset charset;
    private CharsetDecoder decoder;
    private InputStream instream;
    private ByteArrayBuffer linebuffer;
    private int maxLineLen;
    private HttpTransportMetricsImpl metrics;
    private int minChunkLimit;
    private CodingErrorAction onMalformedCharAction;
    private CodingErrorAction onUnmappableCharAction;

    public AbstractSessionInputBuffer()
    {
    }

    private int appendDecoded(CharArrayBuffer chararraybuffer, ByteBuffer bytebuffer)
    {
        int i = 0;
        if (!bytebuffer.hasRemaining())
        {
            return 0;
        }
        if (decoder == null)
        {
            decoder = charset.newDecoder();
            decoder.onMalformedInput(onMalformedCharAction);
            decoder.onUnmappableCharacter(onUnmappableCharAction);
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
        if (ascii)
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
        if (ascii)
        {
            chararraybuffer.append(buffer, k, i);
            return i;
        } else
        {
            return appendDecoded(chararraybuffer, ByteBuffer.wrap(buffer, k, i));
        }
    }

    private int locateLF()
    {
        for (int i = bufferpos; i < bufferlen; i++)
        {
            if (buffer[i] == 10)
            {
                return i;
            }
        }

        return -1;
    }

    public int available()
    {
        return capacity() - length();
    }

    public int capacity()
    {
        return buffer.length;
    }

    protected HttpTransportMetricsImpl createTransportMetrics()
    {
        return new HttpTransportMetricsImpl();
    }

    protected int fillBuffer()
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
        k = instream.read(buffer, j, k - j);
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

    protected boolean hasBufferedData()
    {
        return bufferpos < bufferlen;
    }

    protected void init(InputStream inputstream, int i, HttpParams httpparams)
    {
        Args.notNull(inputstream, "Input stream");
        Args.notNegative(i, "Buffer size");
        Args.notNull(httpparams, "HTTP parameters");
        instream = inputstream;
        buffer = new byte[i];
        bufferpos = 0;
        bufferlen = 0;
        linebuffer = new ByteArrayBuffer(i);
        inputstream = (String)httpparams.getParameter("http.protocol.element-charset");
        if (inputstream != null)
        {
            inputstream = Charset.forName(inputstream);
        } else
        {
            inputstream = Consts.ASCII;
        }
        charset = inputstream;
        ascii = charset.equals(Consts.ASCII);
        decoder = null;
        maxLineLen = httpparams.getIntParameter("http.connection.max-line-length", -1);
        minChunkLimit = httpparams.getIntParameter("http.connection.min-chunk-limit", 512);
        metrics = createTransportMetrics();
        inputstream = (CodingErrorAction)httpparams.getParameter("http.malformed.input.action");
        if (inputstream == null)
        {
            inputstream = CodingErrorAction.REPORT;
        }
        onMalformedCharAction = inputstream;
        inputstream = (CodingErrorAction)httpparams.getParameter("http.unmappable.input.action");
        if (inputstream == null)
        {
            inputstream = CodingErrorAction.REPORT;
        }
        onUnmappableCharAction = inputstream;
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
                j = instream.read(abyte0, i, j);
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
        Args.notNull(chararraybuffer, "Char array buffer");
        int j = 1;
        int k = 0;
        while (j != 0) 
        {
            int i = locateLF();
            int l;
            if (i != -1)
            {
                if (linebuffer.isEmpty())
                {
                    return lineFromReadBuffer(chararraybuffer, i);
                }
                j = bufferpos;
                linebuffer.append(buffer, bufferpos, (i + 1) - j);
                bufferpos = i + 1;
                i = 0;
                l = k;
            } else
            {
                if (hasBufferedData())
                {
                    i = bufferlen;
                    k = bufferpos;
                    linebuffer.append(buffer, bufferpos, i - k);
                    bufferpos = bufferlen;
                }
                k = fillBuffer();
                i = j;
                l = k;
                if (k == -1)
                {
                    i = 0;
                    l = k;
                }
            }
            j = i;
            k = l;
            if (maxLineLen > 0)
            {
                j = i;
                k = l;
                if (linebuffer.length() >= maxLineLen)
                {
                    throw new IOException("Maximum line length limit exceeded");
                }
            }
        }
        if (k == -1 && linebuffer.isEmpty())
        {
            return -1;
        } else
        {
            return lineFromLineBuffer(chararraybuffer);
        }
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
