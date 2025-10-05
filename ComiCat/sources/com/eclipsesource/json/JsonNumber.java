package com.eclipsesource.json;

class JsonNumber extends JsonValue {
    private final String string;

    JsonNumber(String str) {
        if (str == null) {
            throw new NullPointerException("string is null");
        }
        this.string = str;
    }

    public double asDouble() {
        return Double.parseDouble(this.string);
    }

    public float asFloat() {
        return Float.parseFloat(this.string);
    }

    public int asInt() {
        return Integer.parseInt(this.string, 10);
    }

    public long asLong() {
        return Long.parseLong(this.string, 10);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        return this.string.equals(((JsonNumber) obj).string);
    }

    public int hashCode() {
        return this.string.hashCode();
    }

    public boolean isNumber() {
        return true;
    }

    public String toString() {
        return this.string;
    }

    /* access modifiers changed from: protected */
    public void write(JsonWriter jsonWriter) {
        jsonWriter.write(this.string);
    }
}
