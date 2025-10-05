package com.fasterxml.jackson.core.base;

import com.fasterxml.jackson.core.JsonLocation;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import com.fasterxml.jackson.core.io.IOContext;
import com.fasterxml.jackson.core.io.NumberInput;
import com.fasterxml.jackson.core.json.DupDetector;
import com.fasterxml.jackson.core.json.JsonReadContext;
import com.fasterxml.jackson.core.util.TextBuffer;
import java.math.BigDecimal;
import java.math.BigInteger;

public abstract class ParserBase extends ParserMinimalBase {
    static final BigDecimal BD_MAX_INT = new BigDecimal(BI_MAX_INT);
    static final BigDecimal BD_MAX_LONG = new BigDecimal(BI_MAX_LONG);
    static final BigDecimal BD_MIN_INT = new BigDecimal(BI_MIN_INT);
    static final BigDecimal BD_MIN_LONG = new BigDecimal(BI_MIN_LONG);
    static final BigInteger BI_MAX_INT = BigInteger.valueOf(2147483647L);
    static final BigInteger BI_MAX_LONG = BigInteger.valueOf(Long.MAX_VALUE);
    static final BigInteger BI_MIN_INT = BigInteger.valueOf(-2147483648L);
    static final BigInteger BI_MIN_LONG = BigInteger.valueOf(Long.MIN_VALUE);
    protected byte[] _binaryValue;
    protected boolean _closed;
    protected long _currInputProcessed;
    protected int _currInputRow = 1;
    protected int _currInputRowStart;
    protected int _expLength;
    protected int _fractLength;
    protected int _inputEnd;
    protected int _inputPtr;
    protected int _intLength;
    protected final IOContext _ioContext;
    protected boolean _nameCopied;
    protected char[] _nameCopyBuffer;
    protected JsonToken _nextToken;
    protected int _numTypesValid = 0;
    protected BigDecimal _numberBigDecimal;
    protected BigInteger _numberBigInt;
    protected double _numberDouble;
    protected int _numberInt;
    protected long _numberLong;
    protected boolean _numberNegative;
    protected JsonReadContext _parsingContext;
    protected final TextBuffer _textBuffer;
    protected int _tokenInputCol;
    protected int _tokenInputRow = 1;
    protected long _tokenInputTotal;

    protected ParserBase(IOContext iOContext, int i) {
        super(i);
        this._ioContext = iOContext;
        this._textBuffer = iOContext.constructTextBuffer();
        this._parsingContext = JsonReadContext.createRootContext(JsonParser.Feature.STRICT_DUPLICATE_DETECTION.enabledIn(i) ? DupDetector.rootDetector((JsonParser) this) : null);
    }

    private void _parseSlowFloat(int i) {
        if (i == 16) {
            try {
                this._numberBigDecimal = this._textBuffer.contentsAsDecimal();
                this._numTypesValid = 16;
            } catch (NumberFormatException e) {
                _wrapError("Malformed numeric value '" + this._textBuffer.contentsAsString() + "'", e);
            }
        } else {
            this._numberDouble = this._textBuffer.contentsAsDouble();
            this._numTypesValid = 8;
        }
    }

    private void _parseSlowInt(int i, char[] cArr, int i2, int i3) {
        String contentsAsString = this._textBuffer.contentsAsString();
        try {
            if (NumberInput.inLongRange(cArr, i2, i3, this._numberNegative)) {
                this._numberLong = Long.parseLong(contentsAsString);
                this._numTypesValid = 2;
                return;
            }
            this._numberBigInt = new BigInteger(contentsAsString);
            this._numTypesValid = 4;
        } catch (NumberFormatException e) {
            _wrapError("Malformed numeric value '" + contentsAsString + "'", e);
        }
    }

    public abstract void _closeInput();

    public char _decodeEscaped() {
        throw new UnsupportedOperationException();
    }

    /* access modifiers changed from: protected */
    public final int _eofAsNextChar() {
        _handleEOF();
        return -1;
    }

    public abstract void _finishString();

    /* access modifiers changed from: protected */
    public void _handleEOF() {
        if (!this._parsingContext.inRoot()) {
            _reportInvalidEOF(": expected close marker for " + this._parsingContext.getTypeDesc() + " (from " + this._parsingContext.getStartLocation(this._ioContext.getSourceReference()) + ")");
        }
    }

