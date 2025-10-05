package com.fasterxml.jackson.core.json;

import android.support.v4.app.NotificationCompat;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.ObjectCodec;
import com.fasterxml.jackson.core.SerializableString;
import com.fasterxml.jackson.core.io.CharTypes;
import com.fasterxml.jackson.core.io.CharacterEscapes;
import com.fasterxml.jackson.core.io.IOContext;
import com.fasterxml.jackson.core.io.NumberOutput;
import java.io.OutputStream;

public class UTF8JsonGenerator extends JsonGeneratorImpl {
    private static final byte[] FALSE_BYTES = {102, 97, 108, 115, 101};
    private static final byte[] HEX_CHARS = CharTypes.copyHexBytes();
    private static final byte[] NULL_BYTES = {110, 117, 108, 108};
    private static final byte[] TRUE_BYTES = {116, 114, 117, 101};
    protected boolean _bufferRecyclable = true;
    protected char[] _charBuffer;
    protected final int _charBufferLength;
    protected byte[] _outputBuffer;
    protected final int _outputEnd;
    protected final int _outputMaxContiguous;
    protected final OutputStream _outputStream;
    protected int _outputTail;

    public UTF8JsonGenerator(IOContext iOContext, int i, ObjectCodec objectCodec, OutputStream outputStream) {
        super(iOContext, i, objectCodec);
        this._outputStream = outputStream;
        this._outputBuffer = iOContext.allocWriteEncodingBuffer();
        this._outputEnd = this._outputBuffer.length;
        this._outputMaxContiguous = this._outputEnd >> 3;
        this._charBuffer = iOContext.allocConcatBuffer();
        this._charBufferLength = this._charBuffer.length;
        if (isEnabled(JsonGenerator.Feature.ESCAPE_NON_ASCII)) {
            setHighestNonEscapedChar(127);
        }
    }

    private final int _handleLongCustomEscape(byte[] bArr, int i, int i2, byte[] bArr2, int i3) {
        int i4;
        int length = bArr2.length;
        if (i + length > i2) {
            this._outputTail = i;
            _flushBuffer();
            int i5 = this._outputTail;
            if (length > bArr.length) {
                this._outputStream.write(bArr2, 0, length);
                return i5;
            }
            System.arraycopy(bArr2, 0, bArr, i5, length);
            i4 = i5 + length;
        } else {
            i4 = i;
        }
        if ((i3 * 6) + i4 <= i2) {
            return i4;
        }
        _flushBuffer();
        return this._outputTail;
    }

    private final int _outputMultiByteChar(int i, int i2) {
        byte[] bArr = this._outputBuffer;
        if (i < 55296 || i > 57343) {
            int i3 = i2 + 1;
            bArr[i2] = (byte) ((i >> 12) | 224);
            int i4 = i3 + 1;
            bArr[i3] = (byte) (((i >> 6) & 63) | NotificationCompat.FLAG_HIGH_PRIORITY);
            int i5 = i4 + 1;
            bArr[i4] = (byte) ((i & 63) | NotificationCompat.FLAG_HIGH_PRIORITY);
            return i5;
        }
        int i6 = i2 + 1;
        bArr[i2] = 92;
        int i7 = i6 + 1;
        bArr[i6] = 117;
        int i8 = i7 + 1;
        bArr[i7] = HEX_CHARS[(i >> 12) & 15];
        int i9 = i8 + 1;
        bArr[i8] = HEX_CHARS[(i >> 8) & 15];
        int i10 = i9 + 1;
        bArr[i9] = HEX_CHARS[(i >> 4) & 15];
        int i11 = i10 + 1;
        bArr[i10] = HEX_CHARS[i & 15];
        return i11;
    }

    private final int _outputRawMultiByteChar(int i, char[] cArr, int i2, int i3) {
        if (i < 55296 || i > 57343) {
            byte[] bArr = this._outputBuffer;
            int i4 = this._outputTail;
            this._outputTail = i4 + 1;
            bArr[i4] = (byte) ((i >> 12) | 224);
            int i5 = this._outputTail;
            this._outputTail = i5 + 1;
            bArr[i5] = (byte) (((i >> 6) & 63) | NotificationCompat.FLAG_HIGH_PRIORITY);
            int i6 = this._outputTail;
            this._outputTail = i6 + 1;
            bArr[i6] = (byte) ((i & 63) | NotificationCompat.FLAG_HIGH_PRIORITY);
            return i2;
        }
        if (i2 >= i3 || cArr == null) {
            _reportError("Split surrogate on writeRaw() input (last character)");
        }
        _outputSurrogates(i, cArr[i2]);
        return i2 + 1;
    }

    private final void _writeBytes(byte[] bArr) {
        int length = bArr.length;
        if (this._outputTail + length > this._outputEnd) {
            _flushBuffer();
            if (length > 512) {
                this._outputStream.write(bArr, 0, length);
                return;
            }
        }
        System.arraycopy(bArr, 0, this._outputBuffer, this._outputTail, length);
        this._outputTail = length + this._outputTail;
    }

