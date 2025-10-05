package defpackage;

/* renamed from: wr  reason: default package */
/* compiled from: Configurable */
public class wr<T> {
    public T a;
    private final T b;
    private final Class c;

    public wr(T t) {
        if (t == null) {
            throw new IllegalArgumentException("Default value cannot be null");
        }
        this.b = t;
        this.a = t;
        this.c = a();
    }

    private static Class a() {
        try {
            String className = new Throwable().getStackTrace()[2].getClassName();
            int indexOf = className.indexOf("$");
            if (indexOf >= 0) {
                className = className.substring(0, indexOf);
            }
            return Class.forName(className);
        } catch (Throwable th) {
            wo.a(th);
            return null;
        }
    }

    public String toString() {
        return String.valueOf(this.a);
    }
}
