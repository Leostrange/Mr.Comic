package org.apache.http.impl.io;

import android.support.v4.app.NotificationCompat;
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

public class SessionInputBufferImpl implements BufferInfo, SessionInputBuffer {
    private final byte[] buffer;
    private int bufferlen;
    private int bufferpos;
    private CharBuffer cbuf;
    private final MessageConstraints constraints;
    private final CharsetDecoder decoder;
    private InputStream instream;
    private final ByteArrayBuffer linebuffer;
    private final HttpTransportMetricsImpl metrics;
    private final int minChunkLimit;

    public SessionInputBufferImpl(HttpTransportMetricsImpl httpTransportMetricsImpl, int i) {
        this(httpTransportMetricsImpl, i, i, (MessageConstraints) null, (CharsetDecoder) null);
    }

    public SessionInputBufferImpl(HttpTransportMetricsImpl httpTransportMetricsImpl, int i, int i2, MessageConstraints messageConstraints, CharsetDecoder charsetDecoder) {
        Args.notNull(httpTransportMetricsImpl, "HTTP transport metrcis");
        Args.positive(i, "Buffer size");
        this.metrics = httpTransportMetricsImpl;
        this.buffer = new byte[i];
        this.bufferpos = 0;
        this.bufferlen = 0;
        this.minChunkLimit = i2 < 0 ? NotificationCompat.FLAG_GROUP_SUMMARY : i2;
        this.constraints = messageConstraints == null ? MessageConstraints.DEFAULT : messageConstraints;
        this.linebuffer = new ByteArrayBuffer(i);
        this.decoder = charsetDecoder;
    }

    private int appendDecoded(CharArrayBuffer charArrayBuffer, ByteBuffer byteBuffer) {
        int i = 0;
        if (!byteBuffer.hasRemaining()) {
            return 0;
        }
        if (this.cbuf == null) {
            this.cbuf = CharBuffer.allocate(1024);
        }
        this.decoder.reset();
        while (byteBuffer.hasRemaining()) {
            i += handleDecodingResult(this.decoder.decode(byteBuffer, this.cbuf, true), charArrayBuffer, byteBuffer);
        }
        int handleDecodingResult = i + handleDecodingResult(this.decoder.flush(this.cbuf), charArrayBuffer, byteBuffer);
        this.cbuf.clear();
        return handleDecodingResult;
    }

    private int handleDecodingResult(CoderResult coderResult, CharArrayBuffer charArrayBuffer, ByteBuffer byteBuffer) {
        if (coderResult.isError()) {
            coderResult.throwException();
        }
        this.cbuf.flip();
        int remaining = this.cbuf.remaining();
        while (this.cbuf.hasRemaining()) {
            charArrayBuffer.append(this.cbuf.get());
        }
        this.cbuf.compact();
        return remaining;
    }

    private int lineFromLineBuffer(CharArrayBuffer charArrayBuffer) {
        int length = this.linebuffer.length();
        if (length > 0) {
            if (this.linebuffer.byteAt(length - 1) == 10) {
                length--;
            }
            if (length > 0 && this.linebuffer.byteAt(length - 1) == 13) {
                length--;
            }
        }
        if (this.decoder == null) {
            charArrayBuffer.append(this.linebuffer, 0, length);
        } else {
            length = appendDecoded(charArrayBuffer, ByteBuffer.wrap(this.linebuffer.buffer(), 0, length));
        }
        this.linebuffer.clear();
        return length;
    }

    private int lineFromReadBuffer(CharArrayBuffer charArrayBuffer, int i) {
        int i2 = this.bufferpos;
        this.bufferpos = i + 1;
        if (i > i2 && this.buffer[i - 1] == 13) {
            i--;
        }
        int i3 = i - i2;
        if (this.decoder != null) {
            return appendDecoded(charArrayBuffer, ByteBuffer.wrap(this.buffer, i2, i3));
        }
        charArrayBuffer.append(this.buffer, i2, i3);
        return i3;
    }

    private int streamRead(byte[] bArr, int i, int i2) {
        Asserts.notNull(this.instream, "Input stream");
        return this.instream.read(bArr, i, i2);
    }

    public int available() {
        return capacity() - length();
    }

    public void bind(InputStream inputStream) {
        this.instream = inputStream;
    }

    public int capacity() {
        return this.buffer.length;
    }