    private final int _writeCustomEscape(byte[] bArr, int i, SerializableString serializableString, int i2) {
        byte[] asUnquotedUTF8 = serializableString.asUnquotedUTF8();
        int length = asUnquotedUTF8.length;
        if (length > 6) {
            return _handleLongCustomEscape(bArr, i, this._outputEnd, asUnquotedUTF8, i2);
        }
        System.arraycopy(asUnquotedUTF8, 0, bArr, i, length);
        return length + i;
    }

    private final void _writeCustomStringSegment2(String str, int i, int i2) {
        if (this._outputTail + ((i2 - i) * 6) > this._outputEnd) {
            _flushBuffer();
        }
        int i3 = this._outputTail;
        byte[] bArr = this._outputBuffer;
        int[] iArr = this._outputEscapes;
        int i4 = this._maximumNonEscapedChar <= 0 ? 65535 : this._maximumNonEscapedChar;
        CharacterEscapes characterEscapes = this._characterEscapes;
        while (i < i2) {
            int i5 = i + 1;
            char charAt = str.charAt(i);
            if (charAt <= 127) {
                if (iArr[charAt] == 0) {
                    bArr[i3] = (byte) charAt;
                    i3++;
                    i = i5;
                } else {
                    int i6 = iArr[charAt];
                    if (i6 > 0) {
                        int i7 = i3 + 1;
                        bArr[i3] = 92;
                        i3 = i7 + 1;
                        bArr[i7] = (byte) i6;
                        i = i5;
                    } else if (i6 == -2) {
                        SerializableString escapeSequence = characterEscapes.getEscapeSequence(charAt);
                        if (escapeSequence == null) {
                            _reportError("Invalid custom escape definitions; custom escape not found for character code 0x" + Integer.toHexString(charAt) + ", although was supposed to have one");
                        }
                        i3 = _writeCustomEscape(bArr, i3, escapeSequence, i2 - i5);
                        i = i5;
                    } else {
                        i3 = _writeGenericEscape(charAt, i3);
                        i = i5;
                    }
                }
            } else if (charAt > i4) {
                i3 = _writeGenericEscape(charAt, i3);
                i = i5;
            } else {
                SerializableString escapeSequence2 = characterEscapes.getEscapeSequence(charAt);
                if (escapeSequence2 != null) {
                    i3 = _writeCustomEscape(bArr, i3, escapeSequence2, i2 - i5);
                    i = i5;
                } else if (charAt <= 2047) {
                    int i8 = i3 + 1;
                    bArr[i3] = (byte) ((charAt >> 6) | 192);
                    i3 = i8 + 1;
                    bArr[i8] = (byte) ((charAt & '?') | 128);
                    i = i5;
                } else {
                    i3 = _outputMultiByteChar(charAt, i3);
                    i = i5;
                }
            }
        }
        this._outputTail = i3;
    }

    private final void _writeCustomStringSegment2(char[] cArr, int i, int i2) {
        if (this._outputTail + ((i2 - i) * 6) > this._outputEnd) {
            _flushBuffer();
        }
        int i3 = this._outputTail;
        byte[] bArr = this._outputBuffer;
        int[] iArr = this._outputEscapes;
        int i4 = this._maximumNonEscapedChar <= 0 ? 65535 : this._maximumNonEscapedChar;
        CharacterEscapes characterEscapes = this._characterEscapes;
        while (i < i2) {
            int i5 = i + 1;
            char c = cArr[i];
            if (c <= 127) {
                if (iArr[c] == 0) {
                    bArr[i3] = (byte) c;
                    i3++;
                    i = i5;
                } else {
                    int i6 = iArr[c];
                    if (i6 > 0) {
                        int i7 = i3 + 1;
                        bArr[i3] = 92;
                        i3 = i7 + 1;
                        bArr[i7] = (byte) i6;
                        i = i5;
                    } else if (i6 == -2) {
                        SerializableString escapeSequence = characterEscapes.getEscapeSequence(c);
                        if (escapeSequence == null) {
                            _reportError("Invalid custom escape definitions; custom escape not found for character code 0x" + Integer.toHexString(c) + ", although was supposed to have one");
                        }
                        i3 = _writeCustomEscape(bArr, i3, escapeSequence, i2 - i5);
                        i = i5;
                    } else {
                        i3 = _writeGenericEscape(c, i3);
                        i = i5;
                    }
                }
            } else if (c > i4) {
                i3 = _writeGenericEscape(c, i3);
                i = i5;
            } else {
                SerializableString escapeSequence2 = characterEscapes.getEscapeSequence(c);
                if (escapeSequence2 != null) {
                    i3 = _writeCustomEscape(bArr, i3, escapeSequence2, i2 - i5);
                    i = i5;
                } else if (c <= 2047) {
                    int i8 = i3 + 1;
                    bArr[i3] = (byte) ((c >> 6) | 192);
                    i3 = i8 + 1;
                    bArr[i8] = (byte) ((c & '?') | 128);
                    i = i5;
                } else {
                    i3 = _outputMultiByteChar(c, i3);
                    i = i5;
                }
            }
        }
        this._outputTail = i3;
    }

