// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.eclipsesource.json;

import java.io.Reader;
import java.io.StringReader;

// Referenced classes of package com.eclipsesource.json:
//            ParseException, JsonArray, JsonValue, JsonNumber, 
//            JsonObject, JsonString

class JsonParser
{

    private static final int DEFAULT_BUFFER_SIZE = 1024;
    private static final int MIN_BUFFER_SIZE = 10;
    private final char buffer[];
    private int bufferOffset;
    private StringBuilder captureBuffer;
    private int captureStart;
    private int current;
    private int fill;
    private int index;
    private int line;
    private int lineOffset;
    private final Reader reader;

    JsonParser(Reader reader1)
    {
        this(reader1, 1024);
    }

    JsonParser(Reader reader1, int i)
    {
        reader = reader1;
        buffer = new char[i];
        line = 1;
        captureStart = -1;
    }

    JsonParser(String s)
    {
        this(((Reader) (new StringReader(s))), Math.max(10, Math.min(1024, s.length())));
    }

    private String endCapture()
    {
        String s;
        int i;
        if (current == -1)
        {
            i = index;
        } else
        {
            i = index - 1;
        }
        if (captureBuffer.length() > 0)
        {
            captureBuffer.append(buffer, captureStart, i - captureStart);
            s = captureBuffer.toString();
            captureBuffer.setLength(0);
        } else
        {
            s = new String(buffer, captureStart, i - captureStart);
        }
        captureStart = -1;
        return s;
    }

    private ParseException error(String s)
    {
        int j = bufferOffset + index;
        int k = lineOffset;
        int i;
        if (isEndOfText())
        {
            i = j;
        } else
        {
            i = j - 1;
        }
        return new ParseException(s, i, line, j - k - 1);
    }

    private ParseException expected(String s)
    {
        if (isEndOfText())
        {
            return error("Unexpected end of input");
        } else
        {
            return error((new StringBuilder("Expected ")).append(s).toString());
        }
    }

    private boolean isDigit()
    {
        return current >= 48 && current <= 57;
    }

    private boolean isEndOfText()
    {
        return current == -1;
    }

    private boolean isHexDigit()
    {
        return current >= 48 && current <= 57 || current >= 97 && current <= 102 || current >= 65 && current <= 70;
    }

    private boolean isWhiteSpace()
    {
        return current == 32 || current == 9 || current == 10 || current == 13;
    }

    private void pauseCapture()
    {
        int i;
        if (current == -1)
        {
            i = index;
        } else
        {
            i = index - 1;
        }
        captureBuffer.append(buffer, captureStart, i - captureStart);
        captureStart = -1;
    }

    private void read()
    {
        if (isEndOfText())
        {
            throw error("Unexpected end of input");
        }
        if (index == fill)
        {
            if (captureStart != -1)
            {
                captureBuffer.append(buffer, captureStart, fill - captureStart);
                captureStart = 0;
            }
            bufferOffset = bufferOffset + fill;
            fill = reader.read(buffer, 0, buffer.length);
            index = 0;
            if (fill == -1)
            {
                current = -1;
                return;
            }
        }
        if (current == 10)
        {
            line = line + 1;
            lineOffset = bufferOffset + index;
        }
        char ac[] = buffer;
        int i = index;
        index = i + 1;
        current = ac[i];
    }

    private JsonArray readArray()
    {
        read();
        JsonArray jsonarray = new JsonArray();
        skipWhiteSpace();
        if (!readChar(']'))
        {
            do
            {
                skipWhiteSpace();
                jsonarray.add(readValue());
                skipWhiteSpace();
            } while (readChar(','));
            if (!readChar(']'))
            {
                throw expected("',' or ']'");
            }
        }
        return jsonarray;
    }

    private boolean readChar(char c)
    {
        if (current != c)
        {
            return false;
        } else
        {
            read();
            return true;
        }
    }

    private boolean readDigit()
    {
        if (!isDigit())
        {
            return false;
        } else
        {
            read();
            return true;
        }
    }

