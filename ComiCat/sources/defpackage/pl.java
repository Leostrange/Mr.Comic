package defpackage;

import java.util.Map;

/* renamed from: pl  reason: default package */
/* compiled from: AbstractMapEntry */
abstract class pl<K, V> implements Map.Entry<K, V> {
    pl() {
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof Map.Entry)) {
            return false;
        }
        Map.Entry entry = (Map.Entry) obj;
        return pf.a(getKey(), entry.getKey()) && pf.a(getValue(), entry.getValue());
    }

    public abstract K getKey();

    public abstract V getValue();

    public int hashCode() {
        int i = 0;
        Object key = getKey();
        Object value = getValue();
        int hashCode = key == null ? 0 : key.hashCode();
        if (value != null) {
            i = value.hashCode();
        }
        return i ^ hashCode;
    }

    public V setValue(V v) {
        throw new UnsupportedOperationException();
    }

    public String toString() {
        return getKey() + "=" + getValue();
    }
}
