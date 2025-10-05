package com.fasterxml.jackson.core.io;

import android.support.v4.app.NotificationCompat;
import java.io.IOException;
import java.io.OutputStream;
import java.io.Writer;

public final class UTF8Writer extends Writer {
    private final IOContext _context;
    private OutputStream _out;
    private byte[] _outBuffer;
    private final int _outBufferEnd = (this._outBuffer.length - 4);
    private int _outPtr = 0;
    private int _surrogate;

    public UTF8Writer(IOContext iOContext, OutputStream outputStream) {
        this._context = iOContext;
        this._out = outputStream;
        this._outBuffer = iOContext.allocWriteEncodingBuffer();
    }

    protected static void illegalSurrogate(int i) {
        throw new IOException(illegalSurrogateDesc(i));
    }

    protected static String illegalSurrogateDesc(int i) {
        return i > 1114111 ? "Illegal character point (0x" + Integer.toHexString(i) + ") to output; max is 0x10FFFF as per RFC 4627" : i >= 55296 ? i <= 56319 ? "Unmatched first part of surrogate pair (0x" + Integer.toHexString(i) + ")" : "Unmatched second part of surrogate pair (0x" + Integer.toHexString(i) + ")" : "Illegal character point (0x" + Integer.toHexString(i) + ") to output";
    }

    public final Writer append(char c) {
        write((int) c);
        return this;
    }

    public final void close() {
        if (this._out != null) {
            if (this._outPtr > 0) {
                this._out.write(this._outBuffer, 0, this._outPtr);
                this._outPtr = 0;
            }
            OutputStream outputStream = this._out;
            this._out = null;
            byte[] bArr = this._outBuffer;
            if (bArr != null) {
                this._outBuffer = null;
                this._context.releaseWriteEncodingBuffer(bArr);
            }
            outputStream.close();
            int i = this._surrogate;
            this._surrogate = 0;
            if (i > 0) {
                illegalSurrogate(i);
            }
        }
    }

    /* access modifiers changed from: protected */
    public final int convertSurrogate(int i) {
        int i2 = this._surrogate;
        this._surrogate = 0;
        if (i >= 56320 && i <= 57343) {
            return ((i2 - 55296) << 10) + 65536 + (i - 56320);
        }
        throw new IOException("Broken surrogate pair: first char 0x" + Integer.toHexString(i2) + ", second 0x" + Integer.toHexString(i) + "; illegal combination");
    }

    public final void flush() {
        if (this._out != null) {
            if (this._outPtr > 0) {
                this._out.write(this._outBuffer, 0, this._outPtr);
                this._outPtr = 0;
            }
            this._out.flush();
        }
    }

    public final void write(int i) {
        int i2;
        if (this._surrogate > 0) {
            i = convertSurrogate(i);
        } else if (i >= 55296 && i <= 57343) {
            if (i > 56319) {
                illegalSurrogate(i);
            }
            this._surrogate = i;
            return;
        }
        if (this._outPtr >= this._outBufferEnd) {
            this._out.write(this._outBuffer, 0, this._outPtr);
            this._outPtr = 0;
        }
        if (i < 128) {
            byte[] bArr = this._outBuffer;
            int i3 = this._outPtr;
            this._outPtr = i3 + 1;
            bArr[i3] = (byte) i;
            return;
        }
        int i4 = this._outPtr;
        if (i < 2048) {
            int i5 = i4 + 1;
            this._outBuffer[i4] = (byte) ((i >> 6) | 192);
            i2 = i5 + 1;
            this._outBuffer[i5] = (byte) ((i & 63) | NotificationCompat.FLAG_HIGH_PRIORITY);
        } else if (i <= 65535) {
            int i6 = i4 + 1;
            this._outBuffer[i4] = (byte) ((i >> 12) | 224);
            int i7 = i6 + 1;
            this._outBuffer[i6] = (byte) (((i >> 6) & 63) | NotificationCompat.FLAG_HIGH_PRIORITY);
            i2 = i7 + 1;
            this._outBuffer[i7] = (byte) ((i & 63) | NotificationCompat.FLAG_HIGH_PRIORITY);
        } else {
            if (i > 1114111) {
                illegalSurrogate(i);
            }
            int i8 = i4 + 1;
            this._outBuffer[i4] = (byte) ((i >> 18) | 240);
            int i9 = i8 + 1;
            this._outBuffer[i8] = (byte) (((i >> 12) & 63) | NotificationCompat.FLAG_HIGH_PRIORITY);
            int i10 = i9 + 1;
            this._outBuffer[i9] = (byte) (((i >> 6) & 63) | NotificationCompat.FLAG_HIGH_PRIORITY);
            i2 = i10 + 1;
            this._outBuffer[i10] = (byte) ((i & 63) | NotificationCompat.FLAG_HIGH_PRIORITY);
        }
        this._outPtr = i2;
    }