    private void readEscape()
    {
        read();
        current;
        JVM INSTR lookupswitch 9: default 92
    //                   34: 99
    //                   47: 99
    //                   92: 99
    //                   98: 117
    //                   102: 130
    //                   110: 143
    //                   114: 156
    //                   116: 169
    //                   117: 182;
           goto _L1 _L2 _L2 _L2 _L3 _L4 _L5 _L6 _L7 _L8
_L1:
        throw expected("valid escape sequence");
_L2:
        captureBuffer.append((char)current);
_L10:
        read();
        return;
_L3:
        captureBuffer.append('\b');
        continue; /* Loop/switch isn't completed */
_L4:
        captureBuffer.append('\f');
        continue; /* Loop/switch isn't completed */
_L5:
        captureBuffer.append('\n');
        continue; /* Loop/switch isn't completed */
_L6:
        captureBuffer.append('\r');
        continue; /* Loop/switch isn't completed */
_L7:
        captureBuffer.append('\t');
        continue; /* Loop/switch isn't completed */
_L8:
        char ac[] = new char[4];
        for (int i = 0; i < 4; i++)
        {
            read();
            if (!isHexDigit())
            {
                throw expected("hexadecimal digit");
            }
            ac[i] = (char)current;
        }

        captureBuffer.append((char)Integer.parseInt(String.valueOf(ac), 16));
        if (true) goto _L10; else goto _L9
_L9:
    }

    private boolean readExponent()
    {
        if (!readChar('e') && !readChar('E'))
        {
            return false;
        }
        if (!readChar('+'))
        {
            readChar('-');
        }
        if (!readDigit())
        {
            throw expected("digit");
        }
        while (readDigit()) ;
        return true;
    }

    private JsonValue readFalse()
    {
        read();
        readRequiredChar('a');
        readRequiredChar('l');
        readRequiredChar('s');
        readRequiredChar('e');
        return JsonValue.FALSE;
    }

    private boolean readFraction()
    {
        if (!readChar('.'))
        {
            return false;
        }
        if (!readDigit())
        {
            throw expected("digit");
        }
        while (readDigit()) ;
        return true;
    }

    private String readName()
    {
        if (current != 34)
        {
            throw expected("name");
        } else
        {
            return readStringInternal();
        }
    }

    private JsonValue readNull()
    {
        read();
        readRequiredChar('u');
        readRequiredChar('l');
        readRequiredChar('l');
        return JsonValue.NULL;
    }

    private JsonValue readNumber()
    {
        startCapture();
        readChar('-');
        int i = current;
        if (!readDigit())
        {
            throw expected("digit");
        }
        if (i != 48)
        {
            while (readDigit()) ;
        }
        readFraction();
        readExponent();
        return new JsonNumber(endCapture());
    }

    private JsonObject readObject()
    {
        read();
        JsonObject jsonobject = new JsonObject();
        skipWhiteSpace();
        if (!readChar('}'))
        {
            do
            {
                skipWhiteSpace();
                String s = readName();
                skipWhiteSpace();
                if (!readChar(':'))
                {
                    throw expected("':'");
                }
                skipWhiteSpace();
                jsonobject.add(s, readValue());
                skipWhiteSpace();
            } while (readChar(','));
            if (!readChar('}'))
            {
                throw expected("',' or '}'");
            }
        }
        return jsonobject;
    }

    private void readRequiredChar(char c)
    {
        if (!readChar(c))
        {
            throw expected((new StringBuilder("'")).append(c).append("'").toString());
        } else
        {
            return;
        }
    }

    private JsonValue readString()
    {
        return new JsonString(readStringInternal());
    }

    private String readStringInternal()
    {
        read();
        startCapture();
        while (current != 34) 
        {
            if (current == 92)
            {
                pauseCapture();
                readEscape();
                startCapture();
            } else
            {
                if (current < 32)
                {
                    throw expected("valid string character");
                }
                read();
            }
        }
        String s = endCapture();
        read();
        return s;
    }

    private JsonValue readTrue()
    {
        read();
        readRequiredChar('r');
        readRequiredChar('u');
        readRequiredChar('e');
        return JsonValue.TRUE;
    }

    private JsonValue readValue()
    {
        switch (current)
        {
        default:
            throw expected("value");

        case 110: // 'n'
            return readNull();

        case 116: // 't'
            return readTrue();

        case 102: // 'f'
            return readFalse();

        case 34: // '"'
            return readString();

        case 91: // '['
            return readArray();

        case 123: // '{'
            return readObject();

        case 45: // '-'
        case 48: // '0'
        case 49: // '1'
        case 50: // '2'
        case 51: // '3'
        case 52: // '4'
        case 53: // '5'
        case 54: // '6'
        case 55: // '7'
        case 56: // '8'
        case 57: // '9'
            return readNumber();
        }
    }

    private void skipWhiteSpace()
    {
        for (; isWhiteSpace(); read()) { }
    }

    private void startCapture()
    {
        if (captureBuffer == null)
        {
            captureBuffer = new StringBuilder();
        }
        captureStart = index - 1;
    }

    JsonValue parse()
    {
        read();
        skipWhiteSpace();
        JsonValue jsonvalue = readValue();
        skipWhiteSpace();
        if (!isEndOfText())
        {
            throw error("Unexpected character");
        } else
        {
            return jsonvalue;
        }
    }
}
