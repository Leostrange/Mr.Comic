package com.eclipsesource.json;

import java.io.Reader;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;

public class JsonArray extends JsonValue implements Iterable<JsonValue> {
    private final List<JsonValue> values;

    public JsonArray() {
        this.values = new ArrayList();
    }

    public JsonArray(JsonArray jsonArray) {
        this(jsonArray, false);
    }

    private JsonArray(JsonArray jsonArray, boolean z) {
        if (jsonArray == null) {
            throw new NullPointerException("array is null");
        } else if (z) {
            this.values = Collections.unmodifiableList(jsonArray.values);
        } else {
            this.values = new ArrayList(jsonArray.values);
        }
    }

    public static JsonArray readFrom(Reader reader) {
        return JsonValue.readFrom(reader).asArray();
    }

    public static JsonArray readFrom(String str) {
        return JsonValue.readFrom(str).asArray();
    }

    public static JsonArray unmodifiableArray(JsonArray jsonArray) {
        return new JsonArray(jsonArray, true);
    }

    public JsonArray add(double d) {
        this.values.add(valueOf(d));
        return this;
    }

    public JsonArray add(float f) {
        this.values.add(valueOf(f));
        return this;
    }

    public JsonArray add(int i) {
        this.values.add(valueOf(i));
        return this;
    }

    public JsonArray add(long j) {
        this.values.add(valueOf(j));
        return this;
    }

    public JsonArray add(JsonValue jsonValue) {
        if (jsonValue == null) {
            throw new NullPointerException("value is null");
        }
        this.values.add(jsonValue);
        return this;
    }

    public JsonArray add(String str) {
        this.values.add(valueOf(str));
        return this;
    }

    public JsonArray add(boolean z) {
        this.values.add(valueOf(z));
        return this;
    }

    public JsonArray asArray() {
        return this;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        return this.values.equals(((JsonArray) obj).values);
    }

    public JsonValue get(int i) {
        return this.values.get(i);
    }

    public int hashCode() {
        return this.values.hashCode();
    }

    public boolean isArray() {
        return true;
    }

    public boolean isEmpty() {
        return this.values.isEmpty();
    }

    public Iterator<JsonValue> iterator() {
        final Iterator<JsonValue> it = this.values.iterator();
        return new Iterator<JsonValue>() {
            public boolean hasNext() {
                return it.hasNext();
            }

            public JsonValue next() {
                return (JsonValue) it.next();
            }

            public void remove() {
                throw new UnsupportedOperationException();
            }
        };
    }

    public JsonArray remove(int i) {
        this.values.remove(i);
        return this;
    }

    public JsonArray set(int i, double d) {
        this.values.set(i, valueOf(d));
        return this;
    }

    public JsonArray set(int i, float f) {
        this.values.set(i, valueOf(f));
        return this;
    }

    public JsonArray set(int i, int i2) {
        this.values.set(i, valueOf(i2));
        return this;
    }

    public JsonArray set(int i, long j) {
        this.values.set(i, valueOf(j));
        return this;
    }

    public JsonArray set(int i, JsonValue jsonValue) {
        if (jsonValue == null) {
            throw new NullPointerException("value is null");
        }
        this.values.set(i, jsonValue);
        return this;
    }

    public JsonArray set(int i, String str) {
        this.values.set(i, valueOf(str));
        return this;
    }

    public JsonArray set(int i, boolean z) {
        this.values.set(i, valueOf(z));
        return this;
    }

    public int size() {
        return this.values.size();
    }

    public List<JsonValue> values() {
        return Collections.unmodifiableList(this.values);
    }

    /* access modifiers changed from: protected */
    public void write(JsonWriter jsonWriter) {
        jsonWriter.writeArray(this);
    }
}
