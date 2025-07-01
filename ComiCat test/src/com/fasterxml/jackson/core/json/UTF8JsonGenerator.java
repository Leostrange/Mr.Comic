// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.fasterxml.jackson.core.json;

import com.fasterxml.jackson.core.JsonStreamContext;
import com.fasterxml.jackson.core.ObjectCodec;
import com.fasterxml.jackson.core.PrettyPrinter;
import com.fasterxml.jackson.core.SerializableString;
import com.fasterxml.jackson.core.io.CharTypes;
import com.fasterxml.jackson.core.io.CharacterEscapes;
import com.fasterxml.jackson.core.io.IOContext;
import com.fasterxml.jackson.core.io.NumberOutput;
import java.io.OutputStream;

// Referenced classes of package com.fasterxml.jackson.core.json:
//            JsonGeneratorImpl, JsonWriteContext

public class UTF8JsonGenerator extends JsonGeneratorImpl
{

    private static final byte FALSE_BYTES[] = {
        102, 97, 108, 115, 101
    };
    private static final byte HEX_CHARS[] = CharTypes.copyHexBytes();
    private static final byte NULL_BYTES[] = {
        110, 117, 108, 108
    };
    private static final byte TRUE_BYTES[] = {
        116, 114, 117, 101
    };
    protected boolean _bufferRecyclable;
    protected char _charBuffer[];
    protected final int _charBufferLength;
    protected byte _outputBuffer[];
    protected final int _outputEnd;
    protected final int _outputMaxContiguous;
    protected final OutputStream _outputStream;
    protected int _outputTail;

    public UTF8JsonGenerator(IOContext iocontext, int i, ObjectCodec objectcodec, OutputStream outputstream)
    {
        super(iocontext, i, objectcodec);
        _outputStream = outputstream;
        _bufferRecyclable = true;
        _outputBuffer = iocontext.allocWriteEncodingBuffer();
        _outputEnd = _outputBuffer.length;
        _outputMaxContiguous = _outputEnd >> 3;
        _charBuffer = iocontext.allocConcatBuffer();
        _charBufferLength = _charBuffer.length;
        if (isEnabled(com.fasterxml.jackson.core.JsonGenerator.Feature.ESCAPE_NON_ASCII))
        {
            setHighestNonEscapedChar(127);
        }
    }

    private final int _handleLongCustomEscape(byte abyte0[], int i, int j, byte abyte1[], int k)
    {
        int i1 = abyte1.length;
        if (i + i1 <= j) goto _L2; else goto _L1
_L1:
        int l;
        _outputTail = i;
        _flushBuffer();
        l = _outputTail;
        if (i1 <= abyte0.length) goto _L4; else goto _L3
_L3:
        _outputStream.write(abyte1, 0, i1);
_L6:
        return l;
_L4:
        System.arraycopy(abyte1, 0, abyte0, l, i1);
        i = l + i1;
_L2:
        l = i;
        if (k * 6 + i > j)
        {
            _flushBuffer();
            return _outputTail;
        }
        if (true) goto _L6; else goto _L5
_L5:
    }

    private final int _outputMultiByteChar(int i, int j)
    {
        byte abyte0[] = _outputBuffer;
        if (i >= 55296 && i <= 57343)
        {
            int k = j + 1;
            abyte0[j] = 92;
            j = k + 1;
            abyte0[k] = 117;
            k = j + 1;
            abyte0[j] = HEX_CHARS[i >> 12 & 0xf];
            j = k + 1;
            abyte0[k] = HEX_CHARS[i >> 8 & 0xf];
            k = j + 1;
            abyte0[j] = HEX_CHARS[i >> 4 & 0xf];
            abyte0[k] = HEX_CHARS[i & 0xf];
            return k + 1;
        } else
        {
            int l = j + 1;
            abyte0[j] = (byte)(i >> 12 | 0xe0);
            j = l + 1;
            abyte0[l] = (byte)(i >> 6 & 0x3f | 0x80);
            abyte0[j] = (byte)(i & 0x3f | 0x80);
            return j + 1;
        }
    }

    private final int _outputRawMultiByteChar(int i, char ac[], int j, int k)
    {
        if (i >= 55296 && i <= 57343)
        {
            if (j >= k || ac == null)
            {
                _reportError("Split surrogate on writeRaw() input (last character)");
            }
            _outputSurrogates(i, ac[j]);
            return j + 1;
        } else
        {
            ac = _outputBuffer;
            k = _outputTail;
            _outputTail = k + 1;
            ac[k] = (byte)(i >> 12 | 0xe0);
            k = _outputTail;
            _outputTail = k + 1;
            ac[k] = (byte)(i >> 6 & 0x3f | 0x80);
            k = _outputTail;
            _outputTail = k + 1;
            ac[k] = (byte)(i & 0x3f | 0x80);
            return j;
        }
    }

