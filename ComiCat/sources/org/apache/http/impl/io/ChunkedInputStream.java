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
import org.apache.http.message.LineParser;
import org.apache.http.util.Args;
import org.apache.http.util.CharArrayBuffer;

public class ChunkedInputStream extends InputStream {
    private static final int BUFFER_SIZE = 2048;
    private static final int CHUNK_CRLF = 3;
    private static final int CHUNK_DATA = 2;
    private static final int CHUNK_INVALID = Integer.MAX_VALUE;
    private static final int CHUNK_LEN = 1;
    private final CharArrayBuffer buffer;
    private long chunkSize;
    private boolean closed;
    private final MessageConstraints constraints;
    private boolean eof;
    private Header[] footers;
    private final SessionInputBuffer in;
    private long pos;
    private int state;

    public ChunkedInputStream(SessionInputBuffer sessionInputBuffer) {
        this(sessionInputBuffer, (MessageConstraints) null);
    }

    public ChunkedInputStream(SessionInputBuffer sessionInputBuffer, MessageConstraints messageConstraints) {
        this.eof = false;
        this.closed = false;
        this.footers = new Header[0];
        this.in = (SessionInputBuffer) Args.notNull(sessionInputBuffer, "Session input buffer");
        this.pos = 0;
        this.buffer = new CharArrayBuffer(16);
        this.constraints = messageConstraints == null ? MessageConstraints.DEFAULT : messageConstraints;
        this.state = 1;
    }

    private long getChunkSize() {
        switch (this.state) {
            case 1:
                break;
            case 3:
                this.buffer.clear();
                if (this.in.readLine(this.buffer) != -1) {
                    if (this.buffer.isEmpty()) {
                        this.state = 1;
                        break;
                    } else {
                        throw new MalformedChunkCodingException("Unexpected content at the end of chunk");
                    }
                } else {
                    throw new MalformedChunkCodingException("CRLF expected at end of chunk");
                }
            default:
                throw new IllegalStateException("Inconsistent codec state");
        }
        this.buffer.clear();
        if (this.in.readLine(this.buffer) == -1) {
            throw new ConnectionClosedException("Premature end of chunk coded message body: closing chunk expected");
        }
        int indexOf = this.buffer.indexOf(59);
        if (indexOf < 0) {
            indexOf = this.buffer.length();
        }
        String substringTrimmed = this.buffer.substringTrimmed(0, indexOf);
        try {
            return Long.parseLong(substringTrimmed, 16);
        } catch (NumberFormatException e) {
            throw new MalformedChunkCodingException("Bad chunk header: " + substringTrimmed);
        }
    }

    private void nextChunk() {
        if (this.state == CHUNK_INVALID) {
            throw new MalformedChunkCodingException("Corrupt data stream");
        }
        try {
            this.chunkSize = getChunkSize();
            if (this.chunkSize < 0) {
                throw new MalformedChunkCodingException("Negative chunk size");
            }
            this.state = 2;
            this.pos = 0;
            if (this.chunkSize == 0) {
                this.eof = true;
                parseTrailerHeaders();
            }
        } catch (MalformedChunkCodingException e) {
            this.state = CHUNK_INVALID;
            throw e;
        }
    }

    private void parseTrailerHeaders() {
        try {
            this.footers = AbstractMessageParser.parseHeaders(this.in, this.constraints.getMaxHeaderCount(), this.constraints.getMaxLineLength(), (LineParser) null);
        } catch (HttpException e) {
            MalformedChunkCodingException malformedChunkCodingException = new MalformedChunkCodingException("Invalid footer: " + e.getMessage());
            malformedChunkCodingException.initCause(e);
            throw malformedChunkCodingException;
        }
    }

    public int available() {
        if (this.in instanceof BufferInfo) {
            return (int) Math.min((long) ((BufferInfo) this.in).length(), this.chunkSize - this.pos);
        }
        return 0;
    }

    public void close() {
        if (!this.closed) {
            try {
                if (!this.eof && this.state != CHUNK_INVALID) {
                    do {
                    } while (read(new byte[BUFFER_SIZE]) >= 0);
                }
            } finally {
                this.eof = true;
                this.closed = true;
            }
        }
    }

    public Header[] getFooters() {
        return (Header[]) this.footers.clone();
    }

    public int read() {
        if (this.closed) {
            throw new IOException("Attempted read from closed stream.");
        } else if (this.eof) {
            return -1;
        } else {
            if (this.state != 2) {
                nextChunk();
                if (this.eof) {
                    return -1;
                }
            }
            int read = this.in.read();
            if (read != -1) {
                this.pos++;
                if (this.pos >= this.chunkSize) {
                    this.state = 3;
                }
            }
            return read;
        }
    }

    public int read(byte[] bArr) {
        return read(bArr, 0, bArr.length);
    }

    public int read(byte[] bArr, int i, int i2) {
        if (this.closed) {
            throw new IOException("Attempted read from closed stream.");
        } else if (this.eof) {
            return -1;
        } else {
            if (this.state != 2) {
                nextChunk();
                if (this.eof) {
                    return -1;
                }
            }
            int read = this.in.read(bArr, i, (int) Math.min((long) i2, this.chunkSize - this.pos));
            if (read != -1) {
                this.pos += (long) read;
                if (this.pos >= this.chunkSize) {
                    this.state = 3;
                }
                return read;
            }
            this.eof = true;
            throw new TruncatedChunkException("Truncated chunk ( expected size: " + this.chunkSize + "; actual size: " + this.pos + ")");
        }
    }
}