    private int _writeGenericEscape(int i, int i2) {
        int i3;
        byte[] bArr = this._outputBuffer;
        int i4 = i2 + 1;
        bArr[i2] = 92;
        int i5 = i4 + 1;
        bArr[i4] = 117;
        if (i > 255) {
            int i6 = (i >> 8) & 255;
            int i7 = i5 + 1;
            bArr[i5] = HEX_CHARS[i6 >> 4];
            i3 = i7 + 1;
            bArr[i7] = HEX_CHARS[i6 & 15];
            i &= 255;
        } else {
            int i8 = i5 + 1;
            bArr[i5] = 48;
            i3 = i8 + 1;
            bArr[i8] = 48;
        }
        int i9 = i3 + 1;
        bArr[i3] = HEX_CHARS[i >> 4];
        int i10 = i9 + 1;
        bArr[i9] = HEX_CHARS[i & 15];
        return i10;
    }

    private final void _writeNull() {
        if (this._outputTail + 4 >= this._outputEnd) {
            _flushBuffer();
        }
        System.arraycopy(NULL_BYTES, 0, this._outputBuffer, this._outputTail, 4);
        this._outputTail += 4;
    }

    private final void _writeQuotedLong(long j) {
        if (this._outputTail + 23 >= this._outputEnd) {
            _flushBuffer();
        }
        byte[] bArr = this._outputBuffer;
        int i = this._outputTail;
        this._outputTail = i + 1;
        bArr[i] = 34;
        this._outputTail = NumberOutput.outputLong(j, this._outputBuffer, this._outputTail);
        byte[] bArr2 = this._outputBuffer;
        int i2 = this._outputTail;
        this._outputTail = i2 + 1;
        bArr2[i2] = 34;
    }

