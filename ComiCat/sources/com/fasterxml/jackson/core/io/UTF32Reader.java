package com.fasterxml.jackson.core.io;

import java.io.CharConversionException;
import java.io.IOException;
import java.io.InputStream;
import java.io.Reader;

public class UTF32Reader extends Reader {
    protected final boolean _bigEndian;
    protected byte[] _buffer;
    protected int _byteCount;
    protected int _charCount;
    protected final IOContext _context;
    protected InputStream _in;
    protected int _length;
    protected final boolean _managedBuffers;
    protected int _ptr;
    protected char _surrogate = 0;
    protected char[] _tmpBuf;

    public UTF32Reader(IOContext iOContext, InputStream inputStream, byte[] bArr, int i, int i2, boolean z) {
        boolean z2 = false;
        this._context = iOContext;
        this._in = inputStream;
        this._buffer = bArr;
        this._ptr = i;
        this._length = i2;
        this._bigEndian = z;
        this._managedBuffers = inputStream != null ? true : z2;
    }

    private void freeBuffers() {
        byte[] bArr = this._buffer;
        if (bArr != null) {
            this._buffer = null;
            this._context.releaseReadIOBuffer(bArr);
        }
    }

    private boolean loadMore(int i) {
        this._byteCount += this._length - i;
        if (i > 0) {
            if (this._ptr > 0) {
                System.arraycopy(this._buffer, this._ptr, this._buffer, 0, i);
                this._ptr = 0;
            }
            this._length = i;
        } else {
            this._ptr = 0;
            int read = this._in == null ? -1 : this._in.read(this._buffer);
            if (read <= 0) {
                this._length = 0;
                if (read >= 0) {
                    reportStrangeStream();
                } else if (!this._managedBuffers) {
                    return false;
                } else {
                    freeBuffers();
                    return false;
                }
            }
            this._length = read;
        }
        while (this._length < 4) {
            int read2 = this._in == null ? -1 : this._in.read(this._buffer, this._length, this._buffer.length - this._length);
            if (read2 <= 0) {
                if (read2 < 0) {
                    if (this._managedBuffers) {
                        freeBuffers();
                    }
                    reportUnexpectedEOF(this._length, 4);
                }
                reportStrangeStream();
            }
            this._length = read2 + this._length;
        }
        return true;
    }

    private void reportBounds(char[] cArr, int i, int i2) {
        throw new ArrayIndexOutOfBoundsException("read(buf," + i + "," + i2 + "), cbuf[" + cArr.length + "]");
    }

    private void reportInvalid(int i, int i2, String str) {
        throw new CharConversionException("Invalid UTF-32 character 0x" + Integer.toHexString(i) + str + " at char #" + (this._charCount + i2) + ", byte #" + ((this._byteCount + this._ptr) - 1) + ")");
    }

    private void reportStrangeStream() {
        throw new IOException("Strange I/O stream, returned 0 bytes on read");
    }

    private void reportUnexpectedEOF(int i, int i2) {
        throw new CharConversionException("Unexpected EOF in the middle of a 4-byte UTF-32 char: got " + i + ", needed " + i2 + ", at char #" + this._charCount + ", byte #" + (this._byteCount + i) + ")");
    }

    public void close() {
        InputStream inputStream = this._in;
        if (inputStream != null) {
            this._in = null;
            freeBuffers();
            inputStream.close();
        }
    }

    public int read() {
        if (this._tmpBuf == null) {
            this._tmpBuf = new char[1];
        }
        if (read(this._tmpBuf, 0, 1) <= 0) {
            return -1;
        }
        return this._tmpBuf[0];
    }

