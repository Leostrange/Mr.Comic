package com.fasterxml.jackson.core.json;

import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.ObjectCodec;
import com.fasterxml.jackson.core.SerializableString;
import com.fasterxml.jackson.core.io.CharTypes;
import com.fasterxml.jackson.core.io.IOContext;
import com.fasterxml.jackson.core.io.NumberOutput;
import java.io.Writer;
import org.apache.http.message.TokenParser;

public final class WriterBasedJsonGenerator extends JsonGeneratorImpl {
    protected static final char[] HEX_CHARS = CharTypes.copyHexChars();
    protected SerializableString _currentEscape;
    protected char[] _entityBuffer;
    protected char[] _outputBuffer;
    protected int _outputEnd = this._outputBuffer.length;
    protected int _outputHead;
    protected int _outputTail;
    protected final Writer _writer;

    public WriterBasedJsonGenerator(IOContext iOContext, int i, ObjectCodec objectCodec, Writer writer) {
        super(iOContext, i, objectCodec);
        this._writer = writer;
        this._outputBuffer = iOContext.allocConcatBuffer();
    }

    private char[] _allocateEntityBuffer() {
        char[] cArr = new char[14];
        cArr[0] = TokenParser.ESCAPE;
        cArr[2] = TokenParser.ESCAPE;
        cArr[3] = 'u';
        cArr[4] = '0';
        cArr[5] = '0';
        cArr[8] = TokenParser.ESCAPE;
        cArr[9] = 'u';
        this._entityBuffer = cArr;
        return cArr;
    }

    private int _prependOrWriteCharacterEscape(char[] cArr, int i, int i2, char c, int i3) {
        String value;
        int i4;
        if (i3 >= 0) {
            if (i <= 1 || i >= i2) {
                char[] cArr2 = this._entityBuffer;
                if (cArr2 == null) {
                    cArr2 = _allocateEntityBuffer();
                }
                cArr2[1] = (char) i3;
                this._writer.write(cArr2, 0, 2);
                return i;
            }
            int i5 = i - 2;
            cArr[i5] = TokenParser.ESCAPE;
            cArr[i5 + 1] = (char) i3;
            return i5;
        } else if (i3 == -2) {
            if (this._currentEscape == null) {
                value = this._characterEscapes.getEscapeSequence(c).getValue();
            } else {
                value = this._currentEscape.getValue();
                this._currentEscape = null;
            }
            int length = value.length();
            if (i < length || i >= i2) {
                this._writer.write(value);
                return i;
            }
            int i6 = i - length;
            value.getChars(0, length, cArr, i6);
            return i6;
        } else if (i <= 5 || i >= i2) {
            char[] cArr3 = this._entityBuffer;
            if (cArr3 == null) {
                cArr3 = _allocateEntityBuffer();
            }
            this._outputHead = this._outputTail;
            if (c > 255) {
                int i7 = (c >> 8) & 255;
                char c2 = c & 255;
                cArr3[10] = HEX_CHARS[i7 >> 4];
                cArr3[11] = HEX_CHARS[i7 & 15];
                cArr3[12] = HEX_CHARS[c2 >> 4];
                cArr3[13] = HEX_CHARS[c2 & 15];
                this._writer.write(cArr3, 8, 6);
                return i;
            }
            cArr3[6] = HEX_CHARS[c >> 4];
            cArr3[7] = HEX_CHARS[c & 15];
            this._writer.write(cArr3, 2, 6);
            return i;
        } else {
            int i8 = i - 6;
            int i9 = i8 + 1;
            cArr[i8] = TokenParser.ESCAPE;
            int i10 = i9 + 1;
            cArr[i9] = 'u';
            if (c > 255) {
                int i11 = (c >> 8) & 255;
                int i12 = i10 + 1;
                cArr[i10] = HEX_CHARS[i11 >> 4];
                i4 = i12 + 1;
                cArr[i12] = HEX_CHARS[i11 & 15];
                c = (char) (c & 255);
            } else {
                int i13 = i10 + 1;
                cArr[i10] = '0';
                i4 = i13 + 1;
                cArr[i13] = '0';
            }
            int i14 = i4 + 1;
            cArr[i4] = HEX_CHARS[c >> 4];
            cArr[i14] = HEX_CHARS[c & 15];
            return i14 - 5;
        }
    }

