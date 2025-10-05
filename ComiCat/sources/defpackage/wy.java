package defpackage;

import defpackage.wn;
import java.io.IOException;

/* renamed from: wy  reason: default package */
/* compiled from: TextFormat */
public abstract class wy<T> {

    /* renamed from: wy$a */
    /* compiled from: TextFormat */
    static class a extends wn.a {
        public a(wy wyVar) {
            super(wyVar);
        }
    }

    /* renamed from: wy$b */
    /* compiled from: TextFormat */
    static class b {
        static final wy a = new wy(Object.class) {
            public final Appendable a(Object obj, Appendable appendable) {
                appendable.append(obj.getClass().getName());
                appendable.append('#');
                return wz.a(System.identityHashCode(obj), appendable);
            }
        };
        static final wy b = new wy(String.class) {
            public final Appendable a(Object obj, Appendable appendable) {
                return appendable.append((CharSequence) obj);
            }
        };
        static final wy c = new wy(Boolean.class) {
            public final Appendable a(Object obj, Appendable appendable) {
                return wz.a(((Boolean) obj).booleanValue(), appendable);
            }
        };
        static final wy d = new wy(Character.class) {
            public final Appendable a(Object obj, Appendable appendable) {
                return appendable.append(((Character) obj).charValue());
            }
        };
        static final wy e = new wy(Byte.class) {
            public final Appendable a(Object obj, Appendable appendable) {
                return wz.a((int) ((Byte) obj).byteValue(), appendable);
            }
        };
        static final wy f = new wy(Short.class) {
            public final Appendable a(Object obj, Appendable appendable) {
                return wz.a((int) ((Short) obj).shortValue(), appendable);
            }
        };
        static final wy g = new wy(Integer.class) {
            public final Appendable a(Object obj, Appendable appendable) {
                return wz.a(((Integer) obj).intValue(), appendable);
            }
        };
        static final wy h = new wy(Long.class) {
            public final Appendable a(Object obj, Appendable appendable) {
                return wz.a(((Long) obj).longValue(), appendable);
            }
        };
        static final wy i = new wy(Float.class) {
            public final Appendable a(Object obj, Appendable appendable) {
                return wz.a(((Float) obj).floatValue(), appendable);
            }
        };
        static final wy j = new wy(Double.class) {
            public final Appendable a(Object obj, Appendable appendable) {
                return wz.a(((Double) obj).doubleValue(), appendable);
            }
        };
        static final wy k = new wy(Class.class) {
            public final Appendable a(Object obj, Appendable appendable) {
                return appendable.append(((Class) obj).getName());
            }
        };
        static final wy l = new wy(ww.class) {
            public final Appendable a(Object obj, Appendable appendable) {
                return appendable.append((ww) obj);
            }
        };

        static /* synthetic */ void a() {
        }
    }

    protected wy(Class<T> cls) {
        if (cls != null) {
            wu.a().a(new a(this), cls, a.class);
        }
    }

    public static <T> wy<T> a(Class<? extends T> cls) {
        b.a();
        a aVar = (a) wu.a().a(cls, a.class);
        return aVar == null ? b.a : (wy) aVar.a();
    }

    public abstract Appendable a(T t, Appendable appendable);

    public final ww a(T t) {
        wx c = wx.c();
        try {
            a(t, c);
            ww b2 = c.b();
            wx.a(c);
            return b2;
        } catch (IOException e) {
            throw new Error();
        } catch (Throwable th) {
            wx.a(c);
            throw th;
        }
    }

    public final String b(T t) {
        wx c = wx.c();
        try {
            a(t, c);
            String wxVar = c.toString();
            wx.a(c);
            return wxVar;
        } catch (IOException e) {
            throw new Error();
        } catch (Throwable th) {
            wx.a(c);
            throw th;
        }
    }
}