    private final void _writeBytes(byte abyte0[])
    {
        int i = abyte0.length;
        if (_outputTail + i > _outputEnd)
        {
            _flushBuffer();
            if (i > 512)
            {
                _outputStream.write(abyte0, 0, i);
                return;
            }
        }
        System.arraycopy(abyte0, 0, _outputBuffer, _outputTail, i);
        _outputTail = i + _outputTail;
    }

    private final int _writeCustomEscape(byte abyte0[], int i, SerializableString serializablestring, int j)
    {
        serializablestring = serializablestring.asUnquotedUTF8();
        int k = serializablestring.length;
        if (k > 6)
        {
            return _handleLongCustomEscape(abyte0, i, _outputEnd, serializablestring, j);
        } else
        {
            System.arraycopy(serializablestring, 0, abyte0, i, k);
            return k + i;
        }
    }

    private final void _writeCustomStringSegment2(String s, int i, int j)
    {
        if (_outputTail + (j - i) * 6 > _outputEnd)
        {
            _flushBuffer();
        }
        int l = _outputTail;
        byte abyte0[] = _outputBuffer;
        int ai[] = _outputEscapes;
        CharacterEscapes characterescapes;
        int k;
        int j1;
        if (_maximumNonEscapedChar <= 0)
        {
            j1 = 65535;
        } else
        {
            j1 = _maximumNonEscapedChar;
        }
        characterescapes = _characterEscapes;
        k = i;
        i = l;
        while (k < j) 
        {
            int i1 = k + 1;
            k = s.charAt(k);
            if (k <= '\177')
            {
                if (ai[k] == 0)
                {
                    abyte0[i] = (byte)k;
                    i++;
                    k = i1;
                } else
                {
                    int k1 = ai[k];
                    if (k1 > 0)
                    {
                        k = i + 1;
                        abyte0[i] = 92;
                        i = k + 1;
                        abyte0[k] = (byte)k1;
                        k = i1;
                    } else
                    if (k1 == -2)
                    {
                        SerializableString serializablestring = characterescapes.getEscapeSequence(k);
                        if (serializablestring == null)
                        {
                            _reportError((new StringBuilder("Invalid custom escape definitions; custom escape not found for character code 0x")).append(Integer.toHexString(k)).append(", although was supposed to have one").toString());
                        }
                        i = _writeCustomEscape(abyte0, i, serializablestring, j - i1);
                        k = i1;
                    } else
                    {
                        i = _writeGenericEscape(k, i);
                        k = i1;
                    }
                }
            } else
            if (k > j1)
            {
                i = _writeGenericEscape(k, i);
                k = i1;
            } else
            {
                SerializableString serializablestring1 = characterescapes.getEscapeSequence(k);
                if (serializablestring1 != null)
                {
                    i = _writeCustomEscape(abyte0, i, serializablestring1, j - i1);
                    k = i1;
                } else
                if (k <= 2047)
                {
                    int l1 = i + 1;
                    abyte0[i] = (byte)(k >> 6 | 0xc0);
                    i = l1 + 1;
                    abyte0[l1] = (byte)(k & 0x3f | 0x80);
                    k = i1;
                } else
                {
                    i = _outputMultiByteChar(k, i);
                    k = i1;
                }
            }
        }
        _outputTail = i;
    }

    private final void _writeCustomStringSegment2(char ac[], int i, int j)
    {
        if (_outputTail + (j - i) * 6 > _outputEnd)
        {
            _flushBuffer();
        }
        int l = _outputTail;
        byte abyte0[] = _outputBuffer;
        int ai[] = _outputEscapes;
        CharacterEscapes characterescapes;
        int k;
        int j1;
        if (_maximumNonEscapedChar <= 0)
        {
            j1 = 65535;
        } else
        {
            j1 = _maximumNonEscapedChar;
        }
        characterescapes = _characterEscapes;
        k = i;
        i = l;
        while (k < j) 
        {
            int i1 = k + 1;
            k = ac[k];
            if (k <= '\177')
            {
                if (ai[k] == 0)
                {
                    abyte0[i] = (byte)k;
                    i++;
                    k = i1;
                } else
                {
                    int k1 = ai[k];
                    if (k1 > 0)
                    {
                        k = i + 1;
                        abyte0[i] = 92;
                        i = k + 1;
                        abyte0[k] = (byte)k1;
                        k = i1;
                    } else
                    if (k1 == -2)
                    {
                        SerializableString serializablestring = characterescapes.getEscapeSequence(k);
                        if (serializablestring == null)
                        {
                            _reportError((new StringBuilder("Invalid custom escape definitions; custom escape not found for character code 0x")).append(Integer.toHexString(k)).append(", although was supposed to have one").toString());
                        }
                        i = _writeCustomEscape(abyte0, i, serializablestring, j - i1);
                        k = i1;
                    } else
                    {
                        i = _writeGenericEscape(k, i);
                        k = i1;
                    }
                }
            } else
            if (k > j1)
            {
                i = _writeGenericEscape(k, i);
                k = i1;
            } else
            {
                SerializableString serializablestring1 = characterescapes.getEscapeSequence(k);
                if (serializablestring1 != null)
                {
                    i = _writeCustomEscape(abyte0, i, serializablestring1, j - i1);
                    k = i1;
                } else
                if (k <= 2047)
                {
                    int l1 = i + 1;
                    abyte0[i] = (byte)(k >> 6 | 0xc0);
                    i = l1 + 1;
                    abyte0[l1] = (byte)(k & 0x3f | 0x80);
                    k = i1;
                } else
                {
                    i = _outputMultiByteChar(k, i);
                    k = i1;
                }
            }
        }
        _outputTail = i;
    }