    private void _prependOrWriteCharacterEscape(char c, int i) {
        String value;
        int i2;
        if (i >= 0) {
            if (this._outputTail >= 2) {
                int i3 = this._outputTail - 2;
                this._outputHead = i3;
                this._outputBuffer[i3] = TokenParser.ESCAPE;
                this._outputBuffer[i3 + 1] = (char) i;
                return;
            }
            char[] cArr = this._entityBuffer;
            if (cArr == null) {
                cArr = _allocateEntityBuffer();
            }
            this._outputHead = this._outputTail;
            cArr[1] = (char) i;
            this._writer.write(cArr, 0, 2);
        } else if (i == -2) {
            if (this._currentEscape == null) {
                value = this._characterEscapes.getEscapeSequence(c).getValue();
            } else {
                value = this._currentEscape.getValue();
                this._currentEscape = null;
            }
            int length = value.length();
            if (this._outputTail >= length) {
                int i4 = this._outputTail - length;
                this._outputHead = i4;
                value.getChars(0, length, this._outputBuffer, i4);
                return;
            }
            this._outputHead = this._outputTail;
            this._writer.write(value);
        } else if (this._outputTail >= 6) {
            char[] cArr2 = this._outputBuffer;
            int i5 = this._outputTail - 6;
            this._outputHead = i5;
            cArr2[i5] = TokenParser.ESCAPE;
            int i6 = i5 + 1;
            cArr2[i6] = 'u';
            if (c > 255) {
                int i7 = (c >> 8) & 255;
                int i8 = i6 + 1;
                cArr2[i8] = HEX_CHARS[i7 >> 4];
                i2 = i8 + 1;
                cArr2[i2] = HEX_CHARS[i7 & 15];
                c = (char) (c & 255);
            } else {
                int i9 = i6 + 1;
                cArr2[i9] = '0';
                i2 = i9 + 1;
                cArr2[i2] = '0';
            }
            int i10 = i2 + 1;
            cArr2[i10] = HEX_CHARS[c >> 4];
            cArr2[i10 + 1] = HEX_CHARS[c & 15];
        } else {
            char[] cArr3 = this._entityBuffer;
            if (cArr3 == null) {
                cArr3 = _allocateEntityBuffer();
            }
            this._outputHead = this._outputTail;
            if (c > 255) {
                int i11 = (c >> 8) & 255;
                char c2 = c & 255;
                cArr3[10] = HEX_CHARS[i11 >> 4];
                cArr3[11] = HEX_CHARS[i11 & 15];
                cArr3[12] = HEX_CHARS[c2 >> 4];
                cArr3[13] = HEX_CHARS[c2 & 15];
                this._writer.write(cArr3, 8, 6);
                return;
            }
            cArr3[6] = HEX_CHARS[c >> 4];
            cArr3[7] = HEX_CHARS[c & 15];
            this._writer.write(cArr3, 2, 6);
        }
    }

    private void _writeLongString(String str) {
        _flushBuffer();
        int length = str.length();
        int i = 0;
        do {
            int i2 = this._outputEnd;
            if (i + i2 > length) {
                i2 = length - i;
            }
            str.getChars(i, i + i2, this._outputBuffer, 0);
            if (this._characterEscapes != null) {
                _writeSegmentCustom(i2);
            } else if (this._maximumNonEscapedChar != 0) {
                _writeSegmentASCII(i2, this._maximumNonEscapedChar);
            } else {
                _writeSegment(i2);
            }
            i += i2;
        } while (i < length);
    }

    private final void _writeNull() {
        if (this._outputTail + 4 >= this._outputEnd) {
            _flushBuffer();
        }
        int i = this._outputTail;
        char[] cArr = this._outputBuffer;
        cArr[i] = 'n';
        int i2 = i + 1;
        cArr[i2] = 'u';
        int i3 = i2 + 1;
        cArr[i3] = 'l';
        int i4 = i3 + 1;
        cArr[i4] = 'l';
        this._outputTail = i4 + 1;
    }

