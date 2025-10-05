package defpackage;

import java.lang.reflect.Field;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Map;

/* renamed from: nm  reason: default package */
/* compiled from: ArrayValueMap */
public final class nm {
    private final Map<String, a> a = nl.a();
    private final Map<Field, a> b = nl.a();
    private final Object c;

    /* renamed from: nm$a */
    /* compiled from: ArrayValueMap */
    static class a {
        final Class<?> a;
        final ArrayList<Object> b = new ArrayList<>();

        a(Class<?> cls) {
            this.a = cls;
        }

        /* access modifiers changed from: package-private */
        public final Object a() {
            return on.a((Collection<?>) this.b, this.a);
        }
    }

    public nm(Object obj) {
        this.c = obj;
    }

    public final void a() {
        for (Map.Entry next : this.a.entrySet()) {
            ((Map) this.c).put(next.getKey(), ((a) next.getValue()).a());
        }
        for (Map.Entry next2 : this.b.entrySet()) {
            nv.a((Field) next2.getKey(), this.c, ((a) next2.getValue()).a());
        }
    }

    public final void a(Field field, Class<?> cls, Object obj) {
        a aVar = this.b.get(field);
        if (aVar == null) {
            aVar = new a(cls);
            this.b.put(field, aVar);
        }
        ni.a(cls == aVar.a);
        aVar.b.add(obj);
    }
}