    private int _writeGenericEscape(int i, int j)
    {
        byte abyte0[] = _outputBuffer;
        int k = j + 1;
        abyte0[j] = 92;
        j = k + 1;
        abyte0[k] = 117;
        if (i > 255)
        {
            k = i >> 8 & 0xff;
            int i1 = j + 1;
            abyte0[j] = HEX_CHARS[k >> 4];
            j = i1 + 1;
            abyte0[i1] = HEX_CHARS[k & 0xf];
            i &= 0xff;
        } else
        {
            int l = j + 1;
            abyte0[j] = 48;
            j = l + 1;
            abyte0[l] = 48;
        }
        k = j + 1;
        abyte0[j] = HEX_CHARS[i >> 4];
        abyte0[k] = HEX_CHARS[i & 0xf];
        return k + 1;
    }

    private final void _writeNull()
    {
        if (_outputTail + 4 >= _outputEnd)
        {
            _flushBuffer();
        }
        System.arraycopy(NULL_BYTES, 0, _outputBuffer, _outputTail, 4);
        _outputTail = _outputTail + 4;
    }

    private final void _writeQuotedLong(long l)
    {
        if (_outputTail + 23 >= _outputEnd)
        {
            _flushBuffer();
        }
        byte abyte0[] = _outputBuffer;
        int i = _outputTail;
        _outputTail = i + 1;
        abyte0[i] = 34;
        _outputTail = NumberOutput.outputLong(l, _outputBuffer, _outputTail);
        abyte0 = _outputBuffer;
        i = _outputTail;
        _outputTail = i + 1;
        abyte0[i] = 34;
    }

    private final void _writeSegmentedRaw(char ac[], int i, int j)
    {
        int i1 = _outputEnd;
        byte abyte0[] = _outputBuffer;
        do
        {
label0:
            {
                int k;
                if (i < j)
                {
                    do
                    {
                        k = ac[i];
                        if (k >= '\200')
                        {
                            break label0;
                        }
                        if (_outputTail >= i1)
                        {
                            _flushBuffer();
                        }
                        int j1 = _outputTail;
                        _outputTail = j1 + 1;
                        abyte0[j1] = (byte)k;
                        k = i + 1;
                        i = k;
                    } while (k < j);
                }
                return;
            }
            if (_outputTail + 3 >= _outputEnd)
            {
                _flushBuffer();
            }
            int l = i + 1;
            i = ac[i];
            if (i < 2048)
            {
                int k1 = _outputTail;
                _outputTail = k1 + 1;
                abyte0[k1] = (byte)(i >> 6 | 0xc0);
                k1 = _outputTail;
                _outputTail = k1 + 1;
                abyte0[k1] = (byte)(i & 0x3f | 0x80);
                i = l;
            } else
            {
                i = _outputRawMultiByteChar(i, ac, l, j);
            }
        } while (true);
    }

    private final void _writeStringSegment(String s, int i, int j)
    {
        int l;
label0:
        {
            l = j + i;
            int k = _outputTail;
            byte abyte0[] = _outputBuffer;
            int ai[] = _outputEscapes;
            j = i;
            i = k;
            do
            {
                if (j >= l)
                {
                    break;
                }
                char c = s.charAt(j);
                if (c > '\177' || ai[c] != 0)
                {
                    break;
                }
                abyte0[i] = (byte)c;
                j++;
                i++;
            } while (true);
            _outputTail = i;
            if (j < l)
            {
                if (_characterEscapes == null)
                {
                    break label0;
                }
                _writeCustomStringSegment2(s, j, l);
            }
            return;
        }
        if (_maximumNonEscapedChar == 0)
        {
            _writeStringSegment2(s, j, l);
            return;
        } else
        {
            _writeStringSegmentASCII2(s, j, l);
            return;
        }
    }

