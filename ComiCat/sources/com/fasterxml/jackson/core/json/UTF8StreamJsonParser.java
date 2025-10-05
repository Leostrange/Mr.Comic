package com.fasterxml.jackson.core.json;

import com.fasterxml.jackson.core.JsonLocation;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import com.fasterxml.jackson.core.ObjectCodec;
import com.fasterxml.jackson.core.base.ParserBase;
import com.fasterxml.jackson.core.io.CharTypes;
import com.fasterxml.jackson.core.io.IOContext;
import com.fasterxml.jackson.core.sym.ByteQuadsCanonicalizer;
import com.fasterxml.jackson.core.util.ByteArrayBuilder;
import java.io.IOException;
import java.io.InputStream;
import java.util.Arrays;
import org.apache.http.message.TokenParser;

public class UTF8StreamJsonParser extends ParserBase {
    protected static final int[] _icLatin1 = CharTypes.getInputCodeLatin1();
    private static final int[] _icUTF8 = CharTypes.getInputCodeUtf8();
    protected boolean _bufferRecyclable;
    protected byte[] _inputBuffer;
    protected InputStream _inputStream;
    protected int _nameStartCol;
    protected int _nameStartOffset;
    protected int _nameStartRow;
    protected ObjectCodec _objectCodec;
    private int _quad1;
    protected int[] _quadBuffer = new int[16];
    protected final ByteQuadsCanonicalizer _symbols;
    protected boolean _tokenIncomplete;

    public UTF8StreamJsonParser(IOContext iOContext, int i, InputStream inputStream, ObjectCodec objectCodec, ByteQuadsCanonicalizer byteQuadsCanonicalizer, byte[] bArr, int i2, int i3, boolean z) {
        super(iOContext, i);
        this._inputStream = inputStream;
        this._objectCodec = objectCodec;
        this._symbols = byteQuadsCanonicalizer;
        this._inputBuffer = bArr;
        this._inputPtr = i2;
        this._inputEnd = i3;
        this._currInputRowStart = i2;
        this._currInputProcessed = (long) (-i2);
        this._bufferRecyclable = z;
    }

    private final void _checkMatchEnd(String str, int i, int i2) {
        if (Character.isJavaIdentifierPart((char) _decodeCharForError(i2))) {
            _reportInvalidToken(str.substring(0, i));
        }
    }

    private final int _decodeUtf8_2(int i) {
        if (this._inputPtr >= this._inputEnd) {
            loadMoreGuaranteed();
        }
        byte[] bArr = this._inputBuffer;
        int i2 = this._inputPtr;
        this._inputPtr = i2 + 1;
        byte b = bArr[i2];
        if ((b & 192) != 128) {
            _reportInvalidOther(b & 255, this._inputPtr);
        }
        return (b & 63) | ((i & 31) << 6);
    }

    private final int _decodeUtf8_3(int i) {
        if (this._inputPtr >= this._inputEnd) {
            loadMoreGuaranteed();
        }
        int i2 = i & 15;
        byte[] bArr = this._inputBuffer;
        int i3 = this._inputPtr;
        this._inputPtr = i3 + 1;
        byte b = bArr[i3];
        if ((b & 192) != 128) {
            _reportInvalidOther(b & 255, this._inputPtr);
        }
        byte b2 = (i2 << 6) | (b & 63);
        if (this._inputPtr >= this._inputEnd) {
            loadMoreGuaranteed();
        }
        byte[] bArr2 = this._inputBuffer;
        int i4 = this._inputPtr;
        this._inputPtr = i4 + 1;
        byte b3 = bArr2[i4];
        if ((b3 & 192) != 128) {
            _reportInvalidOther(b3 & 255, this._inputPtr);
        }
        return (b2 << 6) | (b3 & 63);
    }

    private final int _decodeUtf8_3fast(int i) {
        int i2 = i & 15;
        byte[] bArr = this._inputBuffer;
        int i3 = this._inputPtr;
        this._inputPtr = i3 + 1;
        byte b = bArr[i3];
        if ((b & 192) != 128) {
            _reportInvalidOther(b & 255, this._inputPtr);
        }
        byte b2 = (i2 << 6) | (b & 63);
        byte[] bArr2 = this._inputBuffer;
        int i4 = this._inputPtr;
        this._inputPtr = i4 + 1;
        byte b3 = bArr2[i4];
        if ((b3 & 192) != 128) {
            _reportInvalidOther(b3 & 255, this._inputPtr);
        }
        return (b2 << 6) | (b3 & 63);
    }

    private final int _decodeUtf8_4(int i) {
        if (this._inputPtr >= this._inputEnd) {
            loadMoreGuaranteed();
        }
        byte[] bArr = this._inputBuffer;
        int i2 = this._inputPtr;
        this._inputPtr = i2 + 1;
        byte b = bArr[i2];
        if ((b & 192) != 128) {
            _reportInvalidOther(b & 255, this._inputPtr);
        }
        byte b2 = (b & 63) | ((i & 7) << 6);
        if (this._inputPtr >= this._inputEnd) {
            loadMoreGuaranteed();
        }
        byte[] bArr2 = this._inputBuffer;
        int i3 = this._inputPtr;
        this._inputPtr = i3 + 1;
        byte b3 = bArr2[i3];
        if ((b3 & 192) != 128) {
            _reportInvalidOther(b3 & 255, this._inputPtr);
        }
        byte b4 = (b2 << 6) | (b3 & 63);
        if (this._inputPtr >= this._inputEnd) {
            loadMoreGuaranteed();
        }
        byte[] bArr3 = this._inputBuffer;
        int i4 = this._inputPtr;
        this._inputPtr = i4 + 1;
        byte b5 = bArr3[i4];
        if ((b5 & 192) != 128) {
            _reportInvalidOther(b5 & 255, this._inputPtr);
        }
        return ((b4 << 6) | (b5 & 63)) - 65536;
    }

    private final void _finishString2(char[] cArr, int i) {
        int i2;
        int[] iArr = _icUTF8;
        byte[] bArr = this._inputBuffer;
        while (true) {
            int i3 = this._inputPtr;
            if (i3 >= this._inputEnd) {
                loadMoreGuaranteed();
                i3 = this._inputPtr;
            }
            if (i >= cArr.length) {
                cArr = this._textBuffer.finishCurrentSegment();
                i = 0;
            }
            int min = Math.min(this._inputEnd, (cArr.length - i) + i3);
            while (true) {
                if (i3 < min) {
                    int i4 = i3 + 1;
                    int i5 = bArr[i3] & 255;
                    if (iArr[i5] != 0) {
                        this._inputPtr = i4;
                        if (i5 != 34) {
                            switch (iArr[i5]) {
                                case 1:
                                    i5 = _decodeEscaped();
                                    break;
                                case 2:
                                    i5 = _decodeUtf8_2(i5);
                                    break;
                                case 3:
                                    if (this._inputEnd - this._inputPtr < 2) {
                                        i5 = _decodeUtf8_3(i5);
                                        break;
                                    } else {
                                        i5 = _decodeUtf8_3fast(i5);
                                        break;
                                    }
                                case 4:
                                    int _decodeUtf8_4 = _decodeUtf8_4(i5);
                                    int i6 = i + 1;
                                    cArr[i] = (char) (55296 | (_decodeUtf8_4 >> 10));
                                    if (i6 >= cArr.length) {
                                        cArr = this._textBuffer.finishCurrentSegment();
                                        i6 = 0;
                                    }
                                    i = i6;
                                    i5 = (_decodeUtf8_4 & 1023) | 56320;
                                    break;
                                default:
                                    if (i5 >= 32) {
                                        _reportInvalidChar(i5);
                                        break;
                                    } else {
                                        _throwUnquotedSpace(i5, "string value");
                                        break;
                                    }
                            }
                            if (i >= cArr.length) {
                                cArr = this._textBuffer.finishCurrentSegment();
                                i2 = 0;
                            } else {
                                i2 = i;
                            }
                            i = i2 + 1;
                            cArr[i2] = (char) i5;
                        } else {
                            this._textBuffer.setCurrentLength(i);
                            return;
                        }
                    } else {
                        cArr[i] = (char) i5;
                        i3 = i4;
                        i++;
                    }
                } else {
                    this._inputPtr = i3;
                }
            }
        }
    }

