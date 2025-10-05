package defpackage;

import java.lang.reflect.Field;
import java.math.BigDecimal;
import java.math.BigInteger;
import java.util.Map;

/* renamed from: mw  reason: default package */
/* compiled from: JsonGenerator */
public abstract class mw {
    public abstract void a();

    public abstract void a(double d);

    public abstract void a(float f);

    public abstract void a(int i);

    public abstract void a(long j);

    public abstract void a(String str);

    public abstract void a(BigDecimal bigDecimal);

    public abstract void a(BigInteger bigInteger);

    public abstract void a(boolean z);

    public final void a(boolean z, Object obj) {
        boolean z2;
        boolean z3 = true;
        if (obj != null) {
            Class<?> cls = obj.getClass();
            if (ns.a(obj)) {
                f();
            } else if (obj instanceof String) {
                b((String) obj);
            } else if (obj instanceof Number) {
                if (z) {
                    b(obj.toString());
                } else if (obj instanceof BigDecimal) {
                    a((BigDecimal) obj);
                } else if (obj instanceof BigInteger) {
                    a((BigInteger) obj);
                } else if (obj instanceof Long) {
                    a(((Long) obj).longValue());
                } else if (obj instanceof Float) {
                    float floatValue = ((Number) obj).floatValue();
                    ni.a(!Float.isInfinite(floatValue) && !Float.isNaN(floatValue));
                    a(floatValue);
                } else if ((obj instanceof Integer) || (obj instanceof Short) || (obj instanceof Byte)) {
                    a(((Number) obj).intValue());
                } else {
                    double doubleValue = ((Number) obj).doubleValue();
                    if (Double.isInfinite(doubleValue) || Double.isNaN(doubleValue)) {
                        z3 = false;
                    }
                    ni.a(z3);
                    a(doubleValue);
                }
            } else if (obj instanceof Boolean) {
                a(((Boolean) obj).booleanValue());
            } else if (obj instanceof nu) {
                b(((nu) obj).a());
            } else if ((obj instanceof Iterable) || cls.isArray()) {
                b();
                for (Object a : on.a(obj)) {
                    a(z, a);
                }
                c();
            } else if (cls.isEnum()) {
                String str = nv.a((Enum<?>) (Enum) obj).c;
                if (str == null) {
                    f();
                } else {
                    b(str);
                }
            } else {
                d();
                boolean z4 = (obj instanceof Map) && !(obj instanceof nw);
                nq a2 = z4 ? null : nq.a(cls);
                for (Map.Entry next : ns.b(obj).entrySet()) {
                    Object value = next.getValue();
                    if (value != null) {
                        String str2 = (String) next.getKey();
                        if (z4) {
                            z2 = z;
                        } else {
                            nv a3 = a2.a(str2);
                            Field field = a3 == null ? null : a3.b;
                            z2 = (field == null || field.getAnnotation(na.class) == null) ? false : true;
                        }
                        a(str2);
                        a(z2, value);
                    }
                }
                e();
            }
        }
    }

    public abstract void b();

    public abstract void b(String str);

    public abstract void c();

    public abstract void d();

    public abstract void e();

    public abstract void f();

    public void g() {
    }
}
