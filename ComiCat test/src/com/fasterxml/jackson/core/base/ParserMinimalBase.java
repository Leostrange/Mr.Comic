// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.fasterxml.jackson.core.base;

import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import com.fasterxml.jackson.core.util.VersionUtil;

public abstract class ParserMinimalBase extends JsonParser
{

    protected JsonToken _currToken;

    protected ParserMinimalBase(int i)
    {
        super(i);
    }

    protected static final String _getCharDesc(int i)
    {
        char c = (char)i;
        if (Character.isISOControl(c))
        {
            return (new StringBuilder("(CTRL-CHAR, code ")).append(i).append(")").toString();
        }
        if (i > 255)
        {
            return (new StringBuilder("'")).append(c).append("' (code ").append(i).append(" / 0x").append(Integer.toHexString(i)).append(")").toString();
        } else
        {
            return (new StringBuilder("'")).append(c).append("' (code ").append(i).append(")").toString();
        }
    }

    protected final JsonParseException _constructError(String s, Throwable throwable)
    {
        return new JsonParseException(this, s, throwable);
    }

    protected abstract void _handleEOF();

    protected char _handleUnrecognizedCharacterEscape(char c)
    {
        while (isEnabled(com.fasterxml.jackson.core.JsonParser.Feature.ALLOW_BACKSLASH_ESCAPING_ANY_CHARACTER) || c == '\'' && isEnabled(com.fasterxml.jackson.core.JsonParser.Feature.ALLOW_SINGLE_QUOTES)) 
        {
            return c;
        }
        _reportError((new StringBuilder("Unrecognized character escape ")).append(_getCharDesc(c)).toString());
        return c;
    }

    protected final void _reportError(String s)
    {
        throw _constructError(s);
    }

    protected void _reportInvalidEOF()
    {
        _reportInvalidEOF((new StringBuilder(" in ")).append(_currToken).toString());
    }

    protected void _reportInvalidEOF(String s)
    {
        _reportError((new StringBuilder("Unexpected end-of-input")).append(s).toString());
    }

    protected void _reportInvalidEOFInValue()
    {
        _reportInvalidEOF(" in a value");
    }

    protected void _reportMissingRootWS(int i)
    {
        _reportUnexpectedChar(i, "Expected space separating root-level values");
    }

    protected void _reportUnexpectedChar(int i, String s)
    {
        if (i < 0)
        {
            _reportInvalidEOF();
        }
        String s2 = (new StringBuilder("Unexpected character (")).append(_getCharDesc(i)).append(")").toString();
        String s1 = s2;
        if (s != null)
        {
            s1 = (new StringBuilder()).append(s2).append(": ").append(s).toString();
        }
        _reportError(s1);
    }

    protected final void _throwInternal()
    {
        VersionUtil.throwInternal();
    }

    protected void _throwInvalidSpace(int i)
    {
        i = (char)i;
        _reportError((new StringBuilder("Illegal character (")).append(_getCharDesc(i)).append("): only regular white space (\\r, \\n, \\t) is allowed between tokens").toString());
    }

    protected void _throwUnquotedSpace(int i, String s)
    {
        if (!isEnabled(com.fasterxml.jackson.core.JsonParser.Feature.ALLOW_UNQUOTED_CONTROL_CHARS) || i > 32)
        {
            i = (char)i;
            _reportError((new StringBuilder("Illegal unquoted character (")).append(_getCharDesc(i)).append("): has to be escaped using backslash to be included in ").append(s).toString());
        }
    }

    protected final void _wrapError(String s, Throwable throwable)
    {
        throw _constructError(s, throwable);
    }

    public JsonToken getCurrentToken()
    {
        return _currToken;
    }

    public abstract String getText();

    public abstract JsonToken nextToken();

    public JsonParser skipChildren()
    {
        if (_currToken != JsonToken.START_OBJECT && _currToken != JsonToken.START_ARRAY)
        {
            return this;
        }
        int i = 1;
        int j;
        do
        {
            JsonToken jsontoken;
            do
            {
                do
                {
                    jsontoken = nextToken();
                    if (jsontoken == null)
                    {
                        _handleEOF();
                        return this;
                    }
                    if (!jsontoken.isStructStart())
                    {
                        break;
                    }
                    i++;
                } while (true);
            } while (!jsontoken.isStructEnd());
            j = i - 1;
            i = j;
        } while (j != 0);
        return this;
    }
}
