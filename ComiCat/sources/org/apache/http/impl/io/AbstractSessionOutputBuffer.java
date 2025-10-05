package org.apache.http.impl.io;

import android.support.v4.app.NotificationCompat;
import java.io.OutputStream;
import java.nio.ByteBuffer;
import java.nio.CharBuffer;
import java.nio.charset.Charset;
import java.nio.charset.CharsetEncoder;
import java.nio.charset.CoderResult;
import java.nio.charset.CodingErrorAction;
import org.apache.http.Consts;
import org.apache.http.io.BufferInfo;
import org.apache.http.io.HttpTransportMetrics;
import org.apache.http.io.SessionOutputBuffer;
import org.apache.http.params.CoreConnectionPNames;
import org.apache.http.params.CoreProtocolPNames;
import org.apache.http.params.HttpParams;
import org.apache.http.util.Args;
import org.apache.http.util.ByteArrayBuffer;
import org.apache.http.util.CharArrayBuffer;

@Deprecated
public abstract class AbstractSessionOutputBuffer implements BufferInfo, SessionOutputBuffer {
    private static final byte[] CRLF = {13, 10};
    private boolean ascii;
    private ByteBuffer bbuf;
    private ByteArrayBuffer buffer;
    private Charset charset;
    private CharsetEncoder encoder;
    private HttpTransportMetricsImpl metrics;
    private int minChunkLimit;
    private CodingErrorAction onMalformedCharAction;
    private CodingErrorAction onUnmappableCharAction;
    private OutputStream outstream;

    public AbstractSessionOutputBuffer() {
    }

    protected AbstractSessionOutputBuffer(OutputStream outputStream, int i, Charset charset2, int i2, CodingErrorAction codingErrorAction, CodingErrorAction codingErrorAction2) {
        Args.notNull(outputStream, "Input stream");
        Args.notNegative(i, "Buffer size");
        this.outstream = outputStream;
        this.buffer = new ByteArrayBuffer(i);
        this.charset = charset2 == null ? Consts.ASCII : charset2;
        this.ascii = this.charset.equals(Consts.ASCII);
        this.encoder = null;
        this.minChunkLimit = i2 < 0 ? NotificationCompat.FLAG_GROUP_SUMMARY : i2;
        this.metrics = createTransportMetrics();
        this.onMalformedCharAction = codingErrorAction == null ? CodingErrorAction.REPORT : codingErrorAction;
        this.onUnmappableCharAction = codingErrorAction2 == null ? CodingErrorAction.REPORT : codingErrorAction2;
    }

    private void handleEncodingResult(CoderResult coderResult) {
        if (coderResult.isError()) {
            coderResult.throwException();
        }
        this.bbuf.flip();
        while (this.bbuf.hasRemaining()) {
            write((int) this.bbuf.get());
        }
        this.bbuf.compact();
    }

    private void writeEncoded(CharBuffer charBuffer) {
        if (charBuffer.hasRemaining()) {
            if (this.encoder == null) {
                this.encoder = this.charset.newEncoder();
                this.encoder.onMalformedInput(this.onMalformedCharAction);
                this.encoder.onUnmappableCharacter(this.onUnmappableCharAction);
            }
            if (this.bbuf == null) {
                this.bbuf = ByteBuffer.allocate(1024);
            }
            this.encoder.reset();
            while (charBuffer.hasRemaining()) {
                handleEncodingResult(this.encoder.encode(charBuffer, this.bbuf, true));
            }
            handleEncodingResult(this.encoder.flush(this.bbuf));
            this.bbuf.clear();
        }
    }

    public int available() {
        return capacity() - length();
    }

    public int capacity() {
        return this.buffer.capacity();
    }

    /* access modifiers changed from: protected */
    public HttpTransportMetricsImpl createTransportMetrics() {
        return new HttpTransportMetricsImpl();
    }

