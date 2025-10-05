package com.fasterxml.jackson.core;

public abstract class JsonStreamContext {
    protected int _index;
    protected int _type;

    protected JsonStreamContext() {
    }

    public final int getCurrentIndex() {
        if (this._index < 0) {
            return 0;
        }
        return this._index;
    }

    public final int getEntryCount() {
        return this._index + 1;
    }

    public final String getTypeDesc() {
        switch (this._type) {
            case 0:
                return "ROOT";
            case 1:
                return "ARRAY";
            case 2:
                return "OBJECT";
            default:
                return "?";
        }
    }

    public final boolean inArray() {
        return this._type == 1;
    }

    public final boolean inObject() {
        return this._type == 2;
    }

    public final boolean inRoot() {
        return this._type == 0;
    }
}
