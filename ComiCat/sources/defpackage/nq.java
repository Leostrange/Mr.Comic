package defpackage;

import java.lang.reflect.Field;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.IdentityHashMap;
import java.util.List;
import java.util.Map;
import java.util.TreeSet;
import java.util.WeakHashMap;

/* renamed from: nq  reason: default package */
/* compiled from: ClassInfo */
public final class nq {
    private static final Map<Class<?>, nq> e = new WeakHashMap();
    private static final Map<Class<?>, nq> f = new WeakHashMap();
    final Class<?> a;
    final boolean b;
    public final IdentityHashMap<String, nv> c = new IdentityHashMap<>();
    final List<String> d;

    private nq(Class<?> cls, boolean z) {
        this.a = cls;
        this.b = z;
        oh.a(!z || !cls.isEnum(), (Object) "cannot ignore case on an enum: " + cls);
        TreeSet treeSet = new TreeSet(new Comparator<String>() {
            public final /* synthetic */ int compare(Object obj, Object obj2) {
                String str = (String) obj;
                String str2 = (String) obj2;
                if (str == str2) {
                    return 0;
                }
                if (str == null) {
                    return -1;
                }
                if (str2 == null) {
                    return 1;
                }
                return str.compareTo(str2);
            }
        });
        for (Field field : cls.getDeclaredFields()) {
            nv a2 = nv.a(field);
            if (a2 != null) {
                String str = a2.c;
                String intern = z ? str.toLowerCase().intern() : str;
                nv nvVar = this.c.get(intern);
                boolean z2 = nvVar == null;
                Object[] objArr = new Object[4];
                objArr[0] = z ? "case-insensitive " : "";
                objArr[1] = intern;
                objArr[2] = field;
                objArr[3] = nvVar == null ? null : nvVar.b;
                oh.a(z2, "two fields have the same %sname <%s>: %s and %s", objArr);
                this.c.put(intern, a2);
                treeSet.add(intern);
            }
        }
        Class<? super Object> superclass = cls.getSuperclass();
        if (superclass != null) {
            nq a3 = a(superclass, z);
            treeSet.addAll(a3.d);
            for (Map.Entry next : a3.c.entrySet()) {
                String str2 = (String) next.getKey();
                if (!this.c.containsKey(str2)) {
                    this.c.put(str2, next.getValue());
                }
            }
        }
        this.d = treeSet.isEmpty() ? Collections.emptyList() : Collections.unmodifiableList(new ArrayList(treeSet));
    }

    public static nq a(Class<?> cls) {
        return a(cls, false);
    }

    public static nq a(Class<?> cls, boolean z) {
        nq nqVar;
        if (cls == null) {
            return null;
        }
        Map<Class<?>, nq> map = z ? f : e;
        synchronized (map) {
            nqVar = map.get(cls);
            if (nqVar == null) {
                nqVar = new nq(cls, z);
                map.put(cls, nqVar);
            }
        }
        return nqVar;
    }

    public final nv a(String str) {
        if (str != null) {
            if (this.b) {
                str = str.toLowerCase();
            }
            str = str.intern();
        }
        return this.c.get(str);
    }
}
