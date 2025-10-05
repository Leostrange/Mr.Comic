package com.fasterxml.jackson.core.json;

import com.fasterxml.jackson.core.JsonLocation;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import com.fasterxml.jackson.core.ObjectCodec;
import com.fasterxml.jackson.core.base.ParserBase;
import com.fasterxml.jackson.core.io.CharTypes;
import com.fasterxml.jackson.core.io.IOContext;
import com.fasterxml.jackson.core.sym.CharsToNameCanonicalizer;
import com.fasterxml.jackson.core.util.TextBuffer;
import java.io.IOException;
import java.io.Reader;
import org.apache.http.message.TokenParser;

public class ReaderBasedJsonParser extends ParserBase {
    protected static final int[] _icLatin1 = CharTypes.getInputCodeLatin1();
    protected boolean _bufferRecyclable;
    protected final int _hashSeed;
    protected char[] _inputBuffer;
    protected int _nameStartCol;
    protected long _nameStartOffset;
    protected int _nameStartRow;
    protected ObjectCodec _objectCodec;
    protected Reader _reader;
    protected final CharsToNameCanonicalizer _symbols;
    protected boolean _tokenIncomplete;

    public ReaderBasedJsonParser(IOContext iOContext, int i, Reader reader, ObjectCodec objectCodec, CharsToNameCanonicalizer charsToNameCanonicalizer) {
        super(iOContext, i);
        this._reader = reader;
        this._inputBuffer = iOContext.allocTokenBuffer();
        this._inputPtr = 0;
        this._inputEnd = 0;
        this._objectCodec = objectCodec;
        this._symbols = charsToNameCanonicalizer;
        this._hashSeed = charsToNameCanonicalizer.hashSeed();
        this._bufferRecyclable = true;
    }

    public ReaderBasedJsonParser(IOContext iOContext, int i, Reader reader, ObjectCodec objectCodec, CharsToNameCanonicalizer charsToNameCanonicalizer, char[] cArr, int i2, int i3, boolean z) {
        super(iOContext, i);
        this._reader = reader;
        this._inputBuffer = cArr;
        this._inputPtr = i2;
        this._inputEnd = i3;
        this._objectCodec = objectCodec;
        this._symbols = charsToNameCanonicalizer;
        this._hashSeed = charsToNameCanonicalizer.hashSeed();
        this._bufferRecyclable = z;
    }

    private String _handleOddName2(int i, int i2, int[] iArr) {
        this._textBuffer.resetWithShared(this._inputBuffer, i, this._inputPtr - i);
        char[] currentSegment = this._textBuffer.getCurrentSegment();
        int currentSegmentSize = this._textBuffer.getCurrentSegmentSize();
        int length = iArr.length;
        while (true) {
            if (this._inputPtr >= this._inputEnd && !loadMore()) {
                break;
            }
            char c = this._inputBuffer[this._inputPtr];
            if (c > length) {
                if (!Character.isJavaIdentifierPart(c)) {
                    break;
                }
            } else if (iArr[c] != 0) {
                break;
            }
            this._inputPtr++;
            i2 = (i2 * 33) + c;
            int i3 = currentSegmentSize + 1;
            currentSegment[currentSegmentSize] = c;
            if (i3 >= currentSegment.length) {
                currentSegment = this._textBuffer.finishCurrentSegment();
                currentSegmentSize = 0;
            } else {
                currentSegmentSize = i3;
            }
        }
        this._textBuffer.setCurrentLength(currentSegmentSize);
        TextBuffer textBuffer = this._textBuffer;
        return this._symbols.findSymbol(textBuffer.getTextBuffer(), textBuffer.getTextOffset(), textBuffer.size(), i2);
    }