    public void clear() {
        this.bufferpos = 0;
        this.bufferlen = 0;
    }

    public int fillBuffer() {
        if (this.bufferpos > 0) {
            int i = this.bufferlen - this.bufferpos;
            if (i > 0) {
                System.arraycopy(this.buffer, this.bufferpos, this.buffer, 0, i);
            }
            this.bufferpos = 0;
            this.bufferlen = i;
        }
        int i2 = this.bufferlen;
        int streamRead = streamRead(this.buffer, i2, this.buffer.length - i2);
        if (streamRead == -1) {
            return -1;
        }
        this.bufferlen = i2 + streamRead;
        this.metrics.incrementBytesTransferred((long) streamRead);
        return streamRead;
    }

    public HttpTransportMetrics getMetrics() {
        return this.metrics;
    }

    public boolean hasBufferedData() {
        return this.bufferpos < this.bufferlen;
    }

    public boolean isBound() {
        return this.instream != null;
    }

    public boolean isDataAvailable(int i) {
        return hasBufferedData();
    }

    public int length() {
        return this.bufferlen - this.bufferpos;
    }

    public int read() {
        while (!hasBufferedData()) {
            if (fillBuffer() == -1) {
                return -1;
            }
        }
        byte[] bArr = this.buffer;
        int i = this.bufferpos;
        this.bufferpos = i + 1;
        return bArr[i] & 255;
    }

    public int read(byte[] bArr) {
        if (bArr == null) {
            return 0;
        }
        return read(bArr, 0, bArr.length);
    }

    public int read(byte[] bArr, int i, int i2) {
        if (bArr == null) {
            return 0;
        }
        if (hasBufferedData()) {
            int min = Math.min(i2, this.bufferlen - this.bufferpos);
            System.arraycopy(this.buffer, this.bufferpos, bArr, i, min);
            this.bufferpos += min;
            return min;
        } else if (i2 > this.minChunkLimit) {
            int streamRead = streamRead(bArr, i, i2);
            if (streamRead <= 0) {
                return streamRead;
            }
            this.metrics.incrementBytesTransferred((long) streamRead);
            return streamRead;
        } else {
            while (!hasBufferedData()) {
                if (fillBuffer() == -1) {
                    return -1;
                }
            }
            int min2 = Math.min(i2, this.bufferlen - this.bufferpos);
            System.arraycopy(this.buffer, this.bufferpos, bArr, i, min2);
            this.bufferpos += min2;
            return min2;
        }
    }

    public int readLine(CharArrayBuffer charArrayBuffer) {
        int i;
        Args.notNull(charArrayBuffer, "Char array buffer");
        int maxLineLength = this.constraints.getMaxLineLength();
        boolean z = true;
        int i2 = 0;
        while (z) {
            int i3 = this.bufferpos;
            while (true) {
                if (i3 >= this.bufferlen) {
                    i = -1;
                    break;
                } else if (this.buffer[i3] == 10) {
                    i = i3;
                    break;
                } else {
                    i3++;
                }
            }
            if (maxLineLength > 0) {
                if (((i > 0 ? i : this.bufferlen) + this.linebuffer.length()) - this.bufferpos >= maxLineLength) {
                    throw new MessageConstraintException("Maximum line length limit exceeded");
                }
            }
            if (i == -1) {
                if (hasBufferedData()) {
                    this.linebuffer.append(this.buffer, this.bufferpos, this.bufferlen - this.bufferpos);
                    this.bufferpos = this.bufferlen;
                }
                int fillBuffer = fillBuffer();
                z = fillBuffer == -1 ? false : z;
                i2 = fillBuffer;
            } else if (this.linebuffer.isEmpty()) {
                return lineFromReadBuffer(charArrayBuffer, i);
            } else {
                this.linebuffer.append(this.buffer, this.bufferpos, (i + 1) - this.bufferpos);
                this.bufferpos = i + 1;
                z = false;
            }
        }
        if (i2 != -1 || !this.linebuffer.isEmpty()) {
            return lineFromLineBuffer(charArrayBuffer);
        }
        return -1;
    }

    public String readLine() {
        CharArrayBuffer charArrayBuffer = new CharArrayBuffer(64);
        if (readLine(charArrayBuffer) != -1) {
            return charArrayBuffer.toString();
        }
        return null;
    }
}
