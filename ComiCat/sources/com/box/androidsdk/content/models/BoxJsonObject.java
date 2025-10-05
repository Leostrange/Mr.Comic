package com.box.androidsdk.content.models;

import com.box.androidsdk.content.utils.BoxDateFormat;
import com.box.androidsdk.content.utils.BoxLogUtils;
import com.eclipsesource.json.JsonArray;
import com.eclipsesource.json.JsonObject;
import com.eclipsesource.json.JsonValue;
import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.InputStreamReader;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.OutputStreamWriter;
import java.io.Reader;
import java.io.Serializable;
import java.io.Writer;
import java.text.ParseException;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;

public abstract class BoxJsonObject extends BoxObject {
    private static final long serialVersionUID = 7174936367401884790L;
    private CacheMap mCacheMap;

    public interface BoxJsonObjectCreator<E extends BoxJsonObject> {
        E createFromJsonObject(JsonObject jsonObject);
    }

    class CacheMap implements Serializable {
        private transient HashMap<String, Object> mInternalCache = new LinkedHashMap();
        private JsonObject mJsonObject;

        public CacheMap(JsonObject jsonObject) {
            this.mJsonObject = jsonObject;
        }

        public void addInJsonArray(String str, BoxJsonObject boxJsonObject) {
            getAsJsonArray(str).add((JsonValue) boxJsonObject.toJsonObject());
            if (this.mInternalCache.containsKey(str)) {
                this.mInternalCache.remove(str);
            }
        }

        public void addInJsonArray(String str, JsonObject jsonObject) {
            getAsJsonArray(str).add((JsonValue) jsonObject);
            if (this.mInternalCache.containsKey(str)) {
                this.mInternalCache.remove(str);
            }
        }

        public boolean equals(Object obj) {
            return this.mJsonObject.equals(((CacheMap) obj).mJsonObject);
        }

        public Boolean getAsBoolean(String str) {
            JsonValue asJsonValue = getAsJsonValue(str);
            if (asJsonValue == null) {
                return null;
            }
            return Boolean.valueOf(asJsonValue.asBoolean());
        }

        public Date getAsDate(String str) {
            JsonValue asJsonValue = getAsJsonValue(str);
            if (asJsonValue == null || asJsonValue.isNull()) {
                return null;
            }
            Date date = (Date) this.mInternalCache.get(str);
            if (date != null) {
                return date;
            }
            try {
                Date parse = BoxDateFormat.parse(asJsonValue.asString());
                this.mInternalCache.put(str, parse);
                return parse;
            } catch (ParseException e) {
                BoxLogUtils.e("BoxJsonObject", "getAsDate", e);
                return null;
            }
        }

        public Double getAsDouble(String str) {
            JsonValue asJsonValue = getAsJsonValue(str);
            if (asJsonValue == null || asJsonValue.isNull()) {
                return null;
            }
            return Double.valueOf(asJsonValue.asDouble());
        }

        public Float getAsFloat(String str) {
            JsonValue asJsonValue = getAsJsonValue(str);
            if (asJsonValue == null || asJsonValue.isNull()) {
                return null;
            }
            return Float.valueOf(asJsonValue.asFloat());
        }

        public Integer getAsInt(String str) {
            JsonValue asJsonValue = getAsJsonValue(str);
            if (asJsonValue == null || asJsonValue.isNull()) {
                return null;
            }
            return Integer.valueOf(asJsonValue.asInt());
        }

        public JsonArray getAsJsonArray(String str) {
            JsonValue asJsonValue = getAsJsonValue(str);
            if (asJsonValue == null || asJsonValue.isNull()) {
                return null;
            }
            return asJsonValue.asArray();
        }

        public <T extends BoxJsonObject> T getAsJsonObject(BoxJsonObjectCreator<T> boxJsonObjectCreator, String str) {
            if (this.mInternalCache.get(str) != null) {
                return (BoxJsonObject) this.mInternalCache.get(str);
            }
            JsonValue asJsonValue = getAsJsonValue(str);
            if (asJsonValue == null || asJsonValue.isNull() || !asJsonValue.isObject()) {
                return null;
            }
            T createFromJsonObject = boxJsonObjectCreator.createFromJsonObject(asJsonValue.asObject());
            this.mInternalCache.put(str, createFromJsonObject);
            return createFromJsonObject;
        }

