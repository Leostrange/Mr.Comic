package com.eclipsesource.json;

import java.io.IOException;
import java.io.Reader;
import java.io.Serializable;
import java.io.StringWriter;
import java.io.Writer;

public abstract class JsonValue implements Serializable {
    public static final JsonValue FALSE = new JsonLiteral("false");
    public static final JsonValue NULL = new JsonLiteral("null");
    public static final JsonValue TRUE = new JsonLiteral("true");

    JsonValue() {
    }

    private static String cutOffPointZero(String str) {
        return str.endsWith(".0") ? str.substring(0, str.length() - 2) : str;
    }

    public static JsonValue readFrom(Reader reader) {
        return new JsonParser(reader).parse();
    }

    public static JsonValue readFrom(String str) {
        try {
            return new JsonParser(str).parse();
        } catch (IOException e) {
            throw new RuntimeException(e);
        }
    }

    public static JsonValue valueOf(double d) {
        if (!Double.isInfinite(d) && !Double.isNaN(d)) {
            return new JsonNumber(cutOffPointZero(Double.toString(d)));
        }
        throw new IllegalArgumentException("Infinite and NaN values not permitted in JSON");
    }

    public static JsonValue valueOf(float f) {
        if (!Float.isInfinite(f) && !Float.isNaN(f)) {
            return new JsonNumber(cutOffPointZero(Float.toString(f)));
        }
        throw new IllegalArgumentException("Infinite and NaN values not permitted in JSON");
    }

    public static JsonValue valueOf(int i) {
        return new JsonNumber(Integer.toString(i, 10));
    }

    public static JsonValue valueOf(long j) {
        return new JsonNumber(Long.toString(j, 10));
    }

    public static JsonValue valueOf(String str) {
        return str == null ? NULL : new JsonString(str);
    }

    public static JsonValue valueOf(boolean z) {
        return z ? TRUE : FALSE;
    }

    public JsonArray asArray() {
        throw new UnsupportedOperationException("Not an array: " + toString());
    }

    public boolean asBoolean() {
        throw new UnsupportedOperationException("Not a boolean: " + toString());
    }

    public double asDouble() {
        throw new UnsupportedOperationException("Not a number: " + toString());
    }

    public float asFloat() {
        throw new UnsupportedOperationException("Not a number: " + toString());
    }

    public int asInt() {
        throw new UnsupportedOperationException("Not a number: " + toString());
    }

    public long asLong() {
        throw new UnsupportedOperationException("Not a number: " + toString());
    }

    public JsonObject asObject() {
        throw new UnsupportedOperationException("Not an object: " + toString());
    }

    public String asString() {
        throw new UnsupportedOperationException("Not a string: " + toString());
    }

    public boolean equals(Object obj) {
        return super.equals(obj);
    }

    public int hashCode() {
        return super.hashCode();
    }

    public boolean isArray() {
        return false;
    }

    public boolean isBoolean() {
        return false;
    }

    public boolean isFalse() {
        return false;
    }

    public boolean isNull() {
        return false;
    }

    public boolean isNumber() {
        return false;
    }

    public boolean isObject() {
        return false;
    }

    public boolean isString() {
        return false;
    }

    public boolean isTrue() {
        return false;
    }

    public String toString() {
        StringWriter stringWriter = new StringWriter();
        try {
            write(new JsonWriter(stringWriter));
            return stringWriter.toString();
        } catch (IOException e) {
            throw new RuntimeException(e);
        }
    }

    /* access modifiers changed from: protected */
    public abstract void write(JsonWriter jsonWriter);

    public void writeTo(Writer writer) {
        write(new JsonWriter(writer));
    }
}
