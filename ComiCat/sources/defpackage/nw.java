package defpackage;

import defpackage.nt;
import java.util.AbstractMap;
import java.util.AbstractSet;
import java.util.EnumSet;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;

/* renamed from: nw  reason: default package */
/* compiled from: GenericData */
public class nw extends AbstractMap<String, Object> implements Cloneable {
    Map<String, Object> e;
    protected final nq f;

    /* renamed from: nw$a */
    /* compiled from: GenericData */
    final class a implements Iterator<Map.Entry<String, Object>> {
        private boolean b;
        private final Iterator<Map.Entry<String, Object>> c;
        private final Iterator<Map.Entry<String, Object>> d;

        a(nt.c cVar) {
            this.c = cVar.iterator();
            this.d = nw.this.e.entrySet().iterator();
        }

        public final boolean hasNext() {
            return this.c.hasNext() || this.d.hasNext();
        }

        public final /* synthetic */ Object next() {
            if (!this.b) {
                if (this.c.hasNext()) {
                    return this.c.next();
                }
                this.b = true;
            }
            return this.d.next();
        }

        public final void remove() {
            if (this.b) {
                this.d.remove();
            }
            this.c.remove();
        }
    }

    /* renamed from: nw$b */
    /* compiled from: GenericData */
    final class b extends AbstractSet<Map.Entry<String, Object>> {
        private final nt.c b;

        b() {
            this.b = new nt(nw.this, nw.this.f.b).entrySet();
        }

        public final void clear() {
            nw.this.e.clear();
            this.b.clear();
        }

        public final Iterator<Map.Entry<String, Object>> iterator() {
            return new a(this.b);
        }

        public final int size() {
            return nw.this.e.size() + this.b.size();
        }
    }

    /* renamed from: nw$c */
    /* compiled from: GenericData */
    public enum c {
        ;

        private c(String str) {
        }
    }

    public nw() {
        this(EnumSet.noneOf(c.class));
    }

    public nw(EnumSet<c> enumSet) {
        this.e = nl.a();
        this.f = nq.a(getClass(), enumSet.contains(c.a));
    }

    /* renamed from: d */
    public nw clone() {
        try {
            nw nwVar = (nw) super.clone();
            ns.a((Object) this, (Object) nwVar);
            nwVar.e = (Map) ns.c(this.e);
            return nwVar;
        } catch (CloneNotSupportedException e2) {
            throw new IllegalStateException(e2);
        }
    }

    public nw d(String str, Object obj) {
        nv a2 = this.f.a(str);
        if (a2 != null) {
            a2.a((Object) this, obj);
        } else {
            if (this.f.b) {
                str = str.toLowerCase();
            }
            this.e.put(str, obj);
        }
        return this;
    }

    /* renamed from: e */
    public final Object put(String str, Object obj) {
        nv a2 = this.f.a(str);
        if (a2 != null) {
            Object a3 = a2.a((Object) this);
            a2.a((Object) this, obj);
            return a3;
        }
        if (this.f.b) {
            str = str.toLowerCase();
        }
        return this.e.put(str, obj);
    }

    public Set<Map.Entry<String, Object>> entrySet() {
        return new b();
    }

    public final Object get(Object obj) {
        if (!(obj instanceof String)) {
            return null;
        }
        String str = (String) obj;
        nv a2 = this.f.a(str);
        if (a2 != null) {
            return a2.a((Object) this);
        }
        if (this.f.b) {
            str = str.toLowerCase();
        }
        return this.e.get(str);
    }

    public final void putAll(Map<? extends String, ?> map) {
        for (Map.Entry next : map.entrySet()) {
            d((String) next.getKey(), next.getValue());
        }
    }

    public final Object remove(Object obj) {
        if (!(obj instanceof String)) {
            return null;
        }
        String str = (String) obj;
        if (this.f.a(str) != null) {
            throw new UnsupportedOperationException();
        }
        if (this.f.b) {
            str = str.toLowerCase();
        }
        return this.e.remove(str);
    }
}