    private final void _matchToken2(String str, int i) {
        byte b;
        int length = str.length();
        do {
            if ((this._inputPtr >= this._inputEnd && !loadMore()) || this._inputBuffer[this._inputPtr] != str.charAt(i)) {
                _reportInvalidToken(str.substring(0, i));
            }
            this._inputPtr++;
            i++;
        } while (i < length);
        if ((this._inputPtr < this._inputEnd || loadMore()) && (b = this._inputBuffer[this._inputPtr] & 255) >= 48 && b != 93 && b != 125) {
            _checkMatchEnd(str, i, b);
        }
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

    private final JsonToken _nextTokenNotInObject(int i) {
        if (i == 34) {
            this._tokenIncomplete = true;
            JsonToken jsonToken = JsonToken.VALUE_STRING;
            this._currToken = jsonToken;
            return jsonToken;
        }
        switch (i) {
            case 45:
                JsonToken _parseNegNumber = _parseNegNumber();
                this._currToken = _parseNegNumber;
                return _parseNegNumber;
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
                JsonToken _parsePosNumber = _parsePosNumber(i);
                this._currToken = _parsePosNumber;
                return _parsePosNumber;
            case 91:
                this._parsingContext = this._parsingContext.createChildArrayContext(this._tokenInputRow, this._tokenInputCol);
                JsonToken jsonToken2 = JsonToken.START_ARRAY;
                this._currToken = jsonToken2;
                return jsonToken2;
            case 102:
                _matchToken("false", 1);
                JsonToken jsonToken3 = JsonToken.VALUE_FALSE;
                this._currToken = jsonToken3;
                return jsonToken3;
            case 110:
                _matchToken("null", 1);
                JsonToken jsonToken4 = JsonToken.VALUE_NULL;
                this._currToken = jsonToken4;
                return jsonToken4;
            case 116:
                _matchToken("true", 1);
                JsonToken jsonToken5 = JsonToken.VALUE_TRUE;
                this._currToken = jsonToken5;
                return jsonToken5;
            case 123:
                this._parsingContext = this._parsingContext.createChildObjectContext(this._tokenInputRow, this._tokenInputCol);
                JsonToken jsonToken6 = JsonToken.START_OBJECT;
                this._currToken = jsonToken6;
                return jsonToken6;
            default:
                JsonToken _handleUnexpectedValue = _handleUnexpectedValue(i);
                this._currToken = _handleUnexpectedValue;
                return _handleUnexpectedValue;
        }
    }

    private final JsonToken _parseFloat(char[] cArr, int i, int i2, boolean z, int i3) {
        int i4;
        int i5;
        char[] cArr2;
        int i6;
        int i7;
        byte b;
        boolean z2;
        int i8;
        int i9;
        int i10;
        int i11 = 0;
        boolean z3 = false;
        if (i2 == 46) {
            int i12 = i + 1;
            cArr[i] = (char) i2;
            while (true) {
                if (this._inputPtr >= this._inputEnd && !loadMore()) {
                    z3 = true;
                    i5 = i2;
                    break;
                }
                byte[] bArr = this._inputBuffer;
                int i13 = this._inputPtr;
                this._inputPtr = i13 + 1;
                i2 = bArr[i13] & 255;
                if (i2 < 48 || i2 > 57) {
                    i5 = i2;
                } else {
                    i11++;
                    if (i12 >= cArr.length) {
                        cArr = this._textBuffer.finishCurrentSegment();
                        i12 = 0;
                    }
                    int i14 = i12;
                    i12 = i14 + 1;
                    cArr[i14] = (char) i2;
                }
            }
            i5 = i2;
            if (i11 == 0) {
                reportUnexpectedNumberChar(i5, "Decimal point not followed by a digit");
            }
            i4 = i11;
            i6 = i12;
            cArr2 = cArr;
        } else {
            i4 = 0;
            i5 = i2;
            cArr2 = cArr;
            i6 = i;
        }
        int i15 = 0;
        if (i5 == 101 || i5 == 69) {
            if (i6 >= cArr2.length) {
                cArr2 = this._textBuffer.finishCurrentSegment();
                i6 = 0;
            }
            int i16 = i6 + 1;
            cArr2[i6] = (char) i5;
            if (this._inputPtr >= this._inputEnd) {
                loadMoreGuaranteed();
            }
            byte[] bArr2 = this._inputBuffer;
            int i17 = this._inputPtr;
            this._inputPtr = i17 + 1;
            byte b2 = bArr2[i17] & 255;
            if (b2 == 45 || b2 == 43) {
                if (i16 >= cArr2.length) {
                    cArr2 = this._textBuffer.finishCurrentSegment();
                    i10 = 0;
                } else {
                    i10 = i16;
                }
                int i18 = i10 + 1;
                cArr2[i10] = (char) b2;
                if (this._inputPtr >= this._inputEnd) {
                    loadMoreGuaranteed();
                }
                byte[] bArr3 = this._inputBuffer;
                int i19 = this._inputPtr;
                this._inputPtr = i19 + 1;
                b = bArr3[i19] & 255;
                i9 = i18;
            } else {
                i9 = i16;
                b = b2;
            }
            while (true) {
                if (b <= 57 && b >= 48) {
                    i15++;
                    if (i9 >= cArr2.length) {
                        cArr2 = this._textBuffer.finishCurrentSegment();
                        i9 = 0;
                    }
                    int i20 = i9 + 1;
                    cArr2[i9] = (char) b;
                    if (this._inputPtr >= this._inputEnd && !loadMore()) {
                        i8 = i15;
                        z2 = true;
                        i7 = i20;
                        break;
                    }
                    byte[] bArr4 = this._inputBuffer;
                    int i21 = this._inputPtr;
                    this._inputPtr = i21 + 1;
                    b = bArr4[i21] & 255;
                    i9 = i20;
                } else {
                    z2 = z3;
                    int i22 = i15;
                    i7 = i9;
                    i8 = i22;
                }
            }
            z2 = z3;
            int i222 = i15;
            i7 = i9;
            i8 = i222;
            if (i8 == 0) {
                reportUnexpectedNumberChar(b, "Exponent indicator not followed by a digit");
            }
        } else {
            z2 = z3;
            b = i5;
            i7 = i6;
            i8 = 0;
        }
        if (!z2) {
            this._inputPtr--;
            if (this._parsingContext.inRoot()) {
                _verifyRootSpace(b);
            }
        }
        this._textBuffer.setCurrentLength(i7);
        return resetFloat(z, i3, i4, i8);
    }

    private final JsonToken _parseNumber2(char[] cArr, int i, boolean z, int i2) {
        byte b;
        int i3 = i2;
        int i4 = i;
        char[] cArr2 = cArr;
        while (true) {
            if (this._inputPtr < this._inputEnd || loadMore()) {
                byte[] bArr = this._inputBuffer;
                int i5 = this._inputPtr;
                this._inputPtr = i5 + 1;
                b = bArr[i5] & 255;
                if (b <= 57 && b >= 48) {
                    if (i4 >= cArr2.length) {
                        cArr2 = this._textBuffer.finishCurrentSegment();
                        i4 = 0;
                    }
                    int i6 = i4;
                    i4 = i6 + 1;
                    cArr2[i6] = (char) b;
                    i3++;
                }
            } else {
                this._textBuffer.setCurrentLength(i4);
                return resetInt(z, i3);
            }
        }
        if (b == 46 || b == 101 || b == 69) {
            return _parseFloat(cArr2, i4, b, z, i3);
        }
        this._inputPtr--;
        this._textBuffer.setCurrentLength(i4);
        if (this._parsingContext.inRoot()) {
            byte[] bArr2 = this._inputBuffer;
            int i7 = this._inputPtr;
            this._inputPtr = i7 + 1;
            _verifyRootSpace(bArr2[i7] & 255);
        }
        return resetInt(z, i3);
    }

    private final void _skipCComment() {
        int[] inputCodeComment = CharTypes.getInputCodeComment();
        while (true) {
            if (this._inputPtr < this._inputEnd || loadMore()) {
                byte[] bArr = this._inputBuffer;
                int i = this._inputPtr;
                this._inputPtr = i + 1;
                byte b = bArr[i] & 255;
                int i2 = inputCodeComment[b];
                if (i2 != 0) {
                    switch (i2) {
                        case 2:
                            _skipUtf8_2(b);
                            continue;
                        case 3:
                            _skipUtf8_3(b);
                            continue;
                        case 4:
                            _skipUtf8_4(b);
                            continue;
                        case 10:
                            this._currInputRow++;
                            this._currInputRowStart = this._inputPtr;
                            continue;
                        case 13:
                            _skipCR();
                            continue;
                        case 42:
                            if (this._inputPtr >= this._inputEnd && !loadMore()) {
                                break;
                            } else if (this._inputBuffer[this._inputPtr] == 47) {
                                this._inputPtr++;
                                return;
                            } else {
                                continue;
                            }
                            break;
                        default:
                            _reportInvalidChar(b);
                            continue;
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
        byte b = this._inputBuffer[this._inputPtr];
        if (b == 58) {
            byte[] bArr = this._inputBuffer;
            int i = this._inputPtr + 1;
            this._inputPtr = i;
            byte b2 = bArr[i];
            if (b2 <= 32) {
                if (b2 == 32 || b2 == 9) {
                    byte[] bArr2 = this._inputBuffer;
                    int i2 = this._inputPtr + 1;
                    this._inputPtr = i2;
                    byte b3 = bArr2[i2];
                    if (b3 > 32) {
                        if (b3 == 47 || b3 == 35) {
                            return _skipColon2(true);
                        }
                        this._inputPtr++;
                        return b3;
                    }
                }
                return _skipColon2(true);
            } else if (b2 == 47 || b2 == 35) {
                return _skipColon2(true);
            } else {
                this._inputPtr++;
                return b2;
            }
        } else {
            if (b == 32 || b == 9) {
                byte[] bArr3 = this._inputBuffer;
                int i3 = this._inputPtr + 1;
                this._inputPtr = i3;
                b = bArr3[i3];
            }
            if (b != 58) {
                return _skipColon2(false);
            }
            byte[] bArr4 = this._inputBuffer;
            int i4 = this._inputPtr + 1;
            this._inputPtr = i4;
            byte b4 = bArr4[i4];
            if (b4 <= 32) {
                if (b4 == 32 || b4 == 9) {
                    byte[] bArr5 = this._inputBuffer;
                    int i5 = this._inputPtr + 1;
                    this._inputPtr = i5;
                    byte b5 = bArr5[i5];
                    if (b5 > 32) {
                        if (b5 == 47 || b5 == 35) {
                            return _skipColon2(true);
                        }
                        this._inputPtr++;
                        return b5;
                    }
                }
                return _skipColon2(true);
            } else if (b4 == 47 || b4 == 35) {
                return _skipColon2(true);
            } else {
                this._inputPtr++;
                return b4;
            }
        }
    }

    private final int _skipColon2(boolean z) {
        while (true) {
            if (this._inputPtr < this._inputEnd || loadMore()) {
                byte[] bArr = this._inputBuffer;
                int i = this._inputPtr;
                this._inputPtr = i + 1;
                byte b = bArr[i] & 255;
                if (b > 32) {
                    if (b == 47) {
                        _skipComment();
                    } else if (b != 35 || !_skipYAMLComment()) {
                        if (z) {
                            return b;
                        }
                        if (b != 58) {
                            if (b < 32) {
                                _throwInvalidSpace(b);
                            }
                            _reportUnexpectedChar(b, "was expecting a colon to separate field name and value");
                        }
                        z = true;
                    }
                } else if (b != 32) {
                    if (b == 10) {
                        this._currInputRow++;
                        this._currInputRowStart = this._inputPtr;
                    } else if (b == 13) {
                        _skipCR();
                    } else if (b != 9) {
                        _throwInvalidSpace(b);
                    }
                }
            } else {
                throw _constructError("Unexpected end-of-input within/between " + this._parsingContext.getTypeDesc() + " entries");
            }
        }
    }

    private final void _skipComment() {
        if (!isEnabled(JsonParser.Feature.ALLOW_COMMENTS)) {
            _reportUnexpectedChar(47, "maybe a (non-standard) comment? (not recognized as one since Feature 'ALLOW_COMMENTS' not enabled for parser)");
        }
        if (this._inputPtr >= this._inputEnd && !loadMore()) {
            _reportInvalidEOF(" in a comment");
        }
        byte[] bArr = this._inputBuffer;
        int i = this._inputPtr;
        this._inputPtr = i + 1;
        byte b = bArr[i] & 255;
        if (b == 47) {
            _skipLine();
        } else if (b == 42) {
            _skipCComment();
        } else {
            _reportUnexpectedChar(b, "was expecting either '*' or '/' for a comment");
        }
    }

    private final void _skipLine() {
        int[] inputCodeComment = CharTypes.getInputCodeComment();
        while (true) {
            if (this._inputPtr < this._inputEnd || loadMore()) {
                byte[] bArr = this._inputBuffer;
                int i = this._inputPtr;
                this._inputPtr = i + 1;
                byte b = bArr[i] & 255;
                int i2 = inputCodeComment[b];
                if (i2 != 0) {
                    switch (i2) {
                        case 2:
                            _skipUtf8_2(b);
                            break;
                        case 3:
                            _skipUtf8_3(b);
                            break;
                        case 4:
                            _skipUtf8_4(b);
                            break;
                        case 10:
                            this._currInputRow++;
                            this._currInputRowStart = this._inputPtr;
                            return;
                        case 13:
                            _skipCR();
                            return;
                        case 42:
                            break;
                        default:
                            if (i2 >= 0) {
                                break;
                            } else {
                                _reportInvalidChar(b);
                                break;
                            }
                    }
                }
            } else {
                return;
            }
        }
    }

    private final void _skipUtf8_2(int i) {
        if (this._inputPtr >= this._inputEnd) {
            loadMoreGuaranteed();
        }
        byte[] bArr = this._inputBuffer;
        int i2 = this._inputPtr;
        this._inputPtr = i2 + 1;
        byte b = bArr[i2];
        if ((b & 192) != 128) {
            _reportInvalidOther(b & 255, this._inputPtr);
        }
    }

    private final void _skipUtf8_3(int i) {
        if (this._inputPtr >= this._inputEnd) {
            loadMoreGuaranteed();
        }
        byte[] bArr = this._inputBuffer;
        int i2 = this._inputPtr;
        this._inputPtr = i2 + 1;
        byte b = bArr[i2];
        if ((b & 192) != 128) {
            _reportInvalidOther(b & 255, this._inputPtr);
        }
        if (this._inputPtr >= this._inputEnd) {
            loadMoreGuaranteed();
        }
        byte[] bArr2 = this._inputBuffer;
        int i3 = this._inputPtr;
        this._inputPtr = i3 + 1;
        byte b2 = bArr2[i3];
        if ((b2 & 192) != 128) {
            _reportInvalidOther(b2 & 255, this._inputPtr);
        }
    }

    private final void _skipUtf8_4(int i) {
        if (this._inputPtr >= this._inputEnd) {
            loadMoreGuaranteed();
        }
        byte[] bArr = this._inputBuffer;
        int i2 = this._inputPtr;
        this._inputPtr = i2 + 1;
        byte b = bArr[i2];
        if ((b & 192) != 128) {
            _reportInvalidOther(b & 255, this._inputPtr);
        }
        if (this._inputPtr >= this._inputEnd) {
            loadMoreGuaranteed();
        }
        byte[] bArr2 = this._inputBuffer;
        int i3 = this._inputPtr;
        this._inputPtr = i3 + 1;
        byte b2 = bArr2[i3];
        if ((b2 & 192) != 128) {
            _reportInvalidOther(b2 & 255, this._inputPtr);
        }
        if (this._inputPtr >= this._inputEnd) {
            loadMoreGuaranteed();
        }
        byte[] bArr3 = this._inputBuffer;
        int i4 = this._inputPtr;
        this._inputPtr = i4 + 1;
        byte b3 = bArr3[i4];
        if ((b3 & 192) != 128) {
            _reportInvalidOther(b3 & 255, this._inputPtr);
        }
    }

    private final int _skipWS() {
        while (this._inputPtr < this._inputEnd) {
            byte[] bArr = this._inputBuffer;
            int i = this._inputPtr;
            this._inputPtr = i + 1;
            byte b = bArr[i] & 255;
            if (b > 32) {
                if (b != 47 && b != 35) {
                    return b;
                }
                this._inputPtr--;
                return _skipWS2();
            } else if (b != 32) {
                if (b == 10) {
                    this._currInputRow++;
                    this._currInputRowStart = this._inputPtr;
                } else if (b == 13) {
                    _skipCR();
                } else if (b != 9) {
                    _throwInvalidSpace(b);
                }
            }
        }
        return _skipWS2();
    }

    private final int _skipWS2() {
        byte b;
        while (true) {
            if (this._inputPtr < this._inputEnd || loadMore()) {
                byte[] bArr = this._inputBuffer;
                int i = this._inputPtr;
                this._inputPtr = i + 1;
                b = bArr[i] & 255;
                if (b > 32) {
                    if (b == 47) {
                        _skipComment();
                    } else if (b != 35 || !_skipYAMLComment()) {
                        return b;
                    }
                } else if (b != 32) {
                    if (b == 10) {
                        this._currInputRow++;
                        this._currInputRowStart = this._inputPtr;
                    } else if (b == 13) {
                        _skipCR();
                    } else if (b != 9) {
                        _throwInvalidSpace(b);
                    }
                }
            } else {
                throw _constructError("Unexpected end-of-input within/between " + this._parsingContext.getTypeDesc() + " entries");
            }
        }
        return b;
    }

    private final int _skipWSOrEnd() {
        if (this._inputPtr >= this._inputEnd && !loadMore()) {
            return _eofAsNextChar();
        }
        byte[] bArr = this._inputBuffer;
        int i = this._inputPtr;
        this._inputPtr = i + 1;
        byte b = bArr[i] & 255;
        if (b <= 32) {
            if (b != 32) {
                if (b == 10) {
                    this._currInputRow++;
                    this._currInputRowStart = this._inputPtr;
                } else if (b == 13) {
                    _skipCR();
                } else if (b != 9) {
                    _throwInvalidSpace(b);
                }
            }
            while (this._inputPtr < this._inputEnd) {
                byte[] bArr2 = this._inputBuffer;
                int i2 = this._inputPtr;
                this._inputPtr = i2 + 1;
                byte b2 = bArr2[i2] & 255;
                if (b2 > 32) {
                    if (b2 != 47 && b2 != 35) {
                        return b2;
                    }
                    this._inputPtr--;
                    return _skipWSOrEnd2();
                } else if (b2 != 32) {
                    if (b2 == 10) {
                        this._currInputRow++;
                        this._currInputRowStart = this._inputPtr;
                    } else if (b2 == 13) {
                        _skipCR();
                    } else if (b2 != 9) {
                        _throwInvalidSpace(b2);
                    }
                }
            }
            return _skipWSOrEnd2();
        } else if (b != 47 && b != 35) {
            return b;
        } else {
            this._inputPtr--;
            return _skipWSOrEnd2();
        }
    }

    private final int _skipWSOrEnd2() {
        while (true) {
            if (this._inputPtr >= this._inputEnd && !loadMore()) {
                return _eofAsNextChar();
            }
            byte[] bArr = this._inputBuffer;
            int i = this._inputPtr;
            this._inputPtr = i + 1;
            byte b = bArr[i] & 255;
            if (b > 32) {
                if (b == 47) {
                    _skipComment();
                } else if (b != 35 || !_skipYAMLComment()) {
                    return b;
                }
            } else if (b != 32) {
                if (b == 10) {
                    this._currInputRow++;
                    this._currInputRowStart = this._inputPtr;
                } else if (b == 13) {
                    _skipCR();
                } else if (b != 9) {
                    _throwInvalidSpace(b);
                }
            }
        }
    }

    private final boolean _skipYAMLComment() {
        if (!isEnabled(JsonParser.Feature.ALLOW_YAML_COMMENTS)) {
            return false;
        }
        _skipLine();
        return true;
    }

    private final void _updateLocation() {
        this._tokenInputRow = this._currInputRow;
        int i = this._inputPtr;
        this._tokenInputTotal = this._currInputProcessed + ((long) i);
        this._tokenInputCol = i - this._currInputRowStart;
    }

    private final void _updateNameLocation() {
        this._nameStartRow = this._currInputRow;
        int i = this._inputPtr;
        this._nameStartOffset = i;
        this._nameStartCol = i - this._currInputRowStart;
    }

    private final int _verifyNoLeadingZeroes() {
        if (this._inputPtr >= this._inputEnd && !loadMore()) {
            return 48;
        }
        byte b = this._inputBuffer[this._inputPtr] & 255;
        if (b < 48 || b > 57) {
            return 48;
        }
        if (!isEnabled(JsonParser.Feature.ALLOW_NUMERIC_LEADING_ZEROS)) {
            reportInvalidNumber("Leading zeroes not allowed");
        }
        this._inputPtr++;
        if (b != 48) {
            return b;
        }
        do {
            if (this._inputPtr >= this._inputEnd && !loadMore()) {
                return b;
            }
            b = this._inputBuffer[this._inputPtr] & 255;
            if (b < 48 || b > 57) {
                return 48;
            }
            this._inputPtr++;
        } while (b == 48);
        return b;
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

    /* JADX WARNING: Removed duplicated region for block: B:35:0x00cb  */
    /* JADX WARNING: Removed duplicated region for block: B:53:0x00d1 A[SYNTHETIC] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private final java.lang.String addName(int[] r12, int r13, int r14) {
        /*
            r11 = this;
            int r0 = r13 << 2
            int r0 = r0 + -4
            int r6 = r0 + r14
            r0 = 4
            if (r14 >= r0) goto L_0x00da
            int r0 = r13 + -1
            r0 = r12[r0]
            int r1 = r13 + -1
            int r2 = 4 - r14
            int r2 = r2 << 3
            int r2 = r0 << r2
            r12[r1] = r2
        L_0x0017:
            com.fasterxml.jackson.core.util.TextBuffer r1 = r11._textBuffer
            char[] r1 = r1.emptyAndGetCurrentSegment()
            r5 = 0
            r2 = 0
            r3 = r2
        L_0x0020:
            if (r3 >= r6) goto L_0x0100
            int r2 = r3 >> 2
            r2 = r12[r2]
            r4 = r3 & 3
            int r4 = 3 - r4
            int r4 = r4 << 3
            int r2 = r2 >> r4
            r2 = r2 & 255(0xff, float:3.57E-43)
            int r3 = r3 + 1
            r4 = 127(0x7f, float:1.78E-43)
            if (r2 <= r4) goto L_0x0114
            r4 = r2 & 224(0xe0, float:3.14E-43)
            r7 = 192(0xc0, float:2.69E-43)
            if (r4 != r7) goto L_0x00dd
            r4 = r2 & 31
            r2 = 1
            r10 = r2
            r2 = r4
            r4 = r10
        L_0x0041:
            int r7 = r3 + r4
            if (r7 <= r6) goto L_0x004a
            java.lang.String r7 = " in field name"
            r11._reportInvalidEOF(r7)
        L_0x004a:
            int r7 = r3 >> 2
            r7 = r12[r7]
            r8 = r3 & 3
            int r8 = 3 - r8
            int r8 = r8 << 3
            int r7 = r7 >> r8
            int r3 = r3 + 1
            r8 = r7 & 192(0xc0, float:2.69E-43)
            r9 = 128(0x80, float:1.794E-43)
            if (r8 == r9) goto L_0x0060
            r11._reportInvalidOther(r7)
        L_0x0060:
            int r2 = r2 << 6
            r7 = r7 & 63
            r2 = r2 | r7
            r7 = 1
            if (r4 <= r7) goto L_0x00a3
            int r7 = r3 >> 2
            r7 = r12[r7]
            r8 = r3 & 3
            int r8 = 3 - r8
            int r8 = r8 << 3
            int r7 = r7 >> r8
            int r3 = r3 + 1
            r8 = r7 & 192(0xc0, float:2.69E-43)
            r9 = 128(0x80, float:1.794E-43)
            if (r8 == r9) goto L_0x007e
            r11._reportInvalidOther(r7)
        L_0x007e:
            int r2 = r2 << 6
            r7 = r7 & 63
            r2 = r2 | r7
            r7 = 2
            if (r4 <= r7) goto L_0x00a3
            int r7 = r3 >> 2
            r7 = r12[r7]
            r8 = r3 & 3
            int r8 = 3 - r8
            int r8 = r8 << 3
            int r7 = r7 >> r8
            int r3 = r3 + 1
            r8 = r7 & 192(0xc0, float:2.69E-43)
            r9 = 128(0x80, float:1.794E-43)
            if (r8 == r9) goto L_0x009e
            r8 = r7 & 255(0xff, float:3.57E-43)
            r11._reportInvalidOther(r8)
        L_0x009e:
            int r2 = r2 << 6
            r7 = r7 & 63
            r2 = r2 | r7
        L_0x00a3:
            r7 = 2
            if (r4 <= r7) goto L_0x0114
            r4 = 65536(0x10000, float:9.18355E-41)
            int r2 = r2 - r4
            int r4 = r1.length
            if (r5 < r4) goto L_0x00b2
            com.fasterxml.jackson.core.util.TextBuffer r1 = r11._textBuffer
            char[] r1 = r1.expandCurrentSegment()
        L_0x00b2:
            int r4 = r5 + 1
            r7 = 55296(0xd800, float:7.7486E-41)
            int r8 = r2 >> 10
            int r7 = r7 + r8
            char r7 = (char) r7
            r1[r5] = r7
            r5 = 56320(0xdc00, float:7.8921E-41)
            r2 = r2 & 1023(0x3ff, float:1.434E-42)
            r2 = r2 | r5
            r10 = r2
            r2 = r3
            r3 = r4
            r4 = r1
            r1 = r10
        L_0x00c8:
            int r5 = r4.length
            if (r3 < r5) goto L_0x00d1
            com.fasterxml.jackson.core.util.TextBuffer r4 = r11._textBuffer
            char[] r4 = r4.expandCurrentSegment()
        L_0x00d1:
            int r5 = r3 + 1
            char r1 = (char) r1
            r4[r3] = r1
            r3 = r2
            r1 = r4
            goto L_0x0020
        L_0x00da:
            r0 = 0
            goto L_0x0017
        L_0x00dd:
            r4 = r2 & 240(0xf0, float:3.36E-43)
            r7 = 224(0xe0, float:3.14E-43)
            if (r4 != r7) goto L_0x00eb
            r4 = r2 & 15
            r2 = 2
            r10 = r2
            r2 = r4
            r4 = r10
            goto L_0x0041
        L_0x00eb:
            r4 = r2 & 248(0xf8, float:3.48E-43)
            r7 = 240(0xf0, float:3.36E-43)
            if (r4 != r7) goto L_0x00f9
            r4 = r2 & 7
            r2 = 3
            r10 = r2
            r2 = r4
            r4 = r10
            goto L_0x0041
        L_0x00f9:
            r11._reportInvalidInitial(r2)
            r2 = 1
            r4 = r2
            goto L_0x0041
        L_0x0100:
            java.lang.String r2 = new java.lang.String
            r3 = 0
            r2.<init>(r1, r3, r5)
            r1 = 4
            if (r14 >= r1) goto L_0x010d
            int r1 = r13 + -1
            r12[r1] = r0
        L_0x010d:
            com.fasterxml.jackson.core.sym.ByteQuadsCanonicalizer r0 = r11._symbols
            java.lang.String r0 = r0.addName(r2, r12, r13)
            return r0
        L_0x0114:
            r4 = r1
            r1 = r2
            r2 = r3
            r3 = r5
            goto L_0x00c8
        */
        throw new UnsupportedOperationException("Method not decompiled: com.fasterxml.jackson.core.json.UTF8StreamJsonParser.addName(int[], int, int):java.lang.String");
    }

    private final String findName(int i, int i2) {
        int pad = pad(i, i2);
        String findName = this._symbols.findName(pad);
        if (findName != null) {
            return findName;
        }
        this._quadBuffer[0] = pad;
        return addName(this._quadBuffer, 1, i2);
    }

    private final String findName(int i, int i2, int i3) {
        int pad = pad(i2, i3);
        String findName = this._symbols.findName(i, pad);
        if (findName != null) {
            return findName;
        }
        this._quadBuffer[0] = i;
        this._quadBuffer[1] = pad;
        return addName(this._quadBuffer, 2, i3);
    }

    private final String findName(int i, int i2, int i3, int i4) {
        int pad = pad(i3, i4);
        String findName = this._symbols.findName(i, i2, pad);
        if (findName != null) {
            return findName;
        }
        int[] iArr = this._quadBuffer;
        iArr[0] = i;
        iArr[1] = i2;
        iArr[2] = pad(pad, i4);
        return addName(iArr, 3, i4);
    }

    private final String findName(int[] iArr, int i, int i2, int i3) {
        if (i >= iArr.length) {
            iArr = growArrayBy(iArr, iArr.length);
            this._quadBuffer = iArr;
        }
        int i4 = i + 1;
        iArr[i] = pad(i2, i3);
        String findName = this._symbols.findName(iArr, i4);
        return findName == null ? addName(iArr, i4, i3) : findName;
    }

    public static int[] growArrayBy(int[] iArr, int i) {
        return iArr == null ? new int[i] : Arrays.copyOf(iArr, iArr.length + i);
    }

    private int nextByte() {
        if (this._inputPtr >= this._inputEnd) {
            loadMoreGuaranteed();
        }
        byte[] bArr = this._inputBuffer;
        int i = this._inputPtr;
        this._inputPtr = i + 1;
        return bArr[i] & 255;
    }

    private static final int pad(int i, int i2) {
        return i2 == 4 ? i : i | (-1 << (i2 << 3));
    }

    private final String parseName(int i, int i2, int i3) {
        return parseEscapedName(this._quadBuffer, 0, i, i2, i3);
    }

    private final String parseName(int i, int i2, int i3, int i4) {
        this._quadBuffer[0] = i;
        return parseEscapedName(this._quadBuffer, 1, i2, i3, i4);
    }

    private final String parseName(int i, int i2, int i3, int i4, int i5) {
        this._quadBuffer[0] = i;
        this._quadBuffer[1] = i2;
        return parseEscapedName(this._quadBuffer, 2, i3, i4, i5);
    }

    /* access modifiers changed from: protected */
    public void _closeInput() {
        if (this._inputStream != null) {
            if (this._ioContext.isResourceManaged() || isEnabled(JsonParser.Feature.AUTO_CLOSE_SOURCE)) {
                this._inputStream.close();
            }
            this._inputStream = null;
        }
    }

    /* access modifiers changed from: protected */
    public int _decodeCharForError(int i) {
        int i2;
        char c;
        int i3 = i & 255;
        if (i3 <= 127) {
            return i3;
        }
        if ((i3 & 224) == 192) {
            i2 = i3 & 31;
            c = 1;
        } else if ((i3 & 240) == 224) {
            i2 = i3 & 15;
            c = 2;
        } else if ((i3 & 248) == 240) {
            i2 = i3 & 7;
            c = 3;
        } else {
            _reportInvalidInitial(i3 & 255);
            i2 = i3;
            c = 1;
        }
        int nextByte = nextByte();
        if ((nextByte & 192) != 128) {
            _reportInvalidOther(nextByte & 255);
        }
        int i4 = (i2 << 6) | (nextByte & 63);
        if (c <= 1) {
            return i4;
        }
        int nextByte2 = nextByte();
        if ((nextByte2 & 192) != 128) {
            _reportInvalidOther(nextByte2 & 255);
        }
        int i5 = (nextByte2 & 63) | (i4 << 6);
        if (c <= 2) {
            return i5;
        }
        int nextByte3 = nextByte();
        if ((nextByte3 & 192) != 128) {
            _reportInvalidOther(nextByte3 & 255);
        }
        return (nextByte3 & 63) | (i5 << 6);
    }

    /* access modifiers changed from: protected */
    public char _decodeEscaped() {
        if (this._inputPtr >= this._inputEnd && !loadMore()) {
            _reportInvalidEOF(" in character escape sequence");
        }
        byte[] bArr = this._inputBuffer;
        int i = this._inputPtr;
        this._inputPtr = i + 1;
        byte b = bArr[i];
        switch (b) {
            case 34:
            case 47:
            case 92:
                return (char) b;
            case 98:
                return 8;
            case 102:
                return 12;
            case 110:
                return 10;
            case 114:
                return TokenParser.CR;
            case 116:
                return 9;
            case 117:
                int i2 = 0;
                for (int i3 = 0; i3 < 4; i3++) {
                    if (this._inputPtr >= this._inputEnd && !loadMore()) {
                        _reportInvalidEOF(" in character escape sequence");
                    }
                    byte[] bArr2 = this._inputBuffer;
                    int i4 = this._inputPtr;
                    this._inputPtr = i4 + 1;
                    byte b2 = bArr2[i4];
                    int charToHex = CharTypes.charToHex(b2);
                    if (charToHex < 0) {
                        _reportUnexpectedChar(b2, "expected a hex-digit for character escape sequence");
                    }
                    i2 = (i2 << 4) | charToHex;
                }
                return (char) i2;
            default:
                return _handleUnrecognizedCharacterEscape((char) _decodeCharForError(b));
        }
    }

    /* access modifiers changed from: protected */
    public String _finishAndReturnString() {
        int i = this._inputPtr;
        if (i >= this._inputEnd) {
            loadMoreGuaranteed();
            i = this._inputPtr;
        }
        char[] emptyAndGetCurrentSegment = this._textBuffer.emptyAndGetCurrentSegment();
        int[] iArr = _icUTF8;
        int min = Math.min(this._inputEnd, emptyAndGetCurrentSegment.length + i);
        byte[] bArr = this._inputBuffer;
        int i2 = i;
        int i3 = 0;
        while (true) {
            if (i2 >= min) {
                break;
            }
            byte b = bArr[i2] & 255;
            if (iArr[b] == 0) {
                emptyAndGetCurrentSegment[i3] = (char) b;
                i3++;
                i2++;
            } else if (b == 34) {
                this._inputPtr = i2 + 1;
                return this._textBuffer.setCurrentAndReturn(i3);
            }
        }
        this._inputPtr = i2;
        _finishString2(emptyAndGetCurrentSegment, i3);
        return this._textBuffer.contentsAsString();
    }

    /* access modifiers changed from: protected */
    public void _finishString() {
        int i = this._inputPtr;
        if (i >= this._inputEnd) {
            loadMoreGuaranteed();
            i = this._inputPtr;
        }
        char[] emptyAndGetCurrentSegment = this._textBuffer.emptyAndGetCurrentSegment();
        int[] iArr = _icUTF8;
        int min = Math.min(this._inputEnd, emptyAndGetCurrentSegment.length + i);
        byte[] bArr = this._inputBuffer;
        int i2 = i;
        int i3 = 0;
        while (true) {
            if (i2 >= min) {
                break;
            }
            byte b = bArr[i2] & 255;
            if (iArr[b] == 0) {
                emptyAndGetCurrentSegment[i3] = (char) b;
                i3++;
                i2++;
            } else if (b == 34) {
                this._inputPtr = i2 + 1;
                this._textBuffer.setCurrentLength(i3);
                return;
            }
        }
        this._inputPtr = i2;
        _finishString2(emptyAndGetCurrentSegment, i3);
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
    /* JADX WARNING: Can't fix incorrect switch cases order */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public com.fasterxml.jackson.core.JsonToken _handleApos() {
        /*
            r10 = this;
            r9 = 39
            r2 = 0
            com.fasterxml.jackson.core.util.TextBuffer r0 = r10._textBuffer
            char[] r0 = r0.emptyAndGetCurrentSegment()
            int[] r6 = _icUTF8
            byte[] r7 = r10._inputBuffer
            r1 = r2
        L_0x000e:
            int r3 = r10._inputPtr
            int r4 = r10._inputEnd
            if (r3 < r4) goto L_0x0017
            r10.loadMoreGuaranteed()
        L_0x0017:
            int r3 = r0.length
            if (r1 < r3) goto L_0x0021
            com.fasterxml.jackson.core.util.TextBuffer r0 = r10._textBuffer
            char[] r0 = r0.finishCurrentSegment()
            r1 = r2
        L_0x0021:
            int r4 = r10._inputEnd
            int r3 = r10._inputPtr
            int r5 = r0.length
            int r5 = r5 - r1
            int r3 = r3 + r5
            if (r3 >= r4) goto L_0x00b3
        L_0x002a:
            int r4 = r10._inputPtr
            if (r4 >= r3) goto L_0x000e
            int r4 = r10._inputPtr
            int r5 = r4 + 1
            r10._inputPtr = r5
            byte r4 = r7[r4]
            r5 = r4 & 255(0xff, float:3.57E-43)
            if (r5 == r9) goto L_0x0045
            r4 = r6[r5]
            if (r4 != 0) goto L_0x0045
            int r4 = r1 + 1
            char r5 = (char) r5
            r0[r1] = r5
            r1 = r4
            goto L_0x002a
        L_0x0045:
            if (r5 == r9) goto L_0x00a7
            r3 = r6[r5]
            switch(r3) {
                case 1: goto L_0x0069;
                case 2: goto L_0x0070;
                case 3: goto L_0x0075;
                case 4: goto L_0x0087;
                default: goto L_0x004c;
            }
        L_0x004c:
            r3 = 32
            if (r5 >= r3) goto L_0x0055
            java.lang.String r3 = "string value"
            r10._throwUnquotedSpace(r5, r3)
        L_0x0055:
            r10._reportInvalidChar(r5)
        L_0x0058:
            r3 = r5
        L_0x0059:
            int r4 = r0.length
            if (r1 < r4) goto L_0x00af
            com.fasterxml.jackson.core.util.TextBuffer r0 = r10._textBuffer
            char[] r0 = r0.finishCurrentSegment()
            r4 = r2
        L_0x0063:
            int r1 = r4 + 1
            char r3 = (char) r3
            r0[r4] = r3
            goto L_0x000e
        L_0x0069:
            if (r5 == r9) goto L_0x0058
            char r3 = r10._decodeEscaped()
            goto L_0x0059
        L_0x0070:
            int r3 = r10._decodeUtf8_2(r5)
            goto L_0x0059
        L_0x0075:
            int r3 = r10._inputEnd
            int r4 = r10._inputPtr
            int r3 = r3 - r4
            r4 = 2
            if (r3 < r4) goto L_0x0082
            int r3 = r10._decodeUtf8_3fast(r5)
            goto L_0x0059
        L_0x0082:
            int r3 = r10._decodeUtf8_3(r5)
            goto L_0x0059
        L_0x0087:
            int r4 = r10._decodeUtf8_4(r5)
            int r3 = r1 + 1
            r5 = 55296(0xd800, float:7.7486E-41)
            int r8 = r4 >> 10
            r5 = r5 | r8
            char r5 = (char) r5
            r0[r1] = r5
            int r1 = r0.length
            if (r3 < r1) goto L_0x00b1
            com.fasterxml.jackson.core.util.TextBuffer r0 = r10._textBuffer
            char[] r0 = r0.finishCurrentSegment()
            r1 = r2
        L_0x00a0:
            r3 = 56320(0xdc00, float:7.8921E-41)
            r4 = r4 & 1023(0x3ff, float:1.434E-42)
            r3 = r3 | r4
            goto L_0x0059
        L_0x00a7:
            com.fasterxml.jackson.core.util.TextBuffer r0 = r10._textBuffer
            r0.setCurrentLength(r1)
            com.fasterxml.jackson.core.JsonToken r0 = com.fasterxml.jackson.core.JsonToken.VALUE_STRING
            return r0
        L_0x00af:
            r4 = r1
            goto L_0x0063
        L_0x00b1:
            r1 = r3
            goto L_0x00a0
        L_0x00b3:
            r3 = r4
            goto L_0x002a
        */
        throw new UnsupportedOperationException("Method not decompiled: com.fasterxml.jackson.core.json.UTF8StreamJsonParser._handleApos():com.fasterxml.jackson.core.JsonToken");
    }

    /* access modifiers changed from: protected */
    public JsonToken _handleInvalidNumberStart(int i, boolean z) {
        String str;
        byte b = i;
        while (true) {
            if (b != 73) {
                break;
            }
            if (this._inputPtr >= this._inputEnd && !loadMore()) {
                _reportInvalidEOFInValue();
            }
            byte[] bArr = this._inputBuffer;
            int i2 = this._inputPtr;
            this._inputPtr = i2 + 1;
            byte b2 = bArr[i2];
            if (b2 != 78) {
                if (b2 != 110) {
                    b = b2;
                    break;
                }
                str = z ? "-Infinity" : "+Infinity";
            } else {
                str = z ? "-INF" : "+INF";
            }
            _matchToken(str, 3);
            if (isEnabled(JsonParser.Feature.ALLOW_NON_NUMERIC_NUMBERS)) {
                return resetAsNaN(str, z ? Double.NEGATIVE_INFINITY : Double.POSITIVE_INFINITY);
            }
            _reportError("Non-standard token '" + str + "': enable JsonParser.Feature.ALLOW_NON_NUMERIC_NUMBERS to allow");
            b = b2;
        }
        reportUnexpectedNumberChar(b, "expected digit (0-9) to follow minus sign, for valid numeric value");
        return null;
    }

    /* access modifiers changed from: protected */
    public String _handleOddName(int i) {
        int[] iArr;
        int i2;
        int i3;
        int i4;
        if (i == 39 && isEnabled(JsonParser.Feature.ALLOW_SINGLE_QUOTES)) {
            return _parseAposName();
        }
        if (!isEnabled(JsonParser.Feature.ALLOW_UNQUOTED_FIELD_NAMES)) {
            _reportUnexpectedChar((char) _decodeCharForError(i), "was expecting double-quote to start field name");
        }
        int[] inputCodeUtf8JsNames = CharTypes.getInputCodeUtf8JsNames();
        if (inputCodeUtf8JsNames[i] != 0) {
            _reportUnexpectedChar(i, "was expecting either valid name character (for unquoted name) or double-quote (for quoted) to start field name");
        }
        int i5 = 0;
        int i6 = 0;
        byte b = i;
        int i7 = 0;
        int[] iArr2 = this._quadBuffer;
        while (true) {
            if (i5 < 4) {
                int i8 = i5 + 1;
                i3 = b | (i6 << 8);
                i4 = i7;
                iArr = iArr2;
                i2 = i8;
            } else {
                if (i7 >= iArr2.length) {
                    iArr2 = growArrayBy(iArr2, iArr2.length);
                    this._quadBuffer = iArr2;
                }
                int i9 = i7 + 1;
                iArr2[i7] = i6;
                iArr = iArr2;
                i2 = 1;
                i3 = b;
                i4 = i9;
            }
            if (this._inputPtr >= this._inputEnd && !loadMore()) {
                _reportInvalidEOF(" in field name");
            }
            byte b2 = this._inputBuffer[this._inputPtr] & 255;
            if (inputCodeUtf8JsNames[b2] != 0) {
                break;
            }
            this._inputPtr++;
            i6 = i3;
            i5 = i2;
            iArr2 = iArr;
            i7 = i4;
            b = b2;
        }
        if (i2 > 0) {
            if (i4 >= iArr.length) {
                iArr = growArrayBy(iArr, iArr.length);
                this._quadBuffer = iArr;
            }
            iArr[i4] = i3;
            i4++;
        }
        String findName = this._symbols.findName(iArr, i4);
        return findName == null ? addName(iArr, i4, i2) : findName;
    }

    /* access modifiers changed from: protected */
    public JsonToken _handleUnexpectedValue(int i) {
        switch (i) {
            case 39:
                break;
            case 43:
                if (this._inputPtr >= this._inputEnd && !loadMore()) {
                    _reportInvalidEOFInValue();
                }
                byte[] bArr = this._inputBuffer;
                int i2 = this._inputPtr;
                this._inputPtr = i2 + 1;
                return _handleInvalidNumberStart(bArr[i2] & 255, false);
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
            case 93:
            case 125:
                _reportUnexpectedChar(i, "expected a value");
                break;
        }
        if (isEnabled(JsonParser.Feature.ALLOW_SINGLE_QUOTES)) {
            return _handleApos();
        }
        if (Character.isJavaIdentifierStart(i)) {
            _reportInvalidToken(new StringBuilder().append((char) i).toString(), "('true', 'false' or 'null')");
        }
        _reportUnexpectedChar(i, "expected a valid value (number, String, array, object, 'true', 'false' or 'null')");
        return null;
    }

    /* access modifiers changed from: protected */
    public final void _matchToken(String str, int i) {
        int length = str.length();
        if (this._inputPtr + length >= this._inputEnd) {
            _matchToken2(str, i);
            return;
        }
        do {
            if (this._inputBuffer[this._inputPtr] != str.charAt(i)) {
                _reportInvalidToken(str.substring(0, i));
            }
            this._inputPtr++;
            i++;
        } while (i < length);
        byte b = this._inputBuffer[this._inputPtr] & 255;
        if (b >= 48 && b != 93 && b != 125) {
            _checkMatchEnd(str, i, b);
        }
    }

    /* access modifiers changed from: protected */
    /* JADX WARNING: Removed duplicated region for block: B:29:0x0072  */
    /* JADX WARNING: Removed duplicated region for block: B:44:0x00d0  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public java.lang.String _parseAposName() {
        /*
            r12 = this;
            r10 = 39
            r9 = 4
            r1 = 0
            int r0 = r12._inputPtr
            int r2 = r12._inputEnd
            if (r0 < r2) goto L_0x0015
            boolean r0 = r12.loadMore()
            if (r0 != 0) goto L_0x0015
            java.lang.String r0 = ": was expecting closing ''' for name"
            r12._reportInvalidEOF(r0)
        L_0x0015:
            byte[] r0 = r12._inputBuffer
            int r2 = r12._inputPtr
            int r3 = r2 + 1
            r12._inputPtr = r3
            byte r0 = r0[r2]
            r5 = r0 & 255(0xff, float:3.57E-43)
            if (r5 != r10) goto L_0x0026
            java.lang.String r0 = ""
        L_0x0025:
            return r0
        L_0x0026:
            int[] r0 = r12._quadBuffer
            int[] r7 = _icLatin1
            r3 = r1
            r4 = r1
            r2 = r1
        L_0x002d:
            if (r5 == r10) goto L_0x00e4
            r6 = 34
            if (r5 == r6) goto L_0x011b
            r6 = r7[r5]
            if (r6 == 0) goto L_0x011b
            r6 = 92
            if (r5 == r6) goto L_0x009f
            java.lang.String r6 = "name"
            r12._throwUnquotedSpace(r5, r6)
        L_0x0040:
            r6 = 127(0x7f, float:1.78E-43)
            if (r5 <= r6) goto L_0x011b
            if (r3 < r9) goto L_0x0115
            int r3 = r0.length
            if (r2 < r3) goto L_0x0050
            int r3 = r0.length
            int[] r0 = growArrayBy(r0, r3)
            r12._quadBuffer = r0
        L_0x0050:
            int r3 = r2 + 1
            r0[r2] = r4
            r2 = r1
            r4 = r3
            r3 = r1
        L_0x0057:
            r6 = 2048(0x800, float:2.87E-42)
            if (r5 >= r6) goto L_0x00a4
            int r3 = r3 << 8
            int r6 = r5 >> 6
            r6 = r6 | 192(0xc0, float:2.69E-43)
            r3 = r3 | r6
            int r2 = r2 + 1
            r11 = r2
            r2 = r3
            r3 = r0
            r0 = r11
        L_0x0068:
            r5 = r5 & 63
            r5 = r5 | 128(0x80, float:1.794E-43)
            r6 = r2
            r2 = r0
            r0 = r3
            r3 = r5
        L_0x0070:
            if (r2 >= r9) goto L_0x00d0
            int r2 = r2 + 1
            int r5 = r6 << 8
            r3 = r3 | r5
            r11 = r2
            r2 = r3
            r3 = r4
            r4 = r0
            r0 = r11
        L_0x007c:
            int r5 = r12._inputPtr
            int r6 = r12._inputEnd
            if (r5 < r6) goto L_0x008d
            boolean r5 = r12.loadMore()
            if (r5 != 0) goto L_0x008d
            java.lang.String r5 = " in field name"
            r12._reportInvalidEOF(r5)
        L_0x008d:
            byte[] r5 = r12._inputBuffer
            int r6 = r12._inputPtr
            int r8 = r6 + 1
            r12._inputPtr = r8
            byte r5 = r5[r6]
            r5 = r5 & 255(0xff, float:3.57E-43)
            r11 = r0
            r0 = r4
            r4 = r2
            r2 = r3
            r3 = r11
            goto L_0x002d
        L_0x009f:
            char r5 = r12._decodeEscaped()
            goto L_0x0040
        L_0x00a4:
            int r3 = r3 << 8
            int r6 = r5 >> 12
            r6 = r6 | 224(0xe0, float:3.14E-43)
            r3 = r3 | r6
            int r2 = r2 + 1
            if (r2 < r9) goto L_0x010f
            int r2 = r0.length
            if (r4 < r2) goto L_0x00b9
            int r2 = r0.length
            int[] r0 = growArrayBy(r0, r2)
            r12._quadBuffer = r0
        L_0x00b9:
            int r2 = r4 + 1
            r0[r4] = r3
            r3 = r2
            r4 = r0
            r0 = r1
            r2 = r1
        L_0x00c1:
            int r2 = r2 << 8
            int r6 = r5 >> 6
            r6 = r6 & 63
            r6 = r6 | 128(0x80, float:1.794E-43)
            r2 = r2 | r6
            int r0 = r0 + 1
            r11 = r3
            r3 = r4
            r4 = r11
            goto L_0x0068
        L_0x00d0:
            int r2 = r0.length
            if (r4 < r2) goto L_0x00da
            int r2 = r0.length
            int[] r0 = growArrayBy(r0, r2)
            r12._quadBuffer = r0
        L_0x00da:
            int r5 = r4 + 1
            r0[r4] = r6
            r2 = 1
            r4 = r0
            r0 = r2
            r2 = r3
            r3 = r5
            goto L_0x007c
        L_0x00e4:
            if (r3 <= 0) goto L_0x010c
            int r1 = r0.length
            if (r2 < r1) goto L_0x00f0
            int r1 = r0.length
            int[] r0 = growArrayBy(r0, r1)
            r12._quadBuffer = r0
        L_0x00f0:
            int r1 = r2 + 1
            int r4 = pad(r4, r3)
            r0[r2] = r4
            r11 = r1
            r1 = r0
            r0 = r11
        L_0x00fb:
            com.fasterxml.jackson.core.sym.ByteQuadsCanonicalizer r2 = r12._symbols
            java.lang.String r2 = r2.findName((int[]) r1, (int) r0)
            if (r2 != 0) goto L_0x0109
            java.lang.String r0 = r12.addName(r1, r0, r3)
            goto L_0x0025
        L_0x0109:
            r0 = r2
            goto L_0x0025
        L_0x010c:
            r1 = r0
            r0 = r2
            goto L_0x00fb
        L_0x010f:
            r11 = r2
            r2 = r3
            r3 = r4
            r4 = r0
            r0 = r11
            goto L_0x00c1
        L_0x0115:
            r11 = r3
            r3 = r4
            r4 = r2
            r2 = r11
            goto L_0x0057
        L_0x011b:
            r6 = r4
            r4 = r2
            r2 = r3
            r3 = r5
            goto L_0x0070
        */
        throw new UnsupportedOperationException("Method not decompiled: com.fasterxml.jackson.core.json.UTF8StreamJsonParser._parseAposName():java.lang.String");
    }

    /* access modifiers changed from: protected */
    public final String _parseName(int i) {
        if (i != 34) {
            return _handleOddName(i);
        }
        if (this._inputPtr + 13 > this._inputEnd) {
            return slowParseName();
        }
        byte[] bArr = this._inputBuffer;
        int[] iArr = _icLatin1;
        int i2 = this._inputPtr;
        this._inputPtr = i2 + 1;
        byte b = bArr[i2] & 255;
        if (iArr[b] != 0) {
            return b == 34 ? "" : parseName(0, b, 0);
        }
        int i3 = this._inputPtr;
        this._inputPtr = i3 + 1;
        byte b2 = bArr[i3] & 255;
        if (iArr[b2] != 0) {
            return b2 == 34 ? findName(b, 1) : parseName(b, b2, 1);
        }
        byte b3 = (b << 8) | b2;
        int i4 = this._inputPtr;
        this._inputPtr = i4 + 1;
        byte b4 = bArr[i4] & 255;
        if (iArr[b4] != 0) {
            return b4 == 34 ? findName(b3, 2) : parseName(b3, b4, 2);
        }
        byte b5 = (b3 << 8) | b4;
        int i5 = this._inputPtr;
        this._inputPtr = i5 + 1;
        byte b6 = bArr[i5] & 255;
        if (iArr[b6] != 0) {
            return b6 == 34 ? findName(b5, 3) : parseName(b5, b6, 3);
        }
        byte b7 = (b5 << 8) | b6;
        int i6 = this._inputPtr;
        this._inputPtr = i6 + 1;
        byte b8 = bArr[i6] & 255;
        if (iArr[b8] != 0) {
            return b8 == 34 ? findName(b7, 4) : parseName(b7, b8, 4);
        }
        this._quad1 = b7;
        return parseMediumName(b8);
    }

    /* access modifiers changed from: protected */
    public JsonToken _parseNegNumber() {
        int i;
        char[] emptyAndGetCurrentSegment = this._textBuffer.emptyAndGetCurrentSegment();
        emptyAndGetCurrentSegment[0] = '-';
        if (this._inputPtr >= this._inputEnd) {
            loadMoreGuaranteed();
        }
        byte[] bArr = this._inputBuffer;
        int i2 = this._inputPtr;
        this._inputPtr = i2 + 1;
        int i3 = bArr[i2] & 255;
        if (i3 < 48 || i3 > 57) {
            return _handleInvalidNumberStart(i3, true);
        }
        if (i3 == 48) {
            i3 = _verifyNoLeadingZeroes();
        }
        int i4 = 2;
        emptyAndGetCurrentSegment[1] = (char) i3;
        int length = (this._inputPtr + emptyAndGetCurrentSegment.length) - 2;
        if (length > this._inputEnd) {
            length = this._inputEnd;
            i = 1;
        } else {
            i = 1;
        }
        while (this._inputPtr < length) {
            byte[] bArr2 = this._inputBuffer;
            int i5 = this._inputPtr;
            this._inputPtr = i5 + 1;
            byte b = bArr2[i5] & 255;
            if (b >= 48 && b <= 57) {
                i++;
                emptyAndGetCurrentSegment[i4] = (char) b;
                i4++;
            } else if (b == 46 || b == 101 || b == 69) {
                return _parseFloat(emptyAndGetCurrentSegment, i4, b, true, i);
            } else {
                this._inputPtr--;
                this._textBuffer.setCurrentLength(i4);
                if (this._parsingContext.inRoot()) {
                    _verifyRootSpace(b);
                }
                return resetInt(true, i);
            }
        }
        return _parseNumber2(emptyAndGetCurrentSegment, i4, true, i);
    }

    /* access modifiers changed from: protected */
    public JsonToken _parsePosNumber(int i) {
        int i2;
        int i3 = 1;
        char[] emptyAndGetCurrentSegment = this._textBuffer.emptyAndGetCurrentSegment();
        if (i == 48) {
            i = _verifyNoLeadingZeroes();
        }
        emptyAndGetCurrentSegment[0] = (char) i;
        int length = (this._inputPtr + emptyAndGetCurrentSegment.length) - 1;
        if (length > this._inputEnd) {
            length = this._inputEnd;
            i2 = 1;
        } else {
            i2 = 1;
        }
        while (this._inputPtr < length) {
            byte[] bArr = this._inputBuffer;
            int i4 = this._inputPtr;
            this._inputPtr = i4 + 1;
            byte b = bArr[i4] & 255;
            if (b >= 48 && b <= 57) {
                emptyAndGetCurrentSegment[i3] = (char) b;
                i3++;
                i2++;
            } else if (b == 46 || b == 101 || b == 69) {
                return _parseFloat(emptyAndGetCurrentSegment, i3, b, false, i2);
            } else {
                this._inputPtr--;
                this._textBuffer.setCurrentLength(i3);
                if (this._parsingContext.inRoot()) {
                    _verifyRootSpace(b);
                }
                return resetInt(false, i2);
            }
        }
        return _parseNumber2(emptyAndGetCurrentSegment, i3, false, i2);
    }

    /* access modifiers changed from: protected */
    public void _releaseBuffers() {
        byte[] bArr;
        super._releaseBuffers();
        this._symbols.release();
        if (this._bufferRecyclable && (bArr = this._inputBuffer) != null) {
            this._inputBuffer = ByteArrayBuilder.NO_BYTES;
            this._ioContext.releaseReadIOBuffer(bArr);
        }
    }

    /* access modifiers changed from: protected */
    public void _reportInvalidChar(int i) {
        if (i < 32) {
            _throwInvalidSpace(i);
        }
        _reportInvalidInitial(i);
    }

    /* access modifiers changed from: protected */
    public void _reportInvalidInitial(int i) {
        _reportError("Invalid UTF-8 start byte 0x" + Integer.toHexString(i));
    }

    /* access modifiers changed from: protected */
    public void _reportInvalidOther(int i) {
        _reportError("Invalid UTF-8 middle byte 0x" + Integer.toHexString(i));
    }

    /* access modifiers changed from: protected */
    public void _reportInvalidOther(int i, int i2) {
        this._inputPtr = i2;
        _reportInvalidOther(i);
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
            byte[] bArr = this._inputBuffer;
            int i = this._inputPtr;
            this._inputPtr = i + 1;
            char _decodeCharForError = (char) _decodeCharForError(bArr[i]);
            if (!Character.isJavaIdentifierPart(_decodeCharForError)) {
                break;
            }
            sb.append(_decodeCharForError);
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
    public void _skipString() {
        this._tokenIncomplete = false;
        int[] iArr = _icUTF8;
        byte[] bArr = this._inputBuffer;
        while (true) {
            int i = this._inputPtr;
            int i2 = this._inputEnd;
            if (i >= i2) {
                loadMoreGuaranteed();
                i = this._inputPtr;
                i2 = this._inputEnd;
            }
            while (true) {
                if (i < i2) {
                    int i3 = i + 1;
                    byte b = bArr[i] & 255;
                    if (iArr[b] != 0) {
                        this._inputPtr = i3;
                        if (b != 34) {
                            switch (iArr[b]) {
                                case 1:
                                    _decodeEscaped();
                                    break;
                                case 2:
                                    _skipUtf8_2(b);
                                    break;
                                case 3:
                                    _skipUtf8_3(b);
                                    break;
                                case 4:
                                    _skipUtf8_4(b);
                                    break;
                                default:
                                    if (b >= 32) {
                                        _reportInvalidChar(b);
                                        break;
                                    } else {
                                        _throwUnquotedSpace(b, "string value");
                                        break;
                                    }
                            }
                        } else {
                            return;
                        }
                    } else {
                        i = i3;
                    }
                } else {
                    this._inputPtr = i;
                }
            }
        }
    }

    public JsonLocation getCurrentLocation() {
        return new JsonLocation(this._ioContext.getSourceReference(), this._currInputProcessed + ((long) this._inputPtr), -1, this._currInputRow, (this._inputPtr - this._currInputRowStart) + 1);
    }

    public String getText() {
        if (this._currToken != JsonToken.VALUE_STRING) {
            return _getText2(this._currToken);
        }
        if (!this._tokenIncomplete) {
            return this._textBuffer.contentsAsString();
        }
        this._tokenIncomplete = false;
        return _finishAndReturnString();
    }

    /* access modifiers changed from: protected */
    public final boolean loadMore() {
        int length;
        int i = this._inputEnd;
        this._currInputProcessed += (long) this._inputEnd;
        this._currInputRowStart -= this._inputEnd;
        this._nameStartOffset -= i;
        if (this._inputStream == null || (length = this._inputBuffer.length) == 0) {
            return false;
        }
        int read = this._inputStream.read(this._inputBuffer, 0, length);
        if (read > 0) {
            this._inputPtr = 0;
            this._inputEnd = read;
            return true;
        }
        _closeInput();
        if (read != 0) {
            return false;
        }
        throw new IOException("InputStream.read() returned 0 characters when trying to read " + this._inputBuffer.length + " bytes");
    }

    public JsonToken nextToken() {
        JsonToken jsonToken;
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
            JsonToken jsonToken2 = JsonToken.END_ARRAY;
            this._currToken = jsonToken2;
            return jsonToken2;
        } else if (_skipWSOrEnd == 125) {
            _updateLocation();
            if (!this._parsingContext.inObject()) {
                _reportMismatchedEndMarker(_skipWSOrEnd, ']');
            }
            this._parsingContext = this._parsingContext.clearAndGetParent();
            JsonToken jsonToken3 = JsonToken.END_OBJECT;
            this._currToken = jsonToken3;
            return jsonToken3;
        } else {
            if (this._parsingContext.expectComma()) {
                if (_skipWSOrEnd != 44) {
                    _reportUnexpectedChar(_skipWSOrEnd, "was expecting comma to separate " + this._parsingContext.getTypeDesc() + " entries");
                }
                _skipWSOrEnd = _skipWS();
            }
            if (!this._parsingContext.inObject()) {
                _updateLocation();
                return _nextTokenNotInObject(_skipWSOrEnd);
            }
            _updateNameLocation();
            this._parsingContext.setCurrentName(_parseName(_skipWSOrEnd));
            this._currToken = JsonToken.FIELD_NAME;
            int _skipColon = _skipColon();
            _updateLocation();
            if (_skipColon == 34) {
                this._tokenIncomplete = true;
                this._nextToken = JsonToken.VALUE_STRING;
                return this._currToken;
            }
            switch (_skipColon) {
                case 45:
                    jsonToken = _parseNegNumber();
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
                    jsonToken = _parsePosNumber(_skipColon);
                    break;
                case 91:
                    jsonToken = JsonToken.START_ARRAY;
                    break;
                case 102:
                    _matchToken("false", 1);
                    jsonToken = JsonToken.VALUE_FALSE;
                    break;
                case 110:
                    _matchToken("null", 1);
                    jsonToken = JsonToken.VALUE_NULL;
                    break;
                case 116:
                    _matchToken("true", 1);
                    jsonToken = JsonToken.VALUE_TRUE;
                    break;
                case 123:
                    jsonToken = JsonToken.START_OBJECT;
                    break;
                default:
                    jsonToken = _handleUnexpectedValue(_skipColon);
                    break;
            }
            this._nextToken = jsonToken;
            return this._currToken;
        }
    }

    /* access modifiers changed from: protected */
    /* JADX WARNING: Removed duplicated region for block: B:20:0x0047  */
    /* JADX WARNING: Removed duplicated region for block: B:35:0x009c  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final java.lang.String parseEscapedName(int[] r10, int r11, int r12, int r13, int r14) {
        /*
            r9 = this;
            r7 = 4
            r1 = 0
            int[] r5 = _icLatin1
        L_0x0004:
            r0 = r5[r13]
            if (r0 == 0) goto L_0x00da
            r0 = 34
            if (r13 == r0) goto L_0x00ae
            r0 = 92
            if (r13 == r0) goto L_0x006b
            java.lang.String r0 = "name"
            r9._throwUnquotedSpace(r13, r0)
        L_0x0015:
            r0 = 127(0x7f, float:1.78E-43)
            if (r13 <= r0) goto L_0x00da
            if (r14 < r7) goto L_0x00d6
            int r0 = r10.length
            if (r11 < r0) goto L_0x0025
            int r0 = r10.length
            int[] r10 = growArrayBy(r10, r0)
            r9._quadBuffer = r10
        L_0x0025:
            int r4 = r11 + 1
            r10[r11] = r12
            r14 = r1
            r12 = r1
            r0 = r10
        L_0x002c:
            r2 = 2048(0x800, float:2.87E-42)
            if (r13 >= r2) goto L_0x0070
            int r2 = r12 << 8
            int r3 = r13 >> 6
            r3 = r3 | 192(0xc0, float:2.69E-43)
            r3 = r3 | r2
            int r2 = r14 + 1
            r8 = r2
            r2 = r3
            r3 = r0
            r0 = r8
        L_0x003d:
            r6 = r13 & 63
            r12 = r6 | 128(0x80, float:1.794E-43)
            r14 = r0
            r11 = r4
            r0 = r3
            r3 = r2
        L_0x0045:
            if (r14 >= r7) goto L_0x009c
            int r14 = r14 + 1
            int r2 = r3 << 8
            r12 = r12 | r2
            r10 = r0
        L_0x004d:
            int r0 = r9._inputPtr
            int r2 = r9._inputEnd
            if (r0 < r2) goto L_0x005e
            boolean r0 = r9.loadMore()
            if (r0 != 0) goto L_0x005e
            java.lang.String r0 = " in field name"
            r9._reportInvalidEOF(r0)
        L_0x005e:
            byte[] r0 = r9._inputBuffer
            int r2 = r9._inputPtr
            int r3 = r2 + 1
            r9._inputPtr = r3
            byte r0 = r0[r2]
            r13 = r0 & 255(0xff, float:3.57E-43)
            goto L_0x0004
        L_0x006b:
            char r13 = r9._decodeEscaped()
            goto L_0x0015
        L_0x0070:
            int r2 = r12 << 8
            int r3 = r13 >> 12
            r3 = r3 | 224(0xe0, float:3.14E-43)
            r3 = r3 | r2
            int r2 = r14 + 1
            if (r2 < r7) goto L_0x00d0
            int r2 = r0.length
            if (r4 < r2) goto L_0x0085
            int r2 = r0.length
            int[] r0 = growArrayBy(r0, r2)
            r9._quadBuffer = r0
        L_0x0085:
            int r2 = r4 + 1
            r0[r4] = r3
            r3 = r2
            r4 = r0
            r0 = r1
            r2 = r1
        L_0x008d:
            int r2 = r2 << 8
            int r6 = r13 >> 6
            r6 = r6 & 63
            r6 = r6 | 128(0x80, float:1.794E-43)
            r2 = r2 | r6
            int r0 = r0 + 1
            r8 = r3
            r3 = r4
            r4 = r8
            goto L_0x003d
        L_0x009c:
            int r2 = r0.length
            if (r11 < r2) goto L_0x00a6
            int r2 = r0.length
            int[] r0 = growArrayBy(r0, r2)
            r9._quadBuffer = r0
        L_0x00a6:
            int r2 = r11 + 1
            r0[r11] = r3
            r14 = 1
            r11 = r2
            r10 = r0
            goto L_0x004d
        L_0x00ae:
            if (r14 <= 0) goto L_0x00c3
            int r0 = r10.length
            if (r11 < r0) goto L_0x00ba
            int r0 = r10.length
            int[] r10 = growArrayBy(r10, r0)
            r9._quadBuffer = r10
        L_0x00ba:
            int r0 = r11 + 1
            int r1 = pad(r12, r14)
            r10[r11] = r1
            r11 = r0
        L_0x00c3:
            com.fasterxml.jackson.core.sym.ByteQuadsCanonicalizer r0 = r9._symbols
            java.lang.String r0 = r0.findName((int[]) r10, (int) r11)
            if (r0 != 0) goto L_0x00cf
            java.lang.String r0 = r9.addName(r10, r11, r14)
        L_0x00cf:
            return r0
        L_0x00d0:
            r8 = r2
            r2 = r3
            r3 = r4
            r4 = r0
            r0 = r8
            goto L_0x008d
        L_0x00d6:
            r4 = r11
            r0 = r10
            goto L_0x002c
        L_0x00da:
            r3 = r12
            r0 = r10
            r12 = r13
            goto L_0x0045
        */
        throw new UnsupportedOperationException("Method not decompiled: com.fasterxml.jackson.core.json.UTF8StreamJsonParser.parseEscapedName(int[], int, int, int, int):java.lang.String");
    }

    /* access modifiers changed from: protected */
    public final String parseLongName(int i, int i2, int i3) {
        this._quadBuffer[0] = this._quad1;
        this._quadBuffer[1] = i2;
        this._quadBuffer[2] = i3;
        byte[] bArr = this._inputBuffer;
        int[] iArr = _icLatin1;
        int i4 = 3;
        byte b = i;
        while (this._inputPtr + 4 <= this._inputEnd) {
            int i5 = this._inputPtr;
            this._inputPtr = i5 + 1;
            byte b2 = bArr[i5] & 255;
            if (iArr[b2] == 0) {
                byte b3 = (b << 8) | b2;
                int i6 = this._inputPtr;
                this._inputPtr = i6 + 1;
                byte b4 = bArr[i6] & 255;
                if (iArr[b4] == 0) {
                    byte b5 = (b3 << 8) | b4;
                    int i7 = this._inputPtr;
                    this._inputPtr = i7 + 1;
                    byte b6 = bArr[i7] & 255;
                    if (iArr[b6] == 0) {
                        int i8 = (b5 << 8) | b6;
                        int i9 = this._inputPtr;
                        this._inputPtr = i9 + 1;
                        byte b7 = bArr[i9] & 255;
                        if (iArr[b7] == 0) {
                            if (i4 >= this._quadBuffer.length) {
                                this._quadBuffer = growArrayBy(this._quadBuffer, i4);
                            }
                            this._quadBuffer[i4] = i8;
                            i4++;
                            b = b7;
                        } else if (b7 == 34) {
                            return findName(this._quadBuffer, i4, i8, 4);
                        } else {
                            return parseEscapedName(this._quadBuffer, i4, i8, b7, 4);
                        }
                    } else if (b6 == 34) {
                        return findName(this._quadBuffer, i4, (int) b5, 3);
                    } else {
                        return parseEscapedName(this._quadBuffer, i4, b5, b6, 3);
                    }
                } else if (b4 == 34) {
                    return findName(this._quadBuffer, i4, (int) b3, 2);
                } else {
                    return parseEscapedName(this._quadBuffer, i4, b3, b4, 2);
                }
            } else if (b2 == 34) {
                return findName(this._quadBuffer, i4, b, 1);
            } else {
                return parseEscapedName(this._quadBuffer, i4, b, b2, 1);
            }
        }
        return parseEscapedName(this._quadBuffer, i4, 0, b, 0);
    }

    /* access modifiers changed from: protected */
    public final String parseMediumName(int i) {
        byte[] bArr = this._inputBuffer;
        int[] iArr = _icLatin1;
        int i2 = this._inputPtr;
        this._inputPtr = i2 + 1;
        byte b = bArr[i2] & 255;
        if (iArr[b] != 0) {
            return b == 34 ? findName(this._quad1, i, 1) : parseName(this._quad1, i, b, 1);
        }
        byte b2 = b | (i << 8);
        int i3 = this._inputPtr;
        this._inputPtr = i3 + 1;
        byte b3 = bArr[i3] & 255;
        if (iArr[b3] != 0) {
            return b3 == 34 ? findName(this._quad1, b2, 2) : parseName(this._quad1, b2, b3, 2);
        }
        byte b4 = (b2 << 8) | b3;
        int i4 = this._inputPtr;
        this._inputPtr = i4 + 1;
        byte b5 = bArr[i4] & 255;
        if (iArr[b5] != 0) {
            return b5 == 34 ? findName(this._quad1, b4, 3) : parseName(this._quad1, b4, b5, 3);
        }
        byte b6 = (b4 << 8) | b5;
        int i5 = this._inputPtr;
        this._inputPtr = i5 + 1;
        byte b7 = bArr[i5] & 255;
        return iArr[b7] != 0 ? b7 == 34 ? findName(this._quad1, b6, 4) : parseName(this._quad1, b6, b7, 4) : parseMediumName2(b7, b6);
    }

    /* access modifiers changed from: protected */
    public final String parseMediumName2(int i, int i2) {
        byte[] bArr = this._inputBuffer;
        int[] iArr = _icLatin1;
        int i3 = this._inputPtr;
        this._inputPtr = i3 + 1;
        byte b = bArr[i3] & 255;
        if (iArr[b] == 0) {
            byte b2 = (i << 8) | b;
            int i4 = this._inputPtr;
            this._inputPtr = i4 + 1;
            byte b3 = bArr[i4] & 255;
            if (iArr[b3] == 0) {
                byte b4 = (b2 << 8) | b3;
                int i5 = this._inputPtr;
                this._inputPtr = i5 + 1;
                byte b5 = bArr[i5] & 255;
                if (iArr[b5] == 0) {
                    byte b6 = (b4 << 8) | b5;
                    int i6 = this._inputPtr;
                    this._inputPtr = i6 + 1;
                    byte b7 = bArr[i6] & 255;
                    if (iArr[b7] == 0) {
                        return parseLongName(b7, i2, b6);
                    }
                    if (b7 == 34) {
                        return findName(this._quad1, i2, (int) b6, 4);
                    }
                    return parseName(this._quad1, i2, b6, b7, 4);
                } else if (b5 == 34) {
                    return findName(this._quad1, i2, (int) b4, 3);
                } else {
                    return parseName(this._quad1, i2, b4, b5, 3);
                }
            } else if (b3 == 34) {
                return findName(this._quad1, i2, (int) b2, 2);
            } else {
                return parseName(this._quad1, i2, b2, b3, 2);
            }
        } else if (b == 34) {
            return findName(this._quad1, i2, i, 1);
        } else {
            return parseName(this._quad1, i2, i, b, 1);
        }
    }

    /* access modifiers changed from: protected */
    public String slowParseName() {
        if (this._inputPtr >= this._inputEnd && !loadMore()) {
            _reportInvalidEOF(": was expecting closing '\"' for name");
        }
        byte[] bArr = this._inputBuffer;
        int i = this._inputPtr;
        this._inputPtr = i + 1;
        byte b = bArr[i] & 255;
        if (b == 34) {
            return "";
        }
        return parseEscapedName(this._quadBuffer, 0, 0, b, 0);
    }
}
