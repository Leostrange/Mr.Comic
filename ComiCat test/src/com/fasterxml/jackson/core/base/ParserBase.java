// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.fasterxml.jackson.core.base;

import com.fasterxml.jackson.core.JsonLocation;
import com.fasterxml.jackson.core.JsonToken;
import com.fasterxml.jackson.core.io.IOContext;
import com.fasterxml.jackson.core.io.NumberInput;
import com.fasterxml.jackson.core.json.DupDetector;
import com.fasterxml.jackson.core.json.JsonReadContext;
import com.fasterxml.jackson.core.util.TextBuffer;
import java.math.BigDecimal;
import java.math.BigInteger;

// Referenced classes of package com.fasterxml.jackson.core.base:
//            ParserMinimalBase

public abstract class ParserBase extends ParserMinimalBase
{

    static final BigDecimal BD_MAX_INT;
    static final BigDecimal BD_MAX_LONG;
    static final BigDecimal BD_MIN_INT;
    static final BigDecimal BD_MIN_LONG;
    static final BigInteger BI_MAX_INT;
    static final BigInteger BI_MAX_LONG;
    static final BigInteger BI_MIN_INT;
    static final BigInteger BI_MIN_LONG;
    protected byte _binaryValue[];
    protected boolean _closed;
    protected long _currInputProcessed;
    protected int _currInputRow;
    protected int _currInputRowStart;
    protected int _expLength;
    protected int _fractLength;
    protected int _inputEnd;
    protected int _inputPtr;
    protected int _intLength;
    protected final IOContext _ioContext;
    protected boolean _nameCopied;
    protected char _nameCopyBuffer[];
    protected JsonToken _nextToken;
    protected int _numTypesValid;
    protected BigDecimal _numberBigDecimal;
    protected BigInteger _numberBigInt;
    protected double _numberDouble;
    protected int _numberInt;
    protected long _numberLong;
    protected boolean _numberNegative;
    protected JsonReadContext _parsingContext;
    protected final TextBuffer _textBuffer;
    protected int _tokenInputCol;
    protected int _tokenInputRow;
    protected long _tokenInputTotal;

    protected ParserBase(IOContext iocontext, int i)
    {
        super(i);
        _currInputRow = 1;
        _tokenInputRow = 1;
        _numTypesValid = 0;
        _ioContext = iocontext;
        _textBuffer = iocontext.constructTextBuffer();
        if (com.fasterxml.jackson.core.JsonParser.Feature.STRICT_DUPLICATE_DETECTION.enabledIn(i))
        {
            iocontext = DupDetector.rootDetector(this);
        } else
        {
            iocontext = null;
        }
        _parsingContext = JsonReadContext.createRootContext(iocontext);
    }

    private void _parseSlowFloat(int i)
    {
        if (i == 16)
        {
            try
            {
                _numberBigDecimal = _textBuffer.contentsAsDecimal();
                _numTypesValid = 16;
                return;
            }
            catch (NumberFormatException numberformatexception)
            {
                _wrapError((new StringBuilder("Malformed numeric value '")).append(_textBuffer.contentsAsString()).append("'").toString(), numberformatexception);
            }
            break MISSING_BLOCK_LABEL_75;
        }
        _numberDouble = _textBuffer.contentsAsDouble();
        _numTypesValid = 8;
        return;
    }

    private void _parseSlowInt(int i, char ac[], int j, int k)
    {
        String s = _textBuffer.contentsAsString();
        if (NumberInput.inLongRange(ac, j, k, _numberNegative))
        {
            _numberLong = Long.parseLong(s);
            _numTypesValid = 2;
            return;
        }
        try
        {
            _numberBigInt = new BigInteger(s);
            _numTypesValid = 4;
            return;
        }
        // Misplaced declaration of an exception variable
        catch (char ac[])
        {
            _wrapError((new StringBuilder("Malformed numeric value '")).append(s).append("'").toString(), ac);
        }
        return;
    }

    public abstract void _closeInput();

    public char _decodeEscaped()
    {
        throw new UnsupportedOperationException();
    }

    protected final int _eofAsNextChar()
    {
        _handleEOF();
        return -1;
    }

    public abstract void _finishString();

