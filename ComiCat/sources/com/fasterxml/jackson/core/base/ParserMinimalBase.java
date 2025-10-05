package com.fasterxml.jackson.core.base;

import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import com.fasterxml.jackson.core.util.VersionUtil;

public abstract class ParserMinimalBase extends JsonParser {
    protected JsonToken _currToken;

    protected ParserMinimalBase(int i) {
        super(i);
    }

    protected static final String _getCharDesc(int i) {
        char c = (char) i;
        return Character.isISOControl(c) ? "(CTRL-CHAR, code " + i + ")" : i > 255 ? "'" + c + "' (code " + i + " / 0x" + Integer.toHexString(i) + ")" : "'" + c + "' (code " + i + ")";
    }

    /* access modifiers changed from: protected */
    public final JsonParseException _constructError(String str, Throwable th) {
        return new JsonParseException(this, str, th);
    }

    /* access modifiers changed from: protected */
    public abstract void _handleEOF();

    /* access modifiers changed from: protected */
    public char _handleUnrecognizedCharacterEscape(char c) {
        if (!isEnabled(JsonParser.Feature.ALLOW_BACKSLASH_ESCAPING_ANY_CHARACTER) && (c != '\'' || !isEnabled(JsonParser.Feature.ALLOW_SINGLE_QUOTES))) {
            _reportError("Unrecognized character escape " + _getCharDesc(c));
        }
        return c;
    }

    /* access modifiers changed from: protected */
    public final void _reportError(String str) {
        throw _constructError(str);
    }

    /* access modifiers changed from: protected */
    public void _reportInvalidEOF() {
        _reportInvalidEOF(" in " + this._currToken);
    }

    /* access modifiers changed from: protected */
    public void _reportInvalidEOF(String str) {
        _reportError("Unexpected end-of-input" + str);
    }

    /* access modifiers changed from: protected */
    public void _reportInvalidEOFInValue() {
        _reportInvalidEOF(" in a value");
    }

    /* access modifiers changed from: protected */
    public void _reportMissingRootWS(int i) {
        _reportUnexpectedChar(i, "Expected space separating root-level values");
    }

    /* access modifiers changed from: protected */
    public void _reportUnexpectedChar(int i, String str) {
        if (i < 0) {
            _reportInvalidEOF();
        }
        String str2 = "Unexpected character (" + _getCharDesc(i) + ")";
        if (str != null) {
            str2 = str2 + ": " + str;
        }
        _reportError(str2);
    }

    /* access modifiers changed from: protected */
    public final void _throwInternal() {
        VersionUtil.throwInternal();
    }

    /* access modifiers changed from: protected */
    public void _throwInvalidSpace(int i) {
        _reportError("Illegal character (" + _getCharDesc((char) i) + "): only regular white space (\\r, \\n, \\t) is allowed between tokens");
    }

    /* access modifiers changed from: protected */
    public void _throwUnquotedSpace(int i, String str) {
        if (!isEnabled(JsonParser.Feature.ALLOW_UNQUOTED_CONTROL_CHARS) || i > 32) {
            _reportError("Illegal unquoted character (" + _getCharDesc((char) i) + "): has to be escaped using backslash to be included in " + str);
        }
    }

    /* access modifiers changed from: protected */
    public final void _wrapError(String str, Throwable th) {
        throw _constructError(str, th);
    }

    public JsonToken getCurrentToken() {
        return this._currToken;
    }

    public abstract String getText();

    public abstract JsonToken nextToken();

    public JsonParser skipChildren() {
        if (this._currToken == JsonToken.START_OBJECT || this._currToken == JsonToken.START_ARRAY) {
            int i = 1;
            while (true) {
                JsonToken nextToken = nextToken();
                if (nextToken != null) {
                    if (!nextToken.isStructStart()) {
                        if (nextToken.isStructEnd() && i - 1 == 0) {
                            break;
                        }
                    } else {
                        i++;
                    }
                } else {
                    _handleEOF();
                    break;
                }
            }
        }
        return this;
    }
}