    private void _writeQuotedLong(long j) {
        if (this._outputTail + 23 >= this._outputEnd) {
            _flushBuffer();
        }
        char[] cArr = this._outputBuffer;
        int i = this._outputTail;
        this._outputTail = i + 1;
        cArr[i] = TokenParser.DQUOTE;
        this._outputTail = NumberOutput.outputLong(j, this._outputBuffer, this._outputTail);
        char[] cArr2 = this._outputBuffer;
        int i2 = this._outputTail;
        this._outputTail = i2 + 1;
        cArr2[i2] = TokenParser.DQUOTE;
    }

    private void _writeSegment(int i) {
        char c;
        int i2 = 0;
        int[] iArr = this._outputEscapes;
        int length = iArr.length;
        int i3 = 0;
        while (i2 < i) {
            do {
                c = this._outputBuffer[i2];
                if ((c < length && iArr[c] != 0) || (i2 = i2 + 1) >= i) {
                    int i4 = i2 - i3;
                }
                c = this._outputBuffer[i2];
                break;
            } while ((i2 = i2 + 1) >= i);
            int i42 = i2 - i3;
            if (i42 > 0) {
                this._writer.write(this._outputBuffer, i3, i42);
                if (i2 >= i) {
                    return;
                }
            }
            int i5 = i2 + 1;
            i3 = _prependOrWriteCharacterEscape(this._outputBuffer, i5, i, c, iArr[c]);
            i2 = i5;
        }
    }

