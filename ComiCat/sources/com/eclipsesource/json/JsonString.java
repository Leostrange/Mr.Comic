package com.eclipsesource.json;

class JsonString extends JsonValue {
    private final String string;

    JsonString(String str) {
        if (str == null) {
            throw new NullPointerException("string is null");
        }
        this.string = str;
    }

    public String asString() {
        return this.string;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        return this.string.equals(((JsonString) obj).string);
    }

    public int hashCode() {
        return this.string.hashCode();
    }

    public boolean isString() {
        return true;
    }

    /* access modifiers changed from: protected */
    public void write(JsonWriter jsonWriter) {
        jsonWriter.writeString(this.string);
    }
}
