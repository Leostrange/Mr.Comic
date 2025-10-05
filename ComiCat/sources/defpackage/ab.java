package defpackage;

import defpackage.ag;
import java.util.Collection;
import java.util.Map;
import java.util.Set;

/* renamed from: ab  reason: default package */
/* compiled from: ArrayMap */
public class ab<K, V> extends aj<K, V> implements Map<K, V> {
    ag<K, V> a;

    private ag<K, V> a() {
        if (this.a == null) {
            this.a = new ag<K, V>() {
                /* access modifiers changed from: protected */
                public final int a() {
                    return ab.this.h;
                }

                /* access modifiers changed from: protected */
                public final int a(Object obj) {
                    return ab.this.a(obj);
                }

                /* access modifiers changed from: protected */
                public final Object a(int i, int i2) {
                    return ab.this.g[(i << 1) + i2];
                }

                /* access modifiers changed from: protected */
                public final V a(int i, V v) {
                    return ab.this.a(i, v);
                }

                /* access modifiers changed from: protected */
                public final void a(int i) {
                    ab.this.d(i);
                }

                /* access modifiers changed from: protected */
                public final void a(K k, V v) {
                    ab.this.put(k, v);
                }

                /* access modifiers changed from: protected */
                public final int b(Object obj) {
                    return ab.this.b(obj);
                }

                /* access modifiers changed from: protected */
                public final Map<K, V> b() {
                    return ab.this;
                }

                /* access modifiers changed from: protected */
                public final void c() {
                    ab.this.clear();
                }
            };
        }
        return this.a;
    }

    public Set<Map.Entry<K, V>> entrySet() {
        ag a2 = a();
        if (a2.b == null) {
            a2.b = new ag.b();
        }
        return a2.b;
    }

    public Set<K> keySet() {
        ag a2 = a();
        if (a2.c == null) {
            a2.c = new ag.c();
        }
        return a2.c;
    }

    public void putAll(Map<? extends K, ? extends V> map) {
        int size = this.h + map.size();
        if (this.f.length < size) {
            int[] iArr = this.f;
            Object[] objArr = this.g;
            super.a(size);
            if (this.h > 0) {
                System.arraycopy(iArr, 0, this.f, 0, this.h);
                System.arraycopy(objArr, 0, this.g, 0, this.h << 1);
            }
            aj.a(iArr, objArr, this.h);
        }
        for (Map.Entry next : map.entrySet()) {
            put(next.getKey(), next.getValue());
        }
    }

    public Collection<V> values() {
        ag a2 = a();
        if (a2.d == null) {
            a2.d = new ag.e();
        }
        return a2.d;
    }
}