    /* JADX WARNING: Code restructure failed: missing block: B:10:0x0028, code lost:
        if ((r6._outputTail + 3) < r6._outputEnd) goto L_0x002d;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:11:0x002a, code lost:
        _flushBuffer();
     */
    /* JADX WARNING: Code restructure failed: missing block: B:12:0x002d, code lost:
        r8 = r0 + 1;
        r0 = r7[r0];
     */
    /* JADX WARNING: Code restructure failed: missing block: B:13:0x0033, code lost:
        if (r0 >= 2048) goto L_0x0051;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:14:0x0035, code lost:
        r3 = r6._outputTail;
        r6._outputTail = r3 + 1;
        r2[r3] = (byte) ((r0 >> 6) | 192);
        r3 = r6._outputTail;
        r6._outputTail = r3 + 1;
        r2[r3] = (byte) ((r0 & '?') | 128);
        r0 = r8;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:15:0x0051, code lost:
        r0 = _outputRawMultiByteChar(r0, r7, r8, r9);
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private final void _writeSegmentedRaw(char[] r7, int r8, int r9) {
        /*
            r6 = this;
            int r1 = r6._outputEnd
            byte[] r2 = r6._outputBuffer
            r0 = r8
        L_0x0005:
            if (r0 >= r9) goto L_0x0021
        L_0x0007:
            char r3 = r7[r0]
            r4 = 128(0x80, float:1.794E-43)
            if (r3 >= r4) goto L_0x0022
            int r4 = r6._outputTail
            if (r4 < r1) goto L_0x0014
            r6._flushBuffer()
        L_0x0014:
            int r4 = r6._outputTail
            int r5 = r4 + 1
            r6._outputTail = r5
            byte r3 = (byte) r3
            r2[r4] = r3
            int r0 = r0 + 1
            if (r0 < r9) goto L_0x0007
        L_0x0021:
            return
        L_0x0022:
            int r3 = r6._outputTail
            int r3 = r3 + 3
            int r4 = r6._outputEnd
            if (r3 < r4) goto L_0x002d
            r6._flushBuffer()
        L_0x002d:
            int r8 = r0 + 1
            char r0 = r7[r0]
            r3 = 2048(0x800, float:2.87E-42)
            if (r0 >= r3) goto L_0x0051
            int r3 = r6._outputTail
            int r4 = r3 + 1
            r6._outputTail = r4
            int r4 = r0 >> 6
            r4 = r4 | 192(0xc0, float:2.69E-43)
            byte r4 = (byte) r4
            r2[r3] = r4
            int r3 = r6._outputTail
            int r4 = r3 + 1
            r6._outputTail = r4
            r0 = r0 & 63
            r0 = r0 | 128(0x80, float:1.794E-43)
            byte r0 = (byte) r0
            r2[r3] = r0
            r0 = r8
            goto L_0x0005
        L_0x0051:
            int r0 = r6._outputRawMultiByteChar(r0, r7, r8, r9)
            goto L_0x0005
        */
        throw new UnsupportedOperationException("Method not decompiled: com.fasterxml.jackson.core.json.UTF8JsonGenerator._writeSegmentedRaw(char[], int, int):void");
    }

    private final void _writeStringSegment(String str, int i, int i2) {
        int i3 = i2 + i;
        int i4 = this._outputTail;
        byte[] bArr = this._outputBuffer;
        int[] iArr = this._outputEscapes;
        while (i < i3) {
            char charAt = str.charAt(i);
            if (charAt > 127 || iArr[charAt] != 0) {
                break;
            }
            bArr[i4] = (byte) charAt;
            i++;
            i4++;
        }
        this._outputTail = i4;
        if (i >= i3) {
            return;
        }
        if (this._characterEscapes != null) {
            _writeCustomStringSegment2(str, i, i3);
        } else if (this._maximumNonEscapedChar == 0) {
            _writeStringSegment2(str, i, i3);
        } else {
            _writeStringSegmentASCII2(str, i, i3);
        }
    }

    private final void _writeStringSegment(char[] cArr, int i, int i2) {
        int i3 = i2 + i;
        int i4 = this._outputTail;
        byte[] bArr = this._outputBuffer;
        int[] iArr = this._outputEscapes;
        while (i < i3) {
            char c = cArr[i];
            if (c > 127 || iArr[c] != 0) {
                break;
            }
            bArr[i4] = (byte) c;
            i++;
            i4++;
        }
        this._outputTail = i4;
        if (i >= i3) {
            return;
        }
        if (this._characterEscapes != null) {
            _writeCustomStringSegment2(cArr, i, i3);
        } else if (this._maximumNonEscapedChar == 0) {
            _writeStringSegment2(cArr, i, i3);
        } else {
            _writeStringSegmentASCII2(cArr, i, i3);
        }
    }

    private final void _writeStringSegment2(String str, int i, int i2) {
        if (this._outputTail + ((i2 - i) * 6) > this._outputEnd) {
            _flushBuffer();
        }
        int i3 = this._outputTail;
        byte[] bArr = this._outputBuffer;
        int[] iArr = this._outputEscapes;
        while (i < i2) {
            int i4 = i + 1;
            char charAt = str.charAt(i);
            if (charAt <= 127) {
                if (iArr[charAt] == 0) {
                    bArr[i3] = (byte) charAt;
                    i3++;
                    i = i4;
                } else {
                    int i5 = iArr[charAt];
                    if (i5 > 0) {
                        int i6 = i3 + 1;
                        bArr[i3] = 92;
                        i3 = i6 + 1;
                        bArr[i6] = (byte) i5;
                        i = i4;
                    } else {
                        i3 = _writeGenericEscape(charAt, i3);
                        i = i4;
                    }
                }
            } else if (charAt <= 2047) {
                int i7 = i3 + 1;
                bArr[i3] = (byte) ((charAt >> 6) | 192);
                i3 = i7 + 1;
                bArr[i7] = (byte) ((charAt & '?') | 128);
                i = i4;
            } else {
                i3 = _outputMultiByteChar(charAt, i3);
                i = i4;
            }
        }
        this._outputTail = i3;
    }

    private final void _writeStringSegment2(char[] cArr, int i, int i2) {
        if (this._outputTail + ((i2 - i) * 6) > this._outputEnd) {
            _flushBuffer();
        }
        int i3 = this._outputTail;
        byte[] bArr = this._outputBuffer;
        int[] iArr = this._outputEscapes;
        while (i < i2) {
            int i4 = i + 1;
            char c = cArr[i];
            if (c <= 127) {
                if (iArr[c] == 0) {
                    bArr[i3] = (byte) c;
                    i3++;
                    i = i4;
                } else {
                    int i5 = iArr[c];
                    if (i5 > 0) {
                        int i6 = i3 + 1;
                        bArr[i3] = 92;
                        i3 = i6 + 1;
                        bArr[i6] = (byte) i5;
                        i = i4;
                    } else {
                        i3 = _writeGenericEscape(c, i3);
                        i = i4;
                    }
                }
            } else if (c <= 2047) {
                int i7 = i3 + 1;
                bArr[i3] = (byte) ((c >> 6) | 192);
                i3 = i7 + 1;
                bArr[i7] = (byte) ((c & '?') | 128);
                i = i4;
            } else {
                i3 = _outputMultiByteChar(c, i3);
                i = i4;
            }
        }
        this._outputTail = i3;
    }

    private final void _writeStringSegmentASCII2(String str, int i, int i2) {
        if (this._outputTail + ((i2 - i) * 6) > this._outputEnd) {
            _flushBuffer();
        }
        int i3 = this._outputTail;
        byte[] bArr = this._outputBuffer;
        int[] iArr = this._outputEscapes;
        int i4 = this._maximumNonEscapedChar;
        while (i < i2) {
            int i5 = i + 1;
            char charAt = str.charAt(i);
            if (charAt <= 127) {
                if (iArr[charAt] == 0) {
                    bArr[i3] = (byte) charAt;
                    i3++;
                    i = i5;
                } else {
                    int i6 = iArr[charAt];
                    if (i6 > 0) {
                        int i7 = i3 + 1;
                        bArr[i3] = 92;
                        i3 = i7 + 1;
                        bArr[i7] = (byte) i6;
                        i = i5;
                    } else {
                        i3 = _writeGenericEscape(charAt, i3);
                        i = i5;
                    }
                }
            } else if (charAt > i4) {
                i3 = _writeGenericEscape(charAt, i3);
                i = i5;
            } else if (charAt <= 2047) {
                int i8 = i3 + 1;
                bArr[i3] = (byte) ((charAt >> 6) | 192);
                i3 = i8 + 1;
                bArr[i8] = (byte) ((charAt & '?') | 128);
                i = i5;
            } else {
                i3 = _outputMultiByteChar(charAt, i3);
                i = i5;
            }
        }
        this._outputTail = i3;
    }

    private final void _writeStringSegmentASCII2(char[] cArr, int i, int i2) {
        if (this._outputTail + ((i2 - i) * 6) > this._outputEnd) {
            _flushBuffer();
        }
        int i3 = this._outputTail;
        byte[] bArr = this._outputBuffer;
        int[] iArr = this._outputEscapes;
        int i4 = this._maximumNonEscapedChar;
        while (i < i2) {
            int i5 = i + 1;
            char c = cArr[i];
            if (c <= 127) {
                if (iArr[c] == 0) {
                    bArr[i3] = (byte) c;
                    i3++;
                    i = i5;
                } else {
                    int i6 = iArr[c];
                    if (i6 > 0) {
                        int i7 = i3 + 1;
                        bArr[i3] = 92;
                        i3 = i7 + 1;
                        bArr[i7] = (byte) i6;
                        i = i5;
                    } else {
                        i3 = _writeGenericEscape(c, i3);
                        i = i5;
                    }
                }
            } else if (c > i4) {
                i3 = _writeGenericEscape(c, i3);
                i = i5;
            } else if (c <= 2047) {
                int i8 = i3 + 1;
                bArr[i3] = (byte) ((c >> 6) | 192);
                i3 = i8 + 1;
                bArr[i8] = (byte) ((c & '?') | 128);
                i = i5;
            } else {
                i3 = _outputMultiByteChar(c, i3);
                i = i5;
            }
        }
        this._outputTail = i3;
    }

    private final void _writeStringSegments(String str, int i, int i2) {
        do {
            int min = Math.min(this._outputMaxContiguous, i2);
            if (this._outputTail + min > this._outputEnd) {
                _flushBuffer();
            }
            _writeStringSegment(str, i, min);
            i += min;
            i2 -= min;
        } while (i2 > 0);
    }

    private final void _writeStringSegments(String str, boolean z) {
        if (z) {
            if (this._outputTail >= this._outputEnd) {
                _flushBuffer();
            }
            byte[] bArr = this._outputBuffer;
            int i = this._outputTail;
            this._outputTail = i + 1;
            bArr[i] = 34;
        }
        int length = str.length();
        int i2 = 0;
        while (length > 0) {
            int min = Math.min(this._outputMaxContiguous, length);
            if (this._outputTail + min > this._outputEnd) {
                _flushBuffer();
            }
            _writeStringSegment(str, i2, min);
            i2 += min;
            length -= min;
        }
        if (z) {
            if (this._outputTail >= this._outputEnd) {
                _flushBuffer();
            }
            byte[] bArr2 = this._outputBuffer;
            int i3 = this._outputTail;
            this._outputTail = i3 + 1;
            bArr2[i3] = 34;
        }
    }

    private final void _writeStringSegments(char[] cArr, int i, int i2) {
        do {
            int min = Math.min(this._outputMaxContiguous, i2);
            if (this._outputTail + min > this._outputEnd) {
                _flushBuffer();
            }
            _writeStringSegment(cArr, i, min);
            i += min;
            i2 -= min;
        } while (i2 > 0);
    }

    /* access modifiers changed from: protected */
    public final void _flushBuffer() {
        int i = this._outputTail;
        if (i > 0) {
            this._outputTail = 0;
            this._outputStream.write(this._outputBuffer, 0, i);
        }
    }

    /* access modifiers changed from: protected */
    public final void _outputSurrogates(int i, int i2) {
        int _decodeSurrogate = _decodeSurrogate(i, i2);
        if (this._outputTail + 4 > this._outputEnd) {
            _flushBuffer();
        }
        byte[] bArr = this._outputBuffer;
        int i3 = this._outputTail;
        this._outputTail = i3 + 1;
        bArr[i3] = (byte) ((_decodeSurrogate >> 18) | 240);
        int i4 = this._outputTail;
        this._outputTail = i4 + 1;
        bArr[i4] = (byte) (((_decodeSurrogate >> 12) & 63) | NotificationCompat.FLAG_HIGH_PRIORITY);
        int i5 = this._outputTail;
        this._outputTail = i5 + 1;
        bArr[i5] = (byte) (((_decodeSurrogate >> 6) & 63) | NotificationCompat.FLAG_HIGH_PRIORITY);
        int i6 = this._outputTail;
        this._outputTail = i6 + 1;
        bArr[i6] = (byte) ((_decodeSurrogate & 63) | NotificationCompat.FLAG_HIGH_PRIORITY);
    }

    /* access modifiers changed from: protected */
    public void _releaseBuffers() {
        byte[] bArr = this._outputBuffer;
        if (bArr != null && this._bufferRecyclable) {
            this._outputBuffer = null;
            this._ioContext.releaseWriteEncodingBuffer(bArr);
        }
        char[] cArr = this._charBuffer;
        if (cArr != null) {
            this._charBuffer = null;
            this._ioContext.releaseConcatBuffer(cArr);
        }
    }

    /* access modifiers changed from: protected */
    public final void _verifyPrettyValueWrite(String str, int i) {
        switch (i) {
            case 0:
                if (this._writeContext.inArray()) {
                    this._cfgPrettyPrinter.beforeArrayValues(this);
                    return;
                } else if (this._writeContext.inObject()) {
                    this._cfgPrettyPrinter.beforeObjectEntries(this);
                    return;
                } else {
                    return;
                }
            case 1:
                this._cfgPrettyPrinter.writeArrayValueSeparator(this);
                return;
            case 2:
                this._cfgPrettyPrinter.writeObjectFieldValueSeparator(this);
                return;
            case 3:
                this._cfgPrettyPrinter.writeRootValueSeparator(this);
                return;
            default:
                _throwInternal();
                return;
        }
    }

    /* access modifiers changed from: protected */
    public final void _verifyValueWrite(String str) {
        byte b;
        int writeValue = this._writeContext.writeValue();
        if (writeValue == 5) {
            _reportError("Can not " + str + ", expecting field name");
        }
        if (this._cfgPrettyPrinter == null) {
            switch (writeValue) {
                case 1:
                    b = 44;
                    break;
                case 2:
                    b = 58;
                    break;
                case 3:
                    if (this._rootValueSeparator != null) {
                        byte[] asUnquotedUTF8 = this._rootValueSeparator.asUnquotedUTF8();
                        if (asUnquotedUTF8.length > 0) {
                            _writeBytes(asUnquotedUTF8);
                            return;
                        }
                        return;
                    }
                    return;
                default:
                    return;
            }
            if (this._outputTail >= this._outputEnd) {
                _flushBuffer();
            }
            this._outputBuffer[this._outputTail] = b;
            this._outputTail++;
            return;
        }
        _verifyPrettyValueWrite(str, writeValue);
    }

    /* access modifiers changed from: protected */
    public final void _writePPFieldName(String str) {
        int writeFieldName = this._writeContext.writeFieldName(str);
        if (writeFieldName == 4) {
            _reportError("Can not write a field name, expecting a value");
        }
        if (writeFieldName == 1) {
            this._cfgPrettyPrinter.writeObjectEntrySeparator(this);
        } else {
            this._cfgPrettyPrinter.beforeObjectEntries(this);
        }
        if (this._cfgUnqNames) {
            _writeStringSegments(str, false);
            return;
        }
        int length = str.length();
        if (length > this._charBufferLength) {
            _writeStringSegments(str, true);
            return;
        }
        if (this._outputTail >= this._outputEnd) {
            _flushBuffer();
        }
        byte[] bArr = this._outputBuffer;
        int i = this._outputTail;
        this._outputTail = i + 1;
        bArr[i] = 34;
        str.getChars(0, length, this._charBuffer, 0);
        if (length <= this._outputMaxContiguous) {
            if (this._outputTail + length > this._outputEnd) {
                _flushBuffer();
            }
            _writeStringSegment(this._charBuffer, 0, length);
        } else {
            _writeStringSegments(this._charBuffer, 0, length);
        }
        if (this._outputTail >= this._outputEnd) {
            _flushBuffer();
        }
        byte[] bArr2 = this._outputBuffer;
        int i2 = this._outputTail;
        this._outputTail = i2 + 1;
        bArr2[i2] = 34;
    }

    public void close() {
        super.close();
        if (this._outputBuffer != null && isEnabled(JsonGenerator.Feature.AUTO_CLOSE_JSON_CONTENT)) {
            while (true) {
                JsonWriteContext outputContext = getOutputContext();
                if (!outputContext.inArray()) {
                    if (!outputContext.inObject()) {
                        break;
                    }
                    writeEndObject();
                } else {
                    writeEndArray();
                }
            }
        }
        _flushBuffer();
        this._outputTail = 0;
        if (this._outputStream != null) {
            if (this._ioContext.isResourceManaged() || isEnabled(JsonGenerator.Feature.AUTO_CLOSE_TARGET)) {
                this._outputStream.close();
            } else if (isEnabled(JsonGenerator.Feature.FLUSH_PASSED_TO_STREAM)) {
                this._outputStream.flush();
            }
        }
        _releaseBuffers();
    }

    public void flush() {
        _flushBuffer();
        if (this._outputStream != null && isEnabled(JsonGenerator.Feature.FLUSH_PASSED_TO_STREAM)) {
            this._outputStream.flush();
        }
    }

    public void writeBoolean(boolean z) {
        _verifyValueWrite("write a boolean value");
        if (this._outputTail + 5 >= this._outputEnd) {
            _flushBuffer();
        }
        byte[] bArr = z ? TRUE_BYTES : FALSE_BYTES;
        int length = bArr.length;
        System.arraycopy(bArr, 0, this._outputBuffer, this._outputTail, length);
        this._outputTail += length;
    }

    public final void writeEndArray() {
        if (!this._writeContext.inArray()) {
            _reportError("Current context not an ARRAY but " + this._writeContext.getTypeDesc());
        }
        if (this._cfgPrettyPrinter != null) {
            this._cfgPrettyPrinter.writeEndArray(this, this._writeContext.getEntryCount());
        } else {
            if (this._outputTail >= this._outputEnd) {
                _flushBuffer();
            }
            byte[] bArr = this._outputBuffer;
            int i = this._outputTail;
            this._outputTail = i + 1;
            bArr[i] = 93;
        }
        this._writeContext = this._writeContext.clearAndGetParent();
    }

    public final void writeEndObject() {
        if (!this._writeContext.inObject()) {
            _reportError("Current context not an object but " + this._writeContext.getTypeDesc());
        }
        if (this._cfgPrettyPrinter != null) {
            this._cfgPrettyPrinter.writeEndObject(this, this._writeContext.getEntryCount());
        } else {
            if (this._outputTail >= this._outputEnd) {
                _flushBuffer();
            }
            byte[] bArr = this._outputBuffer;
            int i = this._outputTail;
            this._outputTail = i + 1;
            bArr[i] = 125;
        }
        this._writeContext = this._writeContext.clearAndGetParent();
    }

    public void writeFieldName(String str) {
        if (this._cfgPrettyPrinter != null) {
            _writePPFieldName(str);
            return;
        }
        int writeFieldName = this._writeContext.writeFieldName(str);
        if (writeFieldName == 4) {
            _reportError("Can not write a field name, expecting a value");
        }
        if (writeFieldName == 1) {
            if (this._outputTail >= this._outputEnd) {
                _flushBuffer();
            }
            byte[] bArr = this._outputBuffer;
            int i = this._outputTail;
            this._outputTail = i + 1;
            bArr[i] = 44;
        }
        if (this._cfgUnqNames) {
            _writeStringSegments(str, false);
            return;
        }
        int length = str.length();
        if (length > this._charBufferLength) {
            _writeStringSegments(str, true);
            return;
        }
        if (this._outputTail >= this._outputEnd) {
            _flushBuffer();
        }
        byte[] bArr2 = this._outputBuffer;
        int i2 = this._outputTail;
        this._outputTail = i2 + 1;
        bArr2[i2] = 34;
        if (length <= this._outputMaxContiguous) {
            if (this._outputTail + length > this._outputEnd) {
                _flushBuffer();
            }
            _writeStringSegment(str, 0, length);
        } else {
            _writeStringSegments(str, 0, length);
        }
        if (this._outputTail >= this._outputEnd) {
            _flushBuffer();
        }
        byte[] bArr3 = this._outputBuffer;
        int i3 = this._outputTail;
        this._outputTail = i3 + 1;
        bArr3[i3] = 34;
    }

    public void writeNull() {
        _verifyValueWrite("write a null");
        _writeNull();
    }

    public void writeNumber(double d) {
        if (this._cfgNumbersAsStrings || ((Double.isNaN(d) || Double.isInfinite(d)) && JsonGenerator.Feature.QUOTE_NON_NUMERIC_NUMBERS.enabledIn(this._features))) {
            writeString(String.valueOf(d));
            return;
        }
        _verifyValueWrite("write a number");
        writeRaw(String.valueOf(d));
    }

    public void writeNumber(long j) {
        _verifyValueWrite("write a number");
        if (this._cfgNumbersAsStrings) {
            _writeQuotedLong(j);
            return;
        }
        if (this._outputTail + 21 >= this._outputEnd) {
            _flushBuffer();
        }
        this._outputTail = NumberOutput.outputLong(j, this._outputBuffer, this._outputTail);
    }

    public void writeRaw(char c) {
        if (this._outputTail + 3 >= this._outputEnd) {
            _flushBuffer();
        }
        byte[] bArr = this._outputBuffer;
        if (c <= 127) {
            int i = this._outputTail;
            this._outputTail = i + 1;
            bArr[i] = (byte) c;
        } else if (c < 2048) {
            int i2 = this._outputTail;
            this._outputTail = i2 + 1;
            bArr[i2] = (byte) ((c >> 6) | 192);
            int i3 = this._outputTail;
            this._outputTail = i3 + 1;
            bArr[i3] = (byte) ((c & '?') | 128);
        } else {
            _outputRawMultiByteChar(c, (char[]) null, 0, 0);
        }
    }

    public void writeRaw(SerializableString serializableString) {
        byte[] asUnquotedUTF8 = serializableString.asUnquotedUTF8();
        if (asUnquotedUTF8.length > 0) {
            _writeBytes(asUnquotedUTF8);
        }
    }

    public void writeRaw(String str) {
        int length = str.length();
        int i = 0;
        while (length > 0) {
            char[] cArr = this._charBuffer;
            int length2 = cArr.length;
            if (length < length2) {
                length2 = length;
            }
            str.getChars(i, i + length2, cArr, 0);
            writeRaw(cArr, 0, length2);
            i += length2;
            length -= length2;
        }
    }

    /* JADX WARNING: Code restructure failed: missing block: B:12:0x0030, code lost:
        r8 = r0 + 1;
        r0 = r7[r0];
     */
    /* JADX WARNING: Code restructure failed: missing block: B:13:0x0036, code lost:
        if (r0 >= 2048) goto L_0x0058;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:14:0x0038, code lost:
        r2 = r6._outputBuffer;
        r3 = r6._outputTail;
        r6._outputTail = r3 + 1;
        r2[r3] = (byte) ((r0 >> 6) | 192);
        r2 = r6._outputBuffer;
        r3 = r6._outputTail;
        r6._outputTail = r3 + 1;
        r2[r3] = (byte) ((r0 & '?') | 128);
        r0 = r8;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:15:0x0058, code lost:
        r0 = _outputRawMultiByteChar(r0, r7, r8, r1);
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final void writeRaw(char[] r7, int r8, int r9) {
        /*
            r6 = this;
            int r0 = r9 + r9
            int r0 = r0 + r9
            int r1 = r6._outputTail
            int r1 = r1 + r0
            int r2 = r6._outputEnd
            if (r1 <= r2) goto L_0x0015
            int r1 = r6._outputEnd
            if (r1 >= r0) goto L_0x0012
            r6._writeSegmentedRaw(r7, r8, r9)
        L_0x0011:
            return
        L_0x0012:
            r6._flushBuffer()
        L_0x0015:
            int r1 = r9 + r8
            r0 = r8
        L_0x0018:
            if (r0 >= r1) goto L_0x0011
        L_0x001a:
            char r2 = r7[r0]
            r3 = 127(0x7f, float:1.78E-43)
            if (r2 > r3) goto L_0x0030
            byte[] r3 = r6._outputBuffer
            int r4 = r6._outputTail
            int r5 = r4 + 1
            r6._outputTail = r5
            byte r2 = (byte) r2
            r3[r4] = r2
            int r0 = r0 + 1
            if (r0 >= r1) goto L_0x0011
            goto L_0x001a
        L_0x0030:
            int r8 = r0 + 1
            char r0 = r7[r0]
            r2 = 2048(0x800, float:2.87E-42)
            if (r0 >= r2) goto L_0x0058
            byte[] r2 = r6._outputBuffer
            int r3 = r6._outputTail
            int r4 = r3 + 1
            r6._outputTail = r4
            int r4 = r0 >> 6
            r4 = r4 | 192(0xc0, float:2.69E-43)
            byte r4 = (byte) r4
            r2[r3] = r4
            byte[] r2 = r6._outputBuffer
            int r3 = r6._outputTail
            int r4 = r3 + 1
            r6._outputTail = r4
            r0 = r0 & 63
            r0 = r0 | 128(0x80, float:1.794E-43)
            byte r0 = (byte) r0
            r2[r3] = r0
            r0 = r8
            goto L_0x0018
        L_0x0058:
            int r0 = r6._outputRawMultiByteChar(r0, r7, r8, r1)
            goto L_0x0018
        */
        throw new UnsupportedOperationException("Method not decompiled: com.fasterxml.jackson.core.json.UTF8JsonGenerator.writeRaw(char[], int, int):void");
    }

    public final void writeStartArray() {
        _verifyValueWrite("start an array");
        this._writeContext = this._writeContext.createChildArrayContext();
        if (this._cfgPrettyPrinter != null) {
            this._cfgPrettyPrinter.writeStartArray(this);
            return;
        }
        if (this._outputTail >= this._outputEnd) {
            _flushBuffer();
        }
        byte[] bArr = this._outputBuffer;
        int i = this._outputTail;
        this._outputTail = i + 1;
        bArr[i] = 91;
    }

    public final void writeStartObject() {
        _verifyValueWrite("start an object");
        this._writeContext = this._writeContext.createChildObjectContext();
        if (this._cfgPrettyPrinter != null) {
            this._cfgPrettyPrinter.writeStartObject(this);
            return;
        }
        if (this._outputTail >= this._outputEnd) {
            _flushBuffer();
        }
        byte[] bArr = this._outputBuffer;
        int i = this._outputTail;
        this._outputTail = i + 1;
        bArr[i] = 123;
    }

    public void writeString(String str) {
        _verifyValueWrite("write a string");
        if (str == null) {
            _writeNull();
            return;
        }
        int length = str.length();
        if (length > this._outputMaxContiguous) {
            _writeStringSegments(str, true);
            return;
        }
        if (this._outputTail + length >= this._outputEnd) {
            _flushBuffer();
        }
        byte[] bArr = this._outputBuffer;
        int i = this._outputTail;
        this._outputTail = i + 1;
        bArr[i] = 34;
        _writeStringSegment(str, 0, length);
        if (this._outputTail >= this._outputEnd) {
            _flushBuffer();
        }
        byte[] bArr2 = this._outputBuffer;
        int i2 = this._outputTail;
        this._outputTail = i2 + 1;
        bArr2[i2] = 34;
    }
}
