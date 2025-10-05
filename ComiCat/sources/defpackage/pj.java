package defpackage;

import java.util.Collection;
import java.util.List;
import java.util.Map;

/* renamed from: pj  reason: default package */
/* compiled from: AbstractListMultimap */
abstract class pj<K, V> extends pk<K, V> implements ps<K, V> {
    protected pj(Map<K, Collection<V>> map) {
        super(map);
    }

    /* access modifiers changed from: package-private */
    /* renamed from: a */
    public abstract List<V> c();

    /* renamed from: a */
    public List<V> b(K k) {
        return (List) super.b(k);
    }

    public boolean a(K k, V v) {
        return super.a(k, v);
    }

    public Map<K, Collection<V>> b() {
        return super.b();
    }

    public boolean equals(Object obj) {
        return super.equals(obj);
    }
}
