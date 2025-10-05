package com.fasterxml.jackson.core.io;

import java.io.InputStream;

public final class MergedStream extends InputStream {
    private byte[] _b;
    private final IOContext _ctxt;
    private final int _end;
    private final InputStream _in;
    private int _ptr;

    public MergedStream(IOContext iOContext, InputStream inputStream, byte[] bArr, int i, int i2) {
        this._ctxt = iOContext;
        this._in = inputStream;
        this._b = bArr;
        this._ptr = i;
        this._end = i2;
    }

    private void _free() {
        byte[] bArr = this._b;
        if (bArr != null) {
            this._b = null;
            if (this._ctxt != null) {
                this._ctxt.releaseReadIOBuffer(bArr);
            }
        }
    }

    public final int available() {
        return this._b != null ? this._end - this._ptr : this._in.available();
    }

    public final void close() {
        _free();
        this._in.close();
    }

    public final void mark(int i) {
        if (this._b == null) {
            this._in.mark(i);
        }
    }

    public final boolean markSupported() {
        return this._b == null && this._in.markSupported();
    }

    public final int read() {
        if (this._b == null) {
            return this._in.read();
        }
        byte[] bArr = this._b;
        int i = this._ptr;
        this._ptr = i + 1;
        byte b = bArr[i] & 255;
        if (this._ptr < this._end) {
            return b;
        }
        _free();
        return b;
    }

    public final int read(byte[] bArr) {
        return read(bArr, 0, bArr.length);
    }

    public final int read(byte[] bArr, int i, int i2) {
        if (this._b == null) {
            return this._in.read(bArr, i, i2);
        }
        int i3 = this._end - this._ptr;
        if (i2 > i3) {
            i2 = i3;
        }
        System.arraycopy(this._b, this._ptr, bArr, i, i2);
        this._ptr += i2;
        if (this._ptr < this._end) {
            return i2;
        }
        _free();
        return i2;
    }

    public final void reset() {
        if (this._b == null) {
            this._in.reset();
        }
    }

    public final long skip(long j) {
        long j2;
        if (this._b != null) {
            int i = this._end - this._ptr;
            if (((long) i) > j) {
                this._ptr += (int) j;
                return j;
            }
            _free();
            j2 = ((long) i) + 0;
            j -= (long) i;
        } else {
            j2 = 0;
        }
        if (j > 0) {
            j2 += this._in.skip(j);
        }
        return j2;
    }
}