    /* JADX WARNING: Removed duplicated region for block: B:23:0x003c A[SYNTHETIC] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private void _writeSegmentASCII(int r10, int r11) {
        /*
            r9 = this;
            r0 = 0
            int[] r6 = r9._outputEscapes
            int r1 = r6.length
            int r2 = r11 + 1
            int r7 = java.lang.Math.min(r1, r2)
            r2 = r0
            r1 = r0
        L_0x000c:
            if (r1 >= r10) goto L_0x003e
        L_0x000e:
            char[] r3 = r9._outputBuffer
            char r4 = r3[r1]
            if (r4 >= r7) goto L_0x0033
            r5 = r6[r4]
            if (r5 == 0) goto L_0x0037
        L_0x0018:
            int r0 = r1 - r2
            if (r0 <= 0) goto L_0x0025
            java.io.Writer r3 = r9._writer
            char[] r8 = r9._outputBuffer
            r3.write(r8, r2, r0)
            if (r1 >= r10) goto L_0x003e
        L_0x0025:
            int r2 = r1 + 1
            char[] r1 = r9._outputBuffer
            r0 = r9
            r3 = r10
            int r0 = r0._prependOrWriteCharacterEscape(r1, r2, r3, r4, r5)
            r1 = r2
            r2 = r0
            r0 = r5
            goto L_0x000c
        L_0x0033:
            if (r4 <= r11) goto L_0x0038
            r5 = -1
            goto L_0x0018
        L_0x0037:
            r0 = r5
        L_0x0038:
            int r1 = r1 + 1
            if (r1 < r10) goto L_0x000e
            r5 = r0
            goto L_0x0018
        L_0x003e:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.fasterxml.jackson.core.json.WriterBasedJsonGenerator._writeSegmentASCII(int, int):void");
    }

    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r6v2, resolved type: char} */
    /* JADX WARNING: Multi-variable type inference failed */
    /* JADX WARNING: Removed duplicated region for block: B:30:0x0054 A[SYNTHETIC] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private void _writeSegmentCustom(int r12) {
        /*
            r11 = this;
            r1 = 0
            int[] r7 = r11._outputEscapes
            int r0 = r11._maximumNonEscapedChar
            if (r0 > 0) goto L_0x003d
            r0 = 65535(0xffff, float:9.1834E-41)
            r6 = r0
        L_0x000b:
            int r0 = r7.length
            int r2 = r6 + 1
            int r8 = java.lang.Math.min(r0, r2)
            com.fasterxml.jackson.core.io.CharacterEscapes r9 = r11._characterEscapes
            r2 = r1
            r0 = r1
        L_0x0016:
            if (r1 >= r12) goto L_0x0056
        L_0x0018:
            char[] r3 = r11._outputBuffer
            char r4 = r3[r1]
            if (r4 >= r8) goto L_0x0041
            r5 = r7[r4]
            if (r5 == 0) goto L_0x004f
        L_0x0022:
            int r0 = r1 - r2
            if (r0 <= 0) goto L_0x002f
            java.io.Writer r3 = r11._writer
            char[] r10 = r11._outputBuffer
            r3.write(r10, r2, r0)
            if (r1 >= r12) goto L_0x0056
        L_0x002f:
            int r2 = r1 + 1
            char[] r1 = r11._outputBuffer
            r0 = r11
            r3 = r12
            int r0 = r0._prependOrWriteCharacterEscape(r1, r2, r3, r4, r5)
            r1 = r2
            r2 = r0
            r0 = r5
            goto L_0x0016
        L_0x003d:
            int r0 = r11._maximumNonEscapedChar
            r6 = r0
            goto L_0x000b
        L_0x0041:
            if (r4 <= r6) goto L_0x0045
            r5 = -1
            goto L_0x0022
        L_0x0045:
            com.fasterxml.jackson.core.SerializableString r3 = r9.getEscapeSequence(r4)
            r11._currentEscape = r3
            if (r3 == 0) goto L_0x0050
            r5 = -2
            goto L_0x0022
        L_0x004f:
            r0 = r5
        L_0x0050:
            int r1 = r1 + 1
            if (r1 < r12) goto L_0x0018
            r5 = r0
            goto L_0x0022
        L_0x0056:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.fasterxml.jackson.core.json.WriterBasedJsonGenerator._writeSegmentCustom(int):void");
    }

    private void _writeString(String str) {
        int length = str.length();
        if (length > this._outputEnd) {
            _writeLongString(str);
            return;
        }
        if (this._outputTail + length > this._outputEnd) {
            _flushBuffer();
        }
        str.getChars(0, length, this._outputBuffer, this._outputTail);
        if (this._characterEscapes != null) {
            _writeStringCustom(length);
        } else if (this._maximumNonEscapedChar != 0) {
            _writeStringASCII(length, this._maximumNonEscapedChar);
        } else {
            _writeString2(length);
        }
    }

    /* JADX WARNING: Code restructure failed: missing block: B:10:0x0024, code lost:
        if (r3 <= 0) goto L_0x002f;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:11:0x0026, code lost:
        r7._writer.write(r7._outputBuffer, r7._outputHead, r3);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:12:0x002f, code lost:
        r3 = r7._outputBuffer;
        r4 = r7._outputTail;
        r7._outputTail = r4 + 1;
        r3 = r3[r4];
        _prependOrWriteCharacterEscape(r3, r1[r3]);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:9:0x001f, code lost:
        r3 = r7._outputTail - r7._outputHead;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private void _writeString2(int r8) {
        /*
            r7 = this;
            int r0 = r7._outputTail
            int r0 = r0 + r8
            int[] r1 = r7._outputEscapes
            int r2 = r1.length
        L_0x0006:
            int r3 = r7._outputTail
            if (r3 >= r0) goto L_0x001e
        L_0x000a:
            char[] r3 = r7._outputBuffer
            int r4 = r7._outputTail
            char r3 = r3[r4]
            if (r3 >= r2) goto L_0x0016
            r3 = r1[r3]
            if (r3 != 0) goto L_0x001f
        L_0x0016:
            int r3 = r7._outputTail
            int r3 = r3 + 1
            r7._outputTail = r3
            if (r3 < r0) goto L_0x000a
        L_0x001e:
            return
        L_0x001f:
            int r3 = r7._outputTail
            int r4 = r7._outputHead
            int r3 = r3 - r4
            if (r3 <= 0) goto L_0x002f
            java.io.Writer r4 = r7._writer
            char[] r5 = r7._outputBuffer
            int r6 = r7._outputHead
            r4.write(r5, r6, r3)
        L_0x002f:
            char[] r3 = r7._outputBuffer
            int r4 = r7._outputTail
            int r5 = r4 + 1
            r7._outputTail = r5
            char r3 = r3[r4]
            r4 = r1[r3]
            r7._prependOrWriteCharacterEscape(r3, r4)
            goto L_0x0006
        */
        throw new UnsupportedOperationException("Method not decompiled: com.fasterxml.jackson.core.json.WriterBasedJsonGenerator._writeString2(int):void");
    }

    /* JADX WARNING: Removed duplicated region for block: B:15:0x0043 A[SYNTHETIC] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private void _writeStringASCII(int r10, int r11) {
        /*
            r9 = this;
            int r0 = r9._outputTail
            int r1 = r0 + r10
            int[] r2 = r9._outputEscapes
            int r0 = r2.length
            int r3 = r11 + 1
            int r3 = java.lang.Math.min(r0, r3)
        L_0x000d:
            int r0 = r9._outputTail
            if (r0 >= r1) goto L_0x0043
        L_0x0011:
            char[] r0 = r9._outputBuffer
            int r4 = r9._outputTail
            char r4 = r0[r4]
            if (r4 >= r3) goto L_0x0037
            r0 = r2[r4]
            if (r0 == 0) goto L_0x003b
        L_0x001d:
            int r5 = r9._outputTail
            int r6 = r9._outputHead
            int r5 = r5 - r6
            if (r5 <= 0) goto L_0x002d
            java.io.Writer r6 = r9._writer
            char[] r7 = r9._outputBuffer
            int r8 = r9._outputHead
            r6.write(r7, r8, r5)
        L_0x002d:
            int r5 = r9._outputTail
            int r5 = r5 + 1
            r9._outputTail = r5
            r9._prependOrWriteCharacterEscape(r4, r0)
            goto L_0x000d
        L_0x0037:
            if (r4 <= r11) goto L_0x003b
            r0 = -1
            goto L_0x001d
        L_0x003b:
            int r0 = r9._outputTail
            int r0 = r0 + 1
            r9._outputTail = r0
            if (r0 < r1) goto L_0x0011
        L_0x0043:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.fasterxml.jackson.core.json.WriterBasedJsonGenerator._writeStringASCII(int, int):void");
    }

    /* JADX WARNING: Removed duplicated region for block: B:22:0x0059 A[SYNTHETIC] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private void _writeStringCustom(int r12) {
        /*
            r11 = this;
            int r0 = r11._outputTail
            int r2 = r0 + r12
            int[] r3 = r11._outputEscapes
            int r0 = r11._maximumNonEscapedChar
            if (r0 > 0) goto L_0x0040
            r0 = 65535(0xffff, float:9.1834E-41)
        L_0x000d:
            int r1 = r3.length
            int r4 = r0 + 1
            int r4 = java.lang.Math.min(r1, r4)
            com.fasterxml.jackson.core.io.CharacterEscapes r5 = r11._characterEscapes
        L_0x0016:
            int r1 = r11._outputTail
            if (r1 >= r2) goto L_0x0059
        L_0x001a:
            char[] r1 = r11._outputBuffer
            int r6 = r11._outputTail
            char r6 = r1[r6]
            if (r6 >= r4) goto L_0x0043
            r1 = r3[r6]
            if (r1 == 0) goto L_0x0051
        L_0x0026:
            int r7 = r11._outputTail
            int r8 = r11._outputHead
            int r7 = r7 - r8
            if (r7 <= 0) goto L_0x0036
            java.io.Writer r8 = r11._writer
            char[] r9 = r11._outputBuffer
            int r10 = r11._outputHead
            r8.write(r9, r10, r7)
        L_0x0036:
            int r7 = r11._outputTail
            int r7 = r7 + 1
            r11._outputTail = r7
            r11._prependOrWriteCharacterEscape(r6, r1)
            goto L_0x0016
        L_0x0040:
            int r0 = r11._maximumNonEscapedChar
            goto L_0x000d
        L_0x0043:
            if (r6 <= r0) goto L_0x0047
            r1 = -1
            goto L_0x0026
        L_0x0047:
            com.fasterxml.jackson.core.SerializableString r1 = r5.getEscapeSequence(r6)
            r11._currentEscape = r1
            if (r1 == 0) goto L_0x0051
            r1 = -2
            goto L_0x0026
        L_0x0051:
            int r1 = r11._outputTail
            int r1 = r1 + 1
            r11._outputTail = r1
            if (r1 < r2) goto L_0x001a
        L_0x0059:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.fasterxml.jackson.core.json.WriterBasedJsonGenerator._writeStringCustom(int):void");
    }

    private void writeRawLong(String str) {
        int i = this._outputEnd - this._outputTail;
        str.getChars(0, i, this._outputBuffer, this._outputTail);
        this._outputTail += i;
        _flushBuffer();
        int length = str.length() - i;
        while (length > this._outputEnd) {
            int i2 = this._outputEnd;
            str.getChars(i, i + i2, this._outputBuffer, 0);
            this._outputHead = 0;
            this._outputTail = i2;
            _flushBuffer();
            i += i2;
            length -= i2;
        }
        str.getChars(i, i + length, this._outputBuffer, 0);
        this._outputHead = 0;
        this._outputTail = length;
    }

    /* access modifiers changed from: protected */
    public final void _flushBuffer() {
        int i = this._outputTail - this._outputHead;
        if (i > 0) {
            int i2 = this._outputHead;
            this._outputHead = 0;
            this._outputTail = 0;
            this._writer.write(this._outputBuffer, i2, i);
        }
    }

    /* access modifiers changed from: protected */
    public final void _releaseBuffers() {
        char[] cArr = this._outputBuffer;
        if (cArr != null) {
            this._outputBuffer = null;
            this._ioContext.releaseConcatBuffer(cArr);
        }
    }

    /* access modifiers changed from: protected */
    public final void _verifyPrettyValueWrite(String str) {
        int writeValue = this._writeContext.writeValue();
        if (writeValue == 5) {
            _reportError("Can not " + str + ", expecting field name");
        }
        switch (writeValue) {
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
        char c;
        if (this._cfgPrettyPrinter != null) {
            _verifyPrettyValueWrite(str);
            return;
        }
        int writeValue = this._writeContext.writeValue();
        if (writeValue == 5) {
            _reportError("Can not " + str + ", expecting field name");
        }
        switch (writeValue) {
            case 1:
                c = ',';
                break;
            case 2:
                c = ':';
                break;
            case 3:
                if (this._rootValueSeparator != null) {
                    writeRaw(this._rootValueSeparator.getValue());
                    return;
                }
                return;
            default:
                return;
        }
        if (this._outputTail >= this._outputEnd) {
            _flushBuffer();
        }
        this._outputBuffer[this._outputTail] = c;
        this._outputTail++;
    }

    /* access modifiers changed from: protected */
    public final void _writeFieldName(String str, boolean z) {
        if (this._cfgPrettyPrinter != null) {
            _writePPFieldName(str, z);
            return;
        }
        if (this._outputTail + 1 >= this._outputEnd) {
            _flushBuffer();
        }
        if (z) {
            char[] cArr = this._outputBuffer;
            int i = this._outputTail;
            this._outputTail = i + 1;
            cArr[i] = ',';
        }
        if (this._cfgUnqNames) {
            _writeString(str);
            return;
        }
        char[] cArr2 = this._outputBuffer;
        int i2 = this._outputTail;
        this._outputTail = i2 + 1;
        cArr2[i2] = TokenParser.DQUOTE;
        _writeString(str);
        if (this._outputTail >= this._outputEnd) {
            _flushBuffer();
        }
        char[] cArr3 = this._outputBuffer;
        int i3 = this._outputTail;
        this._outputTail = i3 + 1;
        cArr3[i3] = TokenParser.DQUOTE;
    }

    /* access modifiers changed from: protected */
    public final void _writePPFieldName(String str, boolean z) {
        if (z) {
            this._cfgPrettyPrinter.writeObjectEntrySeparator(this);
        } else {
            this._cfgPrettyPrinter.beforeObjectEntries(this);
        }
        if (this._cfgUnqNames) {
            _writeString(str);
            return;
        }
        if (this._outputTail >= this._outputEnd) {
            _flushBuffer();
        }
        char[] cArr = this._outputBuffer;
        int i = this._outputTail;
        this._outputTail = i + 1;
        cArr[i] = TokenParser.DQUOTE;
        _writeString(str);
        if (this._outputTail >= this._outputEnd) {
            _flushBuffer();
        }
        char[] cArr2 = this._outputBuffer;
        int i2 = this._outputTail;
        this._outputTail = i2 + 1;
        cArr2[i2] = TokenParser.DQUOTE;
    }

    public final void close() {
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
        this._outputHead = 0;
        this._outputTail = 0;
        if (this._writer != null) {
            if (this._ioContext.isResourceManaged() || isEnabled(JsonGenerator.Feature.AUTO_CLOSE_TARGET)) {
                this._writer.close();
            } else if (isEnabled(JsonGenerator.Feature.FLUSH_PASSED_TO_STREAM)) {
                this._writer.flush();
            }
        }
        _releaseBuffers();
    }

    public final void flush() {
        _flushBuffer();
        if (this._writer != null && isEnabled(JsonGenerator.Feature.FLUSH_PASSED_TO_STREAM)) {
            this._writer.flush();
        }
    }

    public final void writeBoolean(boolean z) {
        int i;
        _verifyValueWrite("write a boolean value");
        if (this._outputTail + 5 >= this._outputEnd) {
            _flushBuffer();
        }
        int i2 = this._outputTail;
        char[] cArr = this._outputBuffer;
        if (z) {
            cArr[i2] = 't';
            int i3 = i2 + 1;
            cArr[i3] = 'r';
            int i4 = i3 + 1;
            cArr[i4] = 'u';
            i = i4 + 1;
            cArr[i] = 'e';
        } else {
            cArr[i2] = 'f';
            int i5 = i2 + 1;
            cArr[i5] = 'a';
            int i6 = i5 + 1;
            cArr[i6] = 'l';
            int i7 = i6 + 1;
            cArr[i7] = 's';
            i = i7 + 1;
            cArr[i] = 'e';
        }
        this._outputTail = i + 1;
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
            char[] cArr = this._outputBuffer;
            int i = this._outputTail;
            this._outputTail = i + 1;
            cArr[i] = ']';
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
            char[] cArr = this._outputBuffer;
            int i = this._outputTail;
            this._outputTail = i + 1;
            cArr[i] = '}';
        }
        this._writeContext = this._writeContext.clearAndGetParent();
    }

    public final void writeFieldName(String str) {
        boolean z = true;
        int writeFieldName = this._writeContext.writeFieldName(str);
        if (writeFieldName == 4) {
            _reportError("Can not write a field name, expecting a value");
        }
        if (writeFieldName != 1) {
            z = false;
        }
        _writeFieldName(str, z);
    }

    public final void writeNull() {
        _verifyValueWrite("write a null");
        _writeNull();
    }

    public final void writeNumber(double d) {
        if (this._cfgNumbersAsStrings || (isEnabled(JsonGenerator.Feature.QUOTE_NON_NUMERIC_NUMBERS) && (Double.isNaN(d) || Double.isInfinite(d)))) {
            writeString(String.valueOf(d));
            return;
        }
        _verifyValueWrite("write a number");
        writeRaw(String.valueOf(d));
    }

    public final void writeNumber(long j) {
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

    public final void writeRaw(char c) {
        if (this._outputTail >= this._outputEnd) {
            _flushBuffer();
        }
        char[] cArr = this._outputBuffer;
        int i = this._outputTail;
        this._outputTail = i + 1;
        cArr[i] = c;
    }

    public final void writeRaw(SerializableString serializableString) {
        writeRaw(serializableString.getValue());
    }

    public final void writeRaw(String str) {
        int length = str.length();
        int i = this._outputEnd - this._outputTail;
        if (i == 0) {
            _flushBuffer();
            i = this._outputEnd - this._outputTail;
        }
        if (i >= length) {
            str.getChars(0, length, this._outputBuffer, this._outputTail);
            this._outputTail += length;
            return;
        }
        writeRawLong(str);
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
        char[] cArr = this._outputBuffer;
        int i = this._outputTail;
        this._outputTail = i + 1;
        cArr[i] = '[';
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
        char[] cArr = this._outputBuffer;
        int i = this._outputTail;
        this._outputTail = i + 1;
        cArr[i] = '{';
    }

    public final void writeString(String str) {
        _verifyValueWrite("write a string");
        if (str == null) {
            _writeNull();
            return;
        }
        if (this._outputTail >= this._outputEnd) {
            _flushBuffer();
        }
        char[] cArr = this._outputBuffer;
        int i = this._outputTail;
        this._outputTail = i + 1;
        cArr[i] = TokenParser.DQUOTE;
        _writeString(str);
        if (this._outputTail >= this._outputEnd) {
            _flushBuffer();
        }
        char[] cArr2 = this._outputBuffer;
        int i2 = this._outputTail;
        this._outputTail = i2 + 1;
        cArr2[i2] = TokenParser.DQUOTE;
    }
}
