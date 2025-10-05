package defpackage;

import java.io.Serializable;

/* renamed from: pq  reason: default package */
/* compiled from: ImmutableEntry */
final class pq<K, V> extends pl<K, V> implements Serializable {
    final K a;
    final V b;

    pq(K k, V v) {
        this.a = k;
        this.b = v;
    }

    public final K getKey() {
        return this.a;
    }

    public final V getValue() {
        return this.b;
    }

    public final V setValue(V v) {
        throw new UnsupportedOperationException();
    }
}
