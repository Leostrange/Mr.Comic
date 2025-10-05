package defpackage;

import defpackage.xa;
import java.util.Collection;

/* renamed from: wu  reason: default package */
/* compiled from: Reflection */
public abstract class wu {
    public static final wr<Class<? extends wu>> a = new wr(a.class) {
    };
    private static volatile wu b = new a((byte) 0);
    private static final Object[] c = new Object[0];

    /* renamed from: wu$a */
    /* compiled from: Reflection */
    static final class a extends wu {
        private final xd b;
        private final Collection c;
        private final xd d;

        private a() {
            xd xdVar = new xd();
            xdVar.d = true;
            this.b = xdVar;
            this.c = new xa.b(new xe(), (byte) 0);
            xd xdVar2 = new xd();
            xdVar2.d = true;
            this.d = xdVar2.a(xb.h);
        }

        /* synthetic */ a(byte b2) {
            this();
        }

        private Object a(Class cls, Class cls2, boolean z) {
            Object obj;
            do {
                xd xdVar = (xd) this.b.get(cls);
                if (xdVar != null && (obj = xdVar.get(cls2)) != null) {
                    return obj;
                }
                if (!z) {
                    return null;
                }
                Class[] interfaces = cls.getInterfaces();
                for (Class a : interfaces) {
                    Object a2 = a(a, cls2, false);
                    if (a2 != null) {
                        return a2;
                    }
                }
                cls = cls.getSuperclass();
            } while (cls != null);
            return null;
        }

        public final Object a(Class cls, Class cls2) {
            try {
                Class.forName(cls.getName(), true, cls.getClassLoader());
            } catch (ClassNotFoundException e) {
                wo.a((Throwable) e);
            }
            return a(cls, cls2, true);
        }

        public final void a(Object obj, Class cls, Class cls2) {
            synchronized (cls) {
                xd xdVar = (xd) this.b.get(cls);
                if (xdVar == null || !xdVar.containsKey(cls2)) {
                    if (xdVar == null) {
                        xdVar = new xd();
                        this.b.put(cls, xdVar);
                    }
                    xdVar.put(cls2, obj);
                } else {
                    throw new IllegalArgumentException("Field of type " + cls2 + " already attached to class " + cls);
                }
            }
        }
    }

    protected wu() {
    }

    public static final wu a() {
        return b;
    }

    public abstract <T> T a(Class cls, Class<T> cls2);

    public abstract <T> void a(T t, Class cls, Class<T> cls2);
}