    private final void _writeStringSegment(char ac[], int i, int j)
    {
        int l;
label0:
        {
            l = j + i;
            int k = _outputTail;
            byte abyte0[] = _outputBuffer;
            int ai[] = _outputEscapes;
            j = i;
            i = k;
            do
            {
                if (j >= l)
                {
                    break;
                }
                char c = ac[j];
                if (c > '\177' || ai[c] != 0)
                {
                    break;
                }
                abyte0[i] = (byte)c;
                j++;
                i++;
            } while (true);
            _outputTail = i;
            if (j < l)
            {
                if (_characterEscapes == null)
                {
                    break label0;
                }
                _writeCustomStringSegment2(ac, j, l);
            }
            return;
        }
        if (_maximumNonEscapedChar == 0)
        {
            _writeStringSegment2(ac, j, l);
            return;
        } else
        {
            _writeStringSegmentASCII2(ac, j, l);
            return;
        }
    }

    private final void _writeStringSegment2(String s, int i, int j)
    {
        if (_outputTail + (j - i) * 6 > _outputEnd)
        {
            _flushBuffer();
        }
        int l = _outputTail;
        byte abyte0[] = _outputBuffer;
        int ai[] = _outputEscapes;
        int k = i;
        i = l;
        while (k < j) 
        {
            int i1 = k + 1;
            k = s.charAt(k);
            if (k <= '\177')
            {
                if (ai[k] == 0)
                {
                    abyte0[i] = (byte)k;
                    i++;
                    k = i1;
                } else
                {
                    int j1 = ai[k];
                    if (j1 > 0)
                    {
                        k = i + 1;
                        abyte0[i] = 92;
                        i = k + 1;
                        abyte0[k] = (byte)j1;
                        k = i1;
                    } else
                    {
                        i = _writeGenericEscape(k, i);
                        k = i1;
                    }
                }
            } else
            if (k <= 2047)
            {
                int k1 = i + 1;
                abyte0[i] = (byte)(k >> 6 | 0xc0);
                i = k1 + 1;
                abyte0[k1] = (byte)(k & 0x3f | 0x80);
                k = i1;
            } else
            {
                i = _outputMultiByteChar(k, i);
                k = i1;
            }
        }
        _outputTail = i;
    }

    private final void _writeStringSegment2(char ac[], int i, int j)
    {
        if (_outputTail + (j - i) * 6 > _outputEnd)
        {
            _flushBuffer();
        }
        int l = _outputTail;
        byte abyte0[] = _outputBuffer;
        int ai[] = _outputEscapes;
        int k = i;
        i = l;
        while (k < j) 
        {
            int i1 = k + 1;
            k = ac[k];
            if (k <= '\177')
            {
                if (ai[k] == 0)
                {
                    abyte0[i] = (byte)k;
                    i++;
                    k = i1;
                } else
                {
                    int j1 = ai[k];
                    if (j1 > 0)
                    {
                        k = i + 1;
                        abyte0[i] = 92;
                        i = k + 1;
                        abyte0[k] = (byte)j1;
                        k = i1;
                    } else
                    {
                        i = _writeGenericEscape(k, i);
                        k = i1;
                    }
                }
            } else
            if (k <= 2047)
            {
                int k1 = i + 1;
                abyte0[i] = (byte)(k >> 6 | 0xc0);
                i = k1 + 1;
                abyte0[k1] = (byte)(k & 0x3f | 0x80);
                k = i1;
            } else
            {
                i = _outputMultiByteChar(k, i);
                k = i1;
            }
        }
        _outputTail = i;
    }

    private final void _writeStringSegmentASCII2(String s, int i, int j)
    {
        if (_outputTail + (j - i) * 6 > _outputEnd)
        {
            _flushBuffer();
        }
        int l = _outputTail;
        byte abyte0[] = _outputBuffer;
        int ai[] = _outputEscapes;
        int j1 = _maximumNonEscapedChar;
        int k = i;
        i = l;
        while (k < j) 
        {
            int i1 = k + 1;
            k = s.charAt(k);
            if (k <= '\177')
            {
                if (ai[k] == 0)
                {
                    abyte0[i] = (byte)k;
                    i++;
                    k = i1;
                } else
                {
                    int k1 = ai[k];
                    if (k1 > 0)
                    {
                        k = i + 1;
                        abyte0[i] = 92;
                        i = k + 1;
                        abyte0[k] = (byte)k1;
                        k = i1;
                    } else
                    {
                        i = _writeGenericEscape(k, i);
                        k = i1;
                    }
                }
            } else
            if (k > j1)
            {
                i = _writeGenericEscape(k, i);
                k = i1;
            } else
            if (k <= 2047)
            {
                int l1 = i + 1;
                abyte0[i] = (byte)(k >> 6 | 0xc0);
                i = l1 + 1;
                abyte0[l1] = (byte)(k & 0x3f | 0x80);
                k = i1;
            } else
            {
                i = _outputMultiByteChar(k, i);
                k = i1;
            }
        }
        _outputTail = i;
    }