        public JsonObject getAsJsonObject() {
            return this.mJsonObject;
        }

        public <T extends BoxJsonObject> ArrayList<T> getAsJsonObjectArray(BoxJsonObjectCreator<T> boxJsonObjectCreator, String str) {
            if (this.mInternalCache.get(str) != null) {
                return (ArrayList) this.mInternalCache.get(str);
            }
            JsonValue asJsonValue = getAsJsonValue(str);
            if (asJsonValue == null || asJsonValue.isArray() || !asJsonValue.isObject()) {
                JsonArray asJsonArray = getAsJsonArray(str);
                if (asJsonArray == null) {
                    return null;
                }
                ArrayList<T> arrayList = new ArrayList<>(asJsonArray.size());
                if (asJsonArray != null) {
                    Iterator<JsonValue> it = asJsonArray.iterator();
                    while (it.hasNext()) {
                        arrayList.add(boxJsonObjectCreator.createFromJsonObject(it.next().asObject()));
                    }
                }
                this.mInternalCache.put(str, arrayList);
                return arrayList;
            }
            ArrayList<T> arrayList2 = new ArrayList<>(1);
            arrayList2.add(boxJsonObjectCreator.createFromJsonObject(asJsonValue.asObject()));
            this.mInternalCache.put(str, arrayList2);
            return arrayList2;
        }

        public JsonValue getAsJsonValue(String str) {
            return this.mJsonObject.get(str);
        }

        public Long getAsLong(String str) {
            JsonValue asJsonValue = getAsJsonValue(str);
            if (asJsonValue == null || asJsonValue.isNull()) {
                return null;
            }
            return Long.valueOf(asJsonValue.asLong());
        }

        public String getAsString(String str) {
            JsonValue asJsonValue = getAsJsonValue(str);
            if (asJsonValue == null || asJsonValue.isNull()) {
                return null;
            }
            return asJsonValue.asString();
        }

        public ArrayList<String> getAsStringArray(String str) {
            if (this.mInternalCache.get(str) != null) {
                return (ArrayList) this.mInternalCache.get(str);
            }
            JsonValue asJsonValue = getAsJsonValue(str);
            if (asJsonValue == null || asJsonValue.isNull()) {
                return null;
            }
            ArrayList<String> arrayList = new ArrayList<>(asJsonValue.asArray().size());
            Iterator<JsonValue> it = asJsonValue.asArray().iterator();
            while (it.hasNext()) {
                arrayList.add(it.next().asString());
            }
            this.mInternalCache.put(str, arrayList);
            return arrayList;
        }

        public List<String> getPropertiesKeySet() {
            return this.mJsonObject.names();
        }

        public HashSet<String> getPropertyAsStringHashSet(String str) {
            if (this.mInternalCache.get(str) != null) {
                return (HashSet) this.mInternalCache.get(str);
            }
            JsonValue asJsonValue = getAsJsonValue(str);
            if (asJsonValue == null || asJsonValue.isNull()) {
                return null;
            }
            HashSet<String> hashSet = new HashSet<>(asJsonValue.asArray().size());
            Iterator<JsonValue> it = asJsonValue.asArray().iterator();
            while (it.hasNext()) {
                hashSet.add(it.next().asString());
            }
            this.mInternalCache.put(str, hashSet);
            return hashSet;
        }

        public int hashCode() {
            return this.mJsonObject.hashCode();
        }

        public boolean remove(String str) {
            boolean z = getAsJsonValue(str) != null;
            this.mJsonObject.remove(str);
            if (this.mInternalCache.containsKey(str)) {
                this.mInternalCache.remove(str);
            }
            return z;
        }

        public void set(String str, BoxJsonObject boxJsonObject) {
            this.mJsonObject.set(str, (JsonValue) boxJsonObject.toJsonObject());
            if (this.mInternalCache.containsKey(str)) {
                this.mInternalCache.remove(str);
            }
        }

        public void set(String str, JsonArray jsonArray) {
            this.mJsonObject.set(str, (JsonValue) jsonArray);
            if (this.mInternalCache.containsKey(str)) {
                this.mInternalCache.remove(str);
            }
        }