    public final void write(String str) {
        write(str, 0, str.length());
    }

    public final void write(String str, int i, int i2) {
        if (i2 >= 2) {
            if (this._surrogate > 0) {
                i2--;
                write(convertSurrogate(str.charAt(i)));
                i++;
            }
            int i3 = this._outPtr;
            byte[] bArr = this._outBuffer;
            int i4 = this._outBufferEnd;
            int i5 = i2 + r13;
            while (r13 < i5) {
                if (i3 >= i4) {
                    this._out.write(bArr, 0, i3);
                    i3 = 0;
                }
                int i6 = r13 + 1;
                char charAt = str.charAt(r13);
                if (charAt < 128) {
                    int i7 = i3 + 1;
                    bArr[i3] = (byte) charAt;
                    int i8 = i5 - i6;
                    int i9 = i4 - i7;
                    if (i8 <= i9) {
                        i9 = i8;
                    }
                    int i10 = i9 + i6;
                    int i11 = i7;
                    int i12 = i6;
                    while (i12 < i10) {
                        i6 = i12 + 1;
                        char charAt2 = str.charAt(i12);
                        if (charAt2 < 128) {
                            bArr[i11] = (byte) charAt2;
                            i11++;
                            i12 = i6;
                        } else {
                            char c = charAt2;
                            i3 = i11;
                            charAt = c;
                        }
                    }
                    r13 = i12;
                    i3 = i11;
                }
                if (charAt >= 2048) {
                    if (charAt >= 55296 && charAt <= 57343) {
                        if (charAt > 56319) {
                            this._outPtr = i3;
                            illegalSurrogate(charAt);
                        }
                        this._surrogate = charAt;
                        if (i6 >= i5) {
                            break;
                        }
                        r13 = i6 + 1;
                        int convertSurrogate = convertSurrogate(str.charAt(i6));
                        if (convertSurrogate > 1114111) {
                            this._outPtr = i3;
                            illegalSurrogate(convertSurrogate);
                        }
                        int i13 = i3 + 1;
                        bArr[i3] = (byte) ((convertSurrogate >> 18) | 240);
                        int i14 = i13 + 1;
                        bArr[i13] = (byte) (((convertSurrogate >> 12) & 63) | NotificationCompat.FLAG_HIGH_PRIORITY);
                        int i15 = i14 + 1;
                        bArr[i14] = (byte) (((convertSurrogate >> 6) & 63) | NotificationCompat.FLAG_HIGH_PRIORITY);
                        i3 = i15 + 1;
                        bArr[i15] = (byte) ((convertSurrogate & 63) | NotificationCompat.FLAG_HIGH_PRIORITY);
                    } else {
                        int i16 = i3 + 1;
                        bArr[i3] = (byte) ((charAt >> 12) | 224);
                        int i17 = i16 + 1;
                        bArr[i16] = (byte) (((charAt >> 6) & 63) | NotificationCompat.FLAG_HIGH_PRIORITY);
                        i3 = i17 + 1;
                        bArr[i17] = (byte) ((charAt & '?') | 128);
                        r13 = i6;
                    }
                } else {
                    int i18 = i3 + 1;
                    bArr[i3] = (byte) ((charAt >> 6) | 192);
                    i3 = i18 + 1;
                    bArr[i18] = (byte) ((charAt & '?') | 128);
                    r13 = i6;
                }
            }
            this._outPtr = i3;
        } else if (i2 == 1) {
            write((int) str.charAt(i));
        }
    }