    /* JADX WARNING: Code restructure failed: missing block: B:10:0x0028, code lost:
        r0 = r0 + 1;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private final void _matchFalse() {
        /*
            r4 = this;
            int r0 = r4._inputPtr
            int r1 = r0 + 4
            int r2 = r4._inputEnd
            if (r1 >= r2) goto L_0x003b
            char[] r1 = r4._inputBuffer
            char r2 = r1[r0]
            r3 = 97
            if (r2 != r3) goto L_0x003b
            int r0 = r0 + 1
            char r2 = r1[r0]
            r3 = 108(0x6c, float:1.51E-43)
            if (r2 != r3) goto L_0x003b
            int r0 = r0 + 1
            char r2 = r1[r0]
            r3 = 115(0x73, float:1.61E-43)
            if (r2 != r3) goto L_0x003b
            int r0 = r0 + 1
            char r2 = r1[r0]
            r3 = 101(0x65, float:1.42E-43)
            if (r2 != r3) goto L_0x003b
            int r0 = r0 + 1
            char r1 = r1[r0]
            r2 = 48
            if (r1 < r2) goto L_0x0038
            r2 = 93
            if (r1 == r2) goto L_0x0038
            r2 = 125(0x7d, float:1.75E-43)
            if (r1 != r2) goto L_0x003b
        L_0x0038:
            r4._inputPtr = r0
        L_0x003a:
            return
        L_0x003b:
            java.lang.String r0 = "false"
            r1 = 1
            r4._matchToken(r0, r1)
            goto L_0x003a
        */
        throw new UnsupportedOperationException("Method not decompiled: com.fasterxml.jackson.core.json.ReaderBasedJsonParser._matchFalse():void");
    }

    /* JADX WARNING: Code restructure failed: missing block: B:8:0x001e, code lost:
        r0 = r0 + 1;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private final void _matchNull() {
        /*
            r5 = this;
            r4 = 108(0x6c, float:1.51E-43)
            int r0 = r5._inputPtr
            int r1 = r0 + 3
            int r2 = r5._inputEnd
            if (r1 >= r2) goto L_0x0031
            char[] r1 = r5._inputBuffer
            char r2 = r1[r0]
            r3 = 117(0x75, float:1.64E-43)
            if (r2 != r3) goto L_0x0031
            int r0 = r0 + 1
            char r2 = r1[r0]
            if (r2 != r4) goto L_0x0031
            int r0 = r0 + 1
            char r2 = r1[r0]
            if (r2 != r4) goto L_0x0031
            int r0 = r0 + 1
            char r1 = r1[r0]
            r2 = 48
            if (r1 < r2) goto L_0x002e
            r2 = 93
            if (r1 == r2) goto L_0x002e
            r2 = 125(0x7d, float:1.75E-43)
            if (r1 != r2) goto L_0x0031
        L_0x002e:
            r5._inputPtr = r0
        L_0x0030:
            return
        L_0x0031:
            java.lang.String r0 = "null"
            r1 = 1
            r5._matchToken(r0, r1)
            goto L_0x0030
        */
        throw new UnsupportedOperationException("Method not decompiled: com.fasterxml.jackson.core.json.ReaderBasedJsonParser._matchNull():void");
    }

    /* JADX WARNING: Code restructure failed: missing block: B:8:0x0020, code lost:
        r0 = r0 + 1;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private final void _matchTrue() {
        /*
            r4 = this;
            int r0 = r4._inputPtr
            int r1 = r0 + 3
            int r2 = r4._inputEnd
            if (r1 >= r2) goto L_0x0033
            char[] r1 = r4._inputBuffer
            char r2 = r1[r0]
            r3 = 114(0x72, float:1.6E-43)
            if (r2 != r3) goto L_0x0033
            int r0 = r0 + 1
            char r2 = r1[r0]
            r3 = 117(0x75, float:1.64E-43)
            if (r2 != r3) goto L_0x0033
            int r0 = r0 + 1
            char r2 = r1[r0]
            r3 = 101(0x65, float:1.42E-43)
            if (r2 != r3) goto L_0x0033
            int r0 = r0 + 1
            char r1 = r1[r0]
            r2 = 48
            if (r1 < r2) goto L_0x0030
            r2 = 93
            if (r1 == r2) goto L_0x0030
            r2 = 125(0x7d, float:1.75E-43)
            if (r1 != r2) goto L_0x0033
        L_0x0030:
            r4._inputPtr = r0
        L_0x0032:
            return
        L_0x0033:
            java.lang.String r0 = "true"
            r1 = 1
            r4._matchToken(r0, r1)
            goto L_0x0032
        */
        throw new UnsupportedOperationException("Method not decompiled: com.fasterxml.jackson.core.json.ReaderBasedJsonParser._matchTrue():void");
    }

    private final JsonToken _nextAfterName() {
        this._nameCopied = false;
        JsonToken jsonToken = this._nextToken;
        this._nextToken = null;
        if (jsonToken == JsonToken.START_ARRAY) {
            this._parsingContext = this._parsingContext.createChildArrayContext(this._tokenInputRow, this._tokenInputCol);
        } else if (jsonToken == JsonToken.START_OBJECT) {
            this._parsingContext = this._parsingContext.createChildObjectContext(this._tokenInputRow, this._tokenInputCol);
        }
        this._currToken = jsonToken;
        return jsonToken;
    }

    /* JADX WARNING: Code restructure failed: missing block: B:15:0x0031, code lost:
        if (r2 == 69) goto L_0x0033;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private final com.fasterxml.jackson.core.JsonToken _parseFloat(int r10, int r11, int r12, boolean r13, int r14) {
        /*
            r9 = this;
            r7 = 57
            r6 = 48
            r0 = 0
            int r4 = r9._inputEnd
            r1 = 46
            if (r10 != r1) goto L_0x009a
            r1 = r0
            r2 = r12
        L_0x000d:
            if (r2 < r4) goto L_0x0014
            com.fasterxml.jackson.core.JsonToken r0 = r9._parseNumber2(r13, r11)
        L_0x0013:
            return r0
        L_0x0014:
            char[] r3 = r9._inputBuffer
            int r12 = r2 + 1
            char r2 = r3[r2]
            if (r2 < r6) goto L_0x0022
            if (r2 > r7) goto L_0x0022
            int r1 = r1 + 1
            r2 = r12
            goto L_0x000d
        L_0x0022:
            if (r1 != 0) goto L_0x0029
            java.lang.String r3 = "Decimal point not followed by a digit"
            r9.reportUnexpectedNumberChar(r2, r3)
        L_0x0029:
            r3 = r1
            r1 = r12
        L_0x002b:
            r5 = 101(0x65, float:1.42E-43)
            if (r2 == r5) goto L_0x0033
            r5 = 69
            if (r2 != r5) goto L_0x0079
        L_0x0033:
            if (r1 < r4) goto L_0x003c
            r9._inputPtr = r11
            com.fasterxml.jackson.core.JsonToken r0 = r9._parseNumber2(r13, r11)
            goto L_0x0013
        L_0x003c:
            char[] r5 = r9._inputBuffer
            int r2 = r1 + 1
            char r1 = r5[r1]
            r5 = 45
            if (r1 == r5) goto L_0x004a
            r5 = 43
            if (r1 != r5) goto L_0x0096
        L_0x004a:
            if (r2 < r4) goto L_0x0053
            r9._inputPtr = r11
            com.fasterxml.jackson.core.JsonToken r0 = r9._parseNumber2(r13, r11)
            goto L_0x0013
        L_0x0053:
            char[] r5 = r9._inputBuffer
            int r1 = r2 + 1
            char r2 = r5[r2]
        L_0x0059:
            if (r2 > r7) goto L_0x0072
            if (r2 < r6) goto L_0x0072
            int r0 = r0 + 1
            if (r1 < r4) goto L_0x0068
            r9._inputPtr = r11
            com.fasterxml.jackson.core.JsonToken r0 = r9._parseNumber2(r13, r11)
            goto L_0x0013
        L_0x0068:
            char[] r5 = r9._inputBuffer
            int r2 = r1 + 1
            char r1 = r5[r1]
            r8 = r2
            r2 = r1
            r1 = r8
            goto L_0x0059
        L_0x0072:
            if (r0 != 0) goto L_0x0079
            java.lang.String r4 = "Exponent indicator not followed by a digit"
            r9.reportUnexpectedNumberChar(r2, r4)
        L_0x0079:
            int r1 = r1 + -1
            r9._inputPtr = r1
            com.fasterxml.jackson.core.json.JsonReadContext r4 = r9._parsingContext
            boolean r4 = r4.inRoot()
            if (r4 == 0) goto L_0x0088
            r9._verifyRootSpace(r2)
        L_0x0088:
            int r1 = r1 - r11
            com.fasterxml.jackson.core.util.TextBuffer r2 = r9._textBuffer
            char[] r4 = r9._inputBuffer
            r2.resetWithShared(r4, r11, r1)
            com.fasterxml.jackson.core.JsonToken r0 = r9.resetFloat(r13, r14, r3, r0)
            goto L_0x0013
        L_0x0096:
            r8 = r2
            r2 = r1
            r1 = r8
            goto L_0x0059
        L_0x009a:
            r3 = r0
            r1 = r12
            r2 = r10
            goto L_0x002b
        */
        throw new UnsupportedOperationException("Method not decompiled: com.fasterxml.jackson.core.json.ReaderBasedJsonParser._parseFloat(int, int, int, boolean, int):com.fasterxml.jackson.core.JsonToken");
    }

    private String _parseName2(int i, int i2, int i3) {
        this._textBuffer.resetWithShared(this._inputBuffer, i, this._inputPtr - i);
        char[] currentSegment = this._textBuffer.getCurrentSegment();
        int currentSegmentSize = this._textBuffer.getCurrentSegmentSize();
        while (true) {
            if (this._inputPtr >= this._inputEnd && !loadMore()) {
                _reportInvalidEOF(": was expecting closing '" + ((char) i3) + "' for name");
            }
            char[] cArr = this._inputBuffer;
            int i4 = this._inputPtr;
            this._inputPtr = i4 + 1;
            char c = cArr[i4];
            if (c <= '\\') {
                if (c == '\\') {
                    c = _decodeEscaped();
                } else if (c <= i3) {
                    if (c == i3) {
                        this._textBuffer.setCurrentLength(currentSegmentSize);
                        TextBuffer textBuffer = this._textBuffer;
                        return this._symbols.findSymbol(textBuffer.getTextBuffer(), textBuffer.getTextOffset(), textBuffer.size(), i2);
                    } else if (c < ' ') {
                        _throwUnquotedSpace(c, "name");
                    }
                }
            }
            i2 = (i2 * 33) + c;
            int i5 = currentSegmentSize + 1;
            currentSegment[currentSegmentSize] = c;
            if (i5 >= currentSegment.length) {
                currentSegment = this._textBuffer.finishCurrentSegment();
                currentSegmentSize = 0;
            } else {
                currentSegmentSize = i5;
            }
        }
    }

    /* JADX WARNING: Removed duplicated region for block: B:64:0x00f1  */
    /* JADX WARNING: Removed duplicated region for block: B:73:0x0113  */
    /* JADX WARNING: Removed duplicated region for block: B:91:0x017c  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private final com.fasterxml.jackson.core.JsonToken _parseNumber2(boolean r11, int r12) {
        /*
            r10 = this;
            if (r11 == 0) goto L_0x0004
            int r12 = r12 + 1
        L_0x0004:
            r10._inputPtr = r12
            com.fasterxml.jackson.core.util.TextBuffer r0 = r10._textBuffer
            char[] r2 = r0.emptyAndGetCurrentSegment()
            r0 = 0
            if (r11 == 0) goto L_0x0015
            r1 = 0
            r0 = 1
            r3 = 45
            r2[r1] = r3
        L_0x0015:
            r3 = 0
            int r1 = r10._inputPtr
            int r4 = r10._inputEnd
            if (r1 >= r4) goto L_0x0062
            char[] r1 = r10._inputBuffer
            int r4 = r10._inputPtr
            int r5 = r4 + 1
            r10._inputPtr = r5
            char r1 = r1[r4]
        L_0x0026:
            r4 = 48
            if (r1 != r4) goto L_0x002e
            char r1 = r10._verifyNoLeadingZeroes()
        L_0x002e:
            r5 = 0
            r9 = r1
            r1 = r2
            r2 = r9
        L_0x0032:
            r4 = 48
            if (r2 < r4) goto L_0x019a
            r4 = 57
            if (r2 > r4) goto L_0x019a
            int r3 = r3 + 1
            int r4 = r1.length
            if (r0 < r4) goto L_0x0046
            com.fasterxml.jackson.core.util.TextBuffer r0 = r10._textBuffer
            char[] r1 = r0.finishCurrentSegment()
            r0 = 0
        L_0x0046:
            int r4 = r0 + 1
            r1[r0] = r2
            int r0 = r10._inputPtr
            int r2 = r10._inputEnd
            if (r0 < r2) goto L_0x0069
            boolean r0 = r10.loadMore()
            if (r0 != 0) goto L_0x0069
            r0 = 0
            r5 = 1
            r7 = r3
            r3 = r1
            r1 = r0
        L_0x005b:
            if (r7 != 0) goto L_0x0075
            com.fasterxml.jackson.core.JsonToken r0 = r10._handleInvalidNumberStart(r1, r11)
        L_0x0061:
            return r0
        L_0x0062:
            java.lang.String r1 = "No digit following minus sign"
            char r1 = r10.getNextChar(r1)
            goto L_0x0026
        L_0x0069:
            char[] r0 = r10._inputBuffer
            int r2 = r10._inputPtr
            int r6 = r2 + 1
            r10._inputPtr = r6
            char r2 = r0[r2]
            r0 = r4
            goto L_0x0032
        L_0x0075:
            r0 = 0
            r2 = 46
            if (r1 != r2) goto L_0x0193
            int r2 = r4 + 1
            r3[r4] = r1
        L_0x007e:
            int r4 = r10._inputPtr
            int r6 = r10._inputEnd
            if (r4 < r6) goto L_0x0138
            boolean r4 = r10.loadMore()
            if (r4 != 0) goto L_0x0138
            r5 = 1
            r4 = r5
            r5 = r1
        L_0x008d:
            if (r0 != 0) goto L_0x0094
            java.lang.String r1 = "Decimal point not followed by a digit"
            r10.reportUnexpectedNumberChar(r5, r1)
        L_0x0094:
            r6 = r0
            r1 = r3
            r0 = r2
        L_0x0097:
            r3 = 0
            r2 = 101(0x65, float:1.42E-43)
            if (r5 == r2) goto L_0x00a0
            r2 = 69
            if (r5 != r2) goto L_0x0189
        L_0x00a0:
            int r2 = r1.length
            if (r0 < r2) goto L_0x00aa
            com.fasterxml.jackson.core.util.TextBuffer r0 = r10._textBuffer
            char[] r1 = r0.finishCurrentSegment()
            r0 = 0
        L_0x00aa:
            int r2 = r0 + 1
            r1[r0] = r5
            int r0 = r10._inputPtr
            int r5 = r10._inputEnd
            if (r0 >= r5) goto L_0x015d
            char[] r0 = r10._inputBuffer
            int r5 = r10._inputPtr
            int r8 = r5 + 1
            r10._inputPtr = r8
            char r5 = r0[r5]
        L_0x00be:
            r0 = 45
            if (r5 == r0) goto L_0x00c6
            r0 = 43
            if (r5 != r0) goto L_0x0183
        L_0x00c6:
            int r0 = r1.length
            if (r2 < r0) goto L_0x0180
            com.fasterxml.jackson.core.util.TextBuffer r0 = r10._textBuffer
            char[] r1 = r0.finishCurrentSegment()
            r0 = 0
        L_0x00d0:
            int r2 = r0 + 1
            r1[r0] = r5
            int r0 = r10._inputPtr
            int r5 = r10._inputEnd
            if (r0 >= r5) goto L_0x0165
            char[] r0 = r10._inputBuffer
            int r5 = r10._inputPtr
            int r8 = r5 + 1
            r10._inputPtr = r8
            char r0 = r0[r5]
            r9 = r3
            r3 = r1
            r1 = r9
        L_0x00e7:
            r5 = r0
            r0 = r2
        L_0x00e9:
            r2 = 57
            if (r5 > r2) goto L_0x017c
            r2 = 48
            if (r5 < r2) goto L_0x017c
            int r1 = r1 + 1
            int r2 = r3.length
            if (r0 < r2) goto L_0x00fd
            com.fasterxml.jackson.core.util.TextBuffer r0 = r10._textBuffer
            char[] r3 = r0.finishCurrentSegment()
            r0 = 0
        L_0x00fd:
            int r2 = r0 + 1
            r3[r0] = r5
            int r0 = r10._inputPtr
            int r8 = r10._inputEnd
            if (r0 < r8) goto L_0x0170
            boolean r0 = r10.loadMore()
            if (r0 != 0) goto L_0x0170
            r4 = 1
            r3 = r1
            r0 = r4
            r1 = r2
        L_0x0111:
            if (r3 != 0) goto L_0x0118
            java.lang.String r2 = "Exponent indicator not followed by a digit"
            r10.reportUnexpectedNumberChar(r5, r2)
        L_0x0118:
            r2 = r1
            r1 = r5
        L_0x011a:
            if (r0 != 0) goto L_0x012d
            int r0 = r10._inputPtr
            int r0 = r0 + -1
            r10._inputPtr = r0
            com.fasterxml.jackson.core.json.JsonReadContext r0 = r10._parsingContext
            boolean r0 = r0.inRoot()
            if (r0 == 0) goto L_0x012d
            r10._verifyRootSpace(r1)
        L_0x012d:
            com.fasterxml.jackson.core.util.TextBuffer r0 = r10._textBuffer
            r0.setCurrentLength(r2)
            com.fasterxml.jackson.core.JsonToken r0 = r10.reset(r11, r7, r6, r3)
            goto L_0x0061
        L_0x0138:
            char[] r1 = r10._inputBuffer
            int r4 = r10._inputPtr
            int r6 = r4 + 1
            r10._inputPtr = r6
            char r1 = r1[r4]
            r4 = 48
            if (r1 < r4) goto L_0x018f
            r4 = 57
            if (r1 > r4) goto L_0x018f
            int r0 = r0 + 1
            int r4 = r3.length
            if (r2 < r4) goto L_0x018d
            com.fasterxml.jackson.core.util.TextBuffer r2 = r10._textBuffer
            char[] r3 = r2.finishCurrentSegment()
            r2 = 0
            r4 = r2
        L_0x0157:
            int r2 = r4 + 1
            r3[r4] = r1
            goto L_0x007e
        L_0x015d:
            java.lang.String r0 = "expected a digit for number exponent"
            char r5 = r10.getNextChar(r0)
            goto L_0x00be
        L_0x0165:
            java.lang.String r0 = "expected a digit for number exponent"
            char r0 = r10.getNextChar(r0)
            r9 = r3
            r3 = r1
            r1 = r9
            goto L_0x00e7
        L_0x0170:
            char[] r0 = r10._inputBuffer
            int r5 = r10._inputPtr
            int r8 = r5 + 1
            r10._inputPtr = r8
            char r0 = r0[r5]
            goto L_0x00e7
        L_0x017c:
            r3 = r1
            r1 = r0
            r0 = r4
            goto L_0x0111
        L_0x0180:
            r0 = r2
            goto L_0x00d0
        L_0x0183:
            r0 = r2
            r9 = r3
            r3 = r1
            r1 = r9
            goto L_0x00e9
        L_0x0189:
            r1 = r5
            r2 = r0
            r0 = r4
            goto L_0x011a
        L_0x018d:
            r4 = r2
            goto L_0x0157
        L_0x018f:
            r4 = r5
            r5 = r1
            goto L_0x008d
        L_0x0193:
            r6 = r0
            r0 = r4
            r4 = r5
            r5 = r1
            r1 = r3
            goto L_0x0097
        L_0x019a:
            r7 = r3
            r4 = r0
            r3 = r1
            r1 = r2
            goto L_0x005b
        */
        throw new UnsupportedOperationException("Method not decompiled: com.fasterxml.jackson.core.json.ReaderBasedJsonParser._parseNumber2(boolean, int):com.fasterxml.jackson.core.JsonToken");
    }

    private final int _skipAfterComma2() {
        char c;
        while (true) {
            if (this._inputPtr < this._inputEnd || loadMore()) {
                char[] cArr = this._inputBuffer;
                int i = this._inputPtr;
                this._inputPtr = i + 1;
                c = cArr[i];
                if (c > ' ') {
                    if (c == '/') {
                        _skipComment();
                    } else if (c != '#' || !_skipYAMLComment()) {
                        return c;
                    }
                } else if (c < ' ') {
                    if (c == 10) {
                        this._currInputRow++;
                        this._currInputRowStart = this._inputPtr;
                    } else if (c == 13) {
                        _skipCR();
                    } else if (c != 9) {
                        _throwInvalidSpace(c);
                    }
                }
            } else {
                throw _constructError("Unexpected end-of-input within/between " + this._parsingContext.getTypeDesc() + " entries");
            }
        }
        return c;
    }

    private void _skipCComment() {
        while (true) {
            if (this._inputPtr >= this._inputEnd && !loadMore()) {
                break;
            }
            char[] cArr = this._inputBuffer;
            int i = this._inputPtr;
            this._inputPtr = i + 1;
            char c = cArr[i];
            if (c <= '*') {
                if (c == '*') {
                    if (this._inputPtr >= this._inputEnd && !loadMore()) {
                        break;
                    } else if (this._inputBuffer[this._inputPtr] == '/') {
                        this._inputPtr++;
                        return;
                    }
                } else if (c < ' ') {
                    if (c == 10) {
                        this._currInputRow++;
                        this._currInputRowStart = this._inputPtr;
                    } else if (c == 13) {
                        _skipCR();
                    } else if (c != 9) {
                        _throwInvalidSpace(c);
                    }
                }
            }
        }
        _reportInvalidEOF(" in a comment");
    }

    private final int _skipColon() {
        if (this._inputPtr + 4 >= this._inputEnd) {
            return _skipColon2(false);
        }
        char c = this._inputBuffer[this._inputPtr];
        if (c == ':') {
            char[] cArr = this._inputBuffer;
            int i = this._inputPtr + 1;
            this._inputPtr = i;
            char c2 = cArr[i];
            if (c2 <= ' ') {
                if (c2 == ' ' || c2 == 9) {
                    char[] cArr2 = this._inputBuffer;
                    int i2 = this._inputPtr + 1;
                    this._inputPtr = i2;
                    char c3 = cArr2[i2];
                    if (c3 > ' ') {
                        if (c3 == '/' || c3 == '#') {
                            return _skipColon2(true);
                        }
                        this._inputPtr++;
                        return c3;
                    }
                }
                return _skipColon2(true);
            } else if (c2 == '/' || c2 == '#') {
                return _skipColon2(true);
            } else {
                this._inputPtr++;
                return c2;
            }
        } else {
            if (c == ' ' || c == 9) {
                char[] cArr3 = this._inputBuffer;
                int i3 = this._inputPtr + 1;
                this._inputPtr = i3;
                c = cArr3[i3];
            }
            if (c != ':') {
                return _skipColon2(false);
            }
            char[] cArr4 = this._inputBuffer;
            int i4 = this._inputPtr + 1;
            this._inputPtr = i4;
            char c4 = cArr4[i4];
            if (c4 <= ' ') {
                if (c4 == ' ' || c4 == 9) {
                    char[] cArr5 = this._inputBuffer;
                    int i5 = this._inputPtr + 1;
                    this._inputPtr = i5;
                    char c5 = cArr5[i5];
                    if (c5 > ' ') {
                        if (c5 == '/' || c5 == '#') {
                            return _skipColon2(true);
                        }
                        this._inputPtr++;
                        return c5;
                    }
                }
                return _skipColon2(true);
            } else if (c4 == '/' || c4 == '#') {
                return _skipColon2(true);
            } else {
                this._inputPtr++;
                return c4;
            }
        }
    }

    private final int _skipColon2(boolean z) {
        while (true) {
            if (this._inputPtr >= this._inputEnd) {
                loadMoreGuaranteed();
            }
            char[] cArr = this._inputBuffer;
            int i = this._inputPtr;
            this._inputPtr = i + 1;
            char c = cArr[i];
            if (c > ' ') {
                if (c == '/') {
                    _skipComment();
                } else if (c != '#' || !_skipYAMLComment()) {
                    if (z) {
                        return c;
                    }
                    if (c != ':') {
                        if (c < ' ') {
                            _throwInvalidSpace(c);
                        }
                        _reportUnexpectedChar(c, "was expecting a colon to separate field name and value");
                    }
                    z = true;
                }
            } else if (c < ' ') {
                if (c == 10) {
                    this._currInputRow++;
                    this._currInputRowStart = this._inputPtr;
                } else if (c == 13) {
                    _skipCR();
                } else if (c != 9) {
                    _throwInvalidSpace(c);
                }
            }
        }
    }

    private final int _skipComma(int i) {
        if (i != 44) {
            _reportUnexpectedChar(i, "was expecting comma to separate " + this._parsingContext.getTypeDesc() + " entries");
        }
        while (this._inputPtr < this._inputEnd) {
            char[] cArr = this._inputBuffer;
            int i2 = this._inputPtr;
            this._inputPtr = i2 + 1;
            char c = cArr[i2];
            if (c > ' ') {
                if (c != '/' && c != '#') {
                    return c;
                }
                this._inputPtr--;
                return _skipAfterComma2();
            } else if (c < ' ') {
                if (c == 10) {
                    this._currInputRow++;
                    this._currInputRowStart = this._inputPtr;
                } else if (c == 13) {
                    _skipCR();
                } else if (c != 9) {
                    _throwInvalidSpace(c);
                }
            }
        }
        return _skipAfterComma2();
    }

    private void _skipComment() {
        if (!isEnabled(JsonParser.Feature.ALLOW_COMMENTS)) {
            _reportUnexpectedChar(47, "maybe a (non-standard) comment? (not recognized as one since Feature 'ALLOW_COMMENTS' not enabled for parser)");
        }
        if (this._inputPtr >= this._inputEnd && !loadMore()) {
            _reportInvalidEOF(" in a comment");
        }
        char[] cArr = this._inputBuffer;
        int i = this._inputPtr;
        this._inputPtr = i + 1;
        char c = cArr[i];
        if (c == '/') {
            _skipLine();
        } else if (c == '*') {
            _skipCComment();
        } else {
            _reportUnexpectedChar(c, "was expecting either '*' or '/' for a comment");
        }
    }

    private void _skipLine() {
        while (true) {
            if (this._inputPtr < this._inputEnd || loadMore()) {
                char[] cArr = this._inputBuffer;
                int i = this._inputPtr;
                this._inputPtr = i + 1;
                char c = cArr[i];
                if (c < ' ') {
                    if (c == 10) {
                        this._currInputRow++;
                        this._currInputRowStart = this._inputPtr;
                        return;
                    } else if (c == 13) {
                        _skipCR();
                        return;
                    } else if (c != 9) {
                        _throwInvalidSpace(c);
                    }
                }
            } else {
                return;
            }
        }
    }

    private final int _skipWSOrEnd() {
        if (this._inputPtr >= this._inputEnd && !loadMore()) {
            return _eofAsNextChar();
        }
        char[] cArr = this._inputBuffer;
        int i = this._inputPtr;
        this._inputPtr = i + 1;
        char c = cArr[i];
        if (c <= ' ') {
            if (c != ' ') {
                if (c == 10) {
                    this._currInputRow++;
                    this._currInputRowStart = this._inputPtr;
                } else if (c == 13) {
                    _skipCR();
                } else if (c != 9) {
                    _throwInvalidSpace(c);
                }
            }
            while (this._inputPtr < this._inputEnd) {
                char[] cArr2 = this._inputBuffer;
                int i2 = this._inputPtr;
                this._inputPtr = i2 + 1;
                char c2 = cArr2[i2];
                if (c2 > ' ') {
                    if (c2 != '/' && c2 != '#') {
                        return c2;
                    }
                    this._inputPtr--;
                    return _skipWSOrEnd2();
                } else if (c2 != ' ') {
                    if (c2 == 10) {
                        this._currInputRow++;
                        this._currInputRowStart = this._inputPtr;
                    } else if (c2 == 13) {
                        _skipCR();
                    } else if (c2 != 9) {
                        _throwInvalidSpace(c2);
                    }
                }
            }
            return _skipWSOrEnd2();
        } else if (c != '/' && c != '#') {
            return c;
        } else {
            this._inputPtr--;
            return _skipWSOrEnd2();
        }
    }

    private int _skipWSOrEnd2() {
        while (true) {
            if (this._inputPtr >= this._inputEnd && !loadMore()) {
                return _eofAsNextChar();
            }
            char[] cArr = this._inputBuffer;
            int i = this._inputPtr;
            this._inputPtr = i + 1;
            char c = cArr[i];
            if (c > ' ') {
                if (c == '/') {
                    _skipComment();
                } else if (c != '#' || !_skipYAMLComment()) {
                    return c;
                }
            } else if (c != ' ') {
                if (c == 10) {
                    this._currInputRow++;
                    this._currInputRowStart = this._inputPtr;
                } else if (c == 13) {
                    _skipCR();
                } else if (c != 9) {
                    _throwInvalidSpace(c);
                }
            }
        }
    }

    private boolean _skipYAMLComment() {
        if (!isEnabled(JsonParser.Feature.ALLOW_YAML_COMMENTS)) {
            return false;
        }
        _skipLine();
        return true;
    }

    private final void _updateLocation() {
        int i = this._inputPtr;
        this._tokenInputTotal = this._currInputProcessed + ((long) i);
        this._tokenInputRow = this._currInputRow;
        this._tokenInputCol = i - this._currInputRowStart;
    }

    private final void _updateNameLocation() {
        int i = this._inputPtr;
        this._nameStartOffset = (long) i;
        this._nameStartRow = this._currInputRow;
        this._nameStartCol = i - this._currInputRowStart;
    }

    private char _verifyNLZ2() {
        if (this._inputPtr >= this._inputEnd && !loadMore()) {
            return '0';
        }
        char c = this._inputBuffer[this._inputPtr];
        if (c < '0' || c > '9') {
            return '0';
        }
        if (!isEnabled(JsonParser.Feature.ALLOW_NUMERIC_LEADING_ZEROS)) {
            reportInvalidNumber("Leading zeroes not allowed");
        }
        this._inputPtr++;
        if (c != '0') {
            return c;
        }
        do {
            if (this._inputPtr >= this._inputEnd && !loadMore()) {
                return c;
            }
            c = this._inputBuffer[this._inputPtr];
            if (c < '0' || c > '9') {
                return '0';
            }
            this._inputPtr++;
        } while (c == '0');
        return c;
    }

    private final char _verifyNoLeadingZeroes() {
        char c;
        if (this._inputPtr >= this._inputEnd || ((c = this._inputBuffer[this._inputPtr]) >= '0' && c <= '9')) {
            return _verifyNLZ2();
        }
        return '0';
    }

    private final void _verifyRootSpace(int i) {
        this._inputPtr++;
        switch (i) {
            case 9:
            case 32:
                return;
            case 10:
                this._currInputRow++;
                this._currInputRowStart = this._inputPtr;
                return;
            case 13:
                _skipCR();
                return;
            default:
                _reportMissingRootWS(i);
                return;
        }
    }

    /* access modifiers changed from: protected */
    public void _closeInput() {
        if (this._reader != null) {
            if (this._ioContext.isResourceManaged() || isEnabled(JsonParser.Feature.AUTO_CLOSE_SOURCE)) {
                this._reader.close();
            }
            this._reader = null;
        }
    }

    /* access modifiers changed from: protected */
    public char _decodeEscaped() {
        int i = 0;
        if (this._inputPtr >= this._inputEnd && !loadMore()) {
            _reportInvalidEOF(" in character escape sequence");
        }
        char[] cArr = this._inputBuffer;
        int i2 = this._inputPtr;
        this._inputPtr = i2 + 1;
        char c = cArr[i2];
        switch (c) {
            case '\"':
            case '/':
            case '\\':
                return c;
            case 'b':
                return 8;
            case 'f':
                return 12;
            case 'n':
                return 10;
            case 'r':
                return TokenParser.CR;
            case 't':
                return 9;
            case 'u':
                for (int i3 = 0; i3 < 4; i3++) {
                    if (this._inputPtr >= this._inputEnd && !loadMore()) {
                        _reportInvalidEOF(" in character escape sequence");
                    }
                    char[] cArr2 = this._inputBuffer;
                    int i4 = this._inputPtr;
                    this._inputPtr = i4 + 1;
                    char c2 = cArr2[i4];
                    int charToHex = CharTypes.charToHex(c2);
                    if (charToHex < 0) {
                        _reportUnexpectedChar(c2, "expected a hex-digit for character escape sequence");
                    }
                    i = (i << 4) | charToHex;
                }
                return (char) i;
            default:
                return _handleUnrecognizedCharacterEscape(c);
        }
    }

    /* access modifiers changed from: protected */
    public final void _finishString() {
        int i = this._inputPtr;
        int i2 = this._inputEnd;
        if (i < i2) {
            int[] iArr = _icLatin1;
            int length = iArr.length;
            while (true) {
                char c = this._inputBuffer[i];
                if (c >= length || iArr[c] == 0) {
                    i++;
                    if (i >= i2) {
                        break;
                    }
                } else if (c == '\"') {
                    this._textBuffer.resetWithShared(this._inputBuffer, this._inputPtr, i - this._inputPtr);
                    this._inputPtr = i + 1;
                    return;
                }
            }
        }
        this._textBuffer.resetWithCopy(this._inputBuffer, this._inputPtr, i - this._inputPtr);
        this._inputPtr = i;
        _finishString2();
    }

    /* access modifiers changed from: protected */
    public void _finishString2() {
        char[] currentSegment = this._textBuffer.getCurrentSegment();
        int currentSegmentSize = this._textBuffer.getCurrentSegmentSize();
        int[] iArr = _icLatin1;
        int length = iArr.length;
        while (true) {
            if (this._inputPtr >= this._inputEnd && !loadMore()) {
                _reportInvalidEOF(": was expecting closing quote for a string value");
            }
            char[] cArr = this._inputBuffer;
            int i = this._inputPtr;
            this._inputPtr = i + 1;
            char c = cArr[i];
            if (c < length && iArr[c] != 0) {
                if (c == '\"') {
                    this._textBuffer.setCurrentLength(currentSegmentSize);
                    return;
                } else if (c == '\\') {
                    c = _decodeEscaped();
                } else if (c < ' ') {
                    _throwUnquotedSpace(c, "string value");
                }
            }
            if (currentSegmentSize >= currentSegment.length) {
                currentSegment = this._textBuffer.finishCurrentSegment();
                currentSegmentSize = 0;
            }
            int i2 = currentSegmentSize;
            currentSegmentSize = i2 + 1;
            currentSegment[i2] = c;
        }
    }

    /* access modifiers changed from: protected */
    public final String _getText2(JsonToken jsonToken) {
        if (jsonToken == null) {
            return null;
        }
        switch (jsonToken.id()) {
            case 5:
                return this._parsingContext.getCurrentName();
            case 6:
            case 7:
            case 8:
                return this._textBuffer.contentsAsString();
            default:
                return jsonToken.asString();
        }
    }

    /* access modifiers changed from: protected */
    public JsonToken _handleApos() {
        char[] emptyAndGetCurrentSegment = this._textBuffer.emptyAndGetCurrentSegment();
        int currentSegmentSize = this._textBuffer.getCurrentSegmentSize();
        while (true) {
            if (this._inputPtr >= this._inputEnd && !loadMore()) {
                _reportInvalidEOF(": was expecting closing quote for a string value");
            }
            char[] cArr = this._inputBuffer;
            int i = this._inputPtr;
            this._inputPtr = i + 1;
            char c = cArr[i];
            if (c <= '\\') {
                if (c == '\\') {
                    c = _decodeEscaped();
                } else if (c <= '\'') {
                    if (c == '\'') {
                        this._textBuffer.setCurrentLength(currentSegmentSize);
                        return JsonToken.VALUE_STRING;
                    } else if (c < ' ') {
                        _throwUnquotedSpace(c, "string value");
                    }
                }
            }
            if (currentSegmentSize >= emptyAndGetCurrentSegment.length) {
                emptyAndGetCurrentSegment = this._textBuffer.finishCurrentSegment();
                currentSegmentSize = 0;
            }
            int i2 = currentSegmentSize;
            currentSegmentSize = i2 + 1;
            emptyAndGetCurrentSegment[i2] = c;
        }
    }

    /*  JADX ERROR: JadxRuntimeException in pass: InitCodeVariables
        jadx.core.utils.exceptions.JadxRuntimeException: Several immutable types in one variable: [int, char], vars: [r9v0 ?, r9v1 ?, r9v2 ?]
        	at jadx.core.dex.visitors.InitCodeVariables.setCodeVarType(InitCodeVariables.java:102)
        	at jadx.core.dex.visitors.InitCodeVariables.setCodeVar(InitCodeVariables.java:78)
        	at jadx.core.dex.visitors.InitCodeVariables.initCodeVar(InitCodeVariables.java:69)
        	at jadx.core.dex.visitors.InitCodeVariables.initCodeVars(InitCodeVariables.java:48)
        	at jadx.core.dex.visitors.InitCodeVariables.visit(InitCodeVariables.java:32)
        */
    protected com.fasterxml.jackson.core.JsonToken _handleInvalidNumberStart(
/*
Method generation error in method: com.fasterxml.jackson.core.json.ReaderBasedJsonParser._handleInvalidNumberStart(int, boolean):com.fasterxml.jackson.core.JsonToken, dex: classes.dex
    jadx.core.utils.exceptions.JadxRuntimeException: Code variable not set in r9v0 ?
    	at jadx.core.dex.instructions.args.SSAVar.getCodeVar(SSAVar.java:189)
    	at jadx.core.codegen.MethodGen.addMethodArguments(MethodGen.java:157)
    	at jadx.core.codegen.MethodGen.addDefinition(MethodGen.java:129)
    	at jadx.core.codegen.ClassGen.addMethodCode(ClassGen.java:313)
    	at jadx.core.codegen.ClassGen.addMethod(ClassGen.java:271)
    	at jadx.core.codegen.ClassGen.lambda$addInnerClsAndMethods$2(ClassGen.java:240)
    	at java.util.stream.ForEachOps$ForEachOp$OfRef.accept(ForEachOps.java:183)
    	at java.util.ArrayList.forEach(ArrayList.java:1259)
    	at java.util.stream.SortedOps$RefSortingSink.end(SortedOps.java:395)
    	at java.util.stream.Sink$ChainedReference.end(Sink.java:258)
    	at java.util.stream.AbstractPipeline.copyInto(AbstractPipeline.java:483)
    	at java.util.stream.AbstractPipeline.wrapAndCopyInto(AbstractPipeline.java:472)
    	at java.util.stream.ForEachOps$ForEachOp.evaluateSequential(ForEachOps.java:150)
    	at java.util.stream.ForEachOps$ForEachOp$OfRef.evaluateSequential(ForEachOps.java:173)
    	at java.util.stream.AbstractPipeline.evaluate(AbstractPipeline.java:234)
    	at java.util.stream.ReferencePipeline.forEach(ReferencePipeline.java:485)
    	at jadx.core.codegen.ClassGen.addInnerClsAndMethods(ClassGen.java:236)
    	at jadx.core.codegen.ClassGen.addClassBody(ClassGen.java:227)
    	at jadx.core.codegen.ClassGen.addClassCode(ClassGen.java:112)
    	at jadx.core.codegen.ClassGen.makeClass(ClassGen.java:78)
    	at jadx.core.codegen.CodeGen.wrapCodeGen(CodeGen.java:44)
    	at jadx.core.codegen.CodeGen.generateJavaCode(CodeGen.java:33)
    	at jadx.core.codegen.CodeGen.generate(CodeGen.java:21)
    	at jadx.core.ProcessClass.generateCode(ProcessClass.java:61)
    	at jadx.core.dex.nodes.ClassNode.decompile(ClassNode.java:273)
    
*/

    /* access modifiers changed from: protected */
    public String _handleOddName(int i) {
        if (i == 39 && isEnabled(JsonParser.Feature.ALLOW_SINGLE_QUOTES)) {
            return _parseAposName();
        }
        if (!isEnabled(JsonParser.Feature.ALLOW_UNQUOTED_FIELD_NAMES)) {
            _reportUnexpectedChar(i, "was expecting double-quote to start field name");
        }
        int[] inputCodeLatin1JsNames = CharTypes.getInputCodeLatin1JsNames();
        int length = inputCodeLatin1JsNames.length;
        if (!(i < length ? inputCodeLatin1JsNames[i] == 0 : Character.isJavaIdentifierPart((char) i))) {
            _reportUnexpectedChar(i, "was expecting either valid name character (for unquoted name) or double-quote (for quoted) to start field name");
        }
        int i2 = this._inputPtr;
        int i3 = this._hashSeed;
        int i4 = this._inputEnd;
        if (i2 < i4) {
            do {
                char c = this._inputBuffer[i2];
                if (c < length) {
                    if (inputCodeLatin1JsNames[c] != 0) {
                        int i5 = this._inputPtr - 1;
                        this._inputPtr = i2;
                        return this._symbols.findSymbol(this._inputBuffer, i5, i2 - i5, i3);
                    }
                } else if (!Character.isJavaIdentifierPart((char) c)) {
                    int i6 = this._inputPtr - 1;
                    this._inputPtr = i2;
                    return this._symbols.findSymbol(this._inputBuffer, i6, i2 - i6, i3);
                }
                i3 = (i3 * 33) + c;
                i2++;
            } while (i2 < i4);
        }
        this._inputPtr = i2;
        return _handleOddName2(this._inputPtr - 1, i3, inputCodeLatin1JsNames);
    }

    /* access modifiers changed from: protected */
    public JsonToken _handleOddValue(int i) {
        switch (i) {
            case 39:
                if (isEnabled(JsonParser.Feature.ALLOW_SINGLE_QUOTES)) {
                    return _handleApos();
                }
                break;
            case 43:
                if (this._inputPtr >= this._inputEnd && !loadMore()) {
                    _reportInvalidEOFInValue();
                }
                char[] cArr = this._inputBuffer;
                int i2 = this._inputPtr;
                this._inputPtr = i2 + 1;
                return _handleInvalidNumberStart(cArr[i2], false);
            case 73:
                _matchToken("Infinity", 1);
                if (!isEnabled(JsonParser.Feature.ALLOW_NON_NUMERIC_NUMBERS)) {
                    _reportError("Non-standard token 'Infinity': enable JsonParser.Feature.ALLOW_NON_NUMERIC_NUMBERS to allow");
                    break;
                } else {
                    return resetAsNaN("Infinity", Double.POSITIVE_INFINITY);
                }
            case 78:
                _matchToken("NaN", 1);
                if (!isEnabled(JsonParser.Feature.ALLOW_NON_NUMERIC_NUMBERS)) {
                    _reportError("Non-standard token 'NaN': enable JsonParser.Feature.ALLOW_NON_NUMERIC_NUMBERS to allow");
                    break;
                } else {
                    return resetAsNaN("NaN", Double.NaN);
                }
        }
        if (Character.isJavaIdentifierStart(i)) {
            _reportInvalidToken(new StringBuilder().append((char) i).toString(), "('true', 'false' or 'null')");
        }
        _reportUnexpectedChar(i, "expected a valid value (number, String, array, object, 'true', 'false' or 'null')");
        return null;
    }

    /* access modifiers changed from: protected */
    public final void _matchToken(String str, int i) {
        char c;
        int length = str.length();
        do {
            if (this._inputPtr >= this._inputEnd && !loadMore()) {
                _reportInvalidToken(str.substring(0, i));
            }
            if (this._inputBuffer[this._inputPtr] != str.charAt(i)) {
                _reportInvalidToken(str.substring(0, i));
            }
            this._inputPtr++;
            i++;
        } while (i < length);
        if ((this._inputPtr < this._inputEnd || loadMore()) && (c = this._inputBuffer[this._inputPtr]) >= '0' && c != ']' && c != '}' && Character.isJavaIdentifierPart(c)) {
            _reportInvalidToken(str.substring(0, i));
        }
    }

    /* access modifiers changed from: protected */
    public String _parseAposName() {
        int i = this._inputPtr;
        int i2 = this._hashSeed;
        int i3 = this._inputEnd;
        if (i < i3) {
            int[] iArr = _icLatin1;
            int length = iArr.length;
            do {
                char c = this._inputBuffer[i];
                if (c != '\'') {
                    if (c < length && iArr[c] != 0) {
                        break;
                    }
                    i2 = (i2 * 33) + c;
                    i++;
                } else {
                    int i4 = this._inputPtr;
                    this._inputPtr = i + 1;
                    return this._symbols.findSymbol(this._inputBuffer, i4, i - i4, i2);
                }
            } while (i < i3);
        }
        int i5 = this._inputPtr;
        this._inputPtr = i;
        return _parseName2(i5, i2, 39);
    }

    /* access modifiers changed from: protected */
    public final String _parseName() {
        int i = this._inputPtr;
        int i2 = this._hashSeed;
        int[] iArr = _icLatin1;
        while (true) {
            if (i >= this._inputEnd) {
                break;
            }
            char c = this._inputBuffer[i];
            if (c >= iArr.length || iArr[c] == 0) {
                i2 = (i2 * 33) + c;
                i++;
            } else if (c == '\"') {
                int i3 = this._inputPtr;
                this._inputPtr = i + 1;
                return this._symbols.findSymbol(this._inputBuffer, i3, i - i3, i2);
            }
        }
        int i4 = this._inputPtr;
        this._inputPtr = i;
        return _parseName2(i4, i2, 34);
    }

    /* access modifiers changed from: protected */
    public final JsonToken _parseNegNumber() {
        int i = this._inputPtr;
        int i2 = i - 1;
        int i3 = this._inputEnd;
        if (i >= i3) {
            return _parseNumber2(true, i2);
        }
        int i4 = i + 1;
        char c = this._inputBuffer[i];
        if (c > '9' || c < '0') {
            this._inputPtr = i4;
            return _handleInvalidNumberStart(c, true);
        } else if (c == '0') {
            return _parseNumber2(true, i2);
        } else {
            int i5 = 1;
            int i6 = i4;
            while (i6 < i3) {
                int i7 = i6 + 1;
                char c2 = this._inputBuffer[i6];
                if (c2 >= '0' && c2 <= '9') {
                    i5++;
                    i6 = i7;
                } else if (c2 == '.' || c2 == 'e' || c2 == 'E') {
                    this._inputPtr = i7;
                    return _parseFloat(c2, i2, i7, true, i5);
                } else {
                    int i8 = i7 - 1;
                    this._inputPtr = i8;
                    if (this._parsingContext.inRoot()) {
                        _verifyRootSpace(c2);
                    }
                    this._textBuffer.resetWithShared(this._inputBuffer, i2, i8 - i2);
                    return resetInt(true, i5);
                }
            }
            return _parseNumber2(true, i2);
        }
    }

    /* access modifiers changed from: protected */
    public final JsonToken _parsePosNumber(int i) {
        int i2 = this._inputPtr;
        int i3 = i2 - 1;
        int i4 = this._inputEnd;
        if (i == 48) {
            return _parseNumber2(false, i3);
        }
        int i5 = 1;
        int i6 = i2;
        while (i6 < i4) {
            int i7 = i6 + 1;
            char c = this._inputBuffer[i6];
            if (c >= '0' && c <= '9') {
                i5++;
                i6 = i7;
            } else if (c == '.' || c == 'e' || c == 'E') {
                this._inputPtr = i7;
                return _parseFloat(c, i3, i7, false, i5);
            } else {
                int i8 = i7 - 1;
                this._inputPtr = i8;
                if (this._parsingContext.inRoot()) {
                    _verifyRootSpace(c);
                }
                this._textBuffer.resetWithShared(this._inputBuffer, i3, i8 - i3);
                return resetInt(false, i5);
            }
        }
        this._inputPtr = i3;
        return _parseNumber2(false, i3);
    }

    /* access modifiers changed from: protected */
    public void _releaseBuffers() {
        char[] cArr;
        super._releaseBuffers();
        this._symbols.release();
        if (this._bufferRecyclable && (cArr = this._inputBuffer) != null) {
            this._inputBuffer = null;
            this._ioContext.releaseTokenBuffer(cArr);
        }
    }

    /* access modifiers changed from: protected */
    public void _reportInvalidToken(String str) {
        _reportInvalidToken(str, "'null', 'true', 'false' or NaN");
    }

    /* access modifiers changed from: protected */
    public void _reportInvalidToken(String str, String str2) {
        StringBuilder sb = new StringBuilder(str);
        while (true) {
            if (this._inputPtr >= this._inputEnd && !loadMore()) {
                break;
            }
            char c = this._inputBuffer[this._inputPtr];
            if (!Character.isJavaIdentifierPart(c)) {
                break;
            }
            this._inputPtr++;
            sb.append(c);
        }
        _reportError("Unrecognized token '" + sb.toString() + "': was expecting " + str2);
    }

    /* access modifiers changed from: protected */
    public final void _skipCR() {
        if ((this._inputPtr < this._inputEnd || loadMore()) && this._inputBuffer[this._inputPtr] == 10) {
            this._inputPtr++;
        }
        this._currInputRow++;
        this._currInputRowStart = this._inputPtr;
    }

    /* access modifiers changed from: protected */
    public final void _skipString() {
        this._tokenIncomplete = false;
        int i = this._inputPtr;
        int i2 = this._inputEnd;
        char[] cArr = this._inputBuffer;
        while (true) {
            if (i >= i2) {
                this._inputPtr = i;
                if (!loadMore()) {
                    _reportInvalidEOF(": was expecting closing quote for a string value");
                }
                i = this._inputPtr;
                i2 = this._inputEnd;
            }
            int i3 = i + 1;
            char c = cArr[i];
            if (c <= '\\') {
                if (c == '\\') {
                    this._inputPtr = i3;
                    _decodeEscaped();
                    i = this._inputPtr;
                    i2 = this._inputEnd;
                } else if (c <= '\"') {
                    if (c == '\"') {
                        this._inputPtr = i3;
                        return;
                    } else if (c < ' ') {
                        this._inputPtr = i3;
                        _throwUnquotedSpace(c, "string value");
                    }
                }
            }
            i = i3;
        }
    }

    public JsonLocation getCurrentLocation() {
        return new JsonLocation(this._ioContext.getSourceReference(), -1, this._currInputProcessed + ((long) this._inputPtr), this._currInputRow, (this._inputPtr - this._currInputRowStart) + 1);
    }

    /* access modifiers changed from: protected */
    public char getNextChar(String str) {
        if (this._inputPtr >= this._inputEnd && !loadMore()) {
            _reportInvalidEOF(str);
        }
        char[] cArr = this._inputBuffer;
        int i = this._inputPtr;
        this._inputPtr = i + 1;
        return cArr[i];
    }

    public final String getText() {
        JsonToken jsonToken = this._currToken;
        if (jsonToken != JsonToken.VALUE_STRING) {
            return _getText2(jsonToken);
        }
        if (this._tokenIncomplete) {
            this._tokenIncomplete = false;
            _finishString();
        }
        return this._textBuffer.contentsAsString();
    }

    /* access modifiers changed from: protected */
    public boolean loadMore() {
        int i = this._inputEnd;
        this._currInputProcessed += (long) i;
        this._currInputRowStart -= i;
        this._nameStartOffset -= (long) i;
        if (this._reader == null) {
            return false;
        }
        int read = this._reader.read(this._inputBuffer, 0, this._inputBuffer.length);
        if (read > 0) {
            this._inputPtr = 0;
            this._inputEnd = read;
            return true;
        }
        _closeInput();
        if (read != 0) {
            return false;
        }
        throw new IOException("Reader returned 0 characters when trying to read " + this._inputEnd);
    }

    public final JsonToken nextToken() {
        JsonToken _parsePosNumber;
        if (this._currToken == JsonToken.FIELD_NAME) {
            return _nextAfterName();
        }
        this._numTypesValid = 0;
        if (this._tokenIncomplete) {
            _skipString();
        }
        int _skipWSOrEnd = _skipWSOrEnd();
        if (_skipWSOrEnd < 0) {
            close();
            this._currToken = null;
            return null;
        }
        this._binaryValue = null;
        if (_skipWSOrEnd == 93) {
            _updateLocation();
            if (!this._parsingContext.inArray()) {
                _reportMismatchedEndMarker(_skipWSOrEnd, '}');
            }
            this._parsingContext = this._parsingContext.clearAndGetParent();
            JsonToken jsonToken = JsonToken.END_ARRAY;
            this._currToken = jsonToken;
            return jsonToken;
        } else if (_skipWSOrEnd == 125) {
            _updateLocation();
            if (!this._parsingContext.inObject()) {
                _reportMismatchedEndMarker(_skipWSOrEnd, ']');
            }
            this._parsingContext = this._parsingContext.clearAndGetParent();
            JsonToken jsonToken2 = JsonToken.END_OBJECT;
            this._currToken = jsonToken2;
            return jsonToken2;
        } else {
            if (this._parsingContext.expectComma()) {
                _skipWSOrEnd = _skipComma(_skipWSOrEnd);
            }
            boolean inObject = this._parsingContext.inObject();
            if (inObject) {
                _updateNameLocation();
                this._parsingContext.setCurrentName(_skipWSOrEnd == 34 ? _parseName() : _handleOddName(_skipWSOrEnd));
                this._currToken = JsonToken.FIELD_NAME;
                _skipWSOrEnd = _skipColon();
            }
            _updateLocation();
            switch (_skipWSOrEnd) {
                case 34:
                    this._tokenIncomplete = true;
                    _parsePosNumber = JsonToken.VALUE_STRING;
                    break;
                case 45:
                    _parsePosNumber = _parseNegNumber();
                    break;
                case 48:
                case 49:
                case 50:
                case 51:
                case 52:
                case 53:
                case 54:
                case 55:
                case 56:
                case 57:
                    _parsePosNumber = _parsePosNumber(_skipWSOrEnd);
                    break;
                case 91:
                    if (!inObject) {
                        this._parsingContext = this._parsingContext.createChildArrayContext(this._tokenInputRow, this._tokenInputCol);
                    }
                    _parsePosNumber = JsonToken.START_ARRAY;
                    break;
                case 93:
                case 125:
                    _reportUnexpectedChar(_skipWSOrEnd, "expected a value");
                    break;
                case 102:
                    _matchFalse();
                    _parsePosNumber = JsonToken.VALUE_FALSE;
                    break;
                case 110:
                    _matchNull();
                    _parsePosNumber = JsonToken.VALUE_NULL;
                    break;
                case 116:
                    break;
                case 123:
                    if (!inObject) {
                        this._parsingContext = this._parsingContext.createChildObjectContext(this._tokenInputRow, this._tokenInputCol);
                    }
                    _parsePosNumber = JsonToken.START_OBJECT;
                    break;
                default:
                    _parsePosNumber = _handleOddValue(_skipWSOrEnd);
                    break;
            }
            _matchTrue();
            _parsePosNumber = JsonToken.VALUE_TRUE;
            if (inObject) {
                this._nextToken = _parsePosNumber;
                return this._currToken;
            }
            this._currToken = _parsePosNumber;
            return _parsePosNumber;
        }
    }
}