        public void set(String str, JsonObject jsonObject) {
            this.mJsonObject.set(str, (JsonValue) jsonObject);
            if (this.mInternalCache.containsKey(str)) {
                this.mInternalCache.remove(str);
            }
        }

        public void set(String str, Double d) {
            this.mJsonObject.set(str, d.doubleValue());
            if (this.mInternalCache.containsKey(str)) {
                this.mInternalCache.remove(str);
            }
        }

        public void set(String str, Float f) {
            this.mJsonObject.set(str, f.floatValue());
            if (this.mInternalCache.containsKey(str)) {
                this.mInternalCache.remove(str);
            }
        }

        public void set(String str, Integer num) {
            this.mJsonObject.set(str, num.intValue());
            if (this.mInternalCache.containsKey(str)) {
                this.mInternalCache.remove(str);
            }
        }

        public void set(String str, Long l) {
            this.mJsonObject.set(str, l.longValue());
            if (this.mInternalCache.containsKey(str)) {
                this.mInternalCache.remove(str);
            }
        }

        public void set(String str, String str2) {
            this.mJsonObject.set(str, str2);
            if (this.mInternalCache.containsKey(str)) {
                this.mInternalCache.remove(str);
            }
        }

        public void set(String str, boolean z) {
            this.mJsonObject.set(str, z);
            if (this.mInternalCache.containsKey(str)) {
                this.mInternalCache.remove(str);
            }
        }

        public String toJson() {
            return this.mJsonObject.toString();
        }

        public void writeTo(Writer writer) {
            this.mJsonObject.writeTo(writer);
        }
    }

    public BoxJsonObject() {
        createFromJson(new JsonObject());
    }

    public BoxJsonObject(JsonObject jsonObject) {
        createFromJson(jsonObject);
    }

    public static <T extends BoxJsonObject> BoxJsonObjectCreator<T> getBoxJsonObjectCreator(final Class<T> cls) {
        return new BoxJsonObjectCreator<T>() {
            public final T createFromJsonObject(JsonObject jsonObject) {
                try {
                    T t = (BoxJsonObject) cls.newInstance();
                    t.createFromJson(jsonObject);
                    return t;
                } catch (InstantiationException e) {
                    BoxLogUtils.e("BoxJsonObject", "getBoxJsonObjectCreator " + cls, e);
                } catch (IllegalAccessException e2) {
                    BoxLogUtils.e("BoxJsonObject", "getBoxJsonObjectCreator " + cls, e2);
                }
                return null;
            }
        };
    }

    private void readObject(ObjectInputStream objectInputStream) {
        createFromJson(JsonObject.readFrom((Reader) new BufferedReader(new InputStreamReader(objectInputStream))));
    }

    private void writeObject(ObjectOutputStream objectOutputStream) {
        BufferedWriter bufferedWriter = new BufferedWriter(new OutputStreamWriter(objectOutputStream));
        this.mCacheMap.writeTo(bufferedWriter);
        bufferedWriter.flush();
    }

    /* access modifiers changed from: protected */
    public void addInJsonArray(String str, BoxJsonObject boxJsonObject) {
        this.mCacheMap.addInJsonArray(str, boxJsonObject);
    }

    /* access modifiers changed from: protected */
    public void addInJsonArray(String str, JsonObject jsonObject) {
        this.mCacheMap.addInJsonArray(str, jsonObject);
    }

    public void createFromJson(JsonObject jsonObject) {
        this.mCacheMap = new CacheMap(jsonObject);
    }

    public void createFromJson(String str) {
        createFromJson(JsonObject.readFrom(str));
    }

    public boolean equals(Object obj) {
        if (obj instanceof BoxJsonObject) {
            return this.mCacheMap.equals(((BoxJsonObject) obj).mCacheMap);
        }
        return false;
    }

    /* access modifiers changed from: package-private */
    public JsonObject getOriginalJsonObject() {
        return this.mCacheMap.getAsJsonObject();
    }

    public List<String> getPropertiesKeySet() {
        return this.mCacheMap.getPropertiesKeySet();
    }

    /* access modifiers changed from: protected */
    public Boolean getPropertyAsBoolean(String str) {
        return this.mCacheMap.getAsBoolean(str);
    }

