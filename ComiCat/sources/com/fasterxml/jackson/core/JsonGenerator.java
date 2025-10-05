package com.fasterxml.jackson.core;

import com.fasterxml.jackson.core.io.CharacterEscapes;
import com.fasterxml.jackson.core.util.VersionUtil;
import java.io.Closeable;
import java.io.Flushable;

public abstract class JsonGenerator implements Closeable, Flushable {
    protected PrettyPrinter _cfgPrettyPrinter;

    public enum Feature {
        AUTO_CLOSE_TARGET(true),
        AUTO_CLOSE_JSON_CONTENT(true),
        FLUSH_PASSED_TO_STREAM(true),
        QUOTE_FIELD_NAMES(true),
        QUOTE_NON_NUMERIC_NUMBERS(true),
        WRITE_NUMBERS_AS_STRINGS(false),
        WRITE_BIGDECIMAL_AS_PLAIN(false),
        ESCAPE_NON_ASCII(false),
        STRICT_DUPLICATE_DETECTION(false),
        IGNORE_UNKNOWN(false);
        
        private final boolean _defaultState;
        private final int _mask;

        private Feature(boolean z) {
            this._defaultState = z;
            this._mask = 1 << ordinal();
        }

        public static int collectDefaults() {
            int i = 0;
            for (Feature feature : values()) {
                if (feature.enabledByDefault()) {
                    i |= feature.getMask();
                }
            }
            return i;
        }

        public final boolean enabledByDefault() {
            return this._defaultState;
        }

        public final boolean enabledIn(int i) {
            return (this._mask & i) != 0;
        }

        public final int getMask() {
            return this._mask;
        }
    }

    protected JsonGenerator() {
    }

    /* access modifiers changed from: protected */
    public void _reportError(String str) {
        throw new JsonGenerationException(str, this);
    }

    /* access modifiers changed from: protected */
    public final void _throwInternal() {
        VersionUtil.throwInternal();
    }

    public abstract void flush();

    public JsonGenerator setCharacterEscapes(CharacterEscapes characterEscapes) {
        return this;
    }

    public JsonGenerator setHighestNonEscapedChar(int i) {
        return this;
    }

    public JsonGenerator setRootValueSeparator(SerializableString serializableString) {
        throw new UnsupportedOperationException();
    }

    public abstract void writeBoolean(boolean z);

    public abstract void writeEndArray();

    public abstract void writeEndObject();

    public abstract void writeFieldName(String str);

    public abstract void writeNull();

    public abstract void writeNumber(double d);

    public abstract void writeNumber(long j);

    public abstract void writeRaw(char c);

    public void writeRaw(SerializableString serializableString) {
        writeRaw(serializableString.getValue());
    }

    public abstract void writeRaw(String str);

    public abstract void writeStartArray();

    public void writeStartArray(int i) {
        writeStartArray();
    }

    public abstract void writeStartObject();

    public abstract void writeString(String str);

    public void writeStringField(String str, String str2) {
        writeFieldName(str);
        writeString(str2);
    }
}