    private final void _writeStringSegmentASCII2(char ac[], int i, int j)
    {
        if (_outputTail + (j - i) * 6 > _outputEnd)
        {
            _flushBuffer();
        }
        int l = _outputTail;
        byte abyte0[] = _outputBuffer;
        int ai[] = _outputEscapes;
        int j1 = _maximumNonEscapedChar;
        int k = i;
        i = l;
        while (k < j) 
        {
            int i1 = k + 1;
            k = ac[k];
            if (k <= '\177')
            {
                if (ai[k] == 0)
                {
                    abyte0[i] = (byte)k;
                    i++;
                    k = i1;
                } else
                {
                    int k1 = ai[k];
                    if (k1 > 0)
                    {
                        k = i + 1;
                        abyte0[i] = 92;
                        i = k + 1;
                        abyte0[k] = (byte)k1;
                        k = i1;
                    } else
                    {
                        i = _writeGenericEscape(k, i);
                        k = i1;
                    }
                }
            } else
            if (k > j1)
            {
                i = _writeGenericEscape(k, i);
                k = i1;
            } else
            if (k <= 2047)
            {
                int l1 = i + 1;
                abyte0[i] = (byte)(k >> 6 | 0xc0);
                i = l1 + 1;
                abyte0[l1] = (byte)(k & 0x3f | 0x80);
                k = i1;
            } else
            {
                i = _outputMultiByteChar(k, i);
                k = i1;
            }
        }
        _outputTail = i;
    }

    private final void _writeStringSegments(String s, int i, int j)
    {
        int k;
        do
        {
            k = Math.min(_outputMaxContiguous, j);
            if (_outputTail + k > _outputEnd)
            {
                _flushBuffer();
            }
            _writeStringSegment(s, i, k);
            i += k;
            k = j - k;
            j = k;
        } while (k > 0);
    }

    private final void _writeStringSegments(String s, boolean flag)
    {
        if (flag)
        {
            if (_outputTail >= _outputEnd)
            {
                _flushBuffer();
            }
            byte abyte0[] = _outputBuffer;
            int i = _outputTail;
            _outputTail = i + 1;
            abyte0[i] = 34;
        }
        int j = s.length();
        int l = 0;
        int i1;
        for (; j > 0; j -= i1)
        {
            i1 = Math.min(_outputMaxContiguous, j);
            if (_outputTail + i1 > _outputEnd)
            {
                _flushBuffer();
            }
            _writeStringSegment(s, l, i1);
            l += i1;
        }

        if (flag)
        {
            if (_outputTail >= _outputEnd)
            {
                _flushBuffer();
            }
            s = _outputBuffer;
            int k = _outputTail;
            _outputTail = k + 1;
            s[k] = 34;
        }
    }

    private final void _writeStringSegments(char ac[], int i, int j)
    {
        int k;
        do
        {
            k = Math.min(_outputMaxContiguous, j);
            if (_outputTail + k > _outputEnd)
            {
                _flushBuffer();
            }
            _writeStringSegment(ac, i, k);
            i += k;
            k = j - k;
            j = k;
        } while (k > 0);
    }

    protected final void _flushBuffer()
    {
        int i = _outputTail;
        if (i > 0)
        {
            _outputTail = 0;
            _outputStream.write(_outputBuffer, 0, i);
        }
    }

    protected final void _outputSurrogates(int i, int j)
    {
        i = _decodeSurrogate(i, j);
        if (_outputTail + 4 > _outputEnd)
        {
            _flushBuffer();
        }
        byte abyte0[] = _outputBuffer;
        j = _outputTail;
        _outputTail = j + 1;
        abyte0[j] = (byte)(i >> 18 | 0xf0);
        j = _outputTail;
        _outputTail = j + 1;
        abyte0[j] = (byte)(i >> 12 & 0x3f | 0x80);
        j = _outputTail;
        _outputTail = j + 1;
        abyte0[j] = (byte)(i >> 6 & 0x3f | 0x80);
        j = _outputTail;
        _outputTail = j + 1;
        abyte0[j] = (byte)(i & 0x3f | 0x80);
    }

