package com.fasterxml.jackson.core;

import java.io.Closeable;

public abstract class JsonParser implements Closeable {
    protected int _features;

    public enum Feature {
        AUTO_CLOSE_SOURCE(true),
        ALLOW_COMMENTS(false),
        ALLOW_YAML_COMMENTS(false),
        ALLOW_UNQUOTED_FIELD_NAMES(false),
        ALLOW_SINGLE_QUOTES(false),
        ALLOW_UNQUOTED_CONTROL_CHARS(false),
        ALLOW_BACKSLASH_ESCAPING_ANY_CHARACTER(false),
        ALLOW_NUMERIC_LEADING_ZEROS(false),
        ALLOW_NON_NUMERIC_NUMBERS(false),
        STRICT_DUPLICATE_DETECTION(false),
        IGNORE_UNDEFINED(false);
        
        private final boolean _defaultState;
        private final int _mask;

        private Feature(boolean z) {
            this._mask = 1 << ordinal();
            this._defaultState = z;
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

    protected JsonParser() {
    }

    protected JsonParser(int i) {
        this._features = i;
    }

    /* access modifiers changed from: protected */
    public JsonParseException _constructError(String str) {
        return new JsonParseException(this, str);
    }

    public boolean getBooleanValue() {
        JsonToken currentToken = getCurrentToken();
        if (currentToken == JsonToken.VALUE_TRUE) {
            return true;
        }
        if (currentToken == JsonToken.VALUE_FALSE) {
            return false;
        }
        throw new JsonParseException(this, String.format("Current token (%s) not of boolean type", new Object[]{currentToken}));
    }

    public abstract JsonLocation getCurrentLocation();

    public abstract String getCurrentName();

    public abstract JsonToken getCurrentToken();

    public abstract double getDoubleValue();

    public abstract long getLongValue();

    public abstract String getText();

    public boolean isEnabled(Feature feature) {
        return feature.enabledIn(this._features);
    }

    public abstract JsonToken nextToken();

    public abstract JsonParser skipChildren();
}
