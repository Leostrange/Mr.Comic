package com.fasterxml.jackson.core.json;

import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonStreamContext;
import org.apache.http.message.TokenParser;

public class JsonWriteContext extends JsonStreamContext {
    protected JsonWriteContext _child;
    protected String _currentName;
    protected Object _currentValue;
    protected DupDetector _dups;
    protected boolean _gotName;
    protected final JsonWriteContext _parent;

    protected JsonWriteContext(int i, JsonWriteContext jsonWriteContext, DupDetector dupDetector) {
        this._type = i;
        this._parent = jsonWriteContext;
        this._dups = dupDetector;
        this._index = -1;
    }

    private final void _checkDup(DupDetector dupDetector, String str) {
        if (dupDetector.isDup(str)) {
            Object source = dupDetector.getSource();
            throw new JsonGenerationException("Duplicate field '" + str + "'", source instanceof JsonGenerator ? (JsonGenerator) source : null);
        }
    }

    public static JsonWriteContext createRootContext(DupDetector dupDetector) {
        return new JsonWriteContext(0, (JsonWriteContext) null, dupDetector);
    }

    /* access modifiers changed from: protected */
    public void appendDesc(StringBuilder sb) {
        if (this._type == 2) {
            sb.append('{');
            if (this._currentName != null) {
                sb.append(TokenParser.DQUOTE);
                sb.append(this._currentName);
                sb.append(TokenParser.DQUOTE);
            } else {
                sb.append('?');
            }
            sb.append('}');
        } else if (this._type == 1) {
            sb.append('[');
            sb.append(getCurrentIndex());
            sb.append(']');
        } else {
            sb.append("/");
        }
    }

    public JsonWriteContext clearAndGetParent() {
        this._currentValue = null;
        return this._parent;
    }

    public JsonWriteContext createChildArrayContext() {
        JsonWriteContext jsonWriteContext = this._child;
        if (jsonWriteContext != null) {
            return jsonWriteContext.reset(1);
        }
        JsonWriteContext jsonWriteContext2 = new JsonWriteContext(1, this, this._dups == null ? null : this._dups.child());
        this._child = jsonWriteContext2;
        return jsonWriteContext2;
    }

    public JsonWriteContext createChildObjectContext() {
        JsonWriteContext jsonWriteContext = this._child;
        if (jsonWriteContext != null) {
            return jsonWriteContext.reset(2);
        }
        JsonWriteContext jsonWriteContext2 = new JsonWriteContext(2, this, this._dups == null ? null : this._dups.child());
        this._child = jsonWriteContext2;
        return jsonWriteContext2;
    }

    /* access modifiers changed from: protected */
    public JsonWriteContext reset(int i) {
        this._type = i;
        this._index = -1;
        this._currentName = null;
        this._gotName = false;
        this._currentValue = null;
        if (this._dups != null) {
            this._dups.reset();
        }
        return this;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder(64);
        appendDesc(sb);
        return sb.toString();
    }

    public int writeFieldName(String str) {
        if (this._gotName) {
            return 4;
        }
        this._gotName = true;
        this._currentName = str;
        if (this._dups != null) {
            _checkDup(this._dups, str);
        }
        return this._index < 0 ? 0 : 1;
    }

    public int writeValue() {
        if (this._type == 2) {
            if (!this._gotName) {
                return 5;
            }
            this._gotName = false;
            this._index++;
            return 2;
        } else if (this._type == 1) {
            int i = this._index;
            this._index++;
            return i < 0 ? 0 : 1;
        } else {
            this._index++;
            return this._index == 0 ? 0 : 3;
        }
    }
}