    protected void _releaseBuffers()
    {
        char ac[] = _outputBuffer;
        if (ac != null && _bufferRecyclable)
        {
            _outputBuffer = null;
            _ioContext.releaseWriteEncodingBuffer(ac);
        }
        ac = _charBuffer;
        if (ac != null)
        {
            _charBuffer = null;
            _ioContext.releaseConcatBuffer(ac);
        }
    }

    protected final void _verifyPrettyValueWrite(String s, int i)
    {
        i;
        JVM INSTR tableswitch 0 3: default 32
    //                   0 70
    //                   1 37
    //                   2 48
    //                   3 59;
           goto _L1 _L2 _L3 _L4 _L5
_L1:
        _throwInternal();
_L7:
        return;
_L3:
        _cfgPrettyPrinter.writeArrayValueSeparator(this);
        return;
_L4:
        _cfgPrettyPrinter.writeObjectFieldValueSeparator(this);
        return;
_L5:
        _cfgPrettyPrinter.writeRootValueSeparator(this);
        return;
_L2:
        if (_writeContext.inArray())
        {
            _cfgPrettyPrinter.beforeArrayValues(this);
            return;
        }
        if (_writeContext.inObject())
        {
            _cfgPrettyPrinter.beforeObjectEntries(this);
            return;
        }
        if (true) goto _L7; else goto _L6
_L6:
    }

    protected final void _verifyValueWrite(String s)
    {
        int i;
        i = _writeContext.writeValue();
        if (i == 5)
        {
            _reportError((new StringBuilder("Can not ")).append(s).append(", expecting field name").toString());
        }
        if (_cfgPrettyPrinter != null) goto _L2; else goto _L1
_L1:
        i;
        JVM INSTR tableswitch 1 3: default 76
    //                   1 77
    //                   2 116
    //                   3 122;
           goto _L3 _L4 _L5 _L6
_L3:
        return;
_L4:
        byte byte0 = 44;
_L7:
        if (_outputTail >= _outputEnd)
        {
            _flushBuffer();
        }
        _outputBuffer[_outputTail] = byte0;
        _outputTail = _outputTail + 1;
        return;
_L5:
        byte0 = 58;
          goto _L7
_L6:
        if (_rootValueSeparator == null) goto _L3; else goto _L8
_L8:
        s = _rootValueSeparator.asUnquotedUTF8();
        if (s.length <= 0) goto _L3; else goto _L9
_L9:
        _writeBytes(s);
        return;
_L2:
        _verifyPrettyValueWrite(s, i);
        return;
    }

    protected final void _writePPFieldName(String s)
    {
        int i = _writeContext.writeFieldName(s);
        if (i == 4)
        {
            _reportError("Can not write a field name, expecting a value");
        }
        if (i == 1)
        {
            _cfgPrettyPrinter.writeObjectEntrySeparator(this);
        } else
        {
            _cfgPrettyPrinter.beforeObjectEntries(this);
        }
        if (_cfgUnqNames)
        {
            _writeStringSegments(s, false);
            return;
        }
        i = s.length();
        if (i > _charBufferLength)
        {
            _writeStringSegments(s, true);
            return;
        }
        if (_outputTail >= _outputEnd)
        {
            _flushBuffer();
        }
        byte abyte0[] = _outputBuffer;
        int j = _outputTail;
        _outputTail = j + 1;
        abyte0[j] = 34;
        s.getChars(0, i, _charBuffer, 0);
        if (i <= _outputMaxContiguous)
        {
            if (_outputTail + i > _outputEnd)
            {
                _flushBuffer();
            }
            _writeStringSegment(_charBuffer, 0, i);
        } else
        {
            _writeStringSegments(_charBuffer, 0, i);
        }
        if (_outputTail >= _outputEnd)
        {
            _flushBuffer();
        }
        s = _outputBuffer;
        i = _outputTail;
        _outputTail = i + 1;
        s[i] = 34;
    }

    public void close()
    {
        super.close();
        if (_outputBuffer != null && isEnabled(com.fasterxml.jackson.core.JsonGenerator.Feature.AUTO_CLOSE_JSON_CONTENT))
        {
            do
            {
                JsonWriteContext jsonwritecontext = getOutputContext();
                if (jsonwritecontext.inArray())
                {
                    writeEndArray();
                    continue;
                }
                if (!jsonwritecontext.inObject())
                {
                    break;
                }
                writeEndObject();
            } while (true);
        }
        _flushBuffer();
        _outputTail = 0;
        if (_outputStream == null) goto _L2; else goto _L1
_L1:
        if (!_ioContext.isResourceManaged() && !isEnabled(com.fasterxml.jackson.core.JsonGenerator.Feature.AUTO_CLOSE_TARGET)) goto _L4; else goto _L3
_L3:
        _outputStream.close();
_L2:
        _releaseBuffers();
        return;
_L4:
        if (isEnabled(com.fasterxml.jackson.core.JsonGenerator.Feature.FLUSH_PASSED_TO_STREAM))
        {
            _outputStream.flush();
        }
        if (true) goto _L2; else goto _L5
_L5:
    }

