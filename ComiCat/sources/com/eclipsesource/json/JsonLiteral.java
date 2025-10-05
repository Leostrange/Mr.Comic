package com.eclipsesource.json;

class JsonLiteral extends JsonValue {
    private final String value;

    JsonLiteral(String str) {
        this.value = str;
    }

    public boolean asBoolean() {
        return isBoolean() ? isTrue() : super.asBoolean();
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        return this.value.equals(((JsonLiteral) obj).value);
    }

    public int hashCode() {
        return this.value.hashCode();
    }

    public boolean isBoolean() {
        return this == TRUE || this == FALSE;
    }

    public boolean isFalse() {
        return this == FALSE;
    }

    public boolean isNull() {
        return this == NULL;
    }

    public boolean isTrue() {
        return this == TRUE;
    }

    public String toString() {
        return this.value;
    }

    /* access modifiers changed from: protected */
    public void write(JsonWriter jsonWriter) {
        jsonWriter.write(this.value);
    }
}