    /* access modifiers changed from: protected */
    public Date getPropertyAsDate(String str) {
        return this.mCacheMap.getAsDate(str);
    }

    /* access modifiers changed from: protected */
    public Double getPropertyAsDouble(String str) {
        return this.mCacheMap.getAsDouble(str);
    }

    /* access modifiers changed from: protected */
    public Float getPropertyAsFloat(String str) {
        return this.mCacheMap.getAsFloat(str);
    }

    /* access modifiers changed from: protected */
    public Integer getPropertyAsInt(String str) {
        return this.mCacheMap.getAsInt(str);
    }

    /* access modifiers changed from: protected */
    public JsonArray getPropertyAsJsonArray(String str) {
        return this.mCacheMap.getAsJsonArray(str);
    }

    /* access modifiers changed from: protected */
    public <T extends BoxJsonObject> T getPropertyAsJsonObject(BoxJsonObjectCreator<T> boxJsonObjectCreator, String str) {
        return this.mCacheMap.getAsJsonObject(boxJsonObjectCreator, str);
    }

    /* access modifiers changed from: protected */
    public <T extends BoxJsonObject> ArrayList<T> getPropertyAsJsonObjectArray(BoxJsonObjectCreator<T> boxJsonObjectCreator, String str) {
        return this.mCacheMap.getAsJsonObjectArray(boxJsonObjectCreator, str);
    }

    /* access modifiers changed from: protected */
    public Long getPropertyAsLong(String str) {
        if (this.mCacheMap.getAsDouble(str) == null) {
            return null;
        }
        return Long.valueOf(this.mCacheMap.getAsDouble(str).longValue());
    }

    /* access modifiers changed from: protected */
    public String getPropertyAsString(String str) {
        return this.mCacheMap.getAsString(str);
    }

    /* access modifiers changed from: protected */
    public ArrayList<String> getPropertyAsStringArray(String str) {
        return this.mCacheMap.getAsStringArray(str);
    }

    /* access modifiers changed from: protected */
    public HashSet<String> getPropertyAsStringHashSet(String str) {
        return this.mCacheMap.getPropertyAsStringHashSet(str);
    }

    public JsonValue getPropertyValue(String str) {
        JsonValue asJsonValue = this.mCacheMap.getAsJsonValue(str);
        if (asJsonValue == null) {
            return null;
        }
        return JsonValue.readFrom(asJsonValue.toString());
    }

    public int hashCode() {
        return this.mCacheMap.hashCode();
    }

    /* access modifiers changed from: protected */
    @Deprecated
    public void parseJSONMember(JsonObject.Member member) {
    }

    /* access modifiers changed from: protected */
    public boolean remove(String str) {
        return this.mCacheMap.remove(str);
    }

    /* access modifiers changed from: protected */
    public void set(String str, BoxJsonObject boxJsonObject) {
        this.mCacheMap.set(str, boxJsonObject);
    }

    /* access modifiers changed from: protected */
    public void set(String str, JsonArray jsonArray) {
        this.mCacheMap.set(str, jsonArray);
    }

    /* access modifiers changed from: protected */
    public void set(String str, JsonObject jsonObject) {
        this.mCacheMap.set(str, jsonObject);
    }

    /* access modifiers changed from: protected */
    public void set(String str, Boolean bool) {
        this.mCacheMap.set(str, bool.booleanValue());
    }

    /* access modifiers changed from: protected */
    public void set(String str, Double d) {
        this.mCacheMap.set(str, d);
    }

    /* access modifiers changed from: protected */
    public void set(String str, Float f) {
        this.mCacheMap.set(str, f);
    }

    /* access modifiers changed from: protected */
    public void set(String str, Integer num) {
        this.mCacheMap.set(str, num);
    }

    /* access modifiers changed from: protected */
    public void set(String str, Long l) {
        this.mCacheMap.set(str, l);
    }

    /* access modifiers changed from: protected */
    public void set(String str, String str2) {
        this.mCacheMap.set(str, str2);
    }

    public String toJson() {
        return this.mCacheMap.toJson();
    }

    public JsonObject toJsonObject() {
        return JsonObject.readFrom(toJson());
    }
}
