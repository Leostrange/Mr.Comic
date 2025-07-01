// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.apache.http.impl.io;

import java.io.IOException;
import java.io.InputStream;
import org.apache.http.ConnectionClosedException;
import org.apache.http.Header;
import org.apache.http.HttpException;
import org.apache.http.MalformedChunkCodingException;
import org.apache.http.TruncatedChunkException;
import org.apache.http.config.MessageConstraints;
import org.apache.http.io.BufferInfo;
import org.apache.http.io.SessionInputBuffer;
import org.apache.http.util.Args;
import org.apache.http.util.CharArrayBuffer;

// Referenced classes of package org.apache.http.impl.io:
//            AbstractMessageParser

public class ChunkedInputStream extends InputStream
{

    private static final int BUFFER_SIZE = 2048;
    private static final int CHUNK_CRLF = 3;
    private static final int CHUNK_DATA = 2;
    private static final int CHUNK_INVALID = 0x7fffffff;
    private static final int CHUNK_LEN = 1;
    private final CharArrayBuffer buffer;
    private long chunkSize;
    private boolean closed;
    private final MessageConstraints constraints;
    private boolean eof;
    private Header footers[];
    private final SessionInputBuffer in;
    private long pos;
    private int state;

    public ChunkedInputStream(SessionInputBuffer sessioninputbuffer)
    {
        this(sessioninputbuffer, null);
    }

    public ChunkedInputStream(SessionInputBuffer sessioninputbuffer, MessageConstraints messageconstraints)
    {
        eof = false;
        closed = false;
        footers = new Header[0];
        in = (SessionInputBuffer)Args.notNull(sessioninputbuffer, "Session input buffer");
        pos = 0L;
        buffer = new CharArrayBuffer(16);
        if (messageconstraints == null)
        {
            messageconstraints = MessageConstraints.DEFAULT;
        }
        constraints = messageconstraints;
        state = 1;
    }

    private long getChunkSize()
    {
        switch (state)
        {
        case 2: // '\002'
        default:
            throw new IllegalStateException("Inconsistent codec state");

        case 3: // '\003'
            buffer.clear();
            if (in.readLine(buffer) == -1)
            {
                throw new MalformedChunkCodingException("CRLF expected at end of chunk");
            }
            if (!buffer.isEmpty())
            {
                throw new MalformedChunkCodingException("Unexpected content at the end of chunk");
            }
            state = 1;
            // fall through

        case 1: // '\001'
            buffer.clear();
            break;
        }
        if (in.readLine(buffer) == -1)
        {
            throw new ConnectionClosedException("Premature end of chunk coded message body: closing chunk expected");
        }
        int j = buffer.indexOf(59);
        int i = j;
        if (j < 0)
        {
            i = buffer.length();
        }
        String s = buffer.substringTrimmed(0, i);
        long l;
        try
        {
            l = Long.parseLong(s, 16);
        }
        catch (NumberFormatException numberformatexception)
        {
            throw new MalformedChunkCodingException((new StringBuilder("Bad chunk header: ")).append(s).toString());
        }
        return l;
    }

    private void nextChunk()
    {
        if (state == 0x7fffffff)
        {
            throw new MalformedChunkCodingException("Corrupt data stream");
        }
        try
        {
            chunkSize = getChunkSize();
            if (chunkSize < 0L)
            {
                throw new MalformedChunkCodingException("Negative chunk size");
            }
        }
        catch (MalformedChunkCodingException malformedchunkcodingexception)
        {
            state = 0x7fffffff;
            throw malformedchunkcodingexception;
        }
        state = 2;
        pos = 0L;
        if (chunkSize == 0L)
        {
            eof = true;
            parseTrailerHeaders();
        }
        return;
    }

    private void parseTrailerHeaders()
    {
        try
        {
            footers = AbstractMessageParser.parseHeaders(in, constraints.getMaxHeaderCount(), constraints.getMaxLineLength(), null);
            return;
        }
        catch (HttpException httpexception)
        {
            MalformedChunkCodingException malformedchunkcodingexception = new MalformedChunkCodingException((new StringBuilder("Invalid footer: ")).append(httpexception.getMessage()).toString());
            malformedchunkcodingexception.initCause(httpexception);
            throw malformedchunkcodingexception;
        }
    }

    public int available()
    {
        if (in instanceof BufferInfo)
        {
            return (int)Math.min(((BufferInfo)in).length(), chunkSize - pos);
        } else
        {
            return 0;
        }
    }

    public void close()
    {
        if (closed)
        {
            break MISSING_BLOCK_LABEL_49;
        }
        byte abyte0[];
        if (eof || state == 0x7fffffff)
        {
            break MISSING_BLOCK_LABEL_39;
        }
        abyte0 = new byte[2048];
        int i;
        do
        {
            i = read(abyte0);
        } while (i >= 0);
        eof = true;
        closed = true;
        return;
        Exception exception;
        exception;
        eof = true;
        closed = true;
        throw exception;
    }

    public Header[] getFooters()
    {
        return (Header[])footers.clone();
    }

    public int read()
    {
        if (closed)
        {
            throw new IOException("Attempted read from closed stream.");
        }
        if (!eof) goto _L2; else goto _L1
_L1:
        return -1;
_L2:
        if (state == 2)
        {
            break; /* Loop/switch isn't completed */
        }
        nextChunk();
        if (eof) goto _L1; else goto _L3
_L3:
        int i = in.read();
        if (i != -1)
        {
            pos = pos + 1L;
            if (pos >= chunkSize)
            {
                state = 3;
            }
        }
        return i;
    }

    public int read(byte abyte0[])
    {
        return read(abyte0, 0, abyte0.length);
    }

    public int read(byte abyte0[], int i, int j)
    {
        if (closed)
        {
            throw new IOException("Attempted read from closed stream.");
        }
        if (!eof) goto _L2; else goto _L1
_L1:
        return -1;
_L2:
        if (state == 2)
        {
            break; /* Loop/switch isn't completed */
        }
        nextChunk();
        if (eof) goto _L1; else goto _L3
_L3:
        i = in.read(abyte0, i, (int)Math.min(j, chunkSize - pos));
        if (i != -1)
        {
            pos = pos + (long)i;
            if (pos >= chunkSize)
            {
                state = 3;
            }
            return i;
        } else
        {
            eof = true;
            throw new TruncatedChunkException((new StringBuilder("Truncated chunk ( expected size: ")).append(chunkSize).append("; actual size: ").append(pos).append(")").toString());
        }
    }
}
