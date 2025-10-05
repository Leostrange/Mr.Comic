package defpackage;

import java.util.AbstractMap;
import java.util.AbstractSet;
import java.util.Iterator;
import java.util.Map;
import java.util.NoSuchElementException;

/* renamed from: nt  reason: default package */
/* compiled from: DataMap */
final class nt extends AbstractMap<String, Object> {
    final Object a;
    final nq b;

    /* renamed from: nt$a */
    /* compiled from: DataMap */
    final class a implements Map.Entry<String, Object> {
        private Object b;
        private final nv c;

        a(nv nvVar, Object obj) {
            this.c = nvVar;
            this.b = ni.a(obj);
        }

        /* access modifiers changed from: private */
        /* renamed from: a */
        public String getKey() {
            String str = this.c.c;
            return nt.this.b.b ? str.toLowerCase() : str;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof Map.Entry)) {
                return false;
            }
            Map.Entry entry = (Map.Entry) obj;
            return getKey().equals(entry.getKey()) && getValue().equals(entry.getValue());
        }

        public final Object getValue() {
            return this.b;
        }

        public final int hashCode() {
            return getKey().hashCode() ^ getValue().hashCode();
        }

        public final Object setValue(Object obj) {
            Object obj2 = this.b;
            this.b = ni.a(obj);
            this.c.a(nt.this.a, obj);
            return obj2;
        }
    }

    /* renamed from: nt$b */
    /* compiled from: DataMap */
    final class b implements Iterator<Map.Entry<String, Object>> {
        private int b = -1;
        private nv c;
        private Object d;
        private boolean e;
        private boolean f;
        private nv g;

        b() {
        }

        public final boolean hasNext() {
            if (!this.f) {
                this.f = true;
                this.d = null;
                while (this.d == null) {
                    int i = this.b + 1;
                    this.b = i;
                    if (i >= nt.this.b.d.size()) {
                        break;
                    }
                    this.c = nt.this.b.a(nt.this.b.d.get(this.b));
                    this.d = this.c.a(nt.this.a);
                }
            }
            return this.d != null;
        }

        public final /* synthetic */ Object next() {
            if (!hasNext()) {
                throw new NoSuchElementException();
            }
            this.g = this.c;
            Object obj = this.d;
            this.f = false;
            this.e = false;
            this.c = null;
            this.d = null;
            return new a(this.g, obj);
        }

        public final void remove() {
            ni.b(this.g != null && !this.e);
            this.e = true;
            this.g.a(nt.this.a, (Object) null);
        }
    }

    /* renamed from: nt$c */
    /* compiled from: DataMap */
    final class c extends AbstractSet<Map.Entry<String, Object>> {
        c() {
        }

        /* renamed from: a */
        public final b iterator() {
            return new b();
        }

        public final void clear() {
            for (String a2 : nt.this.b.d) {
                nt.this.b.a(a2).a(nt.this.a, (Object) null);
            }
        }

        public final boolean isEmpty() {
            for (String a2 : nt.this.b.d) {
                if (nt.this.b.a(a2).a(nt.this.a) != null) {
                    return false;
                }
            }
            return true;
        }

        public final int size() {
            int i = 0;
            Iterator<String> it = nt.this.b.d.iterator();
            while (true) {
                int i2 = i;
                if (!it.hasNext()) {
                    return i2;
                }
                i = nt.this.b.a(it.next()).a(nt.this.a) != null ? i2 + 1 : i2;
            }
        }
    }

    nt(Object obj, boolean z) {
        this.a = obj;
        this.b = nq.a(obj.getClass(), z);
        ni.a(!this.b.a.isEnum());
    }

    /* renamed from: a */
    public final c entrySet() {
        return new c();
    }

    public final boolean containsKey(Object obj) {
        return get(obj) != null;
    }

    public final Object get(Object obj) {
        nv a2;
        if ((obj instanceof String) && (a2 = this.b.a((String) obj)) != null) {
            return a2.a(this.a);
        }
        return null;
    }

    public final /* synthetic */ Object put(Object obj, Object obj2) {
        String str = (String) obj;
        nv a2 = this.b.a(str);
        oh.a(a2, (Object) "no field of key " + str);
        Object a3 = a2.a(this.a);
        a2.a(this.a, ni.a(obj2));
        return a3;
    }
}