    public final void write(char[] cArr) {
        write(cArr, 0, cArr.length);
    }

    public final void write(char[] cArr, int i, int i2) {
        if (i2 >= 2) {
            if (this._surrogate > 0) {
                i2--;
                write(convertSurrogate(cArr[i]));
                i++;
            }
            int i3 = this._outPtr;
            byte[] bArr = this._outBuffer;
            int i4 = this._outBufferEnd;
            int i5 = i2 + r13;
            while (r13 < i5) {
                if (i3 >= i4) {
                    this._out.write(bArr, 0, i3);
                    i3 = 0;
                }
                int i6 = r13 + 1;
                char c = cArr[r13];
                if (c < 128) {
                    int i7 = i3 + 1;
                    bArr[i3] = (byte) c;
                    int i8 = i5 - i6;
                    int i9 = i4 - i7;
                    if (i8 <= i9) {
                        i9 = i8;
                    }
                    int i10 = i9 + i6;
                    int i11 = i7;
                    int i12 = i6;
                    while (i12 < i10) {
                        i6 = i12 + 1;
                        char c2 = cArr[i12];
                        if (c2 < 128) {
                            bArr[i11] = (byte) c2;
                            i11++;
                            i12 = i6;
                        } else {
                            char c3 = c2;
                            i3 = i11;
                            c = c3;
                        }
                    }
                    r13 = i12;
                    i3 = i11;
                }
                if (c >= 2048) {
                    if (c >= 55296 && c <= 57343) {
                        if (c > 56319) {
                            this._outPtr = i3;
                            illegalSurrogate(c);
                        }
                        this._surrogate = c;
                        if (i6 >= i5) {
                            break;
                        }
                        r13 = i6 + 1;
                        int convertSurrogate = convertSurrogate(cArr[i6]);
                        if (convertSurrogate > 1114111) {
                            this._outPtr = i3;
                            illegalSurrogate(convertSurrogate);
                        }
                        int i13 = i3 + 1;
                        bArr[i3] = (byte) ((convertSurrogate >> 18) | 240);
                        int i14 = i13 + 1;
                        bArr[i13] = (byte) (((convertSurrogate >> 12) & 63) | NotificationCompat.FLAG_HIGH_PRIORITY);
                        int i15 = i14 + 1;
                        bArr[i14] = (byte) (((convertSurrogate >> 6) & 63) | NotificationCompat.FLAG_HIGH_PRIORITY);
                        i3 = i15 + 1;
                        bArr[i15] = (byte) ((convertSurrogate & 63) | NotificationCompat.FLAG_HIGH_PRIORITY);
                    } else {
                        int i16 = i3 + 1;
                        bArr[i3] = (byte) ((c >> 12) | 224);
                        int i17 = i16 + 1;
                        bArr[i16] = (byte) (((c >> 6) & 63) | NotificationCompat.FLAG_HIGH_PRIORITY);
                        i3 = i17 + 1;
                        bArr[i17] = (byte) ((c & '?') | 128);
                        r13 = i6;
                    }
                } else {
                    int i18 = i3 + 1;
                    bArr[i3] = (byte) ((c >> 6) | 192);
                    i3 = i18 + 1;
                    bArr[i18] = (byte) ((c & '?') | 128);
                    r13 = i6;
                }
            }
            this._outPtr = i3;
        } else if (i2 == 1) {
            write((int) cArr[i]);
        }
    }
}