    public void flush()
    {
        _flushBuffer();
        if (_outputStream != null && isEnabled(com.fasterxml.jackson.core.JsonGenerator.Feature.FLUSH_PASSED_TO_STREAM))
        {
            _outputStream.flush();
        }
    }

    public void writeBoolean(boolean flag)
    {
        _verifyValueWrite("write a boolean value");
        if (_outputTail + 5 >= _outputEnd)
        {
            _flushBuffer();
        }
        byte abyte0[];
        int i;
        if (flag)
        {
            abyte0 = TRUE_BYTES;
        } else
        {
            abyte0 = FALSE_BYTES;
        }
        i = abyte0.length;
        System.arraycopy(abyte0, 0, _outputBuffer, _outputTail, i);
        _outputTail = _outputTail + i;
    }

    public final void writeEndArray()
    {
        if (!_writeContext.inArray())
        {
            _reportError((new StringBuilder("Current context not an ARRAY but ")).append(_writeContext.getTypeDesc()).toString());
        }
        if (_cfgPrettyPrinter != null)
        {
            _cfgPrettyPrinter.writeEndArray(this, _writeContext.getEntryCount());
        } else
        {
            if (_outputTail >= _outputEnd)
            {
                _flushBuffer();
            }
            byte abyte0[] = _outputBuffer;
            int i = _outputTail;
            _outputTail = i + 1;
            abyte0[i] = 93;
        }
        _writeContext = _writeContext.clearAndGetParent();
    }

    public final void writeEndObject()
    {
        if (!_writeContext.inObject())
        {
            _reportError((new StringBuilder("Current context not an object but ")).append(_writeContext.getTypeDesc()).toString());
        }
        if (_cfgPrettyPrinter != null)
        {
            _cfgPrettyPrinter.writeEndObject(this, _writeContext.getEntryCount());
        } else
        {
            if (_outputTail >= _outputEnd)
            {
                _flushBuffer();
            }
            byte abyte0[] = _outputBuffer;
            int i = _outputTail;
            _outputTail = i + 1;
            abyte0[i] = 125;
        }
        _writeContext = _writeContext.clearAndGetParent();
    }

    public void writeFieldName(String s)
    {
        if (_cfgPrettyPrinter != null)
        {
            _writePPFieldName(s);
            return;
        }
        int i = _writeContext.writeFieldName(s);
        if (i == 4)
        {
            _reportError("Can not write a field name, expecting a value");
        }
        if (i == 1)
        {
            if (_outputTail >= _outputEnd)
            {
                _flushBuffer();
            }
            byte abyte0[] = _outputBuffer;
            i = _outputTail;
            _outputTail = i + 1;
            abyte0[i] = 44;
        }
        if (_cfgUnqNames)
        {
            _writeStringSegments(s, false);
            return;
        }
        i = s.length();
        if (i > _charBufferLength)
        {
            _writeStringSegments(s, true);
            return;
        }
        if (_outputTail >= _outputEnd)
        {
            _flushBuffer();
        }
        byte abyte1[] = _outputBuffer;
        int j = _outputTail;
        _outputTail = j + 1;
        abyte1[j] = 34;
        if (i <= _outputMaxContiguous)
        {
            if (_outputTail + i > _outputEnd)
            {
                _flushBuffer();
            }
            _writeStringSegment(s, 0, i);
        } else
        {
            _writeStringSegments(s, 0, i);
        }
        if (_outputTail >= _outputEnd)
        {
            _flushBuffer();
        }
        s = _outputBuffer;
        i = _outputTail;
        _outputTail = i + 1;
        s[i] = 34;
    }

    public void writeNull()
    {
        _verifyValueWrite("write a null");
        _writeNull();
    }

    public void writeNumber(double d)
    {
        if (_cfgNumbersAsStrings || (Double.isNaN(d) || Double.isInfinite(d)) && com.fasterxml.jackson.core.JsonGenerator.Feature.QUOTE_NON_NUMERIC_NUMBERS.enabledIn(_features))
        {
            writeString(String.valueOf(d));
            return;
        } else
        {
            _verifyValueWrite("write a number");
            writeRaw(String.valueOf(d));
            return;
        }
    }