    /* access modifiers changed from: protected */
    public void _parseNumericValue(int i) {
        if (this._currToken == JsonToken.VALUE_NUMBER_INT) {
            char[] textBuffer = this._textBuffer.getTextBuffer();
            int textOffset = this._textBuffer.getTextOffset();
            int i2 = this._intLength;
            if (this._numberNegative) {
                textOffset++;
            }
            if (i2 <= 9) {
                int parseInt = NumberInput.parseInt(textBuffer, textOffset, i2);
                if (this._numberNegative) {
                    parseInt = -parseInt;
                }
                this._numberInt = parseInt;
                this._numTypesValid = 1;
            } else if (i2 <= 18) {
                long parseLong = NumberInput.parseLong(textBuffer, textOffset, i2);
                if (this._numberNegative) {
                    parseLong = -parseLong;
                }
                if (i2 == 10) {
                    if (this._numberNegative) {
                        if (parseLong >= -2147483648L) {
                            this._numberInt = (int) parseLong;
                            this._numTypesValid = 1;
                            return;
                        }
                    } else if (parseLong <= 2147483647L) {
                        this._numberInt = (int) parseLong;
                        this._numTypesValid = 1;
                        return;
                    }
                }
                this._numberLong = parseLong;
                this._numTypesValid = 2;
            } else {
                _parseSlowInt(i, textBuffer, textOffset, i2);
            }
        } else if (this._currToken == JsonToken.VALUE_NUMBER_FLOAT) {
            _parseSlowFloat(i);
        } else {
            _reportError("Current token (" + this._currToken + ") not numeric, can not use numeric value accessors");
        }
    }

    public void _releaseBuffers() {
        this._textBuffer.releaseBuffers();
        char[] cArr = this._nameCopyBuffer;
        if (cArr != null) {
            this._nameCopyBuffer = null;
            this._ioContext.releaseNameCopyBuffer(cArr);
        }
    }

    /* access modifiers changed from: protected */
    public void _reportMismatchedEndMarker(int i, char c) {
        _reportError("Unexpected close marker '" + ((char) i) + "': expected '" + c + "' (for " + this._parsingContext.getTypeDesc() + " starting at " + new StringBuilder().append(this._parsingContext.getStartLocation(this._ioContext.getSourceReference())).toString() + ")");
    }

    public void close() {
        if (!this._closed) {
            this._closed = true;
            try {
                _closeInput();
            } finally {
                _releaseBuffers();
            }
        }
    }

    /* access modifiers changed from: protected */
    public void convertNumberToDouble() {
        if ((this._numTypesValid & 16) != 0) {
            this._numberDouble = this._numberBigDecimal.doubleValue();
        } else if ((this._numTypesValid & 4) != 0) {
            this._numberDouble = this._numberBigInt.doubleValue();
        } else if ((this._numTypesValid & 2) != 0) {
            this._numberDouble = (double) this._numberLong;
        } else if ((this._numTypesValid & 1) != 0) {
            this._numberDouble = (double) this._numberInt;
        } else {
            _throwInternal();
        }
        this._numTypesValid |= 8;
    }

    /* access modifiers changed from: protected */
    public void convertNumberToLong() {
        if ((this._numTypesValid & 1) != 0) {
            this._numberLong = (long) this._numberInt;
        } else if ((this._numTypesValid & 4) != 0) {
            if (BI_MIN_LONG.compareTo(this._numberBigInt) > 0 || BI_MAX_LONG.compareTo(this._numberBigInt) < 0) {
                reportOverflowLong();
            }
            this._numberLong = this._numberBigInt.longValue();
        } else if ((this._numTypesValid & 8) != 0) {
            if (this._numberDouble < -9.223372036854776E18d || this._numberDouble > 9.223372036854776E18d) {
                reportOverflowLong();
            }
            this._numberLong = (long) this._numberDouble;
        } else if ((this._numTypesValid & 16) != 0) {
            if (BD_MIN_LONG.compareTo(this._numberBigDecimal) > 0 || BD_MAX_LONG.compareTo(this._numberBigDecimal) < 0) {
                reportOverflowLong();
            }
            this._numberLong = this._numberBigDecimal.longValue();
        } else {
            _throwInternal();
        }
        this._numTypesValid |= 2;
    }