    public void flush() {
        flushBuffer();
        this.outstream.flush();
    }

    /* access modifiers changed from: protected */
    public void flushBuffer() {
        int length = this.buffer.length();
        if (length > 0) {
            this.outstream.write(this.buffer.buffer(), 0, length);
            this.buffer.clear();
            this.metrics.incrementBytesTransferred((long) length);
        }
    }

    public HttpTransportMetrics getMetrics() {
        return this.metrics;
    }

    /* access modifiers changed from: protected */
    public void init(OutputStream outputStream, int i, HttpParams httpParams) {
        Args.notNull(outputStream, "Input stream");
        Args.notNegative(i, "Buffer size");
        Args.notNull(httpParams, "HTTP parameters");
        this.outstream = outputStream;
        this.buffer = new ByteArrayBuffer(i);
        String str = (String) httpParams.getParameter(CoreProtocolPNames.HTTP_ELEMENT_CHARSET);
        this.charset = str != null ? Charset.forName(str) : Consts.ASCII;
        this.ascii = this.charset.equals(Consts.ASCII);
        this.encoder = null;
        this.minChunkLimit = httpParams.getIntParameter(CoreConnectionPNames.MIN_CHUNK_LIMIT, NotificationCompat.FLAG_GROUP_SUMMARY);
        this.metrics = createTransportMetrics();
        CodingErrorAction codingErrorAction = (CodingErrorAction) httpParams.getParameter(CoreProtocolPNames.HTTP_MALFORMED_INPUT_ACTION);
        if (codingErrorAction == null) {
            codingErrorAction = CodingErrorAction.REPORT;
        }
        this.onMalformedCharAction = codingErrorAction;
        CodingErrorAction codingErrorAction2 = (CodingErrorAction) httpParams.getParameter(CoreProtocolPNames.HTTP_UNMAPPABLE_INPUT_ACTION);
        if (codingErrorAction2 == null) {
            codingErrorAction2 = CodingErrorAction.REPORT;
        }
        this.onUnmappableCharAction = codingErrorAction2;
    }

    public int length() {
        return this.buffer.length();
    }

    public void write(int i) {
        if (this.buffer.isFull()) {
            flushBuffer();
        }
        this.buffer.append(i);
    }

    public void write(byte[] bArr) {
        if (bArr != null) {
            write(bArr, 0, bArr.length);
        }
    }

    public void write(byte[] bArr, int i, int i2) {
        if (bArr != null) {
            if (i2 > this.minChunkLimit || i2 > this.buffer.capacity()) {
                flushBuffer();
                this.outstream.write(bArr, i, i2);
                this.metrics.incrementBytesTransferred((long) i2);
                return;
            }
            if (i2 > this.buffer.capacity() - this.buffer.length()) {
                flushBuffer();
            }
            this.buffer.append(bArr, i, i2);
        }
    }

    public void writeLine(String str) {
        if (str != null) {
            if (str.length() > 0) {
                if (this.ascii) {
                    for (int i = 0; i < str.length(); i++) {
                        write((int) str.charAt(i));
                    }
                } else {
                    writeEncoded(CharBuffer.wrap(str));
                }
            }
            write(CRLF);
        }
    }

    public void writeLine(CharArrayBuffer charArrayBuffer) {
        int i = 0;
        if (charArrayBuffer != null) {
            if (this.ascii) {
                int length = charArrayBuffer.length();
                while (length > 0) {
                    int min = Math.min(this.buffer.capacity() - this.buffer.length(), length);
                    if (min > 0) {
                        this.buffer.append(charArrayBuffer, i, min);
                    }
                    if (this.buffer.isFull()) {
                        flushBuffer();
                    }
                    i += min;
                    length -= min;
                }
            } else {
                writeEncoded(CharBuffer.wrap(charArrayBuffer.buffer(), 0, charArrayBuffer.length()));
            }
            write(CRLF);
        }
    }
}