    public void writeNumber(long l)
    {
        _verifyValueWrite("write a number");
        if (_cfgNumbersAsStrings)
        {
            _writeQuotedLong(l);
            return;
        }
        if (_outputTail + 21 >= _outputEnd)
        {
            _flushBuffer();
        }
        _outputTail = NumberOutput.outputLong(l, _outputBuffer, _outputTail);
    }

    public void writeRaw(char c)
    {
        if (_outputTail + 3 >= _outputEnd)
        {
            _flushBuffer();
        }
        byte abyte0[] = _outputBuffer;
        if (c <= '\177')
        {
            int i = _outputTail;
            _outputTail = i + 1;
            abyte0[i] = (byte)c;
            return;
        }
        if (c < '\u0800')
        {
            int j = _outputTail;
            _outputTail = j + 1;
            abyte0[j] = (byte)(c >> 6 | 0xc0);
            j = _outputTail;
            _outputTail = j + 1;
            abyte0[j] = (byte)(c & 0x3f | 0x80);
            return;
        } else
        {
            _outputRawMultiByteChar(c, null, 0, 0);
            return;
        }
    }

    public void writeRaw(SerializableString serializablestring)
    {
        serializablestring = serializablestring.asUnquotedUTF8();
        if (serializablestring.length > 0)
        {
            _writeBytes(serializablestring);
        }
    }

    public void writeRaw(String s)
    {
        int i = s.length();
        int j = 0;
        int k;
        for (; i > 0; i -= k)
        {
            char ac[] = _charBuffer;
            int l = ac.length;
            k = l;
            if (i < l)
            {
                k = i;
            }
            s.getChars(j, j + k, ac, 0);
            writeRaw(ac, 0, k);
            j += k;
        }

    }

    public final void writeRaw(char ac[], int i, int j)
    {
        int k = j + j + j;
        if (_outputTail + k <= _outputEnd) goto _L2; else goto _L1
_L1:
        if (_outputEnd >= k) goto _L4; else goto _L3
_L3:
        _writeSegmentedRaw(ac, i, j);
_L6:
        return;
_L4:
        _flushBuffer();
_L2:
        k = j + i;
_L9:
        if (i >= k) goto _L6; else goto _L5
_L5:
        j = ac[i];
        if (j > 127) goto _L8; else goto _L7
_L7:
        byte abyte0[] = _outputBuffer;
        int l = _outputTail;
        _outputTail = l + 1;
        abyte0[l] = (byte)j;
        i++;
        if (i >= k) goto _L6; else goto _L5
_L8:
        j = i + 1;
        i = ac[i];
        if (i < 2048)
        {
            byte abyte1[] = _outputBuffer;
            int i1 = _outputTail;
            _outputTail = i1 + 1;
            abyte1[i1] = (byte)(i >> 6 | 0xc0);
            abyte1 = _outputBuffer;
            i1 = _outputTail;
            _outputTail = i1 + 1;
            abyte1[i1] = (byte)(i & 0x3f | 0x80);
            i = j;
        } else
        {
            i = _outputRawMultiByteChar(i, ac, j, k);
        }
          goto _L9
    }

    public final void writeStartArray()
    {
        _verifyValueWrite("start an array");
        _writeContext = _writeContext.createChildArrayContext();
        if (_cfgPrettyPrinter != null)
        {
            _cfgPrettyPrinter.writeStartArray(this);
            return;
        }
        if (_outputTail >= _outputEnd)
        {
            _flushBuffer();
        }
        byte abyte0[] = _outputBuffer;
        int i = _outputTail;
        _outputTail = i + 1;
        abyte0[i] = 91;
    }

    public final void writeStartObject()
    {
        _verifyValueWrite("start an object");
        _writeContext = _writeContext.createChildObjectContext();
        if (_cfgPrettyPrinter != null)
        {
            _cfgPrettyPrinter.writeStartObject(this);
            return;
        }
        if (_outputTail >= _outputEnd)
        {
            _flushBuffer();
        }
        byte abyte0[] = _outputBuffer;
        int i = _outputTail;
        _outputTail = i + 1;
        abyte0[i] = 123;
    }

    public void writeString(String s)
    {
        _verifyValueWrite("write a string");
        if (s == null)
        {
            _writeNull();
            return;
        }
        int i = s.length();
        if (i > _outputMaxContiguous)
        {
            _writeStringSegments(s, true);
            return;
        }
        if (_outputTail + i >= _outputEnd)
        {
            _flushBuffer();
        }
        byte abyte0[] = _outputBuffer;
        int j = _outputTail;
        _outputTail = j + 1;
        abyte0[j] = 34;
        _writeStringSegment(s, 0, i);
        if (_outputTail >= _outputEnd)
        {
            _flushBuffer();
        }
        s = _outputBuffer;
        i = _outputTail;
        _outputTail = i + 1;
        s[i] = 34;
    }

}
