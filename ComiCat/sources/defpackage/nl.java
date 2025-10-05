package defpackage;

import java.util.AbstractMap;
import java.util.AbstractSet;
import java.util.Iterator;
import java.util.Map;
import java.util.NoSuchElementException;
import java.util.Set;

/* renamed from: nl  reason: default package */
/* compiled from: ArrayMap */
public class nl<K, V> extends AbstractMap<K, V> implements Cloneable {
    int a;
    Object[] b;

    /* renamed from: nl$a */
    /* compiled from: ArrayMap */
    final class a implements Map.Entry<K, V> {
        private int b;

        a(int i) {
            this.b = i;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof Map.Entry)) {
                return false;
            }
            Map.Entry entry = (Map.Entry) obj;
            return og.a(getKey(), entry.getKey()) && og.a(getValue(), entry.getValue());
        }

        public final K getKey() {
            nl nlVar = nl.this;
            int i = this.b;
            if (i < 0 || i >= nlVar.a) {
                return null;
            }
            return nlVar.b[i << 1];
        }

        public final V getValue() {
            return nl.this.a(this.b);
        }

        public final int hashCode() {
            return getKey().hashCode() ^ getValue().hashCode();
        }

        public final V setValue(V v) {
            return nl.this.a(this.b, v);
        }
    }

    /* renamed from: nl$b */
    /* compiled from: ArrayMap */
    final class b implements Iterator<Map.Entry<K, V>> {
        private boolean b;
        private int c;

        b() {
        }

        public final boolean hasNext() {
            return this.c < nl.this.a;
        }

        public final /* synthetic */ Object next() {
            int i = this.c;
            if (i == nl.this.a) {
                throw new NoSuchElementException();
            }
            this.c++;
            return new a(i);
        }

        public final void remove() {
            int i = this.c - 1;
            if (this.b || i < 0) {
                throw new IllegalArgumentException();
            }
            nl.this.b(i << 1);
            this.b = true;
        }
    }

    /* renamed from: nl$c */
    /* compiled from: ArrayMap */
    final class c extends AbstractSet<Map.Entry<K, V>> {
        c() {
        }

        public final Iterator<Map.Entry<K, V>> iterator() {
            return new b();
        }

        public final int size() {
            return nl.this.a;
        }
    }

    private int a(Object obj) {
        int i = this.a << 1;
        Object[] objArr = this.b;
        for (int i2 = 0; i2 < i; i2 += 2) {
            Object obj2 = objArr[i2];
            if (obj == null) {
                if (obj2 == null) {
                    return i2;
                }
            } else if (obj.equals(obj2)) {
                return i2;
            }
        }
        return -2;
    }

    public static <K, V> nl<K, V> a() {
        return new nl<>();
    }

    private void a(int i, K k, V v) {
        Object[] objArr = this.b;
        objArr[i] = k;
        objArr[i + 1] = v;
    }

    private V c(int i) {
        if (i < 0) {
            return null;
        }
        return this.b[i];
    }

    public final V a(int i) {
        if (i < 0 || i >= this.a) {
            return null;
        }
        return c((i << 1) + 1);
    }

    public final V a(int i, V v) {
        int i2 = this.a;
        if (i < 0 || i >= i2) {
            throw new IndexOutOfBoundsException();
        }
        int i3 = (i << 1) + 1;
        V c2 = c(i3);
        this.b[i3] = v;
        return c2;
    }

    /* access modifiers changed from: package-private */
    public final V b(int i) {
        int i2 = this.a << 1;
        if (i < 0 || i >= i2) {
            return null;
        }
        V c2 = c(i + 1);
        Object[] objArr = this.b;
        int i3 = (i2 - i) - 2;
        if (i3 != 0) {
            System.arraycopy(objArr, i + 2, objArr, i, i3);
        }
        this.a--;
        a(i2 - 2, (Object) null, (Object) null);
        return c2;
    }

    /* renamed from: b */
    public final nl<K, V> clone() {
        try {
            nl<K, V> nlVar = (nl) super.clone();
            Object[] objArr = this.b;
            if (objArr == null) {
                return nlVar;
            }
            int length = objArr.length;
            Object[] objArr2 = new Object[length];
            nlVar.b = objArr2;
            System.arraycopy(objArr, 0, objArr2, 0, length);
            return nlVar;
        } catch (CloneNotSupportedException e) {
            return null;
        }
    }

    public void clear() {
        this.a = 0;
        this.b = null;
    }

    public final boolean containsKey(Object obj) {
        return -2 != a(obj);
    }

    public final boolean containsValue(Object obj) {
        int i = this.a << 1;
        Object[] objArr = this.b;
        for (int i2 = 1; i2 < i; i2 += 2) {
            Object obj2 = objArr[i2];
            if (obj == null) {
                if (obj2 == null) {
                    return true;
                }
            } else if (obj.equals(obj2)) {
                return true;
            }
        }
        return false;
    }

    public final Set<Map.Entry<K, V>> entrySet() {
        return new c();
    }

    public final V get(Object obj) {
        return c(a(obj) + 1);
    }

    public final V put(K k, V v) {
        int a2 = a((Object) k) >> 1;
        int i = a2 == -1 ? this.a : a2;
        if (i < 0) {
            throw new IndexOutOfBoundsException();
        }
        int i2 = i + 1;
        if (i2 < 0) {
            throw new IndexOutOfBoundsException();
        }
        Object[] objArr = this.b;
        int i3 = i2 << 1;
        int length = objArr == null ? 0 : objArr.length;
        if (i3 > length) {
            int i4 = ((length / 2) * 3) + 1;
            if (i4 % 2 != 0) {
                i4++;
            }
            if (i4 >= i3) {
                i3 = i4;
            }
            if (i3 == 0) {
                this.b = null;
            } else {
                int i5 = this.a;
                Object[] objArr2 = this.b;
                if (i5 == 0 || i3 != objArr2.length) {
                    Object[] objArr3 = new Object[i3];
                    this.b = objArr3;
                    if (i5 != 0) {
                        System.arraycopy(objArr2, 0, objArr3, 0, i5 << 1);
                    }
                }
            }
        }
        int i6 = i << 1;
        V c2 = c(i6 + 1);
        a(i6, k, v);
        if (i2 > this.a) {
            this.a = i2;
        }
        return c2;
    }

    public final V remove(Object obj) {
        return b(a(obj));
    }

    public final int size() {
        return this.a;
    }
}