    /* JADX WARNING: Code restructure failed: missing block: B:32:0x00e3, code lost:
        r1 = r2;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public int read(char[] r8, int r9, int r10) {
        /*
            r7 = this;
            r6 = 1114111(0x10ffff, float:1.561202E-39)
            r0 = -1
            byte[] r1 = r7._buffer
            if (r1 != 0) goto L_0x000a
            r10 = r0
        L_0x0009:
            return r10
        L_0x000a:
            if (r10 <= 0) goto L_0x0009
            if (r9 < 0) goto L_0x0013
            int r1 = r9 + r10
            int r2 = r8.length
            if (r1 <= r2) goto L_0x0016
        L_0x0013:
            r7.reportBounds(r8, r9, r10)
        L_0x0016:
            int r3 = r10 + r9
            char r1 = r7._surrogate
            if (r1 == 0) goto L_0x009f
            int r2 = r9 + 1
            char r0 = r7._surrogate
            r8[r9] = r0
            r0 = 0
            r7._surrogate = r0
        L_0x0025:
            if (r2 >= r3) goto L_0x00e3
            int r0 = r7._ptr
            boolean r1 = r7._bigEndian
            if (r1 == 0) goto L_0x00b0
            byte[] r1 = r7._buffer
            byte r1 = r1[r0]
            int r1 = r1 << 24
            byte[] r4 = r7._buffer
            int r5 = r0 + 1
            byte r4 = r4[r5]
            r4 = r4 & 255(0xff, float:3.57E-43)
            int r4 = r4 << 16
            r1 = r1 | r4
            byte[] r4 = r7._buffer
            int r5 = r0 + 2
            byte r4 = r4[r5]
            r4 = r4 & 255(0xff, float:3.57E-43)
            int r4 = r4 << 8
            r1 = r1 | r4
            byte[] r4 = r7._buffer
            int r0 = r0 + 3
            byte r0 = r4[r0]
            r0 = r0 & 255(0xff, float:3.57E-43)
            r0 = r0 | r1
        L_0x0052:
            int r1 = r7._ptr
            int r1 = r1 + 4
            r7._ptr = r1
            r1 = 65535(0xffff, float:9.1834E-41)
            if (r0 <= r1) goto L_0x00d7
            if (r0 <= r6) goto L_0x007d
            int r1 = r2 - r9
            java.lang.StringBuilder r4 = new java.lang.StringBuilder
            java.lang.String r5 = "(above "
            r4.<init>(r5)
            java.lang.String r5 = java.lang.Integer.toHexString(r6)
            java.lang.StringBuilder r4 = r4.append(r5)
            java.lang.String r5 = ") "
            java.lang.StringBuilder r4 = r4.append(r5)
            java.lang.String r4 = r4.toString()
            r7.reportInvalid(r0, r1, r4)
        L_0x007d:
            r1 = 65536(0x10000, float:9.18355E-41)
            int r0 = r0 - r1
            int r1 = r2 + 1
            r4 = 55296(0xd800, float:7.7486E-41)
            int r5 = r0 >> 10
            int r4 = r4 + r5
            char r4 = (char) r4
            r8[r2] = r4
            r2 = 56320(0xdc00, float:7.8921E-41)
            r0 = r0 & 1023(0x3ff, float:1.434E-42)
            r0 = r0 | r2
            if (r1 < r3) goto L_0x00d8
            char r0 = (char) r0
            r7._surrogate = r0
        L_0x0096:
            int r10 = r1 - r9
            int r0 = r7._charCount
            int r0 = r0 + r10
            r7._charCount = r0
            goto L_0x0009
        L_0x009f:
            int r1 = r7._length
            int r2 = r7._ptr
            int r1 = r1 - r2
            r2 = 4
            if (r1 >= r2) goto L_0x00e5
            boolean r1 = r7.loadMore(r1)
            if (r1 != 0) goto L_0x00e5
            r10 = r0
            goto L_0x0009
        L_0x00b0:
            byte[] r1 = r7._buffer
            byte r1 = r1[r0]
            r1 = r1 & 255(0xff, float:3.57E-43)
            byte[] r4 = r7._buffer
            int r5 = r0 + 1
            byte r4 = r4[r5]
            r4 = r4 & 255(0xff, float:3.57E-43)
            int r4 = r4 << 8
            r1 = r1 | r4
            byte[] r4 = r7._buffer
            int r5 = r0 + 2
            byte r4 = r4[r5]
            r4 = r4 & 255(0xff, float:3.57E-43)
            int r4 = r4 << 16
            r1 = r1 | r4
            byte[] r4 = r7._buffer
            int r0 = r0 + 3
            byte r0 = r4[r0]
            int r0 = r0 << 24
            r0 = r0 | r1
            goto L_0x0052
        L_0x00d7:
            r1 = r2
        L_0x00d8:
            int r2 = r1 + 1
            char r0 = (char) r0
            r8[r1] = r0
            int r0 = r7._ptr
            int r1 = r7._length
            if (r0 < r1) goto L_0x0025
        L_0x00e3:
            r1 = r2
            goto L_0x0096
        L_0x00e5:
            r2 = r9
            goto L_0x0025
        */
        throw new UnsupportedOperationException("Method not decompiled: com.fasterxml.jackson.core.io.UTF32Reader.read(char[], int, int):int");
    }
}
