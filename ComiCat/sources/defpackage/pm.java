package defpackage;

import defpackage.pt;
import java.util.Collection;
import java.util.Map;
import java.util.Set;

/* renamed from: pm  reason: default package */
/* compiled from: AbstractMultimap */
abstract class pm<K, V> implements pu<K, V> {
    private transient Set<K> a;
    private transient Map<K, Collection<V>> b;

    pm() {
    }

    public boolean a(K k, V v) {
        return b(k).add(v);
    }

    public Map<K, Collection<V>> b() {
        Map<K, Collection<V>> map = this.b;
        if (map != null) {
            return map;
        }
        Map<K, Collection<V>> f = f();
        this.b = f;
        return f;
    }

    /* access modifiers changed from: package-private */
    public Set<K> e() {
        return new pt.d(b());
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof pu) {
            return b().equals(((pu) obj).b());
        }
        return false;
    }

    /* access modifiers changed from: package-private */
    public abstract Map<K, Collection<V>> f();

    public Set<K> g() {
        Set<K> set = this.a;
        if (set != null) {
            return set;
        }
        Set<K> e = e();
        this.a = e;
        return e;
    }

    public int hashCode() {
        return b().hashCode();
    }

    public String toString() {
        return b().toString();
    }
}