    protected void _handleEOF()
    {
        if (!_parsingContext.inRoot())
        {
            _reportInvalidEOF((new StringBuilder(": expected close marker for ")).append(_parsingContext.getTypeDesc()).append(" (from ").append(_parsingContext.getStartLocation(_ioContext.getSourceReference())).append(")").toString());
        }
    }

    protected void _parseNumericValue(int i)
    {
        if (_currToken == JsonToken.VALUE_NUMBER_INT)
        {
            char ac[] = _textBuffer.getTextBuffer();
            int k = _textBuffer.getTextOffset();
            int l = _intLength;
            int j = k;
            if (_numberNegative)
            {
                j = k + 1;
            }
            if (l <= 9)
            {
                j = NumberInput.parseInt(ac, j, l);
                i = j;
                if (_numberNegative)
                {
                    i = -j;
                }
                _numberInt = i;
                _numTypesValid = 1;
                return;
            }
            if (l <= 18)
            {
                long l2 = NumberInput.parseLong(ac, j, l);
                long l1 = l2;
                if (_numberNegative)
                {
                    l1 = -l2;
                }
                if (l == 10)
                {
                    if (_numberNegative)
                    {
                        if (l1 >= 0xffffffff80000000L)
                        {
                            _numberInt = (int)l1;
                            _numTypesValid = 1;
                            return;
                        }
                    } else
                    if (l1 <= 0x7fffffffL)
                    {
                        _numberInt = (int)l1;
                        _numTypesValid = 1;
                        return;
                    }
                }
                _numberLong = l1;
                _numTypesValid = 2;
                return;
            } else
            {
                _parseSlowInt(i, ac, j, l);
                return;
            }
        }
        if (_currToken == JsonToken.VALUE_NUMBER_FLOAT)
        {
            _parseSlowFloat(i);
            return;
        } else
        {
            _reportError((new StringBuilder("Current token (")).append(_currToken).append(") not numeric, can not use numeric value accessors").toString());
            return;
        }
    }

    public void _releaseBuffers()
    {
        _textBuffer.releaseBuffers();
        char ac[] = _nameCopyBuffer;
        if (ac != null)
        {
            _nameCopyBuffer = null;
            _ioContext.releaseNameCopyBuffer(ac);
        }
    }

    protected void _reportMismatchedEndMarker(int i, char c)
    {
        String s = (new StringBuilder()).append(_parsingContext.getStartLocation(_ioContext.getSourceReference())).toString();
        _reportError((new StringBuilder("Unexpected close marker '")).append((char)i).append("': expected '").append(c).append("' (for ").append(_parsingContext.getTypeDesc()).append(" starting at ").append(s).append(")").toString());
    }

    public void close()
    {
        if (_closed)
        {
            break MISSING_BLOCK_LABEL_20;
        }
        _closed = true;
        _closeInput();
        _releaseBuffers();
        return;
        Exception exception;
        exception;
        _releaseBuffers();
        throw exception;
    }

    protected void convertNumberToDouble()
    {
        if ((_numTypesValid & 0x10) != 0)
        {
            _numberDouble = _numberBigDecimal.doubleValue();
        } else
        if ((_numTypesValid & 4) != 0)
        {
            _numberDouble = _numberBigInt.doubleValue();
        } else
        if ((_numTypesValid & 2) != 0)
        {
            _numberDouble = _numberLong;
        } else
        if ((_numTypesValid & 1) != 0)
        {
            _numberDouble = _numberInt;
        } else
        {
            _throwInternal();
        }
        _numTypesValid = _numTypesValid | 8;
    }

    protected void convertNumberToLong()
    {
        if ((_numTypesValid & 1) != 0)
        {
            _numberLong = _numberInt;
        } else
        if ((_numTypesValid & 4) != 0)
        {
            if (BI_MIN_LONG.compareTo(_numberBigInt) > 0 || BI_MAX_LONG.compareTo(_numberBigInt) < 0)
            {
                reportOverflowLong();
            }
            _numberLong = _numberBigInt.longValue();
        } else
        if ((_numTypesValid & 8) != 0)
        {
            if (_numberDouble < -9.2233720368547758E+18D || _numberDouble > 9.2233720368547758E+18D)
            {
                reportOverflowLong();
            }
            _numberLong = (long)_numberDouble;
        } else
        if ((_numTypesValid & 0x10) != 0)
        {
            if (BD_MIN_LONG.compareTo(_numberBigDecimal) > 0 || BD_MAX_LONG.compareTo(_numberBigDecimal) < 0)
            {
                reportOverflowLong();
            }
            _numberLong = _numberBigDecimal.longValue();
        } else
        {
            _throwInternal();
        }
        _numTypesValid = _numTypesValid | 2;
    }