    public JsonLocation getCurrentLocation() {
        return new JsonLocation(this._ioContext.getSourceReference(), -1, this._currInputProcessed + ((long) this._inputPtr), this._currInputRow, (this._inputPtr - this._currInputRowStart) + 1);
    }

    /* JADX WARNING: Code restructure failed: missing block: B:4:0x000c, code lost:
        r0 = r2._parsingContext.getParent();
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public java.lang.String getCurrentName() {
        /*
            r2 = this;
            com.fasterxml.jackson.core.JsonToken r0 = r2._currToken
            com.fasterxml.jackson.core.JsonToken r1 = com.fasterxml.jackson.core.JsonToken.START_OBJECT
            if (r0 == r1) goto L_0x000c
            com.fasterxml.jackson.core.JsonToken r0 = r2._currToken
            com.fasterxml.jackson.core.JsonToken r1 = com.fasterxml.jackson.core.JsonToken.START_ARRAY
            if (r0 != r1) goto L_0x0019
        L_0x000c:
            com.fasterxml.jackson.core.json.JsonReadContext r0 = r2._parsingContext
            com.fasterxml.jackson.core.json.JsonReadContext r0 = r0.getParent()
            if (r0 == 0) goto L_0x0019
            java.lang.String r0 = r0.getCurrentName()
        L_0x0018:
            return r0
        L_0x0019:
            com.fasterxml.jackson.core.json.JsonReadContext r0 = r2._parsingContext
            java.lang.String r0 = r0.getCurrentName()
            goto L_0x0018
        */
        throw new UnsupportedOperationException("Method not decompiled: com.fasterxml.jackson.core.base.ParserBase.getCurrentName():java.lang.String");
    }

    public double getDoubleValue() {
        if ((this._numTypesValid & 8) == 0) {
            if (this._numTypesValid == 0) {
                _parseNumericValue(8);
            }
            if ((this._numTypesValid & 8) == 0) {
                convertNumberToDouble();
            }
        }
        return this._numberDouble;
    }

    public long getLongValue() {
        if ((this._numTypesValid & 2) == 0) {
            if (this._numTypesValid == 0) {
                _parseNumericValue(2);
            }
            if ((this._numTypesValid & 2) == 0) {
                convertNumberToLong();
            }
        }
        return this._numberLong;
    }

    public abstract boolean loadMore();

    /* access modifiers changed from: protected */
    public final void loadMoreGuaranteed() {
        if (!loadMore()) {
            _reportInvalidEOF();
        }
    }

    /* access modifiers changed from: protected */
    public void reportInvalidNumber(String str) {
        _reportError("Invalid numeric value: " + str);
    }

    /* access modifiers changed from: protected */
    public void reportOverflowLong() {
        _reportError("Numeric value (" + getText() + ") out of range of long (-9223372036854775808 - 9223372036854775807)");
    }

    /* access modifiers changed from: protected */
    public void reportUnexpectedNumberChar(int i, String str) {
        String str2 = "Unexpected character (" + _getCharDesc(i) + ") in numeric value";
        if (str != null) {
            str2 = str2 + ": " + str;
        }
        _reportError(str2);
    }

    /* access modifiers changed from: protected */
    public final JsonToken reset(boolean z, int i, int i2, int i3) {
        return (i2 > 0 || i3 > 0) ? resetFloat(z, i, i2, i3) : resetInt(z, i);
    }

    /* access modifiers changed from: protected */
    public final JsonToken resetAsNaN(String str, double d) {
        this._textBuffer.resetWithString(str);
        this._numberDouble = d;
        this._numTypesValid = 8;
        return JsonToken.VALUE_NUMBER_FLOAT;
    }

    /* access modifiers changed from: protected */
    public final JsonToken resetFloat(boolean z, int i, int i2, int i3) {
        this._numberNegative = z;
        this._intLength = i;
        this._fractLength = i2;
        this._expLength = i3;
        this._numTypesValid = 0;
        return JsonToken.VALUE_NUMBER_FLOAT;
    }

    /* access modifiers changed from: protected */
    public final JsonToken resetInt(boolean z, int i) {
        this._numberNegative = z;
        this._intLength = i;
        this._fractLength = 0;
        this._expLength = 0;
        this._numTypesValid = 0;
        return JsonToken.VALUE_NUMBER_INT;
    }
}
