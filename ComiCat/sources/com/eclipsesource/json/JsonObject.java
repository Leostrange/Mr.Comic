package com.eclipsesource.json;

import java.io.ObjectInputStream;
import java.io.Reader;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;

public class JsonObject extends JsonValue implements Iterable<Member> {
    private final List<String> names;
    private transient HashIndexTable table;
    private final List<JsonValue> values;

    static class HashIndexTable {
        private final byte[] hashTable = new byte[32];

        public HashIndexTable() {
        }

        public HashIndexTable(HashIndexTable hashIndexTable) {
            System.arraycopy(hashIndexTable.hashTable, 0, this.hashTable, 0, this.hashTable.length);
        }

        private int hashSlotFor(Object obj) {
            return obj.hashCode() & (this.hashTable.length - 1);
        }

        /* access modifiers changed from: package-private */
        public void add(String str, int i) {
            int hashSlotFor = hashSlotFor(str);
            if (i < 255) {
                this.hashTable[hashSlotFor] = (byte) (i + 1);
            } else {
                this.hashTable[hashSlotFor] = 0;
            }
        }

        /* access modifiers changed from: package-private */
        public int get(Object obj) {
            return (this.hashTable[hashSlotFor(obj)] & 255) - 1;
        }

        /* access modifiers changed from: package-private */
        public void remove(int i) {
            for (int i2 = 0; i2 < this.hashTable.length; i2++) {
                if (this.hashTable[i2] == i + 1) {
                    this.hashTable[i2] = 0;
                } else if (this.hashTable[i2] > i + 1) {
                    byte[] bArr = this.hashTable;
                    bArr[i2] = (byte) (bArr[i2] - 1);
                }
            }
        }
    }

    public static class Member {
        private final String name;
        private final JsonValue value;

        Member(String str, JsonValue jsonValue) {
            this.name = str;
            this.value = jsonValue;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null) {
                return false;
            }
            if (getClass() != obj.getClass()) {
                return false;
            }
            Member member = (Member) obj;
            return this.name.equals(member.name) && this.value.equals(member.value);
        }

        public String getName() {
            return this.name;
        }

        public JsonValue getValue() {
            return this.value;
        }

        public int hashCode() {
            return ((this.name.hashCode() + 31) * 31) + this.value.hashCode();
        }
    }

    public JsonObject() {
        this.names = new ArrayList();
        this.values = new ArrayList();
        this.table = new HashIndexTable();
    }

    public JsonObject(JsonObject jsonObject) {
        this(jsonObject, false);
    }

    private JsonObject(JsonObject jsonObject, boolean z) {
        if (jsonObject == null) {
            throw new NullPointerException("object is null");
        }
        if (z) {
            this.names = Collections.unmodifiableList(jsonObject.names);
            this.values = Collections.unmodifiableList(jsonObject.values);
        } else {
            this.names = new ArrayList(jsonObject.names);
            this.values = new ArrayList(jsonObject.values);
        }
        this.table = new HashIndexTable();
        updateHashIndex();
    }

    public static JsonObject readFrom(Reader reader) {
        return JsonValue.readFrom(reader).asObject();
    }

    public static JsonObject readFrom(String str) {
        return JsonValue.readFrom(str).asObject();
    }

    private synchronized void readObject(ObjectInputStream objectInputStream) {
        objectInputStream.defaultReadObject();
        this.table = new HashIndexTable();
        updateHashIndex();
    }

    public static JsonObject unmodifiableObject(JsonObject jsonObject) {
        return new JsonObject(jsonObject, true);
    }

    private void updateHashIndex() {
        int size = this.names.size();
        for (int i = 0; i < size; i++) {
            this.table.add(this.names.get(i), i);
        }
    }

    public JsonObject add(String str, double d) {
        add(str, valueOf(d));
        return this;
    }

    public JsonObject add(String str, float f) {
        add(str, valueOf(f));
        return this;
    }

    public JsonObject add(String str, int i) {
        add(str, valueOf(i));
        return this;
    }

    public JsonObject add(String str, long j) {
        add(str, valueOf(j));
        return this;
    }

    public JsonObject add(String str, JsonValue jsonValue) {
        if (str == null) {
            throw new NullPointerException("name is null");
        } else if (jsonValue == null) {
            throw new NullPointerException("value is null");
        } else {
            this.table.add(str, this.names.size());
            this.names.add(str);
            this.values.add(jsonValue);
            return this;
        }
    }

    public JsonObject add(String str, String str2) {
        add(str, valueOf(str2));
        return this;
    }

    public JsonObject add(String str, boolean z) {
        add(str, valueOf(z));
        return this;
    }

    public JsonObject asObject() {
        return this;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null) {
            return false;
        }
        if (getClass() != obj.getClass()) {
            return false;
        }
        JsonObject jsonObject = (JsonObject) obj;
        return this.names.equals(jsonObject.names) && this.values.equals(jsonObject.values);
    }

    public JsonValue get(String str) {
        if (str == null) {
            throw new NullPointerException("name is null");
        }
        int indexOf = indexOf(str);
        if (indexOf != -1) {
            return this.values.get(indexOf);
        }
        return null;
    }

    public int hashCode() {
        return ((this.names.hashCode() + 31) * 31) + this.values.hashCode();
    }

    /* access modifiers changed from: package-private */
    public int indexOf(String str) {
        int i = this.table.get(str);
        return (i == -1 || !str.equals(this.names.get(i))) ? this.names.lastIndexOf(str) : i;
    }

    public boolean isEmpty() {
        return this.names.isEmpty();
    }

    public boolean isObject() {
        return true;
    }

    public Iterator<Member> iterator() {
        final Iterator<String> it = this.names.iterator();
        final Iterator<JsonValue> it2 = this.values.iterator();
        return new Iterator<Member>() {
            public boolean hasNext() {
                return it.hasNext();
            }

            public Member next() {
                return new Member((String) it.next(), (JsonValue) it2.next());
            }

            public void remove() {
                throw new UnsupportedOperationException();
            }
        };
    }

    public List<String> names() {
        return Collections.unmodifiableList(this.names);
    }

    public JsonObject remove(String str) {
        if (str == null) {
            throw new NullPointerException("name is null");
        }
        int indexOf = indexOf(str);
        if (indexOf != -1) {
            this.table.remove(indexOf);
            this.names.remove(indexOf);
            this.values.remove(indexOf);
        }
        return this;
    }

    public JsonObject set(String str, double d) {
        set(str, valueOf(d));
        return this;
    }

    public JsonObject set(String str, float f) {
        set(str, valueOf(f));
        return this;
    }

    public JsonObject set(String str, int i) {
        set(str, valueOf(i));
        return this;
    }

    public JsonObject set(String str, long j) {
        set(str, valueOf(j));
        return this;
    }

    public JsonObject set(String str, JsonValue jsonValue) {
        if (str == null) {
            throw new NullPointerException("name is null");
        } else if (jsonValue == null) {
            throw new NullPointerException("value is null");
        } else {
            int indexOf = indexOf(str);
            if (indexOf != -1) {
                this.values.set(indexOf, jsonValue);
            } else {
                this.table.add(str, this.names.size());
                this.names.add(str);
                this.values.add(jsonValue);
            }
            return this;
        }
    }

    public JsonObject set(String str, String str2) {
        set(str, valueOf(str2));
        return this;
    }

    public JsonObject set(String str, boolean z) {
        set(str, valueOf(z));
        return this;
    }

    public int size() {
        return this.names.size();
    }

    /* access modifiers changed from: protected */
    public void write(JsonWriter jsonWriter) {
        jsonWriter.writeObject(this);
    }
}
