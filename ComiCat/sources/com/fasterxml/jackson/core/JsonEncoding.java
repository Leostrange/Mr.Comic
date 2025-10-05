package com.fasterxml.jackson.core;

import org.apache.http.protocol.HTTP;

public enum JsonEncoding {
    UTF8(HTTP.UTF_8, false, 8),
    UTF16_BE("UTF-16BE", true, 16),
    UTF16_LE("UTF-16LE", false, 16),
    UTF32_BE("UTF-32BE", true, 32),
    UTF32_LE("UTF-32LE", false, 32);
    
    protected final boolean _bigEndian;
    protected final int _bits;
    protected final String _javaName;

    private JsonEncoding(String str, boolean z, int i) {
        this._javaName = str;
        this._bigEndian = z;
        this._bits = i;
    }

    public final int bits() {
        return this._bits;
    }

    public final String getJavaName() {
        return this._javaName;
    }

    public final boolean isBigEndian() {
        return this._bigEndian;
    }
}