    public JsonLocation getCurrentLocation()
    {
        int i = _inputPtr;
        int j = _currInputRowStart;
        return new JsonLocation(_ioContext.getSourceReference(), -1L, _currInputProcessed + (long)_inputPtr, _currInputRow, (i - j) + 1);
    }

    public String getCurrentName()
    {
        if (_currToken == JsonToken.START_OBJECT || _currToken == JsonToken.START_ARRAY)
        {
            JsonReadContext jsonreadcontext = _parsingContext.getParent();
            if (jsonreadcontext != null)
            {
                return jsonreadcontext.getCurrentName();
            }
        }
        return _parsingContext.getCurrentName();
    }

    public double getDoubleValue()
    {
        if ((_numTypesValid & 8) == 0)
        {
            if (_numTypesValid == 0)
            {
                _parseNumericValue(8);
            }
            if ((_numTypesValid & 8) == 0)
            {
                convertNumberToDouble();
            }
        }
        return _numberDouble;
    }

    public long getLongValue()
    {
        if ((_numTypesValid & 2) == 0)
        {
            if (_numTypesValid == 0)
            {
                _parseNumericValue(2);
            }
            if ((_numTypesValid & 2) == 0)
            {
                convertNumberToLong();
            }
        }
        return _numberLong;
    }

    public abstract boolean loadMore();

    protected final void loadMoreGuaranteed()
    {
        if (!loadMore())
        {
            _reportInvalidEOF();
        }
    }

    protected void reportInvalidNumber(String s)
    {
        _reportError((new StringBuilder("Invalid numeric value: ")).append(s).toString());
    }

    protected void reportOverflowLong()
    {
        _reportError((new StringBuilder("Numeric value (")).append(getText()).append(") out of range of long (-9223372036854775808 - 9223372036854775807)").toString());
    }

    protected void reportUnexpectedNumberChar(int i, String s)
    {
        String s2 = (new StringBuilder("Unexpected character (")).append(_getCharDesc(i)).append(") in numeric value").toString();
        String s1 = s2;
        if (s != null)
        {
            s1 = (new StringBuilder()).append(s2).append(": ").append(s).toString();
        }
        _reportError(s1);
    }

    protected final JsonToken reset(boolean flag, int i, int j, int k)
    {
        if (j <= 0 && k <= 0)
        {
            return resetInt(flag, i);
        } else
        {
            return resetFloat(flag, i, j, k);
        }
    }

    protected final JsonToken resetAsNaN(String s, double d)
    {
        _textBuffer.resetWithString(s);
        _numberDouble = d;
        _numTypesValid = 8;
        return JsonToken.VALUE_NUMBER_FLOAT;
    }

    protected final JsonToken resetFloat(boolean flag, int i, int j, int k)
    {
        _numberNegative = flag;
        _intLength = i;
        _fractLength = j;
        _expLength = k;
        _numTypesValid = 0;
        return JsonToken.VALUE_NUMBER_FLOAT;
    }

    protected final JsonToken resetInt(boolean flag, int i)
    {
        _numberNegative = flag;
        _intLength = i;
        _fractLength = 0;
        _expLength = 0;
        _numTypesValid = 0;
        return JsonToken.VALUE_NUMBER_INT;
    }

    static 
    {
        BI_MIN_INT = BigInteger.valueOf(0xffffffff80000000L);
        BI_MAX_INT = BigInteger.valueOf(0x7fffffffL);
        BI_MIN_LONG = BigInteger.valueOf(0x8000000000000000L);
        BI_MAX_LONG = BigInteger.valueOf(0x7fffffffffffffffL);
        BD_MIN_LONG = new BigDecimal(BI_MIN_LONG);
        BD_MAX_LONG = new BigDecimal(BI_MAX_LONG);
        BD_MIN_INT = new BigDecimal(BI_MIN_INT);
        BD_MAX_INT = new BigDecimal(BI_MAX_INT);
    }
}
